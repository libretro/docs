# RPG Maker 2000/2003 (EasyRPG)

## Background

EasyRPG Player is a game interpreter to play RPG Maker 2000, 2003 and EasyRPG games. It uses the LCF parser library (liblcf) to read RPG Maker game data.

EasyRPG Player is part of the EasyRPG Project. More information is available at the project website: [https://easyrpg.org/](https://easyrpg.org/)

### Author/License

The EasyRPG core has been authored by

- EasyRPG team

The EasyRPG core is licensed under

- [GPLv3](https://github.com/libretro/easyrpg-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the EasyRPG core have the following file extensions:

- .ini

## Databases

RetroArch database(s) that are associated with the EasyRPG core:

- [RPG Maker](https://github.com/libretro/libretro-database/blob/master/rdb/RPG%20Maker.rdb)

## Features

Frontend-level settings or features that the EasyRPG core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
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
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The EasyRPG core's internal core name is 'EasyRPG'

The EasyRPG core saves/loads to/from these directories.

**Loaded content's directory**

- Save##.lsd (Save files)
- easyrpg_log.txt (EasyRPG log file)

### Geometry and timing

- The EasyRPG core's core provided FPS is (FPS)
- The EasyRPG core's core provided sample rate is 44100 Hz
- The EasyRPG core's core provided aspect ratio is (Ratio)

## Controllers

The EasyRPG core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

| RetroPad Inputs                                | EasyRPG core inpits       |
|------------------------------------------------|---------------------------|
| ![](../image/retropad/retro_b.png)             | Cancel                    |
| ![](../image/retropad/retro_start.png)         | Decision                  |
| ![](../image/retropad/retro_dpad_up.png)       | Up                        |
| ![](../image/retropad/retro_dpad_down.png)     | Down                      |
| ![](../image/retropad/retro_dpad_left.png)     | Left                      |
| ![](../image/retropad/retro_dpad_right.png)    | Right                     |
| ![](../image/retropad/retro_a.png)             | Decision                  |

## External Links

- [Official EasyRPG Website](https://easyrpg.org/)
- [Official EasyRPG Github Repository](https://github.com/EasyRPG/Player)
- [Libretro EasyRPG Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/easyrpg_libretro.info)
- [Libretro EasyRPG Github Repository](https://github.com/libretro/easyrpg-libretro)
- [Report Libretro EasyRPG Core Issues Here](https://github.com/libretro/easyrpg-libretro/issues)