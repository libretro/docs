# SNK - Neo Geo AES / MVS / CD / CDZ (Geolith)

## Background

Geolith is a highly accurate Neo Geo AES/MVS/CD/CDZ emulator written in ISO C11. Geolith takes a different approach to Neo Geo emulation than most existing emulators, aiming for a home-console-first experience and using single file ROMs (which never need to be updated) similar to a typical home console emulator. Despite the focus on the home experience, Geolith also fully supports arcade mode.

Cartridge systems support TerraOnion's .neo file format only. CD systems support .bin/.cue and .chd disc images.

The Geolith core has been authored by

- [Rupert Carmichael (carmiker)](https://github.com/carmiker)
- [Romain Tisserand](https://github.com/rtissera) (Neo Geo CD)

The Geolith core is licensed under

- [BSD-3-Clause](https://github.com/libretro/geolith-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Geolith requires a BIOS. Which BIOS archive is required depends on the system being emulated.

Required or optional firmware files go in the frontend's system directory.

!!! attention
	 Geolith requires BIOS files to function. Place the following files from a recent MAME set in RetroArch's system directory:

| Filename          | Description                                                     |
|:-----------------:|:---------------------------------------------------------------:|
| aes.zip           | Neo Geo AES BIOS - Required for AES (Home Console) mode          |
| neogeo.zip        | Neo Geo MVS BIOS - Required for MVS (Arcade) and Universe BIOS   |
| neocd.zip         | Neo Geo CD BIOS - Required for CD Front Loader and Top Loader    |
| neocdz.zip        | Neo Geo CDZ BIOS - Required for all CD systems                   |
| irrmaze.zip       | The Irritating Maze BIOS - Optional, required for trackball input|

Notes on BIOS contents:

- AES mode loads `neo-po.bin` (Japan) or `neo-epo.bin` (all other regions) from aes.zip.
- MVS mode loads the region-appropriate System ROM from neogeo.zip: `sp-u2.sp1` (USA), `japan-j3.bin` (Japan), `sp-45.sp1` (Asia), `sp-s2.sp1` (Europe).
- Universe BIOS mode loads `uni-bios_4_0.rom` from neogeo.zip. This file is not part of a standard MAME set and must be added to the archive.
- CD Front Loader loads `front-sp1.bin` and CD Top Loader loads `top-sp1.bin`, both from neocd.zip. Both also require `000-lo.lo`, which is read from neocdz.zip, so **both archives are required** for Front Loader and Top Loader modes.
- CDZ mode loads `neocd.bin` from neocdz.zip, and CD Universe BIOS mode loads `uni-bioscd33.rom` from neocdz.zip.

## Extensions

Content that can be loaded by the Geolith core have the following file extensions:

- .neo
- .cue
- .chd

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
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
| RetroArch Cheats  | ✔         |
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
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

!!! note
	 Softpatching is unavailable because the core sets `need_fullpath`, which is required for CHD support.

### Directories

The Geolith core's library name is 'Geolith'

The Geolith core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.nv  | NVRAM save             |
| *.mcr | Memory Card save       |
| *.srm | Cartridge battery save |
| *.brm | CD Backup RAM save     |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Geolith core's core provided FPS is 59.599484 for AES and 59.185606 for MVS. CD systems use 59.599484.
- The Geolith core's core provided sample rate is 55943.49Hz for AES and 55555Hz for MVS. On CD systems the chip audio is resampled to match CDDA at 44100Hz.
- The Geolith core provides adjustable overscan masking and aspect ratio options

## Core options

The Geolith core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

Options are grouped into **System**, **Video** and **Hacks** categories. Cartridge-only and CD-only options are shown or hidden automatically depending on the content that is loaded.

### System

- **System Type (Restart)** [geolith_system_type] (**Neo Geo AES (Home Console)**|Neo Geo MVS (Arcade)|Universe BIOS (Community-enhanced BIOS))

    Specify the System Type: AES, MVS, or Universe BIOS System

    Cartridge content only.

- **Universe BIOS Hardware (Restart)** [geolith_unibios_hw] (Neo Geo AES (Home Console)|**Neo Geo MVS (Arcade)**)

    Specify the hardware the Universe BIOS should detect

    Cartridge content only.

- **CD System Type (Restart)** [geolith_cd_system_type] (Neo Geo CD (Front Loader)|Neo Geo CD (Top Loader)|**Neo Geo CDZ**|Neo Geo CDZ (Universe BIOS))

    Specify the CD System Type when loading Neo Geo CD disc images

    CD content only.

- **Region (Restart)** [geolith_region] (**USA**|Japan|Asia|Europe)

    Specify the Region: USA, Japan, Asia, Europe

- **Memory Card** [geolith_memcard] (Off|**On**)

    Enable or Disable the Memory Card

    Cartridge content only.

- **Memory Card Write Protect** [geolith_memcard_wp] (**Off**|On)

    Enable or Disable the Memory Card Write Protect pin

    Cartridge content only.

- **Setting Mode (Restart, DIP Switch)** [geolith_settingmode] (**Off**|On)

    Bring up the System ROM menu at boot on arcade systems

    Cartridge content only.

- **Four Player Mode (Restart, Asia/Japan MVS Only)** [geolith_4player] (**Off**|On)

    Set Four Player (dual MVS cabinet) mode for Asia/Japan MVS systems

    Cartridge content only. For use with Kizuna Encounter or homebrew with four player support.

- **Freeplay (DIP Switch)** [geolith_freeplay] (**Off**|On)

    Play MVS games without the need to insert coins

    Cartridge content only.

### Video

- **Mask Overscan (Top)** [geolith_overscan_t] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (top)

- **Mask Overscan (Bottom)** [geolith_overscan_b] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (bottom)

- **Mask Overscan (Left)** [geolith_overscan_l] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (left)

- **Mask Overscan (Right)** [geolith_overscan_r] (16|12|**8**|4|0)

    Mask off pixels hidden by a bezel or border on original CRTs (right)

- **Palette** [geolith_palette] (**Resistor Network**|Raw)

    Set the Palette

- **Aspect Ratio** [geolith_aspect] (**Perfectly Square Pixels (1:1 PAR)**|Ostensibly Accurate NTSC Aspect Ratio (45:44 PAR)|Very Traditional NTSC Aspect Ratio (4:3 DAR))

    Set the Aspect Ratio

### Hacks

- **Sprites-per-line limit (Hack)** [geolith_sprlimit] (**Hardware Accurate (96)**|Double (192)|Triple (288)|MAX 381 MEGA PRO-GEAR SPEC)

    Set the sprites-per-line limit - increasing causes glitches in some games

- **Overclocking (Hack)** [geolith_oc] (**Off**|On)

    Annihilate your accuracy with The 24MHz Shock - expect glitches

- **Disable ADPCM Accumulator Wrap (Hack)** [geolith_disable_adpcm_wrap] (**Off**|On)

    ADPCM Accumulator Wrap may be disabled to fix sound effects in buggy games, for example Ganryu and Nightmare in the Dark. This is a hack, and should remain Off for most games.

- **CD Speed Hack** [geolith_cd_speed_hack] (Enabled|**Disabled**)

    Patch BIOS busy-wait loops to reduce loading times (Does not work for Universe BIOS)

    CD content only.

- **CD DMA Length Limit** [geolith_cd_dma_len_limit] (Enabled|**Disabled**)

    Correct the BIOS upload pointers when a CD buffer DMA is larger than one sector, fixing corrupted sound in Art of Fighting's bonus stage. This is a hack, and real hardware behaviour is unconfirmed.

    CD content only.

- **Skip CD Loading** [geolith_cd_skip_loading] (Enabled|**Disabled**)

    Fast-forward through CD loading screens

    CD content only.

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
| Hopper Out                          | ![](../image/retropad/retro_r3.png)            |

The Irritating Maze uses a trackball, which is mapped to the left analog stick. This input is only available in MVS mode, and requires irrmaze.zip in the system directory. It is also possible to play The Irritating Maze using the Universe BIOS with a cheat enabled for joystick controls.

| The Irritating Maze                 | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| Trackball X                         | Left Analog X                                  |
| Trackball Y                         | Left Analog Y                                  |
| Left A                              | ![](../image/retropad/retro_b.png)             |
| Left B                              | ![](../image/retropad/retro_a.png)             |
| Right A                             | ![](../image/retropad/retro_y.png)             |
| Right B                             | ![](../image/retropad/retro_x.png)             |
| Start                               | ![](../image/retropad/retro_start.png)         |
| Coin                                | ![](../image/retropad/retro_select.png)        |
| Service                             | ![](../image/retropad/retro_r3.png)            |

## Compatibility

- Geolith is compatible with 100% of the commercially released Neo Geo AES and MVS libraries. Most games work in both modes, but some require MVS mode.
- Geolith is compatible with 100% of the commercially released Neo Geo CD library.
- All bootlegs and hacks from the MAME set are compatible, the majority of which require being run in MVS mode.
- Some MVS releases will exhibit glitches when run on an AES BIOS. Home console releases are preferred when running in AES mode.
- Dedicated JAMMA PCB systems and PAL mode are not currently supported.

## External Links

- [Upstream Geolith Repository](https://gitlab.com/jgemu/geolith)
- [Libretro Geolith Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/geolith_libretro.info)
- [Libretro Geolith Repository](https://github.com/libretro/geolith-libretro)
- [Report Geolith Core Issues Here](https://github.com/libretro/geolith-libretro/issues)

### See also

- [Arcade (fbneo)](fbneo.md)
