---
title: "GameTank – Clydeware GameTank core for RetroArch"
description: "RetroArch GameTank core (Clydeware GameTank): BIOS files, core options and controls. The GameTank is an 8-bit console designed by Clyde Shaffer."
---

# Clydeware - GameTank (GameTank)

## Background

The GameTank is an 8-bit console designed by Clyde Shaffer. It has two 65C02 CPUs (one for the game, one dedicated to audio), a hardware blitter and a 128x128 display with 256 colors. Games ship on flash cartridges, some of which can save to the cartridge.

This core is a libretro port of Clyde Shaffer's GameTankEmulator.

The GameTank core has been authored by:

- SundownerSport (libretro port)
- Clyde Shaffer (GameTank console and GameTankEmulator)

The GameTank core is licensed under:

- [MIT](https://github.com/SundownerSport/gametank-libretro/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

The GameTank core does not require a BIOS.

## Extensions

Content that can be loaded by the GameTank core have the following file extensions:

- .gtr

## Features

Frontend-level settings or features that the GameTank core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The GameTank core's library name is 'GameTank'

The GameTank core saves/loads to/from these directories.

**Frontend's Save directory**

| File       | Description |
|:----------:|:-----------:|
| *.srm      | Cartridge save RAM (`SAVE` carts) |
| *.xor      | Flash cartridge writes, stored as an XOR against the original ROM. Same format as the standalone emulator |

**Frontend's State directory**

| File       | Description |
|:----------:|:-----------:|
| *.state#   | State |

## Geometry and timing

- The GameTank core's core provided FPS is 60
- The GameTank core's core provided sample rate is 44191.9 Hz
- The GameTank core's base width is 170 (128 with side borders disabled)
- The GameTank core's base height is 128
- The GameTank core's max width is 170
- The GameTank core's max height is 128
- The GameTank core's core provided aspect ratio is 4:3 (1:1 with side borders disabled)

## Core options

The GameTank core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Palette** [gametank_palette] (**Capture**|Scaled|HDMI|Legacy)

	Color palette used to convert the GameTank's 8-bit colors to RGB.

- **Side borders (4:3)** [gametank_borders] (**enabled**|disabled)

	Pads the 128x128 picture to 4:3, filling each side of a line with the color of its last pixel.

- **Instant blitter** [gametank_instant_blit] (**disabled**|enabled)

	Completes blitter operations immediately instead of over the cycles real hardware takes.

## User 1 - 2 device types

The GameTank core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **GameTank Controller** - Joypad

## Joypad

| RetroPad Inputs                                | User 1 - 2 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | B                            |
| ![](../image/retropad/retro_y.png)             | C                            |
| ![](../image/retropad/retro_start.png)         | Start                        |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  |
| ![](../image/retropad/retro_a.png)             | A                            |
| ![](../image/retropad/retro_x.png)             | C                            |

## External links

- [GameTank Website](https://gametank.zone)
- [Original GameTankEmulator Repository](https://github.com/clydeshaffer/GameTankEmulator)
- [Libretro GameTank Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gametank_libretro.info)
- [Libretro GameTank GitHub Repository](https://github.com/SundownerSport/gametank-libretro)
- [Report Libretro GameTank Core Issues Here](https://github.com/SundownerSport/gametank-libretro/issues)
