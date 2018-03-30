# The 3DO Company - 3DO (4DO)

## Background

4DO is an open-source, low-level emulator for the 3DO Game Console based on the FreeDO source code.

The 4DO core has been authored by

- JohnnyDude
- FreeDO team

The 4DO core is licensed under

- [Non-commercial](https://github.com/libretro/4do-libretro/blob/master/libfreedo/freedocore.h)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename     | Description                     | md5sum                           |
|:------------:|:-------------------------------:|:--------------------------------:|
| panafz10.bin | Panasonic FZ-10 BIOS - Required | 51f2f43ae2f3508a14d9f56597e2d3ce |

## Extensions

Content that can be loaded by the 4DO core have the following file extensions:

- .iso
- .bin
- .chd
- .cue

RetroArch database(s) that are associated with the 4DO core:

- [The 3DO Company - 3DO](https://github.com/libretro/libretro-database/blob/master/rdb/The%203DO%20Company%20-%203DO.rdb)

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The 4DO core's library name is '4DO'

The 4DO core saves/loads to/from these directories.

**Frontend's Save directory**

| File          | Description       |
|:-------------:|:-----------------:|
| *.srm         | Per game NVRAM    |
| 3DO.nvram     | Shared NVRAM      |
| 3DO.nvram.tmp | Shared NVRAM Temp |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The 4DO core's core provided FPS is 60
- The 4DO core's core provided sample rate is 44100 Hz
- The 4DO core's base width is 320 when the 'High Resolution' core option is set to disabled.
- The 4DO core's base height is 240 when the 'High Resolution' core option is set to disabled.
- The 4DO core's max width is 320 when the 'High Resolution' core option is set to disabled.
- The 4DO core's max height is 240 when the 'High Resolution' core option is set to disabled.
- The 4DO core's base width is 640 when the 'High Resolution' core option is set to enabled.
- The 4DO core's base height is 480 when the 'High Resolution' core option is set to enabled.
- The 4DO core's max width is 640 when the 'High Resolution' core option is set to enabled.
- The 4DO core's max height is 480 when the 'High Resolution' core option is set to enabled.
- The 4DO core's core provided aspect ratio is 4/3

## Core options

The 4DO core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CPU overclock** [4do_cpu_overclock] (**1x**|2x|4x)

    The 3DO used a 12.5MHz ARM CPU as its central processor. We have implemented a CPU overclocking feature in the 4DO core so that you can increase this by 2 (25MHz) or 4x (50MHz).
	
    **May not work on all games.**
	
    [https://www.youtube.com/watch?v=7bT2ecwKdHQ](https://www.youtube.com/watch?v=7bT2ecwKdHQ) 
	
- **High Resolution** [4do_high_resolution] (**disabled**|enabled)

	Doubles internal resolution.
	
??? note "High Resolution - disabled"
	![](..\image\core\4do\high_off.png)
	
??? note "High Resolution - enabled"
	![](..\image\core\4do\high_on.png)
	
- **NVRAM Storage** [4do_nvram_storage] (**per game**|shared)

	Choose whether NVRAM saves are per game or NVRAM saves are shared between all games.
	
	Look at the [Directories section](https://docs.libretro.com/library/4do/#directories) for more information.
	
- **Timing Hack 1 (Crash 'n Burn)** [4do_hack_timing_1] (**disabled**|enabled)

	Enable this to fix Crash 'n Burn.
	
- **Timing Hack 3 (Dinopark Tycoon)** [4do_hack_timing_3] (**disabled**|enabled)

	Enable this to fix Dinopark Tycoon.
	
- **Timing Hack 5 (Microcosm)** [4do_hack_timing_5] (**disabled**|enabled)

	Enable this to fix Microcosm.
	
- **Timing Hack 6 (Alone in the Dark)** [4do_hack_timing_6] (**disabled**|enabled)

    Enable this to fix Alone in the Dark.
	
- **Graphics Step Y Hack (Samurai Shodown)** [4do_hack_graphics_step_y] (**disabled**|enabled)

	Enable this to fix Samurai Shodown.
	
## Joypad

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
