# SNK - Neo Geo AES / MVS (Geolith)

## Background

Geolith is a highly accurate Neo Geo AES/MVS emulator written in ISO C11. Geolith takes a different approach to Neo Geo emulation than most existing emulators, aiming for a home-console-first experience and using single file ROMs (which never need to be updated) similar to a typical home console emulator. Despite the focus on the home experience, Geolith also fully supports arcade mode.

The Geolith core has been authored by

- [Rupert Carmichael (carmiker)](https://github.com/carmiker)

The Geolith core is licensed under

- [BSD-3-Clause](https://github.com/libretro/geolith-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Geolith requires a BIOS.

Required or optional firmware files go in the frontend's system directory.

!!! attention
	 Geolith requires BIOS files to function. Place the following files in RetroArch's system directory:

| Filename          | Description                        | md5sum                           |
|:-----------------:|:----------------------------------:|:--------------------------------:|
| aes.zip           | Neo Geo AES BIOS - Required        | ad9585c72130c56f04ae26aae87c289d |
| neogeo.zip        | Neo Geo MVS BIOS - Required        | 00dad01abdbf8ea9e79ad2fe11bdb182 |

## Extensions

Content that can be loaded by the Geolith core have the following file extensions:

- .neo

## Features

Frontend-level settings or features that the Geolith core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The Geolith core's library name is 'Geolith'

The Geolith core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.nv  | NVRAM save             |
| *.mcr | Memory Card save       |
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Geolith core's core provided FPS is 59.599484 for AES and 59.185606 for MVS
- The Geolith core's core provided sample rate is 55943.49Hz for AES and 55555Hz for MVS
- The Geolith core provides adjustable overscan masking and aspect ratio options

## Core options

The Geolith core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **System Type (Restart)** [geolith_system_type] (**Neo Geo AES (Home Console)**|Neo Geo MVS (Arcade)|Universe BIOS (Community-enhanced BIOS))

    Specify the System Type: AES, MVS, or Universe BIOS System

- **Region (Restart)** [geolith_region] (**USA**|Japan|Asia|Europe)

    Specify the Region: USA, Japan, Asia, Europe

- **Setting Mode (Restart, DIP Switch)** [geolith_settingmode] (**Off**|On)

    Bring up the System ROM menu at boot on arcade systems

- **Four Player Mode (Restart, Asia/Japan MVS Only)** [geolith_4player] (**Off**|On)

    Set Four Player (dual MVS cabinet) mode for Asia/Japan MVS systems, for use with Kizuna Encounter or homebrew with four player support

- **Freeplay (DIP Switch)** [geolith_freeplay] (**Off**|On)

    Play MVS games without the need to insert coins

- **Mask Overscan (Top)** [geolith_overscan_t] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (top)

- **Mask Overscan (Bottom)** [geolith_overscan_b] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (bottom)

- **Mask Overscan (Left)** [geolith_overscan_l] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (left)

- **Mask Overscan (Right)** [geolith_overscan_r] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (right)

- **Aspect Ratio** [geolith_aspect] (**Perfectly Square Pixels (1:1 PAR)**|Ostensibly Accurate NTSC Aspect Ratio (45:44 PAR)|Very Traditional NTSC Aspect Ratio (4:3 DAR))

    Set the Aspect Ratio

- **Sprites-per-line limit (Hack)** [geolith_sprlimit] (**Hardware Accurate (96)**|Double (192)|Triple (288)|MAX 381 MEGA PRO-GEAR SPEC)

    Set the sprites-per-line limit - increasing causes glitches in some games

- **Overclocking (Hack)** [geolith_oc] (**Off**|On)

    Annihilate your accuracy with The 24MHz Shock - expect glitches. DO NOT USE THIS FOR ALL GAMES, enable only for specific cases with major slowdown.

### Input Devices

| Player 1/2/3/4 Joysticks            | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| Up                                  | ![](../image/retropad/retro_dpad_up.png)       |
| Down                                | ![](../image/retropad/retro_dpad_down.png)     |
| Left                                | ![](../image/retropad/retro_dpad_left.png)     |
| Right                               | ![](../image/retropad/retro_dpad_right.png)    |
| A                                   | ![](../image/retropad/retro_b.png)             |
| B                                   | ![](../image/retropad/retro_a.png)             |
| C                                   | ![](../image/retropad/retro_y.png)             |
| D                                   | ![](../image/retropad/retro_x.png)             |
| Select/Coin                         | ![](../image/retropad/retro_select.png)        |
| Start                               | ![](../image/retropad/retro_start.png)         |
| C+D                                 | ![](../image/retropad/retro_l1.png)            |
| A+B                                 | ![](../image/retropad/retro_r1.png)            |
| B+C                                 | ![](../image/retropad/retro_l2.png)            |
| A+B+C                               | ![](../image/retropad/retro_r2.png)            |
| Test (Arcade, Player 1 Only)        | ![](../image/retropad/retro_l3.png)            |
| Service (Arcade, Player 1 Only)     | ![](../image/retropad/retro_r3.png)            |

| V-Liner                             | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| Up                                  | ![](../image/retropad/retro_dpad_up.png)       |
| Down                                | ![](../image/retropad/retro_dpad_down.png)     |
| Left                                | ![](../image/retropad/retro_dpad_left.png)     |
| Right                               | ![](../image/retropad/retro_dpad_right.png)    |
| Payout Table/Big                    | ![](../image/retropad/retro_b.png)             |
| Bet/Small                           | ![](../image/retropad/retro_a.png)             |
| Stop/Double-Up                      | ![](../image/retropad/retro_y.png)             |
| Start/Collect                       | ![](../image/retropad/retro_x.png)             |
| Operator Menu                       | ![](../image/retropad/retro_select.png)        |
| Clear Credit                        | ![](../image/retropad/retro_start.png)         |
| Coin 1                              | ![](../image/retropad/retro_l1.png)            |
| Coin 2                              | ![](../image/retropad/retro_r1.png)            |
| Hopper Out                          | ![](../image/retropad/retro_l2.png)            |

## External Links

- [Upstream Geolith Repository](https://gitlab.com/jgemu/geolith)
- [Libretro Geolith Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/geolith_libretro.info)
- [Libretro Geolith Repository](https://github.com/libretro/geolith-libretro)
- [Report Geolith Core Issues Here](https://github.com/libretro/geolith-libretro/issues)

### See also

- [Arcade (fbneo)](fbneo.md)
