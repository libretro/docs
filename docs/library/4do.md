# The 3DO Company - 3DO (4DO)

## Background

4DO is an open-source, low-level emulator for the 3DO Game Console based on the FreeDO source code.

### Author/License

The 4DO core has been authored by

- JohnnyDude
- FreeDO team

The 4DO core is licensed under

- [Non-commercial](https://github.com/libretro/4do-libretro/blob/master/libfreedo/freedocore.h)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the 4DO core have the following file extensions:

- .iso
- .cue

## Databases

RetroArch database(s) that are associated with the 4DO core:

- [The 3DO Company - 3DO](https://github.com/libretro/libretro-database/blob/master/rdb/The%203DO%20Company%20-%203DO.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename     | Description                     | md5sum                           |
|:------------:|:-------------------------------:|:--------------------------------:|
| panafz10.bin | Panasonic FZ-10 BIOS - Required | 51f2f43ae2f3508a14d9f56597e2d3ce |

## Features

Frontend-level settings or features that the 4DO core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕          |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | -         |
| LEDs              | ✕         |

### Directories

The 4DO core's internal core name is '4DO'

The 4DO core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The 4DO core's core provided FPS is 60
- The 4DO core's core provided sample rate is 44100 Hz
- The 4DO core's core provided aspect ratio is 4/3

## Core options

The 4DO core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **High Resolution (restart)** [4do_high_resolution] (**disabled**|enabled)

	Doubles internal resolution.
	
??? note "High Resolution - Off"
	![](..\image\core\4do\high_off.png)
	
??? note "High Resolution - On"
	![](..\image\core\4do\high_on.png)
	
## Controllers

The 4DO core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this
- RetroPad w/Analog - Joypad - Seme as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/3do.png)

| User 1 - 2 Remap descriptors | RetroPad Inputs                                |
|------------------------------|------------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)             |
| A                            | ![](../image/retropad/retro_y.png)             |
| X (Stop)                     | ![](../image/retropad/retro_select.png)        |
| P (Play/Pause)               | ![](../image/retropad/retro_start.png)         |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)     | 
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png)    |
| C                            | ![](../image/retropad/retro_a.png)             |
| L                            | ![](../image/retropad/retro_l1.png)            |
| R                            | ![](../image/retropad/retro_r1.png)            |

## Compatibility

- [4DO Core Compatibility List](http://wiki.fourdo.com/Compatibility_List)

## External Links

- [Official 4DO Website](http://www.fourdo.com/)
- [Official 4DO Wiki](http://wiki.fourdo.com/Main_Page)
- [Official 4DO SourceForge Repository](https://sourceforge.net/projects/fourdo/)
- [Libretro 4DO Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/4do_libretro.info)
- [Libretro 4DO Github Repository](https://github.com/libretro/4do-libretro)
- [Report Libretro 4DO Core Issues Here](https://github.com/libretro/4do-libretro/issues)