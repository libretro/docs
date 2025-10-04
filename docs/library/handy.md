# Atari - Lynx (Handy)

## Background

Handy is an Atari Lynx video game system emulator that can be used as a libretro core.  Handy was the original name of the Lynx project that was started at Epyx and then finished by Atari.

### Author/License

The Handy core has been authored by

- K. Wilkins

The Handy core is licensed under

- [zlib](https://sourceforge.net/projects/handy/)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Handy core have the following file extensions:

- .lnx

## Databases

RetroArch database(s) that are associated with the Handy core:

- [Atari - Lynx](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%20Lynx.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename    |    Description             |              md5sum              |
|:-------------:|:--------------------------:|:--------------------------------:|
| lynxboot.img  | Lynx Boot Image - Required | fcd403db69f54290b51035d82f835e7b |

## Features

Frontend-level settings or features that the Handy core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay (State based) | ✔ (not link-cable emulation) |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
| Cheats (Cheats menu) | ✕         |
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

The Handy core's directory name is 'Handy'

The Handy core saves/loads to/from these directories.

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Handy core's core provided FPS is 75
- The Handy core's core provided sample rate is 22050 Hz
- The Handy core's core provided aspect ratio is dependent on the ['Display rotation' core option](#core-options/). When set to None, the aspect ratio will be 80/51. When set to 90 or 240, the aspect ratio will be 51/80.

## Core options

The Handy core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Display rotation** [handy_rot] (**None**/90/240)

	Self-explanatory. Need to restart content.

## Controllers

The Handy core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

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

## Compatibility

| Game         | Issue                                                                   |
|--------------|-------------------------------------------------------------------------|
| RoadBlasters | Graphics glitches. Minor flickering and glitches after starting a race. |

## External Links

- [Official Handy Website](http://handy.sourceforge.net/)
- [Official Handy Downloads](http://handy.sourceforge.net/download.htm)
- [Libretro Handy Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/handy_libretro.info)
- [Libretro Handy Github Repository](https://github.com/libretro/libretro-handy)
- [Report Libretro Handy Core Issues Here](https://github.com/libretro/libretro-handy/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IfDlFKLg0HMDXbn8BrcxbJV)

### See also

#### Atari - Lynx

- [Atari - Lynx (Beetle Lynx)](beetle_lynx.md)
- [Atari - Lynx (Holani)](holani.md)
