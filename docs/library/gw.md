# Handheld Electronic (GW)

## Background

A libretro core for Game & Watch simulators.

It runs simulators converted from source code for the games available at [MADrigal](http://www.madrigaldesign.it/sim/).

#### How to start the GW core:

- As an example showcasing loading content with GW core, we will load the Donkey Kong (Coleco) game hosted on RetroArch's Content Downloader.

You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

<center> ![](images\Cores\all\download.png) </center>

- Select 'Handheld Electronic Game', then select 'Donkey Kong (Coleco)'. This should download and extract this file to RetroArch's Downloads directory.

<center> ![](images\Cores\gw\donkey.png) </center>

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

<center> ![](images\Cores\all\load.png) </center>

<center> ![](images\Cores\all\downloads.png) </center>

- Select 'Donkey Kong (Coleco).mgw'.

- If you are asked which core to select, choose 'Handheld Electronic (GW)'.

The content should now start running!

### Author/License

The GW core has been authored by

- Andre Leiradella

The GW core is licensed under

- [zlib](https://github.com/libretro/gw-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
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

![](images/Cores/gw/overlay.png)	

| User 1 Remap descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| B                        | ![](images/RetroPad/Retro_B_Round.png)    |
| Y                        | ![](images/RetroPad/Retro_Y_Round.png)    |
| Select                   | ![](images/RetroPad/Retro_Select.png)     |
| Start                    | ![](images/RetroPad/Retro_Start.png)      |
| Up                       | ![](images/RetroPad/Retro_Dpad_Up.png)    |
| Down                     | ![](images/RetroPad/Retro_Dpad_Down.png)  |
| Left                     | ![](images/RetroPad/Retro_Dpad_Left.png)  |
| Right                    | ![](images/RetroPad/Retro_Dpad_Right.png) |
| A                        | ![](images/RetroPad/Retro_A_Round.png)    |
| X                        | ![](images/RetroPad/Retro_X_Round.png)    | 
| L1                       | ![](images/RetroPad/Retro_L1.png)         |
| R1                       | ![](images/RetroPad/Retro_R1.png)         |
| L2                       | ![](images/RetroPad/Retro_L2.png)         |
| R2                       | ![](images/RetroPad/Retro_R2.png)         |
| L3                       | ![](images/RetroPad/Retro_L3.png)         |
| R3                       | ![](images/RetroPad/Retro_R3.png)         |

## External Links

- [MADrigal Website](http://www.madrigaldesign.it/sim/)
- [Libretro GW Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gw_libretro.info)
- [Libretro GW Github Repository](https://github.com/libretro/gw-libretro)
- [Report Libretro GW Core Issues Here](https://github.com/libretro/gw-libretro/issues)