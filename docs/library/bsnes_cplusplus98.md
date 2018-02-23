# Nintendo - SNES / Famicom (bsnes C++98 (v085))

## Background

bsnes c++98 is a special fork from around v085 that's been backported to work with older compilers. Many platforms Libretro supports such as various consoles (PlayStation 3) are stuck with super-old compilers that don't support the latest c++ features that are in the newer bsnes v094 ports.

There's no reason to use this core now expect for edge cases on less compatible platforms.

### Author/License

The bsnes C++98 (v085) core has been authored by

- byuu
- Themaister
- Ver GreenEyes

The bsnes C++98 (v085) core is licensed under

- [GPLv3](https://github.com/libretro/bsnes-libretro/blob/libretro/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the bsnes C++98 (v085) core have the following file extensions:

- .sfc
- .smc

## Databases

RetroArch database(s) that are associated with the bsnes C++98 (v085) core:

- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Super Nintendo Entertainment System Hacks](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System%20Hacks.rdb)
- [Nintendo - Sufami Turbo](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Sufami%20Turbo.rdb)

## Features

Frontend-level settings or features that the bsnes C++98 (v085) core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The bsnes C++98 (v085) core's internal core name is '"bSNES'

The bsnes C++98 (v085) core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The bsnes C++98 (v085) core's core provided FPS is 60.0988118623 for NTSC games and 50.0069789082 for PAL games.
- The bsnes C++98 (v085) core's core provided sample rate is 32040.5 Hz.
- The bsnes C++98 (v085) core's core provided aspect ratio is (Ratio)

## Controllers

The bsnes C++98 (v085) core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **[SNES Joypad](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller)** - Joypad
- [SNES Mouse](https://en.wikipedia.org/wiki/Super_NES_Mouse) - Mouse

### User 2 device types

- None - Doesn't disable input.
- **[SNES Joypad](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller)** - Joypad
- [SNES Mouse](https://en.wikipedia.org/wiki/Super_NES_Mouse) - Mouse
- [Multitap](http://nintendo.wikia.com/wiki/Super_Multitap) - Joypad - Allows for up to five players to play together in mulitap games.
- [SuperScope](https://en.wikipedia.org/wiki/Super_Scope) - Lightgun
- [Justifier](https://en.wikipedia.org/wiki/Konami_Justifier) - Lightgun
- [Justifiers](https://en.wikipedia.org/wiki/Konami_Justifier) - Lightgun - Two Justifiers are plugged in, for two-player Justifier games.

### Multitap support

Activating multitap support in compatible games can be configured by switching to the [Multitap device type](https://docs.libretro.com/library/bsnes_cplusplus98#controllers) for User 2.

### Controller tables

#### Joypad

![](images/Controllers/snes.png)

| User 1 - 5 Remap descriptors | RetroPad Inputs                           |
|------------------------------|-------------------------------------------|
| B                            | ![](images/RetroPad/Retro_B_Round.png)    |
| Y                            | ![](images/RetroPad/Retro_Y_Round.png)    |
| Select                       | ![](images/RetroPad/Retro_Select.png)     |
| Start                        | ![](images/RetroPad/Retro_Start.png)      |
| D-Pad Up                     | ![](images/RetroPad/Retro_Dpad_Up.png)    | 
| D-Pad Down                   | ![](images/RetroPad/Retro_Dpad_Down.png)  |
| D-Pad Left                   | ![](images/RetroPad/Retro_Dpad_Left.png)  |
| D-Pad Right                  | ![](images/RetroPad/Retro_Dpad_Right.png) |
| A                            | ![](images/RetroPad/Retro_A_Round.png)    |
| X                            | ![](images/RetroPad/Retro_X_Round.png)    |
| L                            | ![](images/RetroPad/Retro_L1.png)         |
| R                            | ![](images/RetroPad/Retro_R1.png)         |

#### Mouse

| RetroMouse Inputs                                   | SNES Mouse              |
|-----------------------------------------------------|-------------------------|
| ![](images/RetroMouse/Retro_Mouse.png) Mouse Cursor | SNES Mouse Cursor       |
| ![](images/RetroMouse/Retro_Left.png) Mouse 1       | SNES Mouse Left Button  |
| ![](images/RetroMouse/Retro_Right.png) Mouse 2      | SNES Mouse Right Button |

#### Lightgun

| RetroLightgun Inputs                                 | SuperScope                | Justifier(s)        |
|------------------------------------------------------|---------------------------|---------------------|
| ![](images/RetroMouse/Retro_Mouse.png) Gun Crosshair | SuperScope Crosshair      | Justifier Crosshair |
| Gun Trigger                                          | SuperScope Trigger        | Justifier Trigger   |
| Gun Aux A                                            | SuperScope Cursor         |                     |
| Gun Aux B                                            | SuperScope Turbo          |                     |
| Gun Start                                            | SuperScope Pause          | Justifier Start     |

## Compatibility

Awaiting description.

## External Links

- [Official higan Website](https://byuu.org/)
- [Official higan Upstream Downloads](https://byuu.org/emulation/higan/)
- [Libretro bsnes C++98 (v085) Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/bsnes_cplusplus98_libretro.info)
- [Libretro bsnes C++98 (v085) Github Repository](https://github.com/libretro/bsnes-libretro-cplusplus98)
- [Report Libretro bsnes C++98 (v085) Core Issues Here](https://github.com/libretro/bsnes-libretro-cplusplus98/issues)

### See also

#### Nintendo - Sufami Turbo

- [Nintendo - SNES / Famicom (Beetle bsnes)](https://docs.libretro.com/library/beetle_bsnes/)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](https://docs.libretro.com/library/bsnes_mercury_accuracy/)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](https://docs.libretro.com/library/bsnes_mercury_balanced/)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](https://docs.libretro.com/library/bsnes_mercury_performance/)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](https://docs.libretro.com/library/bsnes_accuracy/)
- [Nintendo - SNES / Famicom (bsnes Balanced)](https://docs.libretro.com/library/bsnes_balanced/)
- [Nintendo - SNES / Famicom (bsnes Performance)](https://docs.libretro.com/library/bsnes_performance/)
- [Nintendo - SNES / Famicom (Snes9x)](https://docs.libretro.com/library/snes9x/)
- [Nintendo - SNES / Famicom (Snes9x 2002)](https://docs.libretro.com/library/snes9x_2002/)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](https://docs.libretro.com/library/snes9x_2005_plus/)
- [Nintendo - SNES / Famicom (Snes9x 2005)](https://docs.libretro.com/library/snes9x_2005/)
- [Nintendo - SNES / Famicom (Snes9x 2010)](https://docs.libretro.com/library/snes9x_2010/)

#### Nintendo - Super Nintendo Entertainment System (+ Hacks)

- [Nintendo - SNES / Famicom (Beetle bsnes)](https://docs.libretro.com/library/beetle_bsnes/)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](https://docs.libretro.com/library/bsnes_mercury_accuracy/)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](https://docs.libretro.com/library/bsnes_mercury_balanced/)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](https://docs.libretro.com/library/bsnes_mercury_performance/)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](https://docs.libretro.com/library/bsnes_accuracy/)
- [Nintendo - SNES / Famicom (bsnes Balanced)](https://docs.libretro.com/library/bsnes_balanced/)
- [Nintendo - SNES / Famicom (bsnes Performance)](https://docs.libretro.com/library/bsnes_performance/)
- [Nintendo - SNES / Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [Nintendo - SNES / Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)
- [Nintendo - SNES / Famicom (Snes9x)](https://docs.libretro.com/library/snes9x/)
- [Nintendo - SNES / Famicom (Snes9x 2002)](https://docs.libretro.com/library/snes9x_2002/)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](https://docs.libretro.com/library/snes9x_2005_plus/)
- [Nintendo - SNES / Famicom (Snes9x 2005)](https://docs.libretro.com/library/snes9x_2005/)
- [Nintendo - SNES / Famicom (Snes9x 2010)](https://docs.libretro.com/library/snes9x_2010/)