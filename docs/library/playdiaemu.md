# Playdia (PlaydiaEmu)

## Background

The Playdia is a Japanese interactive CD console released by Bandai in 1994. Titles are largely full-motion video driven by a CDS-XA disc stream, with video and audio decoded on a dedicated co-processor board and interactive choices advancing the stream. PlaydiaEmu is an emulator for this platform written in Rust, with a libretro core front-end.

The PlaydiaEmu core has been authored by:

- Aloys

The PlaydiaEmu core is licensed under:

- [BSD-3-Clause](https://github.com/AloysHF/PlaydiaEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required. The libretro core uses the same HLE disc player as the standalone emulator.

## Extensions

Content that can be loaded by the PlaydiaEmu core have the following file extensions:

- .cue
- .zip
- .iso
- .bin

Redump-style `.zip` archives (CUE + BIN, or a single BIN/ISO) are opened by the core itself; RetroArch should pass the whole archive through (`block_extract`).

RetroArch database(s) that are associated with the PlaydiaEmu core:

- Playdia

## Features

Frontend-level settings or features that the PlaydiaEmu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
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

The PlaydiaEmu core's library name is 'Playdia (PlaydiaEmu)'

## Core options

The PlaydiaEmu core has the following core options:

- **Audio Volume** (`playdiaemu_volume`) - Set the audio volume level. Default: 100%.
- **Swap A/B Buttons** (`playdiaemu_swap_ab`) - Swap the A and B button mappings. Default: disabled.
- **Debug Logging** (`playdiaemu_debug_logging`) - Enable debug logging. Default: disabled.

## Usage

The PlaydiaEmu core requires the full path to content (disc images are read from disk). Video is output in the XRGB8888 pixel format at 320×240 resolution, and audio is output as stereo at 44100 Hz. Save states and core options are implemented; battery saves and cheats are not.

## User 1 device types

The PlaydiaEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

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
| ![](../image/retropad/retro_start.png)         | Start                    |
| ![](../image/retropad/retro_select.png)        | Select                   |

## External links

- [PlaydiaEmu Repository](https://github.com/AloysHF/PlaydiaEmu)
- [Libretro PlaydiaEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/playdiaemu_libretro.info)
- [Report Libretro PlaydiaEmu Core Issues Here](https://github.com/AloysHF/PlaydiaEmu/issues)
