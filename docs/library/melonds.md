# Nintendo DS (melonDS)

## Contribute to this documentation

In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/melonds.md). Changes are proposed using "Pull Requests."

## Background

An up-and-coming Nintendo DS emulator by StapleButter, ported to libretro.

### Why use this core?

Awaiting description.

### How to get and install the melonDS core:

1. Start up RetroArch. Inside the main menu, go to 'Online Updater'.

2. Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

3. Browse through the list and select 'Nintendo DS (melonDS)'.

After this has finished downloading, the core should now be ready for use!

#### How to play (after installation):

1. Go back to RetroArch's main menu screen. Select 'Load Content'.

2. Browse to the folder that contains the content you want to run.

3. Select the content that you want to run.

4. If you are asked which core to select, choose 'Nintendo DS (melonDS)'.

The game should now start running!

### Authors

- StapleButter

## See also

- [Nintendo DS (DeSmuME)](https://docs.libretro.com/library/desmume/) - Shared platforms.

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

- [GPLv3](https://github.com/libretro/melonDS/blob/master/LICENSE)

## Extensions

Content that can be loaded by the melonDS core have the following file extensions:

- .nds

## Databases

RetroArch database(s) that are associated with the melonDS core:

- [Nintendo - Nintendo DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS.rdb)
- [Nintendo - Nintendo DS Decrypted](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20Decrypted.rdb)
- [Nintendo - Nintendo DS (Download Play)](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20(Download%20Play).rdb)

## BIOS

Required or optional firmware files go in RetroArch's system directory.

|   Filename    |    Description          |              md5sum              |
|:-------------:|:-----------------------:|:--------------------------------:|
| firmware.bin  | NDS Firmware - Required | e45033d9b0fa6b0de071292bba7c9d13 |
| bios7.bin     | ARM7 BIOS - Required    | df692a80a5b1bc90728bc3dfc76cd948 |
| bios9.bin     | ARM9 BIOS - Required    | a392174eb3e572fed6447e956bde4b25 |

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✕         |
| Saves             | ✕         |
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
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Crop Overscan (in RetroArch's Video settings) | ✕         |

### Saves/States

The melonDS core's directory name is 'melonDS'

### Core provided aspect ratio

Awaiting description.

## Controllers

### Device types

The melonDS core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- None
- **RetroPad** - Joypad
- Nintendo DS  - Joypad

### Controller tables

#### Joypad and analog device type table

| User 1 input descriptors      |                                              | Nintendo DS        |
|-------------------------------|----------------------------------------------|--------------------|
| N/A                           | ![](../image/retropad/retro_b.png)       | B                  |
| N/A                           | ![](../image/retropad/retro_y.png)       | Y                  |
| N/A                           | ![](../image/retropad/retro_select.png)        | Select             |
| N/A                           | ![](../image/retropad/retro_start.png)         | Start              |
| Up                            | ![](../image/retropad/retro_dpad_up.png)       | Up                 |
| Down                          | ![](../image/retropad/retro_dpad_down.png)     | Down               |
| Left                          | ![](../image/retropad/retro_dpad_left.png)     | Left               |
| Right                         | ![](../image/retropad/retro_dpad_right.png)    | Right              |
| N/A                           | ![](../image/retropad/retro_a.png)       | A                  |
| N/A                           | ![](../image/retropad/retro_x.png)       | X                  |
| N/A                           | ![](../image/retropad/retro_l1.png)            | L                  |
| N/A                           | ![](../image/retropad/retro_r1.png)            | R                  |

## External Links

- [Libretro melonDS Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/melonds_libretro.info)
- [Libretro melonDS Github Repository](https://github.com/libretro/melonds)
- [Report Libretro melonDS Core Issues Here](https://github.com/libretro/melonds/issues)
- [Official melonDS Website](http://melonds.kuribo64.net/)
- [Official melonDS Github Repository](https://github.com/StapleButter/melonDS)
