# Project ideas
## Improving the netplay protocol

### Description
The RetroArch frontend currently provides a way to connect two cores together using the netplay protocol. This way, the state / inputs of the cores are shared and users can play their favorite (retro-)games together online.

The current implementation is quite old and has no extensive documentation nor formal specification.

The goal of this project would be to analyse the current implementation and to identify points for improvements.

A deliverable of this project could be, to analyse the performance characteristics of the current implementation and provide a detailed analysis of the current netplay stack. This analysis should include a formal description of the protocol, it’s performance characteristics and advice on how to further improve the protocol.

The student is of course free to actually implement improvements to the netplay stack:

The netplay protocol is currently TCP based, it could also be re-written to use UDP for better latency characteristics.


If the student has a deep background in network protocols, he/she could also design a new version if the netplay protocol all together.

Further readings:

[https://github.com/libretro/RetroArch/tree/master/network/netplay](https://github.com/libretro/RetroArch/tree/master/network/netplay)

[https://github.com/libretro/netplay-mitm-server](https://github.com/libretro/netplay-mitm-server)

Needed knowledge:
C, Network protocols (TCP / UDP), FSM

Main mentor:
hasenbanck

## Improving the network library in RetroArch

### Description

Currently RetroArch uses the network stack provided by libretro-common to implement simple network interactions. It’s currently mainly IPv4 aware and supports only HTTP / HTTPS version 1. For TLS support we currently use the mbedtls library.

The current HTTP implementation is also not feature complete and has a lot of compatibility issues. The tasks for thus projects could involve:


Proper support for IPv6
General compatibility of the current HTTP/1 stack
HTTP/2 or even HTTP/3 support
Hardening the current TLS support

Either by extending the current implementation or by using an external, portable and small library. Not all of our targets need to be supported with these changes. Exotic build targets often don’t have network support anyway.

Further readings:

[https://github.com/libretro/RetroArch/tree/master/libretro-common/net](https://github.com/libretro/RetroArch/tree/master/libretro-common/net)

[https://github.com/libretro/RetroArch/tree/master/network](https://github.com/libretro/RetroArch/tree/master/network)

Needed knowledge:
C, Network protocols (IPv4 / IPv6 / TCP / HTTP / HTTP/2 / HTTP/3)

Main mentor:
hasenbanck

## Video preview for games / video files

### Description
The RetroArch frontend can currently display a screenshot of a video file (actually taken from the media file) or an archived screenshot / box art of a game inside the menu beside the medgame / video ia entry.

This project idea would implement a video preview feature. For this the frontend needs to be extended to preview a video file, or be able to display a pre-recorded gameplay video of the game in case instead of a screenshot.

For this we would need to write a new widget that displays a video (using the ffmpeg core) and a way to connect a game entry and a pre-recorded video file (like screenshots  / box arts are currently distributed).

Further readings:

[https://github.com/libretro/RetroArch/tree/master/menu/widgets](https://github.com/libretro/RetroArch/tree/master/menu/widgets)

[https://github.com/libretro/RetroArch/tree/master/cores/libretro-ffmpeg](https://github.com/libretro/RetroArch/tree/master/cores/libretro-ffmpeg)

Needed knowledge:
C, Video decoding

Main mentor:
hasenbanck

## Universal caching of game / media files

### Description
Currently the RetroArch frontend gives the core the file path of the game / media to play. The core than has to open the media file directly. If the file is stored on a remote filesystem, the increased access time and slow bandwidth could cause slowdowns inside the core.

This proposed project would implement a mechanism to cache those files locally (for example in memory), so that the cores can access the files in a cached manner.

Further readings:

[https://github.com/libretro/RetroArch](https://github.com/libretro/RetroArch)

[https://github.com/libretro/RetroArch/tree/master/cores/libretro-ffmpeg](https://github.com/libretro/RetroArch/tree/master/cores/libretro-ffmpeg)

Needed knowledge:
C

Main mentor:
twinaphex
