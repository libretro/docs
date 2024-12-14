# Nintendo - SNES / Famicom (bsnes-jg)

## Background

bsnes-jg is a cycle accurate emulator for the Super Famicom/Super Nintendo
Entertainment System, including support for the Super Game Boy, BS-X
Satellaview, and Sufami Turbo.

This is a fork of bsnes v115. Many changes have been made post-fork:

- Higher quality resampler with settings
- Improved performance without loss of accuracy
- Portability improvements
- Removal of accuracy-reducing hacks and unnecessary code
- Significant increase in standards compliance
- Translation to the C++ Standard Library (ISO C++11)

### Author/License

The bsnes-jg core has been authored by

- byuu
- [Rupert Carmichael (carmiker)](https://github.com/carmiker)

The bsnes-jg core is licensed under

- [GPLv3](https://github.com/libretro/bsnes-jg/blob/libretro/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the bsnes-jg core have the following file extensions:

- .sfc
- .smc
- .gb
- .gbc
- .st
- .bs

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename          | Description                            | md5sum                           |
|:-----------------:|:--------------------------------------:|:--------------------------------:|
| dsp1.data.rom     | DSP1 co-processor firmware             | 3d81b45fa0c2aa8b852dfb1ece7c0971 |
| dsp1.program.rom  | DSP1 co-processor firmware             | ae209fbe789fbf11a48aea5ab1197321 |
| dsp1b.data.rom    | DSP1B co-processor firmware            | 1e3f568634a7d8284020dddc0ae905bc |
| dsp1b.program.rom | DSP1B co-processor firmware            | d10f446888e097cbf500f3f663cf4f6d |
| dsp2.data.rom     | DSP2 co-processor firmware             | e9417e29223b139c3c4b635a2a3b8744 |
| dsp2.program.rom  | DSP2 co-processor firmware             | aa6e5922a3ed5ded54f24247c11143c5 |
| dsp3.data.rom     | DSP3 co-processor firmware             | 0a81210c0a940b997dd9843281008ee6 |
| dsp3.program.rom  | DSP3 co-processor firmware             | d99ca4562818d49cee1f242705bba6f8 |
| dsp4.data.rom     | DSP4 co-processor firmware             | ee4990879eb68e3cbca239c5bc20303d |
| dsp4.program.rom  | DSP4 co-processor firmware             | a151023b948b90ffc23a5b594bb6fef2 |
| cx4.data.rom      | CX4 co-processor firmware              | 037ac4296b6b6a5c47c440188d3c72e3 |
| st010.data.rom    | ST010 co-processor firmware            | 254d70762b6f59f99c27c395aba7d07d |
| st010.program.rom | ST010 co-processor firmware            | 1d70019179a59a566a0bb5d3f2845544 |
| st011.data.rom    | ST011 co-processor firmware            | 10bd3f4aa949737ab9836512c35bcc29 |
| st011.program.rom | ST011 co-processor firmware            | 95222ebf1c0c2990bcf25db43743f032 |
| st018.data.rom    | ST018 co-processor firmware            | 49c898b60d0f15e90d0ba780dd12f366 |
| st018.program.rom | ST018 co-processor firmware            | dda40ccd57390c96e49d30a041f9a9e7 |

## Features

Frontend-level settings or features that the bsnes-jg core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✔         |
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The bsnes-jg core's library name is 'bsnes-jg'

The bsnes-jg core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description                   |
|:-----:|:-----------------------------:|
| *.srm | Cartridge-based battery saves |
| *.rtc | Real Time Clock data          |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The bsnes-jg core's core provided FPS is 60.098812 for NTSC games and 50.006979 for PAL games.
- The bsnes-jg core's core provided sample rate is 48000Hz
- The bsnes-jg core provides adjustable overscan and aspect ratio options.

## Subsystems

bsnes-jg supports Super Game Boy, BS-X Satellaview, and Sufami Turbo via the Subsystem API.

For Super Game Boy, you will need a Game Boy ROM (.gb/gbc) and Super Game Boy ROM.

For BS-X Satellaview, you will need a BS Memory dump (.bs) and BS-X BIOS ROM.

For Sufami Turbo (1 or 2 Carts), you will need Sufami Turbo ROMs (.st) and the Sufami Turbo ROM.

| Subsystem | Description                   |
|:---------:|:-----------------------------:|
| sgb       | Super Game Boy                |
| bsx       | BS-X Satellaview              |
| sufami    | Sufami Turbo (One Cart)       |
| sufami2   | Sufami Turbo (Two Carts)      |


**Command Line**

```
retroarch -L {path to bsnes core} {path to Super GameBoy ROM} --subsystem sgb {path to GameBoy rom}
```

**RetroArch GUI**

Load the Game Boy ROM through 'Load SuperGame Boy' in RetroArch's Main Menu.

![](../image/core/bsnes/menu1.png)

![](../image/core/bsnes/gb.png)

Next, load the Super Game Boy BIOS ROM through 'Load Super GameBoy' in RetroArch's Menu Menu.

![](../image/core/bsnes/menu2.png)

![](../image/core/bsnes/sgb.png)

Then, start the content by selecting 'Start GameBoy' In RetroArch's Menu Menu.

![](../image/core/bsnes/start.png)

## MSU-1

MSU-1 is supported. To load an MSU-1 enhanced ROM, simply load the .sfc which resides in the same directory as the .msu and audio tracks.

## Core options

- **Delay LLE Coprocessor Sync (Restart)** [bsnes_jg_coproc_delaysync] (**Off**|On)

    Delay sync when using Low Level Coprocessor Emulation for more speed at the cost of accuracy

- **Prefer HLE Coprocessor Emulation (Restart)** [bsnes_jg_coproc_preferhle] (**Off**|On)

    Delay sync when using Low Level Coprocessor Emulation for more speed at the cost of accuracy

- **Hotfixes (Restart)** [bsnes_jg_hotfixes] (**Off**|On)

    Apply hotfixes when playing a handful of games released with major bugs (which are exhibited on real hardware). Games in question: Dirt Racer, Magical Drop, Rendering Ranger R2

- **Internal Run-Ahead** [bsnes_jg_runahead] (**0**|1|2|3|4)

    Simulate the system ahead of time and roll back to reduce input latency. Has very high system requirements.

- **Resampler Quality (Restart)** [bsnes_jg_rsqual] (**Fast**|Medium|Best)

    Set the internal resampler's quality level (you may hear a difference if you use pro audio equipment and your imagination)

- **SPC Interpolation Algorithm** [bsnes_jg_spc_interp] (**Gaussian**|Sinc)

    Set the emulated sound chip sample interpolation algorithm: Gaussian is considered more accurate, while Sinc is cleaner, but still produces very accurate output.

- **Aspect Ratio** [bsnes_jg_aspect] (**Auto**|1:1|8:7|11:8|4:3)

    Set the Aspect Ratio

- **Mask Overscan (Top)** [bsnes_jg_overscan_t] (0|4|**8**|12|16|20)

    Mask off pixels hidden by a bezel or border on original CRTs (top)

- **Mask Overscan (Bottom)** [bsnes_jg_overscan_b] (0|4|**8**|12|16|20|21)

    Mask off pixels hidden by a bezel or border on original CRTs (bottom)

- **Mask Overscan (Left)** [bsnes_jg_overscan_l] (**0**|4|8|12|16|20)

    Mask off pixels hidden by a bezel or border on original CRTs (left)

- **Mask Overscan (Right)** [bsnes_jg_overscan_r] (**0**|4|8|12|16|20)

    Mask off pixels hidden by a bezel or border on original CRTs (right)

- **Colour Adjustment - Luminance** [bsnes_jg_luminance] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**)

    Adjust Luminance

- **Colour Adjustment - Saturation** [bsnes_jg_saturation] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**|110%|120%|130%|140%|150%|160%|170%|180%|190%|200%)

    Adjust Saturation

