# Nintendo - SNES / SFC / Game Boy / Color (Mesen-S)

## Background

Mesen-S is a cross-platform SNES emulator for Windows & Linux built in C++ and C#.

Features

- High Accuracy: A lot of effort has gone into making Mesen-S as accurate as possible.
- High Compatibility
- SNES, Super Famicom, Game Boy, and Game Boy Color emulation is supported. Super Game Boy has complete support.

### Author/License

The Mesen-S core has been authored by

- M. Bibaud (aka Sour)

The Mesen-S core is licensed under

- [GPLv3](https://github.com/SourMesen/Mesen-S/blob/master/README.md)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename          | Description                            | md5sum                           |
|:-----------------:|:--------------------------------------:|:--------------------------------:|
| dsp1.data.rom     | DSP1 co-processor firmware - Optional  | 3d81b45fa0c2aa8b852dfb1ece7c0971 |
| dsp1.program.rom  | DSP1 co-processor firmware - Optional  | ae209fbe789fbf11a48aea5ab1197321 |
| dsp1b.data.rom    | DSP1B co-processor firmware - Optional | 1e3f568634a7d8284020dddc0ae905bc |
| dsp1b.program.rom | DSP1B co-processor firmware - Optional | d10f446888e097cbf500f3f663cf4f6d |
| dsp2.data.rom     | DSP2 co-processor firmware - Optional  | e9417e29223b139c3c4b635a2a3b8744 |
| dsp2.program.rom  | DSP2 co-processor firmware - Optional  | aa6e5922a3ed5ded54f24247c11143c5 |
| dsp3.data.rom     | DSP3 co-processor firmware - Optional  | 0a81210c0a940b997dd9843281008ee6 |
| dsp3.program.rom  | DSP3 co-processor firmware - Optional  | d99ca4562818d49cee1f242705bba6f8 |
| dsp4.data.rom     | DSP4 co-processor firmware - Optional  | ee4990879eb68e3cbca239c5bc20303d |
| dsp4.program.rom  | DSP4 co-processor firmware - Optional  | a151023b948b90ffc23a5b594bb6fef2 |
| st010.data.rom    | ST010 co-processor firmware - Optional | 254d70762b6f59f99c27c395aba7d07d |
| st010.program.rom | ST010 co-processor firmware - Optional | 1d70019179a59a566a0bb5d3f2845544 |
| st011.data.rom    | ST011 co-processor firmware - Optional | 10bd3f4aa949737ab9836512c35bcc29 |
| st011.program.rom | ST011 co-processor firmware - Optional | 95222ebf1c0c2990bcf25db43743f032 |
| dmg_boot.bin      | GB Boot Image - Optional               | 32fbbd84168d3482956eb3c5051637f5 |
| cgb_boot.bin      | GBC Boot Image - Optional              | dbfce9db9deaa2567f6a84fde55f9680 |
| sgb_boot.bin      | SGB Boot Image - Optional              | d574d4f9c12f305074798f54c091a8b4 |
| sgb2_boot.bin     | SGB2 Boot Image - Optional             | e0430bca9925fb9882148fd2dc2418c1 |
| SGB1.sfc          | SGB ROM - Optional                     | b15ddb15721c657d82c5bab6db982ee9 |
| SGB2.sfc          | SGB2 ROM - Optional                    | 8ecd73eb4edf7ed7e81aef1be80031d5 |
| BS-X.bin          | Satellaview Boot ROM - Optional        | fed4d8242cfbed61343d53d48432aced |

## Extensions

Content that can be loaded by the Mesen-S core have the following file extensions:

- .sfc
- .smc
- .fig
- .swc
- .bs
- .gb
- .gbc

## Databases

RetroArch database(s) that are associated with the Mesen-S core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)
- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Satellaview](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Satellaview.rdb)

## Features

Frontend-level settings or features that the Mesen-S core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✔         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

## Directories

The Mesen-S core's library name is 'Mesen-S'

The Mesen-S core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Mesen-S core's core provided FPS is 60 for NTSC games and 50 for PAL games.
- The Mesen-S core's core provided sample rate is 32040 Hz
- The Mesen-S core's base width is 256
- The Mesen-S core's base height is 239
- The Mesen-S core's max width is 512
- The Mesen-S core's max height is 478
- The Mesen-S core's core provided aspect ratio is dependent on the ['Aspect Ratio' core option](#core-options)

## Core options

The Mesen-S core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

