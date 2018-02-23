# ChaiLove

## Background

[ChaiLove](https://github.com/libretro/libretro-chailove) is a framework for making 2D games with [ChaiScript](http://chaiscript.com/). ChaiLove games can be played with LibRetro/RetroArch through the ChaiLove core.

#### How to start the ChaiLove core:

- As an example showcasing loading content with Chailove core, we will load the Floppy Bird game hosted on RetroArch's Content Downloader.

You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

<center> ![](images\Cores\all\download.png) </center>

- Select 'ChaiLove', then select 'Floppy Bird.chailove'. This should download and extract this file to RetroArch's Downloads directory.

<center> ![](images\Cores\chailove\chailove.png) </center>

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

<center> ![](images\Cores\all\load.png) </center>

<center> ![](images\Cores\all\downloads.png) </center>

- Select 'Floppy Bird.chailove'.

- If you are asked which core to select, choose 'ChaiLove'.

The content should now start running!

### Author/License

The ChaiLove core has been authored by

- Rob Loach

The ChaiLove core is licensed under

- [MIT](https://github.com/libretro/libretro-chailove/blob/master/LICENSE.md)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the ChaiLove core have the following file extensions:

- .chai
- .chailove

## Databases

RetroArch database(s) that are associated with the ChaiLove core:

- [ChaiLove](https://github.com/libretro/libretro-database/blob/master/rdb/ChaiLove.rdb)

## Features

Frontend-level settings or features that the ChaiLove core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
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

The ChaiLove core's internal core name is 'ChaiLove'

The ChaiLove core saves/loads to/from these directories.

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The ChaiLove core's core provided FPS is 60
- The ChaiLove core's core provided sample rate is 44100 Hz
- The ChaiLove core's core provided aspect ratio is (Ratio)

## Core options

The ChaiLove core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Alpha Blending** [chailove_alphablending] (**enabled**|disabled)

	Enable or disable alpha blending (transparency).
	
??? note "Alpha Blending - On"
	![](images\Cores\chailove\alpha_on.png)
	
??? note "Alpha Blending - Off"
	![](images\Cores\chailove\alpha_off.png)	
	
- **High Quality** [chailove_highquality] (**enabled**|disabled)

	Enable or disable extra visual features.
	
??? note "High Quality - On"
	![](images\Cores\chailove\quality_on.png)
	
??? note "High Quality - Off"
	![](images\Cores\chailove\quality_off.png)

## Controllers

The ChaiLove core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 5 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

!!! attention
	What the buttons do are game specific.

| User 1 - 5 Remap descriptors | RetroPad Inputs                              |
|------------------------------|----------------------------------------------|
| B                            | ![](images/RetroPad/Retro_B_Round.png)       |
| Y                            | ![](images/RetroPad/Retro_Y_Round.png)       |
| Select                       | ![](images/RetroPad/Retro_Select.png)        |
| Start                        | ![](images/RetroPad/Retro_Start.png)         |
| D-Pad Up                     | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| D-Pad Down                   | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| D-Pad Left                   | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| D-Pad Right                  | ![](images/RetroPad/Retro_Dpad_Right.png)    |
| A                            | ![](images/RetroPad/Retro_A_Round.png)       |
| X                            | ![](images/RetroPad/Retro_X_Round.png)       |
| L                            | ![](images/RetroPad/Retro_L1.png)            |
| R                            | ![](images/RetroPad/Retro_R1.png)            |

## External Links

- [ChaiScript Website](http://chaiscript.com/)
- [ChaiLove API Documentation Website](https://rawgit.com/libretro/libretro-chailove/docs/)
- [ChaiLove Github Wiki](https://github.com/libretro/libretro-chailove/wiki)
- [Libretro ChaiLove Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/chailove_libretro.info)
- [Libretro ChaiLove Github Repository](https://github.com/libretro/libretro-chailove)
- [Report Libretro ChaiLove Core Issues Here](https://github.com/libretro/libretro-chailove/issues)

### See also

#### Custom Engine

- [Lua Engine (Lutro)](https://docs.libretro.com/library/lutro/)