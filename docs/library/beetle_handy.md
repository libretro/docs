# Atari - Lynx (Beetle Handy)

## Background

Beetle Lynx is an Atari Lynx video game system emulator that can be used as a libretro core. Specifically it's a port of Mednafen Lynx which is a fork of Handy.

!!! attention
	Beetle Handy is incompatible with modern No-Intro romsets as they require headers to work properly. The regular Handy core does not have this issue.

### Author/License

The Beetle Handy core has been authored by

- K. Wilkins
- [Mednafen Team](https://mednafen.github.io/)

The Beetle Handy core is licensed under

- [zlib](https://github.com/libretro/beetle-lynx-libretro/blob/master/mednafen/lynx/license.txt), [GPLv2](https://github.com/libretro/beetle-lynx-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Beetle Handy core have the following file extensions:

- .lnx

## Databases

RetroArch database(s) that are associated with the Beetle Handy core:

- [Atari - Lynx](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%20Lynx.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename    |    Description             |              md5sum              |
|:-------------:|:--------------------------:|:--------------------------------:|
| lynxboot.img  | Lynx Boot Image - Required | fcd403db69f54290b51035d82f835e7b |

## Features

Frontend-level settings or features that the Beetle Handy core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay (State based) | ✔ (not link-cable emulation)         |
| Core Options      | ✕         |
| RetroAchievements | ✔         |
| Cheats (Cheats menu) | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✕         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The Beetle Handy core's directory name is 'Mednafen Lynx'

The Beetle Handy core saves/loads to/from these directories.

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Beetle Handy core's core provided FPS is 75
- The Beetle Handy core's core provided sample rate is 44100 Hz
- The Beetle Handy core's core provided aspect ratio is 80/51

## Loading content

Beetle Handy is incompatible with modern No-Intro romsets as they require headers to work properly. The regular Handy core does not have this issue.

## Controllers

The Beetle Handy core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

![](../image/controller/lynx.png)

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                                | Beetle Handy core inputs |
|--------------------------|------------------------------------------------|--------------------------|
|                          | ![](../image/retropad/retro_b.png)             | B                        |
|                          | ![](../image/retropad/retro_start.png)         | Pause                    |
|                          | ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
|                          | ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
|                          | ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
|                          | ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
|                          | ![](../image/retropad/retro_a.png)             | A                        |
|                          | ![](../image/retropad/retro_l1.png)            | Option 1                 |
|                          | ![](../image/retropad/retro_r1.png)            | Option 2                 |

Supported combinations

* Option 1 + Pause = Flips Screen
* Option 2 + Pause = Restarts game

## Compatibility

!!! attention
	Beetle Handy is incompatible with modern No-Intro romsets as they require headers to work properly. The regular Handy core does not have this issue.

| Game             | Issue                                                                   |
|------------------|-------------------------------------------------------------------------|
|  RoadBlasters  | Graphics glitches. Minor flickering and glitches after starting a race.   |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle Handy Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_lynx_libretro.info)
- [Libretro Beetle Handy Github Repository](https://github.com/libretro/beetle-lynx-libretro)
- [Report Libretro Beetle Handy Core Issues Here](https://github.com/libretro/beetle-lynx-libretro/issues)

### See also

#### Atari - Lynx

- [Atari - Lynx (Handy)](https://docs.libretro.com/library/handy/)