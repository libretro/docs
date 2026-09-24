# Atari - 2600 (Stella 2014)

## Background

A port of [Stella](https://stella-emu.github.io/), the Atari 2600 VCS emulator, forked from the main Stella codebase around 2014 (Stella 3.9.3). It is a snapshot of the features, compatibility and performance of that time and misses many later accuracy improvements, but runs significantly faster - use it where the up-to-date [Stella](stella.md) core cannot keep full speed.

The Stella 2014 core has been authored by

- Stephen Anthony
- Bradford Mott
- Eckhard Stolberg
- Brian Watson

The Stella 2014 core is licensed under

- [GPLv2](https://github.com/libretro/stella2014-libretro/blob/master/stella/license.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Stella 2014 core have the following file extensions:

- .a26
- .bin

RetroArch database(s) that are associated with the Stella 2014 core:

- [Atari - 2600](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%202600.rdb)

## Features

Frontend-level settings or features that the Stella 2014 core respects.

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

The Stella 2014 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Color Depth (Restart)** [stella2014_color_depth] (**Thousands (16-bit)**|Millions (24-bit))
- **Color Palette** [stella2014_palette] (**Standard**|Z26)
- **Interframe Blending** [stella2014_mix_frames] (**OFF**|Simple|Ghosting (65%)|Ghosting (75%)|Ghosting (85%)|Ghosting (95%))
- **Audio Filter** [stella2014_low_pass_filter] (**OFF**|ON)
- **Audio Filter Level** [stella2014_low_pass_range] (5%|10%|15%|20%|25%|30%|35%|40%|45%|50%|55%|**60%**|65%|70%|75%|80%|85%|90%|95%)
- **Gamepad: Paddle Sensitivity (Digital)** [stella2014_paddle_digital_sensitivity] (10%|15%|20%|25%|30%|35%|40%|45%|**50%**|55%|60%|65%|70%|75%|80%|85%|90%|95%|100%)
- **Gamepad: Paddle Sensitivity (Analog)** [stella2014_paddle_analog_sensitivity] (10%|15%|20%|25%|30%|35%|40%|45%|**50%**|55%|60%|65%|70%|75%|80%|85%|90%|95%|100%|105%|110%|115%|120%|125%|130%|135%|140%|145%|150%)
- **Gamepad: Paddle Response (Analog)** [stella2014_paddle_analog_response] (**Linear**|Quadratic)
- **Gamepad: Paddle Deadzone (Analog)** [stella2014_paddle_analog_deadzone] (0%|3%|6%|9%|12%|**15%**|18%|21%|24%|37%|30%)
- **Stelladaptor: Paddle Sensitivity** [stella2014_stelladaptor_analog_sensitivity] (0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|**20**|21|22|23|24|25|26|27|28|29|30)
- **Stelladaptor: Paddle Centre Offset** [stella2014_stelladaptor_analog_center] (-10|-9|-8|-7|-6|-5|-4|-3|-2|-1|**0**|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)

## Controllers

Each port can be a **Gamepad** or **Paddles (Stelladaptor)**, set in `Controls > Port N Controls > Device Type`. With a gamepad, games that use paddles are played with the D-Pad or the left analog stick; the **Gamepad: Paddle** options set how.

### Joypad

| RetroPad Inputs | Stella 2014 |
|---|---|
| ![](../image/retropad/retro_dpad_up.png) | Up |
| ![](../image/retropad/retro_dpad_down.png) | Down |
| ![](../image/retropad/retro_dpad_left.png) | Left |
| ![](../image/retropad/retro_dpad_right.png) | Right |
| ![](../image/retropad/retro_b.png) | Fire |
| ![](../image/retropad/retro_select.png) | Select |
| ![](../image/retropad/retro_start.png) | Reset |
| ![](../image/retropad/retro_y.png) | Paddle Fire |
| ![](../image/retropad/retro_l1.png) | Left Difficulty A |
| ![](../image/retropad/retro_l2.png) | Left Difficulty B |
| ![](../image/retropad/retro_r1.png) | Right Difficulty A |
| ![](../image/retropad/retro_r2.png) | Right Difficulty B |
| ![](../image/retropad/retro_l3.png) | Color |
| ![](../image/retropad/retro_r3.png) | Black/White |

## External Links

- [Libretro Stella 2014 Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/stella2014_libretro.info)
- [Libretro Stella 2014 Github Repository](https://github.com/libretro/stella2014-libretro)
- [Report Libretro Stella 2014 Core Issues Here](https://github.com/libretro/stella2014-libretro/issues)

## Other Atari 2600 cores

- [Atari - 2600 (Stella)](stella.md)
- [Atari - 2600 (Stella 2023)](stella2023.md)
- [Atari - 2600 (Tia)](tia.md)
