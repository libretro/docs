# [VirtualXT]

## Background

VirtualXT is an IBM PC/XT emulator that runs on modern hardware and operating systems. It is designed to be simple and lightweight yet still capable enough to run a large library of old application and games.

The VirtualXT core has been authored by

- [Andreas T Jonsson]

The VirtualXT core is licensed under

- [zlib-acknowledgement](https://spdx.org/licenses/preview/zlib-acknowledgement.html)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## How to start the VirtualXT core:

The core has no external dependacies. You only need to load the .so/dll file and preferably install the .info file and you are good to go.

The default system emulated is a XT class machine with an Intel 8088 CPU. This means that most DOS games form the 90's wont run. VirtualXT is intended to run older CGA games and applications from the 80's, like PC booters.

## BIOS

BIOS is integerated in the core and can currently not be replaced or changed.

## Extensions

Content that can be loaded by the VirtualXT core have the following file extensions:

- .img
- .zip

(Zip archives are read-only and any state will be lost after reboot.)

## Features

Frontend-level settings or features that the VirtualXT core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | -         |
| Multi-Mouse       | -         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✔         |

## Geometry and timing

- The VirtualXT core's core provided FPS is 60.
- The VirtualXT core's core provided sample rate is 44100.
- The VirtualXT core's base width is 640.
- The VirtualXT core's base height is 200.
- The VirtualXT core's max width is 720.
- The VirtualXT core's max height is 350.
- The VirtualXT core's core provided aspect ratio is 4/3.

## Core options

The VirtualXT core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **NEC V20 (Restart)** [virtualxt_v20] (enable|**disable**)

	Emulate an NEC V20 CPU with the 186 instructionset.

- **CPU Frequency** [virtualxt_cpu_frequency] (**4.77MHz**|6MHz|8MHz|10MHz|12MHz|16MHz)

	Set the CPU frequency. If this is set to a higher value then the host system can emulate
	the time will appear to go slower in the guest environment.

## Device types

The VirtualXT core supports the following device type(s), bolded device type(s) are required:

- Joystick - Analog
- **Keyboard** - Keyboard
- Mouse

## Compatibility

This core emulates a Intel 8088 CPU running at 4.77 Mhz just like the original IBM 5150/5160. This is quite a slow system and the original 8088 only operates in real-mode. This means that no protected-mode or 32 bit applications will run. Most DOS software from the 90's requires a VGA card and a later CPU.

Try software released in the 80's, like classic PC booters.

## External Links

- [VirtualXT Homepage](https://virtualxt.org)
- [VirtualXT Repository](https://github.com/andreas-jonsson/virtualxt)
- [VirtualXT Issues Here](https://github.com/andreas-jonsson/virtualxt/issues)