!!! attention
	These core option descriptions have been sourced from the [official Mesen-S documentation](https://www.mesen.ca/snes/docs/). Please go there for more information.

- **NTSC filter** [mesen-s_ntsc_filter] (**Disabled**/Composite (Blargg)/S-Video (Blargg)/RGB (Blargg)/Monochrome (Blargg))

	Selects a filter to apply to the picture. The NTSC filter available in Mesen-S is blargg’s NTSC filter - this filter is very fast, and available in various other emulators.

- **Region** [mesen-s_region] (**Auto**/NTSC/PAL)

	When set to Auto, the emulator will try to detect the game’s region (NTSC or PAL) - however, this is not always possible. When there is nothing to suggest a game is for the PAL region (Australia & Europe), the NTSC region (North America & Japan) will be used by default.

- **Game Boy Model** [mesen-s_gbmodel] (**Auto**/Game Boy/Game Boy Color/Super Game Boy)

	Determines which Game Boy model to emulate when loading a Game Boy or Game Boy Color game. When Auto is selected, Super Game Boy emulation is used for Game Boy games, and Game Boy Color emulation is used for Game Boy Color games.

- **Use SGB2** [mesen-s_sgb2] (Off/**On**)

	When enabled, Super Game Boy 2 is used when emulating the SGB. Super Game Boy 2 has corrected CPU timing and some slight differences in behavior.

- **Vertical Overscan** [mesen-s_overscan_vertical] (**None**/8px/16px)

	This overscan setting allow you to cut out pixels vertically on the edge of the screen. On a CRT TV, a few pixels on each side of the screen are usually hidden. Most SNES games output 224 scanlines, while others use the SNES’ 239 scanlines mode. To avoid the window or picture size changing when the game changes between either mode, Mesen-S always outputs 239 scanlines. In the vast majority of games, this results in 7 blank lines on the top and 8 on the bottom. To hide these blank scanlines, set the overscan value to 8.

- **Horizontal Overscan** [mesen-s_overscan_horizontal] (**None**/8px/16px)

	This overscan setting allow you to cut out pixels horizontally on the edge of the screen.

- **Aspect Ratio** [mesen-s_aspect_ratio] (**Auto**/No Stretching/NTSC/PAL/4:3/16:9)

	The SNES’ resolution in most games is 256x224, but it used to be displayed on CRT TVs that had a rectangular picture. To simulate a CRT TV, you can use the Auto option - it will switch between NTSC and PAL aspect ratios depending on the game you are playing. Using anything other than the Default (No Stretching) option may cause pixels to have irregular sizes. You can reduce this effect by using video filters.

- **Blend Hi-Res Modes** [mesen-s_blend_high_res] (**Off**/On)

	Some games use the SNES’ “high resolution” mode which produces a 512x224 picture. However, this mode causes horizontal blending, which is sometimes used for pseudo-transparency effects. Enabling this option will allow these pseudo-transparency effects to look as they were intended (but causes the entire picture to look softer/blurrier).

- **Cubic Interpolation (Audio)** [mesen-s_cubic_interpolation] (**Off**/On)

	This option replaces the SNES’ default gaussian interpolation filter with a cubic interpolation filter which can produce better audio.

- **Overclock** [mesen-s_overclock] (**None**/Low/Medium/High/Very High)

	Use this to overclock the CPU.

!!! warning
	Overclocking can cause issues in some games.

- **Overclock Type** [mesen-s_overclock_type] (**Before NMI**/After NMI)

	Before NMI: Increases the number of scanlines in the PPU, *before* the NMI signal is triggered at the end of the visible frame. This effectively gives more time for games to perform calculations, which can reduce slowdowns in games. **This is the preferred option for overclocking.**

	After NMI: Increases the number of scanlines in the PPU, *after* the NMI signal is triggered at the end of the visible frame. This effectively gives more time for games to perform calculations, which can reduce slowdowns in games. **This option is less compatible and should only be used if the *Before NMI* variation does not work as expected.**

- **Super FX Clock Speed** [mesen-s_superfx_overclock] (**100%**/200%/300%/400%/500%/1000%)

	Increases the clock speed used for the Super FX chip, which can reduce lag in Super FX games. This method of overclocking is more efficient for Super FX titles.

- **Default power-on state for RAM** [mesen-s_ramstate] (**Random Values (Default)**/All 0s/All 1s)

	On a console, the RAM’s state at power on is undetermined and relatively random. This option lets you select Mesen-S’ behavior when initializing RAM - set all bits to 0, set all bits to 1, or randomize the value of each bit.

## Controllers

The Mesen-S core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- [SNES Controller](https://nintendo.fandom.com/wiki/Super_Nintendo_Entertainment_System_controller) - Joypad
- [SNES Mouse](https://nintendo.fandom.com/wiki/SNES_Mouse) - Mouse

### User 2 device types

- None - Input disabled.
- **RetroPad** - Joypad - SNES Controller
- [SNES Controller](https://nintendo.fandom.com/wiki/Super_Nintendo_Entertainment_System_controller) - Joypad
- [SNES Mouse](https://nintendo.fandom.com/wiki/SNES_Mouse) - Mouse
- [Super Scope](https://nintendo.fandom.com/wiki/Super_Scope) - Lightgun
- [Multitap](https://nintendo.fandom.com/wiki/Super_Multitap) - Joypad - Allows for up to five players to play together in mulitap games.

### User 3 - 5 device types

- None - Input disabled.
- **RetroPad** - Joypad
- [SNES Controller](https://nintendo.fandom.com/wiki/Super_Nintendo_Entertainment_System_controller) - Joypad

### Multitap

Multitap support can be activated in the Mesen-S core by switching User 2's device type to Multitap.

### Controller tables

#### Joypad

| User Remap descriptors for 'SNES Controller' device type | RetroPad Inputs                             |
|----------------------------------------------------------|---------------------------------------------|
| B                                                        | ![](../image/retropad/retro_b.png)          |
| Y                                                        | ![](../image/retropad/retro_y.png)          |
| Select                                                   | ![](../image/retropad/retro_select.png)     |
| Start                                                    | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                                                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                                               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                                               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                                              | ![](../image/retropad/retro_dpad_right.png) |
| A                                                        | ![](../image/retropad/retro_a.png)          |
| X                                                        | ![](../image/retropad/retro_x.png)          |
| L                                                        | ![](../image/retropad/retro_l1.png)         |
| R                                                        | ![](../image/retropad/retro_r1.png)         |

#### Mouse

| RetroMouse Inputs                                     | SNES Mouse              |
|-------------------------------------------------------|-------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | SNES Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | SNES Mouse Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | SNES Mouse Right Button |

#### Pointer

| RetroPointer Inputs                                                                                                      | Super Scope   |
|--------------------------------------------------------------------------------------------------------------------------|---------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Crosshair     |
| ![](../image/retromouse/retro_left.png) Mouse 1                                                                          | Fire          |
| ![](../image/retromouse/retro_right.png) Mouse 2                                                                         | Cursor Button |
| ![](../image/retromouse/retro_middle.png) Mouse 3                                                                        | Turbo Toggle  |

!!! attention
	Currently there is no crosshair. Pressing the mouse grab binding twice in RetroArch (default F11) should make your system cursor visible.

## Compatibility

The Mesen-S core fully emulates all SNES, GB, and GBC games that have ever been officially released.

## External Links

- [Official Mesen-S Website](https://www.mesen.ca/)
- [Official Mesen-S Documentation](https://www.mesen.ca/snes/docs/)
- [Libretro Mesen-S Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mesen-s_libretro.info)
- [Official Mesen-S Github Repository](https://github.com/SourMesen/Mesen-S)
- [Report Libretro Mesen-S Core Issues Here](https://github.com/SourMesen/Mesen-S/issues)

### See also

#### Nintendo - Game Boy (+ Color)

- [Nintendo - Game Boy / Color (Emux GB)](emux_gb.md)
- [Nintendo - Game Boy / Color (Gambatte)](gambatte.md)
- [Nintendo - Game Boy / Color (Gearboy)](gearboy.md)
- [Nintendo - Game Boy / Color (SameBoy)](sameboy.md)
- [Nintendo - Game Boy / Color (TGB Dual)](tgb_dual.md)
- [Nintendo - Game Boy Advance (mGBA)](mgba.md)
- [Nintendo - Game Boy Advance (VBA-M)](vba_m.md)
- [Nintendo - SNES / Famicom (bsnes-jg)](bsnes-jg.md)
- [Nintendo - SNES / Famicom (higan Accuracy)](higan_accuracy.md)
- [Nintendo - SNES / Famicom (nSide Balanced)](nside_balanced.md)

#### SNES

- [Nintendo - SNES / Famicom (Beetle bsnes)](beetle_bsnes.md)
- [Nintendo - SNES / Famicom (bsnes-jg)](bsnes-jg.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](bsnes_mercury_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](bsnes_mercury_balanced.md)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](bsnes_mercury_performance.md)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](bsnes_accuracy.md)
- [Nintendo - SNES / Famicom (bsnes Balanced)](bsnes_balanced.md)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](bsnes_cplusplus98.md)
- [Nintendo - SNES / Famicom (bsnes Performance)](bsnes_performance.md)
- [Nintendo - SNES / Famicom (higan Accuracy)](higan_accuracy.md)
- [Nintendo - SNES / Famicom (nSide Balanced)](nside_balanced.md)
- [Nintendo - SNES / Famicom (Snes9x)](snes9x.md)
- [Nintendo - SNES / Famicom (Snes9x 2002)](snes9x_2002.md)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](snes9x_2005_plus.md)
- [Nintendo - SNES / Famicom (Snes9x 2005)](snes9x_2005.md)
- [Nintendo - SNES / Famicom (Snes9x 2010)](snes9x_2010.md)
