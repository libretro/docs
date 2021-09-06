# Coleco - ColecoVision (GearColeco)

## Background

Gearcoleco is an open source, cross-platform, ColecoVision emulator written in C++.

- Accurate Z80 core, including undocumented opcodes and behavior like R and MEMPTR registers.
- Accurate TMS9918 emulation.
- Sound emulation using a fine tuned Sms_Snd_Emu library.
- Battery powered RAM save support.
- Supported platforms (libretro): Windows, Linux, macOS, Raspberry Pi, Android, iOS, tvOS, PlayStation Vita, PlayStation 3, Nintendo 3DS, Nintendo GameCube, Nintendo Wii, Nintendo WiiU, Nintendo Switch, Emscripten, Classic Mini systems (NES, SNES, C64, ...), OpenDingux and QNX.

The Gearcoleco core has been authored by

- [Ignacio Sanchez (drhelius)](https://github.com/drhelius)

The Gearcoleco core is licensed under

- [GPLv3](https://github.com/drhelius/Gearcoleco/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Gearcoleco require a BIOS file to work.

Required or optional firmware files go in the frontend's system directory.

!!! attention
	 Gearcoleco emulator requires a ColecoVision BIOS. In order to get it to work you must place the following file in RetroArch's system directory.

| Filename          | Description                        | md5sum                           |
|:-----------------:|:----------------------------------:|:--------------------------------:|
| colecovision.rom  | ColecoVision BIOS - Mandatory      | 2c66f5911e5b42b8ebe113403548eee7 |

## Extensions

Content that can be loaded by the Gearcoleco core have the following file extensions:

- .col
- .cv
- .bin
- .rom

RetroArch database(s) that are associated with the Gearcoleco core:

- [Coleco - ColecoVision](https://github.com/libretro/libretro-database/blob/master/rdb/Coleco%20-%20ColecoVision.rdb)

## Features

Frontend-level settings or features that the Gearcoleco core respects.

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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Gearcoleco core's library name is 'Gearcoleco'

The Gearcoleco core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Gearcoleco core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The Gearcoleco core's core provided sample rate is 44100 Hz
- The Gearcoleco core's width is 256
- The Gearcoleco core's height is 192
- The Gearcoleco core's core provided aspect ratio is 4:3

## Core options

The Gearcoleco core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Refresh Rate (restart)** [gearcoleco_timing] (**Auto**|NTSC (60 Hz)|PAL (50 Hz))

    Select which refresh rate will be used in emulation.

    - *Auto* selects the best refresh rate based in the rom.
    - *NTSC (60 Hz)* forces 60 Hz.
    - *PAL (50 Hz)* forces 50 Hz.

- **Allow Up+Down / Left+Right** [gearcoleco_up_down_allowed] (**Disabled**|Enabled)

    Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time.

    This may cause movement based glitches to occur in certain games.

    It's best to keep this core option disabled.

### Joypad

| User 1 and User 2 input descriptors | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| Up                                  | ![](../image/retropad/retro_dpad_up.png)       |
| Down                                | ![](../image/retropad/retro_dpad_down.png)     |
| Left                                | ![](../image/retropad/retro_dpad_left.png)     |
| Right                               | ![](../image/retropad/retro_dpad_right.png)    |
| Left Button                         | ![](../image/retropad/retro_a.png)             |
| Right Button                        | ![](../image/retropad/retro_b.png)             |
| 1                                   | ![](../image/retropad/retro_x.png)             |
| 2                                   | ![](../image/retropad/retro_y.png)             |
| 3                                   | ![](../image/retropad/retro_r1.png)            |
| 4                                   | ![](../image/retropad/retro_l1.png)            |
| 5                                   | ![](../image/retropad/retro_r2.png)            |
| 6                                   | ![](../image/retropad/retro_l2.png)            |
| 7                                   | ![](../image/retropad/retro_r3.png)            |
| 8                                   | ![](../image/retropad/retro_l3.png)            |
| *                                   | ![](../image/retropad/retro_select.png)        |
| #                                   | ![](../image/retropad/retro_start.png)         |

## External Links

- [Official Gearcoleco Repository](https://github.com/drhelius/Gearcoleco)
- [Libretro Gearcoleco Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gearcoleco_libretro.info)
- [Report Gearcoleco Core Issues Here](https://github.com/drhelius/Gearcoleco/issues)

### See also

- [MSX/SVI/ColecoVision/SG-1000 (blueMSX)](bluemsx.md)
