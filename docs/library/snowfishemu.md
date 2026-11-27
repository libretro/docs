---
title: "SnowFishEmu – SnowFish / SFA core for RetroArch"
description: "RetroArch SnowFishEmu core (SnowFish/SFA): core options, controls and save-state compatibility. SFA packages hold ARM/Thumb code and resources for SnowFish feature-phone applications."
---

# SnowFish (SnowFishEmu)

## Background

SnowFishEmu is a Rust emulator for SnowFish/SFA applications. SFA packages contain executable code and resources such as scenes, maps, images, scripts and companion resource containers. The core executes guest code and bridges the required firmware services.

Supported content is `.app` packages from the SnowFish feature-phone platform. An optional sibling resource file beside the content is discovered and served when a title requests it. The [project compatibility records](https://github.com/AloysHF/SnowFishEmu/blob/master/docs/Game-Compatibility.md) describe tested titles and remaining limitations.

The SnowFishEmu core has been authored by:

- Aloys

The SnowFishEmu core is licensed under:

- [BSD-3-Clause](https://github.com/AloysHF/SnowFishEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required.

## Extensions

Content that can be loaded by the SnowFishEmu core has the following file extension:

- .app

No RetroArch content database is currently associated with this core.

## Features

Frontend-level settings or features that the SnowFishEmu core respects:

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

The core reports the library name 'snowfishemu_libretro'. Its core-info display name is 'SnowFish (SnowFishEmu)', and its installed core filename is `snowfishemu_libretro.<ext>`.

## Usage

The SnowFishEmu core requires the full path to content, so content is loaded directly from disk rather than from memory.
Keep any companion resource files and directories beside the application in their original layout.

The core reports a 60 Hz frontend pacing rate; each presented frame advances the guest's millisecond UI clock by 33 ms, which is the cadence the titles' own 60–120 ms screen pumps expect. Titles present a fixed 240x320 portrait screen.

Video is output in the XRGB8888 pixel format and audio is output as 44.1 kHz stereo. Save states, core options, and guest memory descriptors are implemented. Guest MIDI music is synthesized to stereo PCM.

Save states use the `SFEMSTAT` signature. Version 2 states restore the active MIDI tune and sample position; version 1 states restore with music initially silent. Create new states after upgrading the core.

## Core options

The SnowFishEmu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **CPU/HLE Debug Logging** (**disabled**|enabled)

	Forward debug-level core logs to the frontend log.

The option key is `snowfishemu_debug_logging`.

## User 1 device types

The SnowFishEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Confirm                  |
| ![](../image/retropad/retro_a.png)             | Confirm                  |
| ![](../image/retropad/retro_start.png)         | Confirm                  |
| ![](../image/retropad/retro_x.png)             | Left Soft Key            |
| ![](../image/retropad/retro_y.png)             | Right Soft Key           |
| ![](../image/retropad/retro_l1.png)            | Left Soft Key            |
| ![](../image/retropad/retro_r1.png)            | Right Soft Key           |
| ![](../image/retropad/retro_l2.png)            | Menu                     |
| ![](../image/retropad/retro_select.png)        | Number Layer (hold)      |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |

Hold **Select** as a modifier for the number layer: while Select is held, D-Pad and face buttons type digits 1–8, Start types 9, and L/R type 0. Release Select to restore the normal mapping.

Keyboard input through `RETRO_DEVICE_KEYBOARD` mirrors the standalone key map: numeric keypad, arrow keys, Enter (confirm), Z / X (soft keys) and M (menu). Enable RetroArch's Game Focus so keys reach the core.

## Compatibility

Compatibility varies by package and companion resources. A completed boot or captured frame does not establish full gameplay. Online authentication, multiplayer, actual payments and remote content are unavailable; see the project compatibility records for per-title interaction and rendering limitations.

## External links

- [SnowFishEmu Repository](https://github.com/AloysHF/SnowFishEmu)
- [Libretro SnowFishEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/snowfishemu_libretro.info)
- [Report Libretro SnowFishEmu Core Issues Here](https://github.com/AloysHF/SnowFishEmu/issues)
