# Wolfenstein 3D/Spear of Destiny/Super 3D Noah’s Ark (ECWolf) *WIP*

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/1my0auvYH-I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

ECWolf is a port of the Wolfenstein 3D engine based of Wolf4SDL. It combines the original Wolfenstein 3D engine with the user experience of ZDoom to create the most user and mod author friendly Wolf3D source port.

Like ZDoom, ECWolf aims to support all games which use the Wolfenstein 3D engine including Blake Stone (coming in ECWolf 3.0), Corridor 7, Operation Body Count, Rise of the Triad, and Super 3D Noah's Ark. ECWolf will also support Macintosh Wolfenstein 3D along with all of its user created missions (coming in ECWolf 2.0).

- phcoder

The ECWolf core is licensed under

- [BSD/LGPL]()

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

- Single binary runs all supported games. (Wolfenstein 3D, Spear of Destiny, ...)
- Full support for high resolution modes with aspect ratio correction including wide screen support.
- Modern control schemes (WASD + mouse).
- Mac Wolf/S3DNA/ROTT style automap.
- Unlimited save slots.
- This is actually based on the Wolf3D engine instead of a recreation or forcing into a more modern engine.
- Software rendered using the same 8-bit ray casting.

## Extensions

Content that can be loaded by the ECWolf core have the following file extensions:

- wl6
- n3d
- sod
- sdm
- wl1
- pk3
- exe

## Databases

RetroArch database(s) that are associated with the ECWolf core:

- [ECWolf](https://github.com/libretro/libretro-database/blob/master/rdb/Wolfenstein%203D.rdb)

## BIOS

ECWolf does require BIOS (bootrom) files to work.

- ecwolf.pk3

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕        |
| Screenshots       | ✔        |
| Saves             | ✔        |
| States            | ✔        |
| Rewind            | ✔        |
| Netplay           | ✕        |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔        |
| Remapping         | ✔        |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Crop Overscan (in RetroArch's Video settings) | ✕         |

### Directories

The ECWolf core's internal core name is `ecwolf`.

### Core provided aspect ratio

ECWolf's core provided aspect ratio is 16:10.

## Core options

## Controllers

### Device types

The ECWolf core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Move Forward             |
| ![](../image/retropad/retro_dpad_down.png)     | Move Backward            |
| ![](../image/retropad/retro_dpad_left.png)     | Turn Left                |
| ![](../image/retropad/retro_dpad_right.png)    | Turn Right               |
| ![](../image/retropad/retro_l1.png)            | Strafe Left              |
| ![](../image/retropad/retro_r1.png)            | Strafe Right             |
| ![](../image/retropad/retro_a.png)             | Fire                     |
| ![](../image/retropad/retro_b.png)             | Use                      |
| ![](../image/retropad/retro_x.png)             | Run                      |
| ![](../image/retropad/retro_y.png)             | Show Status              |
| ![](../image/retropad/retro_select.png)        | Map                      |
| ![](../image/retropad/retro_l2.png)            | Previous Weapon          |
| ![](../image/retropad/retro_r2.png)            | Next Weapon              |
| ![](../image/retropad/retro_start.png)         | Pause                    |
| ![](../image/retropad/retro_left_stick.png) X  | Strafe Left/Right        |
| ![](../image/retropad/retro_left_stick.png) Y  | Move Forward/Backward    |
| ![](../image/retropad/retro_right_stick.png) X | Turn Left/Right          |

## External Links

- [Libretro ECWolf Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/ecwolf_libretro.info)
- [Libretro ECWolf Github Repository](https://github.com/libretro/ecwolf)
- [Report ECWolf Core Issues Here](https://github.com/libretro/ecwolf/issues)
