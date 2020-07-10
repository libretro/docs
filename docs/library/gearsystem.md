# Sega - MS/GG (Gearsystem)

## Background

Gearsystem is an open source, multi-platform, Sega Master System / Game Gear / SG-1000 emulator written in C++.

- Highly accurate Z80 core, including undocumented opcodes and behaviour like R and MEMPTR registers.
- Multi-Mapper support: SEGA, Codemasters, SG-1000 and ROM only cartridges.
- Automatic region detection: NTSC-JAP, NTSC-USA, PAL-EUR.
- Internal database for rom detection
- Highly accurate VDP emulation including timing and SMS2 only 224 mode support.
- Audio emulation using SDL Audio and Sms_Snd_Emu library.
- Battery powered RAM save support.
- Save states.
- Game Genie and Pro Action Replay cheat support.
- Runs on Windows, Linux, Mac OS X, Raspberry Pi, iOS and as a libretro core (RetroArch).

The Gearsystem core has been authored by

- Ignacio Sanchez

The Gearsystem core is licensed under

- [GPLv3](https://github.com/drhelius/Gearsystem/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Not required.

## Extensions

Content that can be loaded by the Gearsystem core have the following file extensions:

- .sms
- .gg
- .sg
- .bin
- .rom

RetroArch database(s) that are associated with the Gearsystem core:

- [Sega - Game Gear](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Game%20Gear.rdb)
- [Sega - Master System - Mark III](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Master%20System%20-%20Mark%20III.rdb)
- [Sega - SG-1000](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20SG-1000.rdb)

## Features

Frontend-level settings or features that the Gearsystem core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats - Game Genie  | ✔         |
| RetroArch Cheats - Pro Acion Replay | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Gearsystem core's library name is 'Gearsystem'

The Gearsystem core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Gearsystem core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The Gearsystem core's core provided sample rate is 44100 Hz
- The Gearsystem core's base width is 256 for Master System / SG-1000 games and 160 for Game Gear games
- The Gearsystem core's base height is 192 for Master System / SG-1000 games and 144 for Game Gear games
- The Gearsystem core's max width is 256 for Master System games and 160 for Game Gear games
- The Gearsystem core's max height is 224 for Master System games and 144 for Game Gear games
- The Gearsystem core's core provided aspect ratio is 4:3 for Master System / SG-1000 games and 10:9 for Game Gear games

### Joypad

![](../image/controller/gg.png)

![](../image/controller/sms.png)

![](../image/controller/sg1000.png)

| User 1 input descriptors | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| 1                        | ![](../image/retropad/retro_b.png)             |
| Start                    | ![](../image/retropad/retro_start.png)         |
| Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| 2                        | ![](../image/retropad/retro_a.png)             |

## Compatibility

- [Gearsystem Accuracy Tests](https://github.com/drhelius/Gearsystem#accuracy-tests)

## External Links

- [Official Gearsystem Repository](https://github.com/drhelius/Gearsystem)
- [Libretro Gearsystem Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gearsystem_libretro.info)
- [Report Libretro Gearsystem Core Issues Here](https://github.com/drhelius/Gearsystem/issues)

### See also

#### Sega - Game Gear

- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)

#### Sega - Master System - Mark III

- [Sega - Master System (Emux SMS)](emux_sms.md)
- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)
- [Sega - MS/MD/CD/32X (PicoDrive)](picodrive.md)

#### Sega - SG-1000

- [MSX/SVI/ColecoVision/SG-1000 (blueMSX)](bluemsx.md)
- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)
