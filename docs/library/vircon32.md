# Vircon32

## Background

- Vircon32 is a virtual game console, inspired by classic 16 & 32 bit systems as well as the arcade era.

The Vircon32 core has been authored by

- [Carra](https://github.com/vircon32)

The Vircon32 core is licensed under

- [3-clause BSD](https://github.com/vircon32/vircon32-libretro/blob/main/LICENSE.md)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

- OpenGL 3.0 or Open GL ES 2.0 or higher for the OpenGL renderer.

## BIOS

Required firmware file go in the frontend's system directory.

| Filename          | Description                     | md5sum                           |
|:-----------------:|:-------------------------------:|:--------------------------------:|
| StandardBios.v32  | Vircon32 BIOS 1.1               | 1ad96946bce7bd0422b7d9340735b248 |

## Extensions

Content that can be loaded by the Vircon32 core have the following file extensions:

- .v32
- .V32


RetroArch database that are associated with the Vircon32 core:

- [Vircon32](https://github.com/libretro/libretro-database/blob/master/rdb/Vircon32.rdb)

## Features

Frontend-level settings or features that the Vircon32 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
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
| [Softpatching](../guides/softpatching.md) | -         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Geometry and timing

- The Vircon32 core's core provided FPS is 60.
- The Vircon32 core's core provided sample rate is 44100.
- The Vircon32 core's base width is 640.
- The Vircon32 core's base height is 480.
- The Vircon32 core's max width is 640.
- The Vircon32 core's max height is 480.
- The Vircon32 core's core provided aspect ratio is 4/3.

## User 1 - 4 device types

The Vircon32 core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None
- **Vircon32 gamepad**

## Joypad

| RetroPad Inputs                                | Vircon32 inputs          |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_start.png)         | Button Start             |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
| ![](../image/retropad/retro_x.png)             | Button X                 |
| ![](../image/retropad/retro_y.png)             | Button Y                 |
| ![](../image/retropad/retro_a.png)             | Button A                 |
| ![](../image/retropad/retro_b.png)             | Button B                 |
| ![](../image/retropad/retro_l1.png)            | Button L                 |
| ![](../image/retropad/retro_r1.png)            | Button R                 |

## External Links

- [Official Website](http://www.vircon32.com)
- [Libretro Vircon32 Core repository](https://github.com/vircon32/vircon32-libretro/)
- [Libretro Vircon32 Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/vircon32.info)
- [Report Libretro Vircon32 Core issues here](https://github.com/vircon32/vircon32-libretro/issues)
- [Vircon32 games](http://www.vircon32.com/games.html)
- [Vircon32 test roms](http://www.vircon32.com/testroms.html)
