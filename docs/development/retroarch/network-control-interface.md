# RetroArch Network Control Interface

RetroArch exposes a UDP-based Network Control Interface (NCI) that allows remote control of a running instance. Commands can be sent from the command line, scripts, or any program capable of sending UDP packets.

## Enabling the Interface

Enable the NCI through RetroArch settings:

- **`network_cmd_enable`** - Set to `true` to enable the network command interface
- **`network_cmd_port`** - UDP port to listen on (default: `55355`)

These can be set in `retroarch.cfg`:

```ini
network_cmd_enable = "true"
network_cmd_port = "55355"
```

Or via the menu: Settings > Network > Network Commands.

## Sending Commands

Use the `--command` CLI flag to send a command to a running RetroArch instance:

```bash
retroarch --command "COMMAND;HOST;PORT"
```

- `HOST` and `PORT` are optional
- `retroarch --command "COMMAND;HOST"` uses the default port (`55355`)
- `retroarch --command "COMMAND"` uses `localhost` and the default port

Since the interface uses plain UDP packets, you can also send commands with `nc` (netcat), which is available on both Linux and macOS:

```bash
echo -n "COMMAND" | nc -u -w1 localhost 55355
```

The `-w1` flag tells `nc` to wait up to 1 second, which is enough time to receive a response from commands that return one. The response is sent back to the sender's address automatically.

## Action Commands

Action commands accept arguments and may return responses over UDP.

### VERSION

Returns the RetroArch version string.

- **Arguments:** None
- **Response:** Version string (e.g., `1.19.1`)

```bash
retroarch --command "VERSION"
```

### GET_STATUS

Returns the current emulation status.

- **Arguments:** None
- **Response:** `GET_STATUS PAUSED|PLAYING system_id,game_basename,crc32=XXXXXXXX` when content is loaded, or `GET_STATUS CONTENTLESS` when no content is running

```bash
retroarch --command "GET_STATUS"
```

### GET_CONFIG_PARAM

Queries a configuration parameter value.

- **Arguments:** `<param name>`
- **Response:** `GET_CONFIG_PARAM <param name> <value>`
- **Supported parameters:**
  - `video_fullscreen` - Whether fullscreen is active (`true`/`false`)
  - `savefile_directory` - Save file directory path
  - `savestate_directory` - Save state directory path
  - `runtime_log_directory` - Runtime log directory path
  - `log_dir` - Log directory path
  - `cache_directory` - Cache directory path
  - `system_directory` - System/BIOS directory path
  - `netplay_nickname` - Current netplay username
  - `active_replay` - Active replay info as `identifier flags frame_counter` (requires BSV movie support)

```bash
retroarch --command "GET_CONFIG_PARAM savefile_directory"
```

### SHOW_MSG

Displays an on-screen display (OSD) message.

- **Arguments:** `<message text>`

```bash
retroarch --command "SHOW_MSG Game saved successfully"
```

### SET_SHADER

Loads a shader preset by file path. Requires shader support (CG, GLSL, Slang, or HLSL).

- **Arguments:** `<shader path>`

```bash
retroarch --command "SET_SHADER /path/to/shader.glslp"
```

### READ_CORE_RAM

Reads bytes from core memory using achievement addresses. Requires achievements (CHEEVOS) support. Prefer `READ_CORE_MEMORY` for system addresses.

- **Arguments:** `<address> <number of bytes>` (address in hexadecimal)
- **Response:** `READ_CORE_RAM <address> <byte1> <byte2> ...` (bytes as hex), or `READ_CORE_RAM <address> -1` on failure

```bash
retroarch --command "READ_CORE_RAM 1000 16"
```

### WRITE_CORE_RAM

Writes bytes to core memory using achievement addresses. Requires achievements (CHEEVOS) support. Disables achievements hardcore mode. Prefer `WRITE_CORE_MEMORY` for system addresses.

- **Arguments:** `<address> <byte1> <byte2> ...` (address and bytes in hexadecimal)

```bash
retroarch --command "WRITE_CORE_RAM 1000 FF 00 AB"
```

### READ_CORE_MEMORY

Reads bytes from core memory using the system memory map.

