# Remote RetroPad

## Background

Awaiting description.

#### How to start the Remote RetroPad core:

- To start the Remote RetroPad core, go to RetroArch's main menu screen. Select 'Load Core', then 'Remote RetroPad'.

The content should now start running!

### Author/License

The Remote RetroPad core has been authored by

- The RetroArch Team

The Remote RetroPad core is licensed under

- [MIT](https://github.com/libretro/libretro-samples/blob/master/license) 

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Features

Frontend-level settings or features that the Remote RetroPad core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Remote RetroPad core's internal core name is 'RetroPad Remote'

### Geometry and timing

- The Remote RetroPad core's core provided FPS is 60.0
- The Remote RetroPad core's core provided sample rate is 30000.0 Hz
- The Remote RetroPad core's core provided aspect ratio is 4.0 / 3.0

## Usage

Awaiting description.

## Core options

The Remote RetroPad core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Port** [net_retropad_port] (55400 to 55420 in increments of 1. **55400 is default.**)

	Awaiting description.
	
- **IP address part 1** [net_retropad_ip_octet1] (0 to 255 in increments of 1. **0 is default.**)

	Awaiting description.
	
- **IP address part 2** [net_retropad_ip_octet2] (0 to 255 in increments of 1. **0 is default.**)

	Awaiting description.
	
- **IP address part 3** [net_retropad_ip_octet3] (0 to 255 in increments of 1. **0 is default.**)

	Awaiting description.
	
- **IP address part 4** [net_retropad_ip_octet4] (0 to 255 in increments of 1. **0 is default.**)

	Awaiting description.
	
## Controllers

The Remote RetroPad core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                              |
|--------------------------|----------------------------------------------|
| B                        | ![](images/RetroPad/Retro_B_Round.png)       |
| Y                        | ![](images/RetroPad/Retro_Y_Round.png)       |
| Select                   | ![](images/RetroPad/Retro_Select.png)        |
| Start                    | ![](images/RetroPad/Retro_Start.png)         |
| D-Pad Up                 | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| D-Pad Down               | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| D-Pad Left               | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| D-Pad Right              | ![](images/RetroPad/Retro_Dpad_Right.png)    |
| A                        | ![](images/RetroPad/Retro_A_Round.png)       |
| X                        | ![](images/RetroPad/Retro_X_Round.png)       |
| L                        | ![](images/RetroPad/Retro_L1.png)            |
| R                        | ![](images/RetroPad/Retro_R1.png)            |
| L2                       | ![](images/RetroPad/Retro_L2.png)            |
| R2                       | ![](images/RetroPad/Retro_R2.png)            |
| L3                       | ![](images/RetroPad/Retro_L3.png)            |
| R3                       | ![](images/RetroPad/Retro_R3.png)            |

## External Links

- [Libretro Remote RetroPad Github Repository](https://github.com/libretro/RetroArch/tree/master/cores/libretro-net-retropad)
- [Report Libretro Remote RetroPad Core Issues Here](https://github.com/libretro/RetroArch/issues)