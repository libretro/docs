# Nintendo - SNES / Famicom (Beetle bsnes)

## Background

Standalone port of Mednafen bSNES to libretro, itself a old fork of bsnes 0.59.

This core exists as a side effect of porting/forking mednafen for its other cores in the past. There's no reason to use this core now that there's other more compatible and faster SNES cores.

### Author/License

The Beetle bsnes core has been authored by

- byuu
- [Mednafen Team](https://mednafen.github.io/)

The Beetle bsnes core is licensed under

- [GPLv2](https://github.com/libretro/beetle-bsnes-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Beetle bsnes core have the following file extensions:

- .smc
- .fig
- .bs
- .st
- .sfc

## Databases

RetroArch database(s) that are associated with the Beetle bsnes core:

- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Super Nintendo Entertainment System Hacks](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System%20Hacks.rdb)
- [Nintendo - Sufami Turbo](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Sufami%20Turbo.rdb)

## Features

Frontend-level settings or features that the Beetle bsnes core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✕         |
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
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The Beetle bsnes core's internal core name is 'Mednafen bSNES'

The Beetle bsnes core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)
- 'content-name'.rtc (Real time clock save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Beetle bsnes core's core provided FPS is 60.10
- The Beetle bsnes core's core provided sample rate is 44100 Hz
- The Beetle bsnes core's core provided aspect ratio is 4/3

## Controllers

The Beetle bsnes core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input
- **RetroPad** - Joypad
- RetroPad w/Analog  - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/snes.png)

| RetroPad Inputs                              | Beetle bsnes Inputs       |
|----------------------------------------------|---------------------------|
| ![](../image/retropad/retro_b.png)       | B                         |
| ![](../image/retropad/retro_y.png)       | Y                         |
| ![](../image/retropad/retro_select.png)        | Select                    |
| ![](../image/retropad/retro_start.png)         | Start                     |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                  |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right               |
| ![](../image/retropad/retro_a.png)       | A                         |
| ![](../image/retropad/retro_x.png)       | X                         |
| ![](../image/retropad/retro_l1.png)            | L                         |
| ![](../image/retropad/retro_r1.png)            | R                         |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle bsnes Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_snes_libretro.info)
- [Libretro Beetle bsnes Github Repository](https://github.com/libretro/beetle-bsnes-libretro)
- [Report Libretro Beetle bsnes Core Issues Here](https://github.com/libretro/beetle-bsnes-libretro/issues)

### See also

#### Nintendo - Sufami Turbo

- [Nintendo - SNES / Famicom (bsnes-jg)](bsnes-jg.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](bsnes_mercury_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](bsnes_mercury_balanced.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](bsnes_mercury_performance.md)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](bsnes_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes Balanced)](bsnes_balanced.md)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](bsnes_cplusplus98.md)
- [Nintendo - SNES / Famicom (bsnes Performance)](bsnes_performance.md)
- [Nintendo - SNES / Famicom (Snes9x)](snes9x.md)
- [Nintendo - SNES / Famicom (Snes9x 2002)](snes9x_2002.md)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](snes9x_2005_plus.md)
- [Nintendo - SNES / Famicom (Snes9x 2005)](snes9x_2005.md)
- [Nintendo - SNES / Famicom (Snes9x 2010)](snes9x_2010.md)

#### Nintendo - Super Nintendo Entertainment System (+Hacks)

- [Nintendo - SNES / Famicom (bsnes-jg)](bsnes-jg.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](bsnes_mercury_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](bsnes_mercury_balanced.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](bsnes_mercury_performance.md)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](bsnes_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes Balanced)](bsnes_balanced.md)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](bsnes_cplusplus98.md)
- [Nintendo - SNES / Famicom (bsnes Performance)](bsnes_performance.md)
- [Nintendo - SNES / Famicom (higan Accuracy)](higan_accuracy.md)
- [Nintendo - SNES / Famicom (nSide Balanced)](nside_balanced.md)
- [Nintendo - SNES / Famicom (Mesen-S)](mesen-s.md)
- [Nintendo - SNES / Famicom (Snes9x)](snes9x.md)
- [Nintendo - SNES / Famicom (Snes9x 2002)](snes9x_2002.md)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](snes9x_2005_plus.md)
- [Nintendo - SNES / Famicom (Snes9x 2005)](snes9x_2005.md)
- [Nintendo - SNES / Famicom (Snes9x 2010)](snes9x_2010.md)