- **Arguments:** `<address> <number of bytes>` (address in hexadecimal)
- **Response:** `READ_CORE_MEMORY <address> <byte1> <byte2> ...` (bytes as hex), or `READ_CORE_MEMORY <address> -1 <error message>` on failure
- **Error messages:** `no memory map defined`, `no descriptor for address`, `no data for descriptor`

```bash
retroarch --command "READ_CORE_MEMORY 8000 32"
```

### WRITE_CORE_MEMORY

Writes bytes to core memory using the system memory map. Disables achievements hardcore mode if active.

- **Arguments:** `<address> <byte1> <byte2> ...` (address and bytes in hexadecimal)
- **Response:** `WRITE_CORE_MEMORY <address> <bytes written>` on success, or `WRITE_CORE_MEMORY <address> -1 <error message>` on failure
- **Error messages:** `no memory map defined`, `no descriptor for address`, `no data for descriptor`, `descriptor data is readonly`

```bash
retroarch --command "WRITE_CORE_MEMORY 8000 FF 00 AB"
```

### LOAD_STATE_SLOT

Loads a save state from a specific slot number.

- **Arguments:** `<slot number>`
- **Response:** `LOAD_STATE_SLOT <slot number>`

```bash
retroarch --command "LOAD_STATE_SLOT 3"
```

### PLAY_REPLAY_SLOT

Starts playback of a replay from a specific slot. Requires BSV movie support.

- **Arguments:** `<slot number>`
- **Response:** `PLAY_REPLAY_SLOT <identifier>`

```bash
retroarch --command "PLAY_REPLAY_SLOT 1"
```

### SEEK_REPLAY

Seeks to a specific frame in the currently active replay. Requires BSV movie support. Disabled during achievements hardcore mode.

- **Arguments:** `<frame number>`
- **Response:** `OK <target frame>` on success, or `NO` on failure

```bash
retroarch --command "SEEK_REPLAY 5000"
```

### SAVE_FILES

Saves all save files (SRAM) to disk.

- **Arguments:** None
- **Response:** `OK` on success, `NO` on failure

```bash
retroarch --command "SAVE_FILES"
```

### LOAD_FILES

Loads all save files (SRAM) from disk.

- **Arguments:** None
- **Response:** `OK` on success, `NO` on failure

```bash
retroarch --command "LOAD_FILES"
```

### LOAD_CORE

Loads a libretro core from a file path.

- **Arguments:** `<core path>`

```bash
retroarch --command "LOAD_CORE /path/to/core_libretro.so"
```

## State/Button Commands

State commands simulate input presses and take no arguments. They trigger the same actions as pressing the corresponding hotkey.

### Menu Navigation

Navigate the RetroArch menu remotely.

#### MENU_TOGGLE

Open or close the menu.

- **Arguments:** None

```bash
retroarch --command "MENU_TOGGLE"
```

#### MENU_UP

Navigate up in the menu.

- **Arguments:** None

```bash
retroarch --command "MENU_UP"
```

#### MENU_DOWN

Navigate down in the menu.

- **Arguments:** None

```bash
retroarch --command "MENU_DOWN"
```

#### MENU_LEFT

Navigate left in the menu.

- **Arguments:** None

```bash
retroarch --command "MENU_LEFT"
```

#### MENU_RIGHT

Navigate right in the menu.

- **Arguments:** None

```bash
retroarch --command "MENU_RIGHT"
```

#### MENU_A

Menu confirm/accept.

- **Arguments:** None

```bash
retroarch --command "MENU_A"
```

#### MENU_B

Menu back/cancel.

- **Arguments:** None

```bash
retroarch --command "MENU_B"
```

### Game Control

Control game execution state.

#### QUIT

Quit RetroArch.

- **Arguments:** None

```bash
retroarch --command "QUIT"
```

#### CLOSE_CONTENT

Close the currently running content.

- **Arguments:** None

```bash
retroarch --command "CLOSE_CONTENT"
```

#### RESET

Reset the current game.

- **Arguments:** None

```bash
retroarch --command "RESET"
```

#### PAUSE_TOGGLE

Toggle pause.

- **Arguments:** None

```bash
retroarch --command "PAUSE_TOGGLE"
```

#### FRAMEADVANCE

Advance one frame while paused.

- **Arguments:** None

```bash
retroarch --command "FRAMEADVANCE"
```

### Speed Control

Adjust emulation speed.

#### FAST_FORWARD

Toggle fast forward.

- **Arguments:** None

```bash
retroarch --command "FAST_FORWARD"
```

#### FAST_FORWARD_HOLD

Hold fast forward (active while held).

- **Arguments:** None

```bash
retroarch --command "FAST_FORWARD_HOLD"
```

#### SLOWMOTION

Toggle slow motion.

- **Arguments:** None

```bash
retroarch --command "SLOWMOTION"
```

#### SLOWMOTION_HOLD

Hold slow motion (active while held).

- **Arguments:** None

```bash
retroarch --command "SLOWMOTION_HOLD"
```

#### REWIND

Rewind gameplay.

- **Arguments:** None

```bash
retroarch --command "REWIND"
```

### Audio

Control audio settings.

#### MUTE

Toggle audio mute.

- **Arguments:** None

```bash
retroarch --command "MUTE"
```

#### VOLUME_UP

Increase audio volume.

- **Arguments:** None

```bash
retroarch --command "VOLUME_UP"
```

#### VOLUME_DOWN

Decrease audio volume.

- **Arguments:** None

```bash
retroarch --command "VOLUME_DOWN"
```

### Save States

Manage save states via hotkey simulation.

#### LOAD_STATE

Load save state from the current slot.

- **Arguments:** None

```bash
retroarch --command "LOAD_STATE"
```

#### SAVE_STATE

Save state to the current slot.

- **Arguments:** None

```bash
retroarch --command "SAVE_STATE"
```

#### STATE_SLOT_PLUS

Increment the save state slot.

- **Arguments:** None

```bash
retroarch --command "STATE_SLOT_PLUS"
```

#### STATE_SLOT_MINUS

Decrement the save state slot.

- **Arguments:** None

```bash
retroarch --command "STATE_SLOT_MINUS"
```

### Replays

Control replay recording and playback.

#### PLAY_REPLAY

Start replay playback.

- **Arguments:** None

```bash
retroarch --command "PLAY_REPLAY"
```

#### RECORD_REPLAY

Start replay recording.

- **Arguments:** None

```bash
retroarch --command "RECORD_REPLAY"
```

#### HALT_REPLAY

Stop the current replay.

- **Arguments:** None

```bash
retroarch --command "HALT_REPLAY"
```

#### SAVE_REPLAY_CHECKPOINT

Save a checkpoint during replay.

- **Arguments:** None

```bash
retroarch --command "SAVE_REPLAY_CHECKPOINT"
```

#### PREV_REPLAY_CHECKPOINT

Go to the previous replay checkpoint.

- **Arguments:** None

```bash
retroarch --command "PREV_REPLAY_CHECKPOINT"
```

#### NEXT_REPLAY_CHECKPOINT

Go to the next replay checkpoint.

- **Arguments:** None

```bash
retroarch --command "NEXT_REPLAY_CHECKPOINT"
```

#### REPLAY_SLOT_PLUS

Increment the replay slot.

- **Arguments:** None

```bash
retroarch --command "REPLAY_SLOT_PLUS"
```

#### REPLAY_SLOT_MINUS

Decrement the replay slot.

- **Arguments:** None

```bash
retroarch --command "REPLAY_SLOT_MINUS"
```

### Disk Control

Manage multi-disk games.

#### DISK_EJECT_TOGGLE

Toggle disk tray eject.

- **Arguments:** None

```bash
retroarch --command "DISK_EJECT_TOGGLE"
```

#### DISK_NEXT

Switch to next disk.

- **Arguments:** None

```bash
retroarch --command "DISK_NEXT"
```

#### DISK_PREV

Switch to previous disk.

- **Arguments:** None

```bash
retroarch --command "DISK_PREV"
```

### Shaders

Control shader settings.

#### SHADER_TOGGLE

Toggle shaders on/off.

- **Arguments:** None

```bash
retroarch --command "SHADER_TOGGLE"
```

#### SHADER_HOLD

Hold shader (active while held).

- **Arguments:** None

```bash
retroarch --command "SHADER_HOLD"
```

#### SHADER_NEXT

Switch to next shader preset.

- **Arguments:** None

```bash
retroarch --command "SHADER_NEXT"
```

#### SHADER_PREV

Switch to previous shader preset.

- **Arguments:** None

```bash
retroarch --command "SHADER_PREV"
```

### Cheats

Manage cheat codes.

#### CHEAT_TOGGLE

Toggle the current cheat on/off.

- **Arguments:** None

```bash
retroarch --command "CHEAT_TOGGLE"
```

#### CHEAT_INDEX_PLUS

Select the next cheat.

- **Arguments:** None

```bash
retroarch --command "CHEAT_INDEX_PLUS"
```

#### CHEAT_INDEX_MINUS

Select the previous cheat.

- **Arguments:** None

```bash
retroarch --command "CHEAT_INDEX_MINUS"
```

### Recording and Screenshots

Capture gameplay.

#### SCREENSHOT

Take a screenshot.

- **Arguments:** None

```bash
retroarch --command "SCREENSHOT"
```

#### RECORDING_TOGGLE

Toggle video recording.

- **Arguments:** None

```bash
retroarch --command "RECORDING_TOGGLE"
```

#### STREAMING_TOGGLE

Toggle video streaming.

- **Arguments:** None

```bash
retroarch --command "STREAMING_TOGGLE"
```

### Display and UI

Control display and interface settings.

#### TURBO_FIRE_TOGGLE

Toggle turbo fire mode.

- **Arguments:** None

```bash
retroarch --command "TURBO_FIRE_TOGGLE"
```

#### GRAB_MOUSE_TOGGLE

Toggle mouse grab.

- **Arguments:** None

```bash
retroarch --command "GRAB_MOUSE_TOGGLE"
```

#### GAME_FOCUS_TOGGLE

Toggle game focus mode.

- **Arguments:** None

```bash
retroarch --command "GAME_FOCUS_TOGGLE"
```

#### FULLSCREEN_TOGGLE

Toggle fullscreen mode.

- **Arguments:** None

```bash
retroarch --command "FULLSCREEN_TOGGLE"
```

#### UI_COMPANION_TOGGLE

Toggle the UI companion window.

- **Arguments:** None

```bash
retroarch --command "UI_COMPANION_TOGGLE"
```

### Performance

Toggle performance-related features.

#### VRR_RUNLOOP_TOGGLE

Toggle variable refresh rate runloop.

- **Arguments:** None

```bash
retroarch --command "VRR_RUNLOOP_TOGGLE"
```

#### RUNAHEAD_TOGGLE

Toggle run-ahead latency reduction.

- **Arguments:** None

```bash
retroarch --command "RUNAHEAD_TOGGLE"
```

#### PREEMPT_TOGGLE

Toggle preemptive frames.

- **Arguments:** None

```bash
retroarch --command "PREEMPT_TOGGLE"
```

#### FPS_TOGGLE

Toggle FPS display.

- **Arguments:** None

```bash
retroarch --command "FPS_TOGGLE"
```

#### STATISTICS_TOGGLE

Toggle onscreen statistics.

- **Arguments:** None

```bash
retroarch --command "STATISTICS_TOGGLE"
```

#### AI_SERVICE

Trigger the AI service.

- **Arguments:** None

```bash
retroarch --command "AI_SERVICE"
```

### Netplay

Control netplay features.

#### NETPLAY_PING_TOGGLE

Toggle netplay ping display.

- **Arguments:** None

```bash
retroarch --command "NETPLAY_PING_TOGGLE"
```

#### NETPLAY_HOST_TOGGLE

Toggle netplay hosting.

- **Arguments:** None

```bash
retroarch --command "NETPLAY_HOST_TOGGLE"
```

#### NETPLAY_GAME_WATCH

Toggle between playing and spectating.

- **Arguments:** None

```bash
retroarch --command "NETPLAY_GAME_WATCH"
```

#### NETPLAY_PLAYER_CHAT

Open the netplay chat.

- **Arguments:** None

```bash
retroarch --command "NETPLAY_PLAYER_CHAT"
```

#### NETPLAY_FADE_CHAT_TOGGLE

Toggle chat fade behavior.

- **Arguments:** None

```bash
retroarch --command "NETPLAY_FADE_CHAT_TOGGLE"
```

### Overlay

Control on-screen overlays.

#### OVERLAY_NEXT

Switch to the next overlay.

- **Arguments:** None

```bash
retroarch --command "OVERLAY_NEXT"
```

#### OSK

Toggle the on-screen keyboard.

- **Arguments:** None

```bash
retroarch --command "OSK"
```