- **Colour Adjustment - Gamma** [bsnes_jg_gamma] (100%|110%|**120%**|130%|140%|150%|160%|170%|180%|190%|200%)

    Adjust Gamma

- **Competition Timer** [bsnes_jg_competition_timer] (3 Minutes|4 Minutes|5 Minutes|**6 Minutes**|7 Minutes|8 Minutes|9 Minutes|10 Minutes|11 Minutes|12 Minutes|13 Minutes|14 Minutes|15 Minutes|16 Minutes|17 Minutes|18 Minutes)

    Set the gameplay time for competition boards such as Campus Challenge '92 and PowerFest '94


## Controllers

The bsnes-jg core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- **[Gamepad](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller)** - Gamepad
- [SNES Mouse](https://en.wikipedia.org/wiki/Super_NES_Mouse) - Mouse

### User 2 device types

- **[Gamepad](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller)** - Gamepad
- [SNES Mouse](https://en.wikipedia.org/wiki/Super_NES_Mouse) - Mouse
- [Multitap](http://nintendo.wikia.com/wiki/Super_Multitap) - Gamepad - Allows for up to five players to play together in multitap games.
- [SuperScope](https://en.wikipedia.org/wiki/Super_Scope) - Lightgun
- [Justifier](https://en.wikipedia.org/wiki/Konami_Justifier) - Lightgun

### Multitap support

Activating multitap support in compatible games can be configured by switching to the [Multitap device type](#controllers) for User 2.

### Controller tables

#### Gamepad

![](../image/controller/snes.png)

| User 1 - 5 Remap descriptors | RetroPad Inputs                             |
|------------------------------|---------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)          |
| Y                            | ![](../image/retropad/retro_y.png)          |
| Select                       | ![](../image/retropad/retro_select.png)     |
| Start                        | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png) |
| A                            | ![](../image/retropad/retro_a.png)          |
| X                            | ![](../image/retropad/retro_x.png)          |
| L                            | ![](../image/retropad/retro_l1.png)         |
| R                            | ![](../image/retropad/retro_r1.png)         |

#### Mouse

| RetroMouse Inputs                                     | SNES Mouse                |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | SNES Mouse Cursor         |
| ![](../image/retromouse/retro_left.png) Mouse 1       | SNES Mouse Left Button    |
| ![](../image/retromouse/retro_right.png) Mouse 2      | SNES Mouse Right Button   |

#### Lightgun

| RetroLightgun Inputs                                   | SuperScope                | Justifier(s)        |
|--------------------------------------------------------|---------------------------|---------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | SuperScope Crosshair      | Justifier Crosshair |
| Gun Trigger                                            | SuperScope Trigger        | Justifier Trigger   |
| Gun Aux A                                              | SuperScope Cursor         |                     |
| Gun Aux B                                              | SuperScope Turbo          |                     |
| Gun Start                                              | SuperScope Pause          | Justifier Start     |

## Compatibility

The bsnes-jg core is compatible with all officially released SNES/SFC titles.

## External Links

- [Upstream bsnes-jg Repository](https://gitlab.com/jgemu/bsnes-jg)
- [Libretro bsnes-jg Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/bsnes-jg_libretro.info)
- [Libretro bsnes-jg Repository](https://github.com/libretro/bsnes-jg)
- [Report bsnes-jg Core Issues Here](https://github.com/libretro/bsnes-jg/issues)

### See also

#### Nintendo - Sufami Turbo

- [Nintendo - SNES / Famicom (Beetle bsnes)](beetle_bsnes.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](bsnes_mercury_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](bsnes_mercury_balanced.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](bsnes_mercury_performance.md)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](bsnes_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes Balanced)](bsnes_balanced.md)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](bsnes_cplusplus98.md)
- [Nintendo - SNES / Famicom (bsnes Performance)](bsnes_performance.md)
- [Nintendo - SNES / Famicom (Snes9x)](snes9x.md)
- [Nintendo - SNES / Famicom (Snes9x 2002)](snes9x_2002.md)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](snes9x_2005_plus.md)
- [Nintendo - SNES / Famicom (Snes9x 2005)](snes9x_2005.md)
- [Nintendo - SNES / Famicom (Snes9x 2010)](snes9x_2010.md)

#### Nintendo - Super Nintendo Entertainment System (+ Hacks)

- [Nintendo - SNES / Famicom (Beetle bsnes)](beetle_bsnes.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](bsnes_mercury_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](bsnes_mercury_balanced.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](bsnes_mercury_performance.md)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](bsnes_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes Balanced)](bsnes_balanced.md)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](bsnes_cplusplus98.md)
- [Nintendo - SNES / Famicom (bsnes Performance)](bsnes_performance.md)
- [Nintendo - SNES / Famicom (higan Accuracy)](higan_accuracy.md)
- [Nintendo - SNES / Famicom (nSide Balanced)](nside_balanced.md)
- [Nintendo - SNES / Famicom (Mesen-S)](mesen-s.md)
- [Nintendo - SNES / Famicom (Snes9x)](snes9x.md)
- [Nintendo - SNES / Famicom (Snes9x 2002)](snes9x_2002.md)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](snes9x_2005_plus.md)
- [Nintendo - SNES / Famicom (Snes9x 2005)](snes9x_2005.md)
- [Nintendo - SNES / Famicom (Snes9x 2010)](snes9x_2010.md)
