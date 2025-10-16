# ColecoVision/CreatiVision/My Vision (JollyCV)

## Background

JollyCV is a multi-emulator supporting ColecoVision (including Super Game Module), CreatiVision, and My Vision. JollyCV is fast, accurate, and highly portable.

The JollyCV core has been authored by

- [Rupert Carmichael (carmiker)](https://github.com/carmiker)

The JollyCV core is licensed under

- [BSD-3-Clause](https://github.com/libretro/jollycv/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
    JollyCV requires a BIOS for ColecoVision or CreatiVision content. Place the following files in RetroArch's system directory.

| Filename          | Description                        | md5sum                           |
|:-----------------:|:----------------------------------:|:--------------------------------:|
| coleco.rom        | ColecoVision BIOS - Required       | 2c66f5911e5b42b8ebe113403548eee7 |
| bioscv.rom        | CreatiVision BIOS - Required       | 3b1ef759d8e3fb4071582efd33dd05f9 |

## Extensions

Content that can be loaded by the JollyCV core have the following file extensions:

- .col
- .rom
- .myv
- .bin

RetroArch database(s) that are associated with the JollyCV core:

- [Coleco - ColecoVision](https://github.com/libretro/libretro-database/blob/master/rdb/Coleco%20-%20ColecoVision.rdb)

## Features

Frontend-level settings or features that the JollyCV core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
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
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The JollyCV core's library name is 'JollyCV'

The JollyCV core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge save         |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The JollyCV core's core provided FPS is 60 for NTSC and 50 for PAL
- The JollyCV core's core provided sample rate is 48000Hz
- The JollyCV core provides adjustable overscan masking and aspect ratio options

## Core options

The JollyCV core has the following options that can be tweaked from the core options menu. The default setting is bolded.

- **TMS9918 Palette** [jollycv_tmspalette] (**TeaTime**|SYoung|GCDatasheet)

    Set the Palette

- **Aspect Ratio** [jollycv_aspect] (**Region-based Pixel Aspect Ratio**|Perfectly Square Pixels (1:1 PAR)|Very Traditional NTSC Aspect Ratio (4:3 DAR)|Ostensibly Accurate PAL Aspect Ratio)

    Set the Aspect Ratio

- **Mask Overscan (Top)** [jollycv_overscan_t] (16|14|12|10|8|6|4|2|**0**)

    Mask off pixels hidden by a bezel or border on original CRTs (top)

- **Mask Overscan (Bottom)** [jollycv_overscan_b] (16|14|12|10|8|6|4|2|**0**)

    Mask off pixels hidden by a bezel or border on original CRTs (bottom)

- **Mask Overscan (Left)** [jollycv_overscan_l] (8|**6**|4|2|0)

    Mask off pixels hidden by a bezel or border on original CRTs (left)

- **Mask Overscan (Right)** [jollycv_overscan_r] (8|**6**|4|2|0)

    Mask off pixels hidden by a bezel or border on original CRTs (right)

### Input Devices

| ColecoVision Paddle (Super Action)  | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| Up                                  | ![](../image/retropad/retro_dpad_up.png)       |
| Down                                | ![](../image/retropad/retro_dpad_down.png)     |
| Left                                | ![](../image/retropad/retro_dpad_left.png)     |
| Right                               | ![](../image/retropad/retro_dpad_right.png)    |
| Yellow (Fire L)                     | ![](../image/retropad/retro_b.png)             |
| Orange (Fire R)                     | ![](../image/retropad/retro_a.png)             |
| Purple                              | ![](../image/retropad/retro_y.png)             |
| Blue                                | ![](../image/retropad/retro_x.png)             |
| 1                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_b.png) |
| 2                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_a.png) |
| 3                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_y.png) |
| 4                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_x.png) |
| 5                                   | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_b.png) |
| 6                                   | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_a.png) |
| 7                                   | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_y.png) |
| 8                                   | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_x.png) |
| 9                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_select.png) |
| 0                                   | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_select.png) |
| *                                   | ![](../image/retropad/retro_select.png)        |
| #                                   | ![](../image/retropad/retro_start.png)         |
| Spinner-                            | ![](../image/retropad/retro_l1.png)            |
| Spinner+                            | ![](../image/retropad/retro_r1.png)            |

| CreatiVision Paddle                 | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| Up                                  | ![](../image/retropad/retro_dpad_up.png)       |
| Down                                | ![](../image/retropad/retro_dpad_down.png)     |
| Left                                | ![](../image/retropad/retro_dpad_left.png)     |
| Right                               | ![](../image/retropad/retro_dpad_right.png)    |
| Fire L                              | ![](../image/retropad/retro_b.png)             |
| Fire R                              | ![](../image/retropad/retro_a.png)             |
| Start 1                             | ![](../image/retropad/retro_select.png)        |
| Start 2                             | ![](../image/retropad/retro_start.png)         |
| Reset                               | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_select.png) |
| Reset                               | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_start.png) |

| My Vision                           | RetroPad Inputs                                |
|-------------------------------------|------------------------------------------------|
| B (Up)                              | ![](../image/retropad/retro_dpad_up.png)       |
| C (Down)                            | ![](../image/retropad/retro_dpad_down.png)     |
| A (Left)                            | ![](../image/retropad/retro_dpad_left.png)     |
| D (Right)                           | ![](../image/retropad/retro_dpad_right.png)    |
| E                                   | ![](../image/retropad/retro_select.png)        |
| 1                                   | ![](../image/retropad/retro_b.png)             |
| 2                                   | ![](../image/retropad/retro_a.png)             |
| 3                                   | ![](../image/retropad/retro_y.png)             |
| 4                                   | ![](../image/retropad/retro_x.png)             |
| 5                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_b.png) |
| 6                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_a.png) |
| 7                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_y.png) |
| 8                                   | ![](../image/retropad/retro_l2.png) ![](../image/retropad/retro_x.png) |
| 9                                   | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_b.png) |
| 10                                  | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_a.png) |
| 11                                  | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_y.png) |
| 12                                  | ![](../image/retropad/retro_r2.png) ![](../image/retropad/retro_x.png) |
| 13                                  | ![](../image/retropad/retro_r1.png)            |
| 14                                  | ![](../image/retropad/retro_start.png)         |


## External Links

- [Upstream JollyCV Repository](https://gitlab.com/jgemu/jollycv)
- [Libretro JollyCV Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/jollycv_libretro.info)
- [Libretro JollyCV Repository](https://github.com/libretro/jollycv)
- [Report JollyCV Core Issues Here](https://github.com/libretro/jollycv/issues)

### See also

- [Coleco - ColecoVision (Gearcoleco)](gearcoleco.md)
- [MSX/SVI/ColecoVision/SG-1000 (blueMSX)](bluemsx.md)
