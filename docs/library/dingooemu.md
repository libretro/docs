# Dingoo A320 (DingooEmu)

## Background

The Dingoo A320 is a handheld game console developed by Dingoo Digital Technology, featuring an Ingenic JZ4740 MIPS SoC running at 336-400 MHz, 32 MB RAM, and a 2.8" 320×240 TFT LCD screen. The device became popular for its open-source community firmware (Dingux/OpenDingux) and homebrew ecosystem. DingooEmu is an emulator for this platform written in Rust, with a libretro core front-end.

The DingooEmu core has been authored by:

- Aloys

The DingooEmu core is licensed under:

- [BSD-3-Clause](https://github.com/jiangxincode/DingooEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required.

## Extensions

Content that can be loaded by the DingooEmu core have the following file extensions:

- .app

RetroArch database(s) that are associated with the DingooEmu core:

- Dingoo A320

## Features

Frontend-level settings or features that the DingooEmu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✔         |
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

The DingooEmu core's library name is 'Dingoo A320 (DingooEmu)'

## Core options

The DingooEmu core has the following core options:

- **Audio Volume** (`dingooemu_volume`) - Set the audio volume level. Default: 100%.
- **Key Auto-Repeat Delay** (`dingooemu_repeat_delay`) - Set the delay before key auto-repeat starts (in frames). Default: 24.
- **Key Auto-Repeat Period** (`dingooemu_repeat_period`) - Set the interval between key auto-repeat events (in frames). Default: 6.
- **Swap A/B Buttons** (`dingooemu_swap_ab`) - Swap the A and B button mappings. Default: disabled.
- **CPU/HLE Debug Logging** (`dingooemu_debug_logging`) - Enable debug logging for CPU and HLE operations. Default: disabled.
- **Unknown MIPS Instruction Policy** (`dingooemu_unknown_instruction`) - Set the behavior when encountering unknown MIPS instructions. Default: skip.

## Usage

The DingooEmu core loads .app game files from the Dingoo A320 handheld ecosystem. Video is output in the XRGB8888 pixel format at 320×240 resolution, and audio is output as stereo at 22050 Hz. Save states, cheats, and core options are fully implemented.

## User 1 device types

The DingooEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
| ![](../image/retropad/retro_a.png)             | A                        |
| ![](../image/retropad/retro_b.png)             | B                        |
| ![](../image/retropad/retro_x.png)             | X                        |
| ![](../image/retropad/retro_y.png)             | Y                        |
| ![](../image/retropad/retro_start.png)         | Start                    |
| ![](../image/retropad/retro_select.png)        | Select                   |
| ![](../image/retropad/retro_l1.png)            | L                        |
| ![](../image/retropad/retro_r1.png)            | R                        |

## Memory

The DingooEmu core exposes the following memory regions:

| Memory Region | Description |
|---------------|-------------|
| System RAM    | 32 MB main system memory |
| Video RAM     | Framebuffer memory (320×240 RGB565) |

## External links

- [DingooEmu Repository](https://github.com/jiangxincode/DingooEmu)
- [Libretro DingooEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dingooemu_libretro.info)
- [Report Libretro DingooEmu Core Issues Here](https://github.com/jiangxincode/DingooEmu/issues)
