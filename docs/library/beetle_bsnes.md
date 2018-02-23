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

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
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

![](images/Controllers/snes.png)

| RetroPad Inputs                              | Beetle bsnes Inputs       |
|----------------------------------------------|---------------------------|
| ![](images/RetroPad/Retro_B_Round.png)       | B                         |
| ![](images/RetroPad/Retro_Y_Round.png)       | Y                         |
| ![](images/RetroPad/Retro_Select.png)        | Select                    |
| ![](images/RetroPad/Retro_Start.png)         | Start                     |
| ![](images/RetroPad/Retro_Dpad_Up.png)       | D-Pad Up                  |
| ![](images/RetroPad/Retro_Dpad_Down.png)     | D-Pad Down                |
| ![](images/RetroPad/Retro_Dpad_Left.png)     | D-Pad Left                |
| ![](images/RetroPad/Retro_Dpad_Right.png)    | D-Pad Right               |
| ![](images/RetroPad/Retro_A_Round.png)       | A                         |
| ![](images/RetroPad/Retro_X_Round.png)       | X                         |
| ![](images/RetroPad/Retro_L1.png)            | L                         |
| ![](images/RetroPad/Retro_R1.png)            | R                         |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle bsnes Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_snes_libretro.info)
- [Libretro Beetle bsnes Github Repository](https://github.com/libretro/beetle-bsnes-libretro)
- [Report Libretro Beetle bsnes Core Issues Here](https://github.com/libretro/beetle-bsnes-libretro/issues)

### See also

#### Nintendo - Sufami Turbo

- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](https://docs.libretro.com/library/bsnes_mercury_accuracy/)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](https://docs.libretro.com/library/bsnes_mercury_balanced/)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](https://docs.libretro.com/library/bsnes_mercury_performance/)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](https://docs.libretro.com/library/bsnes_accuracy/)
- [Nintendo - SNES / Famicom (bsnes Balanced)](https://docs.libretro.com/library/bsnes_balanced/)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](https://docs.libretro.com/library/bsnes_cplusplus98/)
- [Nintendo - SNES / Famicom (bsnes Performance)](https://docs.libretro.com/library/bsnes_performance/)
- [Nintendo - SNES / Famicom (Snes9x)](https://docs.libretro.com/library/snes9x/)
- [Nintendo - SNES / Famicom (Snes9x 2002)](https://docs.libretro.com/library/snes9x_2002/)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](https://docs.libretro.com/library/snes9x_2005_plus/)
- [Nintendo - SNES / Famicom (Snes9x 2005)](https://docs.libretro.com/library/snes9x_2005/)
- [Nintendo - SNES / Famicom (Snes9x 2010)](https://docs.libretro.com/library/snes9x_2010/)

#### Nintendo - Super Nintendo Entertainment System (+Hacks)

- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](https://docs.libretro.com/library/bsnes_mercury_accuracy/)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](https://docs.libretro.com/library/bsnes_mercury_balanced/)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](https://docs.libretro.com/library/bsnes_mercury_performance/)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](https://docs.libretro.com/library/bsnes_accuracy/)
- [Nintendo - SNES / Famicom (bsnes Balanced)](https://docs.libretro.com/library/bsnes_balanced/)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](https://docs.libretro.com/library/bsnes_cplusplus98/)
- [Nintendo - SNES / Famicom (bsnes Performance)](https://docs.libretro.com/library/bsnes_performance/)
- [Nintendo - SNES / Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [Nintendo - SNES / Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)
- [Nintendo - SNES / Famicom (Snes9x)](https://docs.libretro.com/library/snes9x/)
- [Nintendo - SNES / Famicom (Snes9x 2002)](https://docs.libretro.com/library/snes9x_2002/)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](https://docs.libretro.com/library/snes9x_2005_plus/)
- [Nintendo - SNES / Famicom (Snes9x 2005)](https://docs.libretro.com/library/snes9x_2005/)
- [Nintendo - SNES / Famicom (Snes9x 2010)](https://docs.libretro.com/library/snes9x_2010/)