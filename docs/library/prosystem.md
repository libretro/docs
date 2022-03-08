# Atari - 7800 (ProSystem)

## Background

ProSystem is an Atari 7800 emulator.

### Author/License

The ProSystem core has been authored by

- Greg Stanton
- Brian Berlin
- Leonis
- Greg DeMent

The ProSystem core is licensed under

- [GPLv2](https://github.com/libretro/prosystem-libretro/blob/master/License.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the ProSystem core have the following file extensions:

- .a78
- .bin

## Databases

RetroArch database(s) that are associated with the ProSystem core:

- [Atari - 7800](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%207800.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename          | Description          | md5sum                           |
|:-----------------:|:--------------------:|:--------------------------------:|
| 7800 BIOS (U).rom | 7800 BIOS - Optional | 0763f1ffb006ddbe32e52d497ee848ae |

## Features

Frontend-level settings or features that the ProSystem core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✔         |
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

### Directories

The ProSystem core's internal core name is 'ProSystem'

The ProSystem core saves/loads to/from these directories.

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The ProSystem core's core provided FPS is 60 for NTSC games and 50 for PAL games.
- The ProSystem core's core provided sample rate is 32640 Hz for NTSC games and 31200 Hz for PAL games
- The ProSystem core's core provided base width is 320
- The ProSystem core's core provided base height is 223 for NTSC games and 272 for PAL games
- The ProSystem core's core provided max width is 320
- The ProSystem core's core provided max height is 292
- The ProSystem core's core provided aspect ratio is 4/3

## Controllers

The ProSystem core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reaosn to switch to this.

### Controller tables

#### Joypad

![](../image/controller/atari_7800.png)

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Console Select           | ![](../image/retropad/retro_select.png)     |
| Console Pause            | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| 2                        | ![](../image/retropad/retro_a.png)          |
| Console Reset            | ![](../image/retropad/retro_x.png)          |
| Left Difficulty          | ![](../image/retropad/retro_l1.png)         |
| Right Difficulty         | ![](../image/retropad/retro_r1.png)         |

| User 2 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| 1                        | ![](../image/retropad/retro_b.png)          |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| 2                        | ![](../image/retropad/retro_a.png)          |

## External Links

- [Official ProSystem Website](https://gstanton.github.io/ProSystem1_3/)
- [Official ProSystem Github Repository](https://github.com/gstanton/ProSystem1_3)
- [Libretro ProSystem Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/prosystem_libretro.info)
- [Libretro ProSystem Github Repository](https://github.com/libretro/prosystem-libretro)
- [Report Libretro ProSystem Core Issues Here](https://github.com/libretro/prosystem-libretro/issues)
