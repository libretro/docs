# Lua Engine (Lutro)

## Background

Lutro is an experimental lua game framework that follows the [LÖVE API](https://love2d.org/wiki/Main_Page). Lutro games can be played with LibRetro/RetroArch through the Lutro core.

#### How to start the Lutro core:

- As an example showcasing loading content with the Lutro core, we will load the Pong game hosted on RetroArch's Content Downloader.

You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

<center> ![](../image/core/all/download.png) </center>

- Select 'Lutro', then select 'Pong.lutro'. This should download and extract this file to RetroArch's Downloads directory.

<center> ![](../image/core/lutro/lutro.png) </center>

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

<center> ![](../image/core/all/load.png) </center>

<center> ![](../image/core/all/downloads.png) </center>

- Select 'Pong.lutro'.

- If you are asked which core to select, choose 'Lua Engine (Lutro)'.

The content should now start running!

### Author/License

The Lutro core has been authored by

- Higor Euripedes
- Jean-Andre Santoni

The Lutro core is licensed under

- [MIT](https://github.com/libretro/libretro-lutro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Lutro core have the following file extensions:

- .lutro
- .lua

## Databases

RetroArch database(s) that are associated with the Lutro core:

- [Lutro](https://github.com/libretro/libretro-database/blob/master/rdb/Lutro.rdb)

## Features

Frontend-level settings or features that the Lutro core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Lutro core's internal core name is 'lutro'

### Geometry and timing

- The Lutro core's core provided FPS is 60
- The Lutro core's core provided sample rate is 44100 Hz
- The LUtro core's core provided aspect ratio is (Ratio)

## Controllers

The Lutro core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

!!! attention
	What the inputs do are game specific.

| User 1 Remap descriptors | RetroPad Inputs                                | Lutro core inputs |
|--------------------------|------------------------------------------------|-------------------|
|                          | ![](../image/retropad/retro_b.png)             | B                 |
|                          | ![](../image/retropad/retro_y.png)             | Y                 |
|                          | ![](../image/retropad/retro_select.png)        | Select            |
|                          | ![](../image/retropad/retro_start.png)         | Start             |
| Up                       | ![](../image/retropad/retro_dpad_up.png)       | Up                |
| Down                     | ![](../image/retropad/retro_dpad_down.png)     | Down              |
| Left                     | ![](../image/retropad/retro_dpad_left.png)     | Left              |
| Right                    | ![](../image/retropad/retro_dpad_right.png)    | Right             |
|                          | ![](../image/retropad/retro_a.png)             | A                 |
|                          | ![](../image/retropad/retro_x.png)             | X                 |
|                          | ![](../image/retropad/retro_l1.png)            | L1                |
|                          | ![](../image/retropad/retro_r1.png)            | R1                |
|                          | ![](../image/retropad/retro_l2.png)            | L2                |
|                          | ![](../image/retropad/retro_r2.png)            | R2                |
|                          | ![](../image/retropad/retro_l3.png)            | L3                |
|                          | ![](../image/retropad/retro_r3.png)            | R3                |

## External Links

- [Lua Website](https://www.lua.org/)
- [LÖVE API Website](https://love2d.org/)
- [Libretro Lutro Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/lutro_libretro.info)
- [Libretro Lutro Github Repository](https://github.com/libretro/libretro-lutro)
- [LUTRO LÖVE API Comparison](https://github.com/libretro/lutro-status)
- [Lutro Github Wiki](https://github.com/libretro/libretro-lutro/wiki)
- [Report Libretro Lutro Core Issues Here](https://github.com/libretro/libretro-lutro/issues)

### See also

#### Custom Engine

- [ChaiLove](chailove.md)
