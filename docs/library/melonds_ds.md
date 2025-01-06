# Nintendo - DS (melonDS DS)

## Background

A Nintendo DS emulator (with DSi support) by Arisotura and friends,
ported to libretro by Jesse Talavera.

!!! info "This is the newer version!"
    This version of the melonDS core is based on a newer version of the original emulator,
    and has more features than the older [melonDS core](melonds.md).
    Use this one unless you're not ready to migrate.


### Author/License

The melonDS DS core has been authored by

- Jesse Talavera

The melonDS DS core is licensed under

- [GPLv3](https://github.com/JesseTG/melonds-ds/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the melonDS core has one of the following file extensions:

- .nds
- .dsi
- .ids

## Databases

RetroArch database(s) that are associated with the melonDS DS core:

- [Nintendo - Nintendo DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS.rdb)
- [Nintendo - Nintendo DSi](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DSi.rdb)

## BIOS

Required or optional firmware files go in the frontend's `system` directory.

|     Filename     |             Description              |              md5sum              |
|:----------------:|:------------------------------------:|:--------------------------------:|
|    bios7.bin     |       NDS ARM7 BIOS - Optional       | df692a80a5b1bc90728bc3dfc76cd948 |
|    bios9.bin     |       NDS ARM9 BIOS - Optional       | a392174eb3e572fed6447e956bde4b25 |
|   firmware.bin   |       NDS Firmware - Optional        |              Varies              |
|  dsi_bios7.bin   | DSi ARM7 BIOS - Required in DSi mode |                                  |
|  dsi_bios9.bin   | DSi ARM9 BIOS - Required in DSi mode |                                  |
| dsi_firmware.bin | DSi Firmware - Required in DSi mode  |              Varies              |
|   dsi_nand.bin   |   DSi NAND - Required in DSi mode    |              Varies              |

## Features

Frontend-level settings or features that melonDS DS respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔[^1]     |
| Rewind            | ✔[^1]     |
| Netplay           | ✔[^2]     |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✔         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✔         |
| [Softpatching](../guides/softpatching.md) | ✔       |
| Disk Control      | ✕         |
| Username          | ✔         |
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The melonDS DS core's library name is 'melonDS DS'

The melonDS DS core saves/loads to/from these directories.

#### Frontend's Save directory

|         File         |         Description         |
|:--------------------:|:---------------------------:|
|        *.srm         |   Cartridge battery save    |
|   dldi_sd_card.bin   |   Homebrew SD card image    |
| dldi_sd_card.bin.idx | Homebrew SD card file index |
|   dsi_sd_card.bin    |      DSi SD card image      |
| dsi_sd_card.bin.idx  |   DSi SD card file index    |
|     *.public.sav     |  DSiWare public save data   |
|    *.private.sav     |  DSiWare private save data  |
|     *.banner.sav     |   DSiWare icon save data    |

#### Frontend's System directory

|       File       |      Description      |
|:----------------:|:---------------------:|
| melonDS DS/*.tid | DSiWare title ID file |
| wfcsettings.bin  |   DS Wi-Fi settings (built-in BIOS only) |

#### Frontend's State directory

|   File   | Description |
|:--------:|:-----------:|
| *.state# |    State    |

### Geometry and timing

TODO correct these numbers
- The melonDS DS core's core provided FPS is 59.8983059319
- The melonDS DS core's core provided sample rate is 32768 Hz
- The melonDS DS core's base width is 256
- The melonDS DS core's base height is 384
- The melonDS DS core's max width is 256
- The melonDS DS core's max height is 384
- The melonDS DS core's core-provided aspect ratio is 2/3

## Wi-fi

TODO

## Microphone

## Controllers

The melonDS core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **Nintendo DS** - Joypad - Stay on this.

TODO future devices


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
| Next Screen Layout       | ![](../image/retropad/retro_r2.png)         |
| Close Lid                | ![](../image/retropad/retro_l3.png)         |

## Compatibility

- [Upstream melonDS Forums Compatibility section](http://melonds.kuribo64.net/board/forum.php?id=3)

## External Links

- [Official melonDS Website](http://melonds.kuribo64.net/)
- [Official melonDS GitHub Repository](https://github.com/melonDS-emu/melonDS)
- [Libretro melonDS DS Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/melondsds_libretro.info)
- [Libretro melonDS DS Github Repository](https://github.com/JesseTG/melonds-ds)
- [Report Libretro melonDS DS Core Issues Here](https://github.com/JesseTG/melonds-ds/issues)

### See also

#### Nintendo - Nintendo DS + Decrypted + (Download Play)

- [Nintendo - DS (DeSmuME 2015)](desmume_2015.md)
- [Nintendo - DS (DeSmuME)](desmume.md)
- [Nintendo - DS (melonDS 2021)](melonds.md)

[^1]: Netplay is supported, but it's not recommended due to the high latency of the DS core.
