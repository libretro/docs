# Atari - Lynx (Holani)

## Background

Holani is a cycle-stepped Atari Lynx video game system emulator that can be used as a libretro core.  Holani's primary goal is to get closer to the Lynx hardware and provide a better emulation experience.

### Author/License

The Holani core has been authored by

- [LLeny](https://github.com/LLeny)

The Holani core is licensed under

- [GNU General Public License v3.0](https://github.com/LLeny/holani/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Holani core have the following file extensions:

- .lnx
- .o

## Databases

RetroArch database(s) that are associated with the Holani core:

- [Atari - Lynx](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%20Lynx.rdb)

## BIOS

Optional firmware files go in the frontend's system directory.

|   Filename    |    Description             |              md5sum              |
|:-------------:|:--------------------------:|:--------------------------------:|
| lynxboot.img  | Lynx Boot Image - Required | fcd403db69f54290b51035d82f835e7b |

## Features

Frontend-level settings or features that the Holani core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay (State based) | ✔ (not link-cable emulation) |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| Cheats (Cheats menu) | ✔         |
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

The Holani core's directory name is 'Holani'

The Holani core saves/loads to/from these directories.

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Holani core's core provided FPS is dynamic
- The Holani core's core provided sample rate is 16,000 Hz

## Controllers

The Holani core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/lynx.png)

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Pause                    | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |
| Option 1                 | ![](../image/retropad/retro_l1.png)         |
| Option 2                 | ![](../image/retropad/retro_r1.png)         |

Supported combinations

- Option 1 + Pause = Restarts game
- Option 2 + Pause = Flips Screen

## External Links

- [Official Holani Website](https://github.com/LLeny/holani-retro)
- [Official Holani Downloads](https://github.com/LLeny/holani-retro/releases)
- [Libretro Holani Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/holani_libretro.info)
- [Libretro Holani Github Repository](https://github.com/LLeny/holani-retro)
- [Report Libretro Holani Core Issues Here](https://github.com/LLeny/holani-retro/issues)

### See also

#### Atari - Lynx

- [Atari - Lynx (Beetle Lynx)](beetle_lynx.md)
- [Atari - Lynx (Handy)](handy.md)
