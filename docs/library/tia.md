# Atari - 2600 (Tia)

## Background

Tia is an Atari 2600 core written from scratch in C89 - not a port of another emulator. It emulates the 6507 CPU, the TIA and the 6532 RIOT cycle-accurately, detects NTSC or PAL from the game's scanline count, and supports the common cartridge mappers: 2K/4K, F8/F6/F4 with SuperChip RAM, 3F, E0, FE, FA, E7, F0, UA, DPC (Pitfall II) and the Supercharger (AR). DPC+, CDF/CDFJ and BUS cartridges are not supported yet.

The Tia core has been authored by

- Eric Warmenhoven

The Tia core is licensed under

- [GPLv2+](https://github.com/warmenhoven/tia/blob/main/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Tia core have the following file extensions:

- .a26
- .bin

RetroArch database(s) that are associated with the Tia core:

- [Atari - 2600](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%202600.rdb)

## Features

Frontend-level settings or features that the Tia core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
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

## Core options

The Tia core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Region** [tia_region] (**Auto**|NTSC|PAL|PAL60|SECAM)
- **Palette** [tia_palette] (**Standard**|z26)
- **Left Difficulty (initial)** [tia_left_diff] (**A**|B)
- **Right Difficulty (initial)** [tia_right_diff] (**A**|B)
- **TV Type (initial)** [tia_color] (**Color**|Black & White)
- **Power-on RAM** [tia_ram_init] (**Hardware-like**|Zeroed)
- **Audio DC blocking (high-pass)** [tia_dc_block] (**On**|Off)
- **Crop horizontal overscan** [tia_crop_hoverscan] (**Off**|On)
- **Crop vertical overscan (rows)** [tia_crop_voverscan] (**0**|2|4|6|8|10|12|14|16|18|20|22|24)
- **Paddle sensitivity** [tia_paddle_sensitivity] (1|2|3|4|**5 (default)**|6|7|8|9|10)
- **Paddle deadzone (%)** [tia_paddle_deadzone] (**0% (off)**|5%|10%|15%|20%|25%|30%)

## Controllers

Each port can be a **Joystick**, **Paddles** (two per port, on the analog stick), **Driving** (the Indy 500 controller) or **Keypad** (the 12-key controller), set in `Controls > Port N Controls > Device Type`. The difficulty and TV-type options only set the switches' starting positions; the buttons below toggle them while a game runs.

### Joypad

| RetroPad Inputs | Tia |
|---|---|
| ![](../image/retropad/retro_dpad_up.png) | Up |
| ![](../image/retropad/retro_dpad_down.png) | Down |
| ![](../image/retropad/retro_dpad_left.png) | Left |
| ![](../image/retropad/retro_dpad_right.png) | Right |
| ![](../image/retropad/retro_b.png) | Fire |
| ![](../image/retropad/retro_select.png) | Select |
| ![](../image/retropad/retro_start.png) | Reset |
| ![](../image/retropad/retro_l1.png) | Left Difficulty A |
| ![](../image/retropad/retro_r1.png) | Left Difficulty B |
| ![](../image/retropad/retro_l2.png) | Right Difficulty A |
| ![](../image/retropad/retro_r2.png) | Right Difficulty B |
| ![](../image/retropad/retro_l3.png) | Color |
| ![](../image/retropad/retro_r3.png) | Black/White |

## External Links

- [Libretro Tia Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/tia_libretro.info)
- [Tia Github Repository](https://github.com/warmenhoven/tia)
- [Report Tia Core Issues Here](https://github.com/warmenhoven/tia/issues)

## Other Atari 2600 cores

- [Atari - 2600 (Stella)](stella.md)
- [Atari - 2600 (Stella 2014)](stella2014.md)
- [Atari - 2600 (Stella 2023)](stella2023.md)
