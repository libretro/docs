# RPG Maker 2000/2003 (EasyRPG)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/PujdH2H_nm0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

EasyRPG Player is a game interpreter to play RPG Maker 2000, 2003 and EasyRPG games. It uses the LCF parser library (liblcf) to read RPG Maker game data.

EasyRPG Player is part of the EasyRPG Project. More information is available at the project website: [https://easyrpg.org/](https://easyrpg.org/)

### Author/License

The EasyRPG core has been authored by

- EasyRPG team

The EasyRPG core is licensed under

- [GPLv3](https://github.com/libretro/easyrpg-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the EasyRPG core have the following file extensions:

- .ldb
- .zip
- .easyrpg

### RTP files

You must download the RTP2000 and RTP2003 from [here](https://www.rpgmakerweb.com/run-time-package). They are exe/zip files but can be extracted with e.g. 7zip. Create `rtp` folder in `system` folder. Put the extracted data in "rtp/2000" and "rtp/2003" to `system/rtp` accordingly.

|   |   |   |   |   |
|---|---|---|---|---|
| retroarch  |  system |  rtp | 2000   |   |
|   |   |   | 2003  |   |

## Databases

RetroArch database(s) that are associated with the EasyRPG core:

- [RPG Maker](https://github.com/libretro/libretro-database/blob/master/rdb/RPG%20Maker.rdb) (only covers 2000 and 2003 games, not the other versions)
- [RPG Maker thumbnails](https://github.com/libretro-thumbnails/RPG_Maker)

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
| Core Options      | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
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
- Save##.dyn (Additional save file data used by some games)
- Save.lgs (Global save data used by some games)
- easyrpg_log.txt (EasyRPG log file)

**Frontend's system directory**

- easyrpg-player/config.ini (configuration of the engine)

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

| RetroPad Inputs                                | EasyRPG core inputs       |
|------------------------------------------------|---------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Up                        |
| ![](../image/retropad/retro_dpad_down.png)     | Down                      |
| ![](../image/retropad/retro_dpad_left.png)     | Left                      |
| ![](../image/retropad/retro_dpad_right.png)    | Right                     |
| ![](../image/retropad/retro_a.png)             | Decision                  |
| ![](../image/retropad/retro_b.png)             | Cancel                    |
| ![](../image/retropad/retro_x.png)             | Cancel                    |
| ![](../image/retropad/retro_y.png)             | Shift                     |
| ![](../image/retropad/retro_l3.png)            | Number 0                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 1                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 2                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 3                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 4                  |
| ![](../image/retropad/retro_r3.png)            | Number 5                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 6                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 7                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 8                  |
| ![](../image/retropad/retro_right_stick.png)   | Number 9                  |
| ![](../image/retropad/retro_start.png)         | Settings Menu             |
| ![](../image/retropad/retro_select.png)        | Reset                     |
| ![](../image/retropad/retro_r2.png)            | Fast Forward (x3)         |
| ![](../image/retropad/retro_r2.png)            | Fast Forward (x10)        |
| ![](../image/retropad/retro_l2.png)            | Debug Menu (Test Play mode only)        |
| ![](../image/retropad/retro_l2.png)            | Debug Through (Test Play mode only)     |
| ![](../image/retropad/retro_r1.png)            | Debug Save (Test Play mode only)        |
| ![](../image/retropad/retro_l1.png)            | Debug Abort Event (Test Play mode only) |



## External Links

- [Official EasyRPG Website](https://easyrpg.org/)
- [Official EasyRPG Github Repository](https://github.com/EasyRPG/Player)
- [Libretro EasyRPG Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/easyrpg_libretro.info)
- [Libretro EasyRPG Github Repository](https://github.com/libretro/easyrpg-libretro)
- [Report Libretro EasyRPG Core Issues Here](https://github.com/libretro/easyrpg-libretro/issues)
