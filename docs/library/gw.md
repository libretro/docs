# Handheld Electronic (GW)

## Background

A libretro core for Game & Watch simulators.

It runs simulators converted from source code for the games available at [MADrigal](http://www.madrigaldesign.it/sim/).

#### How to start the GW core:

- As an example showcasing loading content with GW core, we will load the Donkey Kong (Coleco) game hosted on RetroArch's Content Downloader.

You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

<center> ![](../image/core/all/download.png) </center>

- Select 'Handheld Electronic Game', then select 'Donkey Kong (Coleco)'. This should download and extract this file to RetroArch's Downloads directory.

<center> ![](../image/core/gw/donkey.png) </center>

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

<center> ![](../image/core/all/load.png) </center>

<center> ![](../image/core/all/downloads.png) </center>

- Select 'Donkey Kong (Coleco).mgw'.

- If you are asked which core to select, choose 'Handheld Electronic (GW)'.

The content should now start running!

### Author/License

The GW core has been authored by

- Andre Leiradella

The GW core is licensed under

- [zlib](https://github.com/libretro/gw-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the GW core have the following file extensions:

- .mgw

## Databases

RetroArch database(s) that are associated with the GW core:

- [Handheld Electronic Game](https://github.com/libretro/libretro-database/blob/master/rdb/Handheld%20Electronic%20Game.rdb)

## Features

Frontend-level settings or features that the GW core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The GW core's internal core name is 'Game & Watch'

### Geometry and timing

- The GW core's core provided FPS is 60
- The GW core's core provided sample rate is 44100 Hz
- The GW core's core provided aspect ratio is dependent on the loaded content.

## Controllers

The GW core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't diable input.
- **Controller** - Joypad - Stay on this.

### Controller tables

#### Joypad

!!! attention
	What the inputs do are game specific. Without having anything selected, you can use the Start input to see a Controller overlay to see what the game specific inputs are.

![](../image/core/gw/overlay.png)

| User 1 Remap descriptors | RetroPad Inputs                             |
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
| L1                       | ![](../image/retropad/retro_l1.png)         |
| R1                       | ![](../image/retropad/retro_r1.png)         |
| L2                       | ![](../image/retropad/retro_l2.png)         |
| R2                       | ![](../image/retropad/retro_r2.png)         |
| L3                       | ![](../image/retropad/retro_l3.png)         |
| R3                       | ![](../image/retropad/retro_r3.png)         |

## External Links

- [MADrigal Website](http://www.madrigaldesign.it/sim/)
- [Libretro GW Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gw_libretro.info)
- [Libretro GW Github Repository](https://github.com/libretro/gw-libretro)
- [Report Libretro GW Core Issues Here](https://github.com/libretro/gw-libretro/issues)