# Nintendo - DS (melonDS)

## Background

An up-and-coming Nintendo DS emulator by Arisotura, ported to libretro.

!!! warning "This is the older version!"
    This version of the melonDS core is obsolete and unmaintained.
    You are encouraged to migrate to [melonDS DS](melonds_ds.md),
    which is based on a newer version of the original emulator,
    has more features, and is easier to use.

### Author/License

The melonDS core has been authored by

- Arisotura

The melonDS core is licensed under

- [GPLv3](https://github.com/libretro/melonDS/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the melonDS core have the following file extensions:

- .nds

## Databases

RetroArch database(s) that are associated with the melonDS core:

- [Nintendo - Nintendo DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS.rdb)
- [Nintendo - Nintendo DS Decrypted](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20Decrypted.rdb)
- [Nintendo - Nintendo DS (Download Play)](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20(Download%20Play).rdb)

## BIOS

Required or optional firmware files go in the frontend's `system` directory.

|   Filename       |    Description           |              md5sum              |
|:----------------:|:------------------------:|:--------------------------------:|
| bios7.bin        | NDS ARM7 BIOS - Optional | df692a80a5b1bc90728bc3dfc76cd948 |
| bios9.bin        | NDS ARM9 BIOS - Optional | a392174eb3e572fed6447e956bde4b25 |
| firmware.bin     | NDS Firmware - Optional  |                                  |
| dsi_bios7.bin    | DSi ARM7 BIOS - Optional |                                  |
| dsi_bios9.bin    | DSi ARM9 BIOS - Optional |                                  |
| dsi_firmware.bin | DSi Firmware - Optional  |                                  |
| dsi_nand.bin     | DSi NAND - Optional      |                                  |
| dsi_sd_card.bin  | DSi SD Card - Optional   |                                  |

## Features

Frontend-level settings or features that the melonDS core respects.

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
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The melonDS core's library name is 'melonDS'

The melonDS core saves/loads to/from these directories.

**Frontend's Cache directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.sav | Cartridge battery save |

### Geometry and timing

- The melonDS core's core provided FPS is 59.8983059319
- The melonDS core's core provided sample rate is 32768 Hz
- The melonDS core's base width is 256
- The melonDS core's base height is 384
- The melonDS core's max width is 256
- The melonDS core's max height is 384
- The melonDS core's core provided aspect ratio is 2/3

## Controllers

The melonDS core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **Nintendo DS** - Joypad - Stay on this.

### Device tables

#### Joypad

![](../image/controller/nds.png)

| User 1 input descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Y                        | ![](../image/retropad/retro_y.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |
| X                        | ![](../image/retropad/retro_x.png)          |
| L                        | ![](../image/retropad/retro_l1.png)         |
| R                        | ![](../image/retropad/retro_r1.png)         |
| Swap Screens             | ![](../image/retropad/retro_r2.png)         |
| Close Lid                | ![](../image/retropad/retro_l3.png)         |

## Compatibility

- [Upstream melonDS Forums Compatibility section](http://melonds.kuribo64.net/board/forum.php?id=3)

## External Links

- [Official melonDS Website](http://melonds.kuribo64.net/)
- [Official melonDS Github Repository](https://github.com/melonDS-emu/melonDS)
- [Libretro melonDS Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/melonds_libretro.info)
- [Libretro melonDS Github Repository](https://github.com/libretro/melonds)
- [Report Libretro melonDS Core Issues Here](https://github.com/libretro/melonds/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IfJciIgm46lbEVafdpVyyNA)

### See also

#### Nintendo - Nintendo DS + Decrypted + (Download Play)

- [Nintendo - DS (DeSmuME 2015)](desmume_2015.md)
- [Nintendo - DS (DeSmuME)](desmume.md)
- [Nintendo - DS (melonDS DS)](melonds_ds.md)
