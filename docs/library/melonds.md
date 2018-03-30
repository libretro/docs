# Nintendo - DS (melonDS)

## Background

!!! warning
	The melonDS core does not have touchscreen control yet.

An up-and-coming Nintendo DS emulator by StapleButter, ported to libretro.

### Author/License

The melonDS core has been authored by

- StapleButter

The melonDS core is licensed under

- [GPLv3](https://github.com/libretro/melonDS/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the melonDS core have the following file extensions:

- .nds

## Databases

RetroArch database(s) that are associated with the melonDS core:

- [Nintendo - Nintendo DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS.rdb)
- [Nintendo - Nintendo DS Decrypted](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20Decrypted.rdb)
- [Nintendo - Nintendo DS (Download Play)](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20(Download%20Play).rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename   |    Description          |              md5sum              |
|:------------:|:-----------------------:|:--------------------------------:|
| firmware.bin | NDS Firmware - Required | 145eaef5bd3037cbc247c213bb3da1b3 |
| bios7.bin    | ARM7 BIOS - Required    | df692a80a5b1bc90728bc3dfc76cd948 |
| bios9.bin    | ARM9 BIOS - Required    | a392174eb3e572fed6447e956bde4b25 |

## Features

Frontend-level settings or features that the melonDS core respects.

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
| Remapping         | ✔         |
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

## Compatibility

- [Upstream melonDS Forums Compatibility section](http://melonds.kuribo64.net/board/forum.php?id=3)

## External Links

- [Official melonDS Website](http://melonds.kuribo64.net/)
- [Official melonDS Github Repository](https://github.com/StapleButter/melonDS)
- [Libretro melonDS Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/melonds_libretro.info)
- [Libretro melonDS Github Repository](https://github.com/libretro/melonds)
- [Report Libretro melonDS Core Issues Here](https://github.com/libretro/melonds/issues)

### See also

#### Nintendo - Nintendo DS + Decrypted + (Download Play)

- [Nintendo - DS (DeSmuME 2015)](https://docs.libretro.com/library/desmume_2015/)
- [Nintendo - DS (DeSmuME)](https://docs.libretro.com/library/desmume/)