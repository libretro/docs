# Sega - Dreamcast (Redream)

## Background

Redream is a work-in-progress SEGA Dreamcast emulator written in C for Mac, Linux and Windows.

The Redream core has been authored by

- inolen

The Redream core **(libretro fork only)** is licensed under

- [GPLv3](https://github.com/libretro/redream/blob/master/LICENSE.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

### Requirements

This core requires OpenGL 3.3 or higher in order to work.

RetroArch's video driver must be set to OpenGL. Go to Settings -> Driver. If the ‘video driver’ is set to something else or than 'gl', switch to ‘gl’, and then restart.

!!! attention
	There is currently no ‘working’ macOS version available. This is because this core requires OpenGL core 3.3 context, and RetroArch on macOS currently does not support this.

## BIOS

!!! attention
	The firmware files need to be in a directory named 'dc' in RetroArch's system directory.

| Filename     | Description                               |              md5sum              |
|:------------:|:-----------------------------------------:|:--------------------------------:|
| dc/boot.bin  | boot.bin (Dreamcast BIOS) - Required      | e10c53c2f8b90bab96ead2d368858623 |
| dc/flash.bin | flash.bin (Date/Time/Language) - Required | 0a93f7940c455905bea6e392dfde92a4 |

## Extensions

Content that can be loaded by the Redream core have the following file extensions:

- .gdi
- .chd
- .cdi

RetroArch database(s) that are associated with the Redream core:

- [Sega - Dreamcast](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Dreamcast.rdb)

## Features

Frontend-level settings or features that the Redream core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Redream core's library name is 'redream'

The Redream core saves/loads to/from these directories.

**Frontend's Save directory**

| File     | Description     |
|:--------:|:---------------:|
| vmu0.bin | VMU Slot 1 Save |
| vmu1.bin | VMU Slot 2 Save |
| vmu2.bin | VMU Slot 3 Save |
| vmu3.bin | VMU Slot 4 Save |

### Geometry and timing

- The Redream core's core provided FPS is 60
- The Redream core's core provided sample rate is 44100 Hz
- The Redream core's base width is 640
- The Redream core's base height is 480
- The Redream core's max width is 640
- The Redream core's max height is 480
- The Redream core's core provided aspect ratio is 4/3

## Joypad

![](../image/controller/dc.png)

| User 1 - 4 input descriptors | RetroPad Inputs                               |
|------------------------------|-----------------------------------------------|
| A                            | ![](../image/retropad/retro_b.png)            |
| X                            | ![](../image/retropad/retro_y.png)            |
| Start                        | ![](../image/retropad/retro_start.png)        |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)      |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)    |
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)    |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png)   |
| B                            | ![](../image/retropad/retro_a.png)            |
| Y                            | ![](../image/retropad/retro_a.png)            |
| L                            | ![](../image/retropad/retro_l2.png)           |
| R                            | ![](../image/retropad/retro_r2.png)           |
| Analog X                     | ![](../image/retropad/retro_r3.png)           |
| Analog Y                     | ![](../image/retropad/retro_left_stick.png) X |

## Compatibility

Since Redream is a work-in-progress Dreamcast emulator, expect sound issues, general compatibility issues, and a general rough experience.

## External Links

- [Official Redream Website](https://redream.io/)
- [Libretro Redream Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/redream_libretro.info)
- [Libretro Redream Github Repository](https://github.com/libretro/redream)
- [Report Libretro Redream Core Issues Here](https://github.com/libretro/redream/issues)

## Sega - Dreamcast

- [Sega - Dreamcast (Flycast)](flycast.md)
