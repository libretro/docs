# Rick Dangerous (XRick)

## Background

Xrick is an open source implementation of the game "Rick Dangerous".

This libretro core is based on BigOrno's [work](http://www.bigorno.net/xrick/).

#### How to start the XRick core:

- To start the XRick core, you need to obtain Rick Dangerous' data files. You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

<center> ![](../image/core/all/download.png) </center>

- Select 'Rick Dangerous', then select 'Rick Dangerous.zip'. This should download and extract this file to RetroArch's Downloads directory.

<center> ![](../image/core/xrick/xrick.png) </center>

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

<center> ![](../image/core/all/load.png) </center>

<center> ![](../image/core/all/downloads.png) </center>

- Select the 'xrick' directory, next select 'data.zip'. Then, select Load Archive.

- If you are asked which core to select, choose 'Rick Dangerous (XRick)'.

The content should now start running!

### Author/License

The XRick core is licensed under

- [GPLv3](https://github.com/libretro/xrick-libretro/blob/master/README)

A summary of the licenses behind RetroArch and its cores have found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the XRick core have the following file extensions:

- .zip

## Databases

RetroArch database(s) that are associated with the XRick core:

- [Rick Dangerous](https://github.com/libretro/libretro-database/blob/master/rdb/Rick%20Dangerous.rdb)

## Features

Frontend-level settings or features that the XRick core respects.

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
| Remapping         | ✕         |
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

The XRick core's internal core name is 'xrick'

### Geometry and timing

- The XRick core's core provided FPS is 50
- The XRick core's core provided sample rate is 22050.0 Hz
- The XRick core's core provided aspect ratio is 4/3

## Controllers

The XRick core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

| RetroPad Inputs                                | XRick core inputs |
|------------------------------------------------|-------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Jump              |
| ![](../image/retropad/retro_dpad_down.png)     | Crouch            |
| ![](../image/retropad/retro_dpad_left.png)     | Left              |
| ![](../image/retropad/retro_dpad_right.png)    | Right             |
| ![](../image/retropad/retro_a.png)             | Attack            |

Supported combinations

- Attack + Left = Stab left using your bayonet
- Attack + Right = Stab right using your bayonet
- Attack + Up = Shoot
- Attack + Down = Drop a bomb

## External Links

- [Official XRick Website](http://www.bigorno.net/xrick/)
- [Libretro XRick Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/xrick_libretro.info)
- [Libretro XRick Github Repository](https://github.com/libretro/xrick-libretro)
- [Report Libretro XRick Core Issues Here](https://github.com/libretro/libretro-meta/issues)