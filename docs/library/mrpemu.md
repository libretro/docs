---
title: "MrpEmu – mythroad / MRP core for RetroArch"
description: "RetroArch MrpEmu core (Sky-mobi mythroad/MRP): controls and compatibility. MRP packages hold MiniJ VM bytecode and optional native ARM/Thumb extensions for Sky-mobi feature-phone applications."
---

# MRP (MrpEmu)

## Background

MrpEmu is a Rust emulator for the mythroad (MRP) application platform — the download-and-run application ecosystem that Sky-mobi operated on MTK-based feature phones. MRP packages contain MiniJ VM bytecode and optional native `ext` ARM/Thumb libraries, and the core executes guest code and bridges the required phone services.

Supported content is `.mrp` packages from the mythroad platform. Optional device files (plugins and fonts) are discovered in the frontend's System/BIOS directory and beside the content. The [project compatibility records](https://github.com/AloysHF/MrpEmu/blob/master/docs/Game-Compatibility.md) describe tested titles and remaining limitations.

The MrpEmu core has been authored by:

- MrpEmu contributors

The MrpEmu core is licensed under:

- [GPL-3.0-or-later](https://github.com/AloysHF/MrpEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required. Optional device files are described under Usage.

## Extensions

Content that can be loaded by the MrpEmu core has the following file extension:

- .mrp

No RetroArch content database is currently associated with this core.

## Features

Frontend-level settings or features that the MrpEmu core respects:

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

The core reports the library name 'MrpEmu'. Its core-info display name is 'MRP (MrpEmu)', and its installed core filename is `mrpemu_libretro.<ext>`.

## Usage

The MrpEmu core requires the full path to content, so content is loaded directly from disk rather than from memory.

Optional device files (plugins and fonts) are looked up in RetroArch's System/BIOS directory and then beside the content; use the same filenames and directory layout as the [standalone emulator](https://github.com/AloysHF/MrpEmu/blob/master/docs/Standalone-Emulator.md). Titles also run without them.

The core reports a 30 Hz frontend pacing rate, which is the clock the applications are advanced at. Titles present a 240x320 portrait screen by default; a file or parent folder labeled 240x400 or 320x480 selects that size (labels may also use `×`).

Video is output in the RGB565 pixel format. Audio output, save states, core options, and guest memory descriptors are not implemented yet.

## User 1 device types

The MrpEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Left Soft Key (menu)     |
| ![](../image/retropad/retro_a.png)             | OK (confirm)             |
| ![](../image/retropad/retro_x.png)             | Right Soft Key (back)    |
| ![](../image/retropad/retro_y.png)             | Digit 0                  |
| ![](../image/retropad/retro_select.png)        | Key *                    |
| ![](../image/retropad/retro_start.png)         | Key #                    |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |

## Compatibility

Compatibility varies by package. A rendered startup screen or frame does not establish full gameplay. Entry paths that require network services are unavailable in the emulator; see the project compatibility records for per-title status and limitations.

## External links

- [MrpEmu Repository](https://github.com/AloysHF/MrpEmu)
- [Libretro MrpEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mrpemu_libretro.info)
- [Report Libretro MrpEmu Core Issues Here](https://github.com/AloysHF/MrpEmu/issues)
