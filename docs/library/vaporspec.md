# VaporSpec

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/1cnNNu-LXq4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

A virtual game platform with capabilities similar to 80s game consoles. 

The VaporSpec core has been authored by

- Will Smith
- Vladimir Serbinenko

The VaporSpec core is licensed under

- MIT

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).


## Extensions

Content that can be loaded by the VaporSpec core have the following file extensions:

- .vaporbin

## Databases

RetroArch database(s) that are associated with the VaporSpec core:

- [VaporSpec](https://github.com/libretro/libretro-database/blob/master/rdb/)

## BIOS

VaporSpec doesn't require BIOS (bootrom) files to work. 

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕           |
| States            | ✔         |
| Rewind            | ✔        |
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

### Directories

The VaporSpec core's doesn't create any directory.

### Geometry and timing

- The VaporSpec core's core provided FPS is 60.
- The VaporSpec core's core provided sample rate is 44100 Hz.
- The VaporSpec core's base width is 768.
- The VaporSpec core's base height is 576.
- The VaporSpec's core provided aspect ratio is 4/3.

## Controllers


### Device types

The VaporSpec core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table


| RetroPad Inputs                                | User 1 - 5 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | Z                            |
| ![](../image/retropad/retro_a.png)             | X                            |
| ![](../image/retropad/retro_x.png)             | S                            |
| ![](../image/retropad/retro_y.png)             | A                            |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  |

## External Links

- [Libretro VaporSpec Core info file](https://github.com/libretro/libretro-core-info/blob/master/vaporspec_libretro.info)
- [VaporSpec Github Repository](https://github.com/minkcv/vm)