# Netplay

RetroArch allows a second (or further) player, or spectators, to be connected
via the Internet.

RetroArch's netplay code is based on replay, and provides netplay over
unreliable networks free of input latency in the default configuration. Netplay
supports up to 16 players and many spectators. Netplay in RetroArch is
guaranteed¹ to work with perfect synchronization given a few minor constraints:

1. The core is deterministic,
2. The only input devices the core interacts with are the gamepad and analog sticks, and
3. Both the core and the loaded content are identical on host and client.

Cores are expected to support serialization for proper netplay behavior, but
netplay will work in limited fashion with cores that do not support
serialization. The experience will be far more smooth with serialization.

Netplay in RetroArch works by expecting input to come delayed from the network,
then rewinding and re-playing with the delayed input to get a consistent state.
At any given time, all netplay clients may be in inconsistent states, but once
they receive each other's delayed data, they invisibly rewind to the last time
they were consistent, replay with the new input, and reach a new state,
notionally closer to the "correct", canonical state than the previous one.  So
long as both sides agree on which frame is which, it should be impossible for
them to become de-synced, since each input event always happens at the correct
frame.

¹ Guarantee not actually a guarantee.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/zkFUp7aQmFM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Behavior

Netplay's protocol uses TCP, as reliability and in-order delivery are both
mandatory for correct behavior.

A single netplay server may have connections from multiple netplay clients. For
most behavior, the server and client are equal participants, but for operations
which require global synchronization, the server is canonical. In normal,
running behavior, each playing client simply sends the input state of their
controller every frame, and the server forwards input data between clients.
Every client and the server is aware of which player slots are in use (i.e.,
which controllers are plugged in), and the server is aware of which client
corresponds to which player slot.

It is crucial that every player send their input data in order for every frame,
and thus every client keeps in mind the frame counter for every player. If
input data is received with an unexpectedly low frame number, it is ignored,
and if input data is received with an unexpectedly high frame number, the
connection is terminated. It is also crucial that every player agree on which
frame is which, and so during initial connection the server gives a canonical
frame count and a serialized save state, allowing the client to join
mid-stream.

Spectators send no input data.

When new input data is received from a player, if it is before the currently
executing frame, RetroArch will invisibly rewind and replay with the new input
data, arriving at the original frame so that the local player's own input is
always seemless.

A typical, playing client sends no data other than its own input every frame.
During normal play, the server sends its own input data. If the server is not
playing, but spectating, it sends a special "no input" packet, so that clients
may nonetheless no its frame count. Other spectators send no data.

Other events coordinate on the server's frame counter, and most may therefore
only be performed by the server. For instance, for a client to switch from
spectating to playing, it cannot simply start sending input data, but must send
a request to change modes, which the server will honor at its present frame
count. The client may have to rewind to send data from earlier frames, or wait
to send input data until its local frame count has reached the server's.

In particular, resets and savestate loads are always synchronized to the
server's frame count, and thus only the server may reset the core or load a
savestate. Because input preceeding a savestate load is irrelevant, upon
receiving a savestate load command, all frame counts are updated to be at least
the server's frame count, including the local frame count if applicable. This
is the only condition under which the frame count will skip at a rate greater
than one frame per executed frame.

## Implementation

Netplay is in effect a buffer of input states (implemented as a ring of
buffers) and some pre- and post-frame behaviors.

There are three important locations, each of which : self, other and unread.
Each refers to a frame, and a state buffer corresponding to that frame. The
state buffer contains the savestate for the frame, and the input from both the
local and remote players.

Self is where RetroArch believes itself to be, which may be ahead or behind of
what it's read from the peer. Self progresses at a rate of one frame per
executed frame, except when the local frame count is forced to skip ahead due
to loading a state.

Unread is the first frame at which not all players' data has been read.
Typically unread is less than self, but it is possible for one client to get
ahead of others.

Other is where it was most recently in perfect sync: i.e., other-1 is the last
frame from which all local and remote input have been actioned. It is never
necessary to rewind farther than other in order to attain synchronization, and
other is always less than or equal to both self and unread. Since the state
buffer is a ring, other is the first frame that it's unsafe to overwrite.

The server has a slightly more complicated job as it can handle multiple
clients, however it is not vastly more complicated: For each connection which
is playing (i.e., has a controller), it maintains a per-player unread frame,
and the global unread frame is the earliest of each player unread frame. The
server forwards input data: When input data is received from an earlier frame
than the server's current frame, it forwards it immediately. Otherwise, it
forwards it when the frame is reached. i.e., during frame n, the server may
send its own and any number of other players' data for frame n, but will never
send frame n+1. This is because the server's clock is the arbiter of all
synchronization-related events, such as flipping players, players joining and
parting, and saving/loading states.

Pre-frame, netplay serializes the core's state, polls for local input, and
polls for input from the network. If the input from the network is too far
behind (i.e., unread is too far behind self), it stalls to allow the other side
to catch up. To assure that this stalling does not block the UI thread, it is
implemented similarly to pausing, rather than by blocking on the socket.

If input has not been received for the other side up to the current frame (the
usual case), the remote input is simulated in a simplistic manner.  Each
frame's local serialized state and simulated or real input goes into the frame
buffers.

During the frame of execution, when the core requests input, it receives the
input from the state buffer, both local and real or simulated remote.

Post-frame, it checks whether it's read more than it's actioned, i.e. If
read > other and self > other. If so, it first checks whether its simulated
remote data was correct. If it was, it simply moves other up. If not, it
rewinds to other (by loading the serialized state there) and runs the core in
replay mode with the real data up to the least of self and read, then sets
other to that.  To avoid latency building up, if the input from the network is
too far ahead (i.e., unread is too far ahead of self), the frame limiter is
momentarily disabled to catch up. Note that since network latency is expected,
the normal case is the opposite: unread is behind self.

When in netplay mode, the callback for receiving input is replaced by
input_state_net. It is the role of input_state_net to combine the true local
input (whether live or replay) with the remote input (whether true or
simulated).

Some thoughts about "frame counts": The frame counters act like indexes into a
0-indexed array; i.e., they refer to the first unactioned frame. So, when
read_frame_count is 23, we've read 23 frames, but the last frame we read is
frame 22. With self_frame_count it's slightly more complicated, since there are
two relevant actions: Reading the data and emulating with the data. The frame
count is only incremented after the latter, so there is a period of time during
which we've actually read self_frame_count+1 frames of local input.

Clients may come and go, and may start or stop playing even as they're
connected. A client that is not playing is said to be spectating: It receives
all the same data but sends none. A client may switch from spectating to
playing by sending the appropriate request, at which point it is allotted a
player number (see the SPECTATE, PLAY and MODE commands below).

The server may also be in spectator mode, but as the server never sends data
early (i.e., it only forwards data on the frame it's reached), it must also
inform all clients of its own current frame even if it has no input. The
NOINPUT command is provided for that purpose.

## Protocol

A netplay connection involves a handshake, which assures that client and server
are running the same software and brings the client to synchronization, and
then an exchange of input packets.

The handshake procedure (this part is done by both server and client):
1. Send connection header
2. Receive and verify connection header
3. Send nickname
4. Receive nickname

For the client:
5. Send PASSWORD if applicable
4. Receive INFO
5. Send INFO
6. Receive SYNC

For the server:
5. Receive PASSWORD if applicable
6. Send INFO
7. Receive INFO
8. Send SYNC

Note that both the server and the client send the connection header before
reading it. This is intentional. It allows either servers or clients (but not
both) to generalize, by echoing the connection header of the other side.

## Other features

Typically, it is assumed that input latency is not desired. However, input
latency is an option. The benefit of input latency is that the actual execution
lags behind one's frame count, and thus it is more usual that remote data is
available, and rewinding is both less frequent and less expensive.  There is an
additional location in the state buffer, run, used when input latency is
enabled. In that case, self points to where input is being read, and run points
to the frame actually being executed. Run is purely local.

## Command format

Netplay commands consist of a 32-bit command identifier, followed by a 32-bit
payload size, both in network byte order, followed by a payload. The command
identifiers are listed in netplay.h. The commands are described below. Unless
specified otherwise, all payload values are in network byte order.

**Command**: ACK
Payload: None
Description:
> Acknowledgement. Not used.

**Command**: NAK
Payload: None
Description:
> Negative Acknowledgement. If received, the connection is terminated. Sent
> whenever a command is malformed or otherwise not understood.

**Command**: DISCONNECT
Payload: None
Description:
> Gracefully disconnect. Not used.

**Command**: INPUT
Payload:

    {
       frame number: uint32
       is server data: 1 bit
       player: 31 bits
       controller input: uint32
       analog 1 input: uint32
       analog 2 input: uint32
    }

Description:
> Input state for each frame. Netplay must send an INPUT command for every
> frame in order to function at all. Client's player value is ignored. Server
> indicates which frames are its own input data because INPUT is a
> synchronization point: No synchronization events from the given frame may
> arrive after the server's input for the frame.

**Command**: NOINPUT
Payload:

    {
       frame number: uint32
    }

Description:
> Sent by the server to indicate a frame has passed when the server is not
> otherwise sending data.

**Command**: NICK
Payload:

    {
       nickname: char[32]
    }

Description:
> Send nickname. Mandatory handshake command.

**Command**: PASSWORD
Payload:

    {
       password hash: char[64]
    }

Description:
> Send hashed password to server. Mandatory handshake command for clients if
> the server demands a password.

**Command**: INFO
Payload

    {
       core name: char[32]
       core version: char[32]
       content CRC: uint32
    }

Description:
> Send core/content info. Mandatory handshake command. Sent by server first,
> then by client, and must match. Server may send INFO with no payload, in
> which case the client sends its own info and expects the server to load the
> appropriate core and content then send a new INFO command. If mutual
> agreement cannot be achieved, the correct solution is to simply disconnect.

**Command**: SYNC
Payload:

    {
       frame number: uint32
       paused?: 1 bit
       connected players: 31 bits
       flip frame: uint32
       controller devices: uint32[16]
       client nick: char[32]
       sram: variable
    }

Description:
> Initial state synchronization. Mandatory handshake command from server to
> client only. Connected players is a bitmap with the lowest bit being player
> 0. Flip frame is 0 if players aren't flipped. Controller devices are the
> devices plugged into each controller port, and 16 is really MAX_USERS.
> Client is forced to have a different nick if multiple clients have the same
> nick.

**Command**: SPECTATE
Payload: None
Description:
> Request to enter spectate mode. The client should immediately consider itself
> to be in spectator mode and send no further input.

**Command**: PLAY
Payload:

    {
       reserved: 31 bits
       as slave?: 1 bit
    }

Description:
> Request to enter player mode. The client must wait for a MODE command before
> sending input. Server may refuse or force slave connections, so the request
> is not necessarily honored. Payload may be elided if zero.

**Command**: MODE
Payload:

    {
       frame number: uint32
       reserved: 13 bits
       slave: 1 bit
       playing: 1 bit
       you: 1 bit
       player number: uint16
    }

Description:
> Inform of a connection mode change (possibly of the receiving client). Only
> server-to-client. Frame number is the first frame in which player data is
> expected, or the first frame in which player data is not expected. In the
> case of new players the frame number must be later than the last frame of the
> server's own input that has been sent, and in the case of leaving players the
> frame number must be later than the last frame of the relevant player's input
> that has been transmitted.

**Command**: MODE_REFUSED
Payload:

    {
       reason: uint32
    }

Description:
> Inform a client that its request to change modes has been refused.

**Command**: CRC
Payload:

    {
       frame number: uint32
       hash: uint32
    }

Description:
> Informs the peer of the correct CRC hash for the specified frame. If the
> receiver's hash doesn't match, they should send a REQUEST_SAVESTATE command.

**Command**: REQUEST_SAVESTATE
Payload: None
Description:
    Requests that the peer send a savestate.

**Command**: LOAD_SAVESTATE
Payload:

    {
       frame number: uint32
       uncompressed size: uint32
       serialized save state: blob (variable size)
    }

Description:
> Cause the other side to load a savestate, notionally one which the sending
> side has also loaded. If both sides support zlib compression, the serialized
> state is zlib compressed. Otherwise it is uncompressed.

**Command**: PAUSE
Payload:

    {
       nickname: char[32]
    }

Description:
> Indicates that the core is paused. The receiving peer should also pause.  The
> server should pass it on, using the known correct name rather than the
> provided name.

**Command**: RESUME
Payload: None
Description:
> Indicates that the core is no longer paused.

**Command**: STALL
Payload:

    {
       frames: uint32
    }

Description:
> Request that a client stall for the given number of frames.

**Command**: RESET
Payload:

    {
       frame number: uint32
    }

Description:
> Indicate that the core was reset at the beginning of the given frame.

**Command**: CHEATS
Unused

**Command**: FLIP_PLAYERS
Payload:

    {
       frame number: uint32
    }

Description:
> Flip players at the requested frame.

**Command**: CFG
Unused

**Command**: CFG_ACK
Unused
