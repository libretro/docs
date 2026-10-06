# SPMP8000 (SPMP8000Emu)

## Background

SPMP8000 is a game platform developed by Sunplus for portable game devices. The SPMP8000 chipset features an ARM-based SoC with integrated graphics, audio, and input handling. SPMP8000Emu is an emulator for this platform written in Rust, with a libretro core front-end.

The SPMP8000Emu core has been authored by:

- jiangxincode

The SPMP8000Emu core is licensed under:

- [BSD-3-Clause](https://github.com/jiangxincode/SPMP8000Emu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required.

## Extensions

Content that can be loaded by the SPMP8000Emu core have the following file extensions:

- .bin

RetroArch database(s) that are associated with the SPMP8000Emu core:

- SPMP8000

## Features

Frontend-level settings or features that the SPMP8000Emu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The SPMP8000Emu core's library name is 'SPMP8000 (SPMP8000Emu)'

## Usage

The SPMP8000Emu core loads .bin game ROMs directly. Video is output in the XRGB8888 pixel format and audio is output as stereo. Save states, cheats, and core options are not yet implemented.

## User 1 device types

The SPMP8000Emu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | O Button                 |
| ![](../image/retropad/retro_a.png)             | X Button                 |
| ![](../image/retropad/retro_start.png)         | START                    |
| ![](../image/retropad/retro_select.png)        | SELECT                   |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |

## External links

- [SPMP8000Emu Repository](https://github.com/jiangxincode/SPMP8000Emu)
- [Libretro SPMP8000Emu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/spmp8000emu_libretro.info)
- [Report Libretro SPMP8000Emu Core Issues Here](https://github.com/jiangxincode/SPMP8000Emu/issues)