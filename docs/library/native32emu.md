# Native32 (Native32Emu)

## Background

Native32 is a game format developed by Sunplus for DVD player and TV chipsets (circa 2005–2011). Games use `.smf`, `.sgm`, or `.ssl` file extensions and feature a stack-based, ActionScript-like virtual machine with raster graphics. Native32Emu is an emulator for this format written in Rust, with a libretro core front-end.

The Native32Emu core has been authored by:

- Aloys

The Native32Emu core is licensed under:

- [BSD-3-Clause](https://github.com/jiangxincode/Native32Emu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required.

## Extensions

Content that can be loaded by the Native32Emu core have the following file extensions:

- .smf
- .sgm
- .ssl

RetroArch database(s) that are associated with the Native32Emu core:

- Native32

## Features

Frontend-level settings or features that the Native32Emu core respects:

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

The Native32Emu core's library name is 'Native32 (Native32Emu)'

## Usage

The Native32Emu core requires the full path to content (it loads sibling files for `.ssl` multi-file content), so content is loaded directly from disk rather than from memory.

Video is output in the XRGB8888 pixel format and audio is output as stereo. Audio is currently limited to RAW PCM; MP3 music is not yet played. Save states and core options are not yet implemented.

## User 1 device types

The Native32Emu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | A (Native32 keycode 0x4000) |
| ![](../image/retropad/retro_a.png)             | B / Menu (Native32 keycode 0x8800) |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |

## External links

- [Native32Emu Repository](https://github.com/jiangxincode/Native32Emu)
- [Libretro Native32Emu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/native32emu_libretro.info)
- [Report Libretro Native32Emu Core Issues Here](https://github.com/jiangxincode/Native32Emu/issues)
