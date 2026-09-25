# PC/XT (VirtualXT)

## Background

VirtualXT is a Turbo PC/XT emulator that runs on modern hardware and operating systems. It is designed to be simple and lightweight yet still capable enough to run a large library of old applications and games.

It emulates an Intel 8088 or NEC V20 CPU, the PC/XT chipset, CGA, EGA or Hercules graphics, EMS memory and a real-time clock, and can share a directory of the host with the emulated machine.

The VirtualXT core has been authored by

- Andreas T Jonsson

The VirtualXT core is licensed under

- [zlib](https://spdx.org/licenses/Zlib.html)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

The PC/XT BIOS and the EGA BIOS are built into the core. No files are needed.

## Extensions

Content that can be loaded by the VirtualXT core have the following file extensions:

- .img - a floppy or hard disk image
- .exe
- .com
- .ini - a machine configuration

## Loading content

- A **.img** disk image is booted, from the floppy or the hard disk first depending on **Boot priority**. Several images can be swapped through RetroArch's disk control.
- An **.exe** or **.com** file is started from its own directory, which the emulated machine sees through the host filesystem share. **Host filesystem** must be enabled for it.
- An **.ini** file describes the machine to build and what to load into it.
- Without a disk image the core boots its default disk, `virtualxt_default.img` in the saves directory. It is created the first time, and created anew each time content is loaded while **Reset default disk** is enabled.

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
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
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
- The VirtualXT core's base width and height follow the video mode.
- The VirtualXT core's max width is 720.
- The VirtualXT core's max height is 700.
- The VirtualXT core's core provided aspect ratio is 4/3.

## Core options

The VirtualXT core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Boot priority** [virtualxt_boot_priority] (**FD**|HD)
- **Reset default disk** [virtualxt_reset_default_disk] (**enabled**|disabled)
- **CPU Turbo (10MHz)** [virtualxt_cpu_turbo] (**disabled**|enabled)
- **CPU type** [virtualxt_cpu_type] (**Intel 8088**|NEC V20)
- **Video adapter** [virtualxt_video] (**CGA**|EGA|HGC)
- **CRT filter** [virtualxt_crt_filter] (**enabled**|disabled)
- **PC noise** [virtualxt_pc_noise] (**enabled**|disabled)
- **PC noise volume** [virtualxt_noise_volume] (**100%**|75%|50%|25%)
- **Host filesystem** [virtualxt_hostfs] (**enabled**|disabled)
- **EMS memory** [virtualxt_ems] (**enabled**|disabled)
- **Joystick** [virtualxt_joystick] (**enabled**|disabled)
- **Serial mouse** [virtualxt_serial_mouse] (**enabled**|disabled)
- **Show game focus message** [virtualxt_show_game_focus] (**enabled**|disabled)
- **RTC** [virtualxt_rtc] (**enabled**|disabled)

## Device types

The VirtualXT core takes input from the keyboard; enable RetroArch's Game Focus mode (Scroll Lock) to type. A mouse is emulated as a serial mouse and a joypad as a PC joystick, each while its core option is enabled.

## Compatibility

This core emulates an Intel 8088 CPU, like the original IBM 5150/5160, at 4.77 MHz or with **CPU Turbo** at 10 MHz. The 8088 only operates in real mode, so no protected-mode or 32-bit software will run.

Try software released in the 80's, like classic PC booters.

## External Links

- [VirtualXT Homepage](https://virtualxt.org)
- [VirtualXT Repository](https://codeberg.org/virtualxt/virtualxt)
