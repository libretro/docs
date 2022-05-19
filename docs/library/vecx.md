# Vectrex (vecx)

## Background

vecx is an emulator for the vector-display based Vectrex video game console.

The vecx core has been authored by

- Valavan Manohararajah
- John Hawthorn
- Nikita Zimin
- Demeth

The vecx core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the vecx core have the following file extensions:

- bin
- vec

## BIOS

vecx doesn't require BIOS (bootrom) files to work. 

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controllers       | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |

### Geometry and timing

- The vecx core's core provided FPS is 59.72.
- The vecx core's core provided sample rate is 44100 Hz.
- The vecx core's base width is 869.
- The vecx core's base height is 1080.
- The vecx core's max width is 1648.
- The vecx core's max height is 2048.

## Core Options

The vecx core has the following options that can be tweaked from the core options menu. The default setting is bolded.

- **Use Hardware Rendering** [vecx_render] (**Hardware**|Software)
- **Hardware Rendering Resolution** [vecx_renderresolution] (**824x1024**|434x540|515x640|580x720|618x768|845x1050|869x1080|966x1200|1159x1440|1648x2048)
- **Line brightness** [vecx_linebrightness] (**4**|1|2|3|5|6|7|8|9)
- **Line width** [vecx_linewidth] (**4**|0|1|2|3|5|6|7|8|9)
- **Bloom brightness** [vecx_bloombrightness] (**4**|1|2|3|5|6|7|8|9)
- **Bloom width** [vecx_bloomwidth] (**8x**|2x|3x|4x|6x|10x|12x|14x|16x)

- **Res Multiplier** (**1**-4)

??? note "*Res Multiplier - 1*"
    ![](../image/core/vecx/res_multiplier_1.png)

??? note "*Res Multiplier - 4*"
    ![](../image/core/vecx/res_multiplier_4.png)

## Controllers

The vecx core supports one controller setting:

* RetroPad

| vecx      | [RetroPad](RetroPad)                                           |
|-----------|----------------------------------------------------------------|
| 2         | ![RetroPad_B](../image/retropad/retro_b.png)               |
| 4         | ![RetroPad_Y](../image/retropad/retro_y.png)               |
|           | ![RetroPad_Select](../image/retropad/retro_select.png)           |
|           | ![RetroPad_Start](../image/retropad/retro_start.png)             |
| D-pad     | ![RetroPad_Dpad](../image/retropad/retro_dpad.png)               |
| 1         | ![RetroPad_A](../image/retropad/retro_a.png)               |
| 3         | ![RetroPad_X](../image/retropad/retro_x.png)               |
|           | ![RetroPad_L1](../image/retropad/retro_l1.png)                   |
|           | ![RetroPad_R1](../image/retropad/retro_r1.png)                   |
|           | ![RetroPad_L2](../image/retropad/retro_l2.png)              |
|           | ![RetroPad_R2](../image/retropad/retro_r2.png)                   |
|           | ![RetroPad_L3](../image/retropad/retro_l3.png)                   |
|           | ![RetroPad_R3](../image/retropad/retro_r3.png)                   |
|           | ![RetroPad_Left_Stick](../image/retropad/retro_left_stick.png)   |
|           | ![RetroPad_Right_Stick](../image/retropad/retro_right_stick.png) |

## External Links

- [Libretro Repository](https://github.com/libretro/libretro-vecx)
- [Report Core Issues Here](https://github.com/libretro/libretro-meta/issues)
- [Official GitHub Repository of the SDL port](https://github.com/jhawthorn/vecx)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IcpjAFyTq8c2ZvV-dKqwtox)
- [Steam](https://store.steampowered.com/app/2008300/RetroArch__vecx/)