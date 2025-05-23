# [VirtualXT]

## Background

VirtualXT is a Turbo PC/XT emulator that runs on modern hardware and operating systems. It is designed to be simple and lightweight yet still capable enough to run a large library of old application and games.

The VirtualXT core has been authored by

- [Andreas T Jonsson]

The VirtualXT core is licensed under

- [zlib](https://spdx.org/licenses/Zlib.html)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## How to start the VirtualXT core:

The core has no external dependacies. You only need to load the .so/dll file and preferably install the .info file and you are good to go.

The default system emulated is a XT class machine with an Intel 8088 CPU. This means that most DOS games form the 90's wont run. VirtualXT is intended to run older CGA games and applications from the 80's, like PC booters.
There is also optional support for 80186 CPU's and VGA adapters if you want to try some more "modern" software.

## BIOS

There is an option to use [GLaBIOS](https://github.com/640-KB/GLaBIOS/) or [TurboXT BIOS 3.1](https://www.phatcode.net/downloads.php?id=101). Both are included in the core.

## Extensions

Content that can be loaded by the VirtualXT core have the following file extensions:

- .img
- .exe
- .com
- [.ini](https://raw.githubusercontent.com/virtualxt/virtualxt/refs/heads/develop/tools/config/basic.ini)

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

- **Reset default disk (Restart)** [virtualxt_reset_default_disk] (true|**false**)

	The default disk image will be reverted to it's original state upon boot.
	
- **Boot priority (Restart)** [virtualxt_boot_priority] (**FD**|HD)

	Set preferred boot device.

- **Video standard (Restart)** [virtualxt_video] (**CGA**|VGA)

	Selects default video adapter.

- **CPU Frequency** [virtualxt_cpu_frequency] (**4.77MHz**|7.15MHz|14.3MHz)

	Set the CPU frequency. If this is set to a higher value then the host system can emulate
	the time will appear to go slower in the guest environment.

- **186 instructions (Restart)** [virtualxt_186] (**true**|false)

	Enable emulation of 186 instruction.

- **286 flag register (Restart)** [virtualxt_flag_286] (true|**false**)

	Pull the high nibble of the flag register low. This will trick most software that a 286 CPU is installed.

- **EMS memory (Restart)** [virtualxt_ems] (**true**|false)

	Emulate the Lo-tech EMS Board.

- **BIOS (Restart)** [virtualxt_bios] (**GLaBIOS 0.2.6**|TurboXT 3.1)

	Select system BIOS.

- **RTC type (Restart)** [virtualxt_rtc] (**GLaTICK 0.8.4**|none)

	Enable RTC and BIOS extension. (This is not supported in freestanding builds.)

- **Host RIFS2 (Restart)** [virtualxt_rifs] (**true**|false)

	Enable direct file share with host system. (Defaults to Z:)

## Device types

The VirtualXT core supports the following device type(s), bolded device type(s) are required:

- **Keyboard** - Keyboard
- Mouse

## Compatibility

This core emulates a Intel 8088 CPU running at 4.77 Mhz just like the original IBM 5150/5160. This is quite a slow system and the original 8088 only operates in real-mode. This means that no protected-mode or 32 bit applications will run.

Try software released in the 80's, like classic PC booters.

## External Links

- [VirtualXT Homepage](https://virtualxt.org)
- [VirtualXT Repository](https://github.com/virtualxt/virtualxt)
- [VirtualXT Issues Here](https://github.com/virtualxt/virtualxt/issues)
