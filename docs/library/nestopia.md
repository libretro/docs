# Nintendo - NES / Famicom (Nestopia)

## Background

Nestopia is a cycle accurate emulator for the NES/Famicom.
This is the libretro port of the Nestopia emulator, based on the de facto
upstream Nestopia JG fork. The libretro port contains an additional overclocking feature.

### Author/License

The Nestopia core has been authored by

- Martin Freij
- R. Danbrook
- [Rupert Carmichael (carmiker)](https://github.com/carmiker)

The Nestopia core is licensed under

- [GPLv2](https://github.com/libretro/nestopia/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Nestopia core have the following file extensions:

- .nes
- .fds
- .unf
- .unif

## Databases

RetroArch database(s) that are associated with the Nestopia core:

- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Family Computer Disk System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Family%20Computer%20Disk%20System.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! warning
	Prior to version 1.50, it required the [NstDatabase.xml](#nstdatabasexml) file for general proper emulation. In version 1.50 or higher, it's baked into the core.

|   Filename      |    Description                                                                |              md5sum              |
|:---------------:|:-----------------------------------------------------------------------------:|:--------------------------------:|
| disksys.rom     | Family Computer Disk System BIOS - Required for Famicom Disk System emulation | ca30b50f880eb660a320674ed365ef7a |

## Features

Frontend-level settings or features that the Nestopia core respects.

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
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Nestopia core's internal core name is 'Nestopia'

The Nestopia core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

**Frontend's System directory**

- custom.pal (Custom palette file)

### Geometry and timing

- The Nestopia core's core provided FPS is (FPS)
- The Nestopia core's core provided sample rate is 44100 Hz
- The Nestopia core's core provided aspect ratio is dependent on the ['Preferred aspect ratio' core option](#core-options).

### NstDatabase.xml

The Nestopia core relies on the internal database (built from the NstDatabase.xml file) for

- Games that support a custom mapper
- Games that support multitap accessories
- Games that support the Zapper
- ROM Hacks
- Famicom Disk System games
- General proper emulation of games

### Custom color palettes

To use custom color palettes in the Nestopia core, the custom color palette file you want to use must be in RetroArch's system directory.

Make sure the custom palette file is named 'custom.pal'

Also, the 'Palette' core option must be set to custom.

Custom color palettes for the NES can be generated with either of these tools.

- [Bisqwit's NTSC NES palette generator](http://bisqwit.iki.fi/utils/nespalette.php)
- [Drag's NTSC NES palette generator](http://drag.wootest.net/misc/palgen.html)

## Core options

The Nestopia core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Blargg NTSC filter** [nestopia_blargg_ntsc_filter] (**disabled**|composite|svideo|rgb|monochrome)

	Enable Blargg NTSC filters.

!!! attention "Disclaimer"
	These 'Blargg NTSC filter' core option screenshots have been taken with the 'Palette' core option set to cxa2025as.

??? note "Blargg NTSC filter - Off"
	![](../image/core/nestopia/blargg_off.png)

??? note "Blargg NTSC filter - composite"
	![](../image/core/nestopia/blargg_composite.png)

??? note "Blargg NTSC filter - svideo"
	![](../image/core/nestopia/blargg_svideo.png)

??? note "Blargg NTSC filter - rgb"
	![](../image/core/nestopia/blargg_rgb.png)

??? note "Blargg NTSC filter - monochrome"
	![](../image/core/nestopia/blargg_monochrome.png)

- **Palette** [nestopia_palette] (**cxa2025as**|consumer|canonical|alternative|rgb|pal|composite-direct-fbx|pvm-style-d93-fbx|ntsc-hardware-fbx|nes-classic-fbx-fs|raw|custom)

	Choose which color palette is going to be used.

!!! attention "Disclaimer"
	These 'Palette' core option screenshots have been taken with the 'Blargg NTSC filter' core option set to Off.

??? note "Palette - cxa2025as"
	![](../image/core/nestopia/cxa2025as.png)

??? note "Palette - consumer"
	![](../image/core/nestopia/consumer.png)

??? note "Palette - canonical"
	![](../image/core/nestopia/canonical.png)

??? note "Palette - alternative"
	![](../image/core/nestopia/alternative.png)

??? note "Palette - rgb"
	![](../image/core/nestopia/rgb.png)

??? note "Palette - pal"
	![](../image/core/nestopia/pal.png)

??? note "Palette - composite-direct-fbx"
	![](../image/core/nestopia/composite_direct_fbx.png)

??? note "Palette - pvm-style-d93-fbx"
	![](../image/core/nestopia/pvm_style_d93_fbx.png)

??? note "Palette - ntsc-hardware-fbx"
	![](../image/core/nestopia/ntsc_hardware_fbx.png)

??? note "Palette - nes-classic-fbx-fs"
	![](../image/core/nestopia/nes_classic_fbx_fs.png)

??? note "Palette - raw"
	![](../image/core/nestopia/raw.png)

- **Remove Sprite Limit** [nestopia_nospritelimit] (**disabled**|enabled)

	Remove 8-sprites-per-scanline hardware limit.

- **CPU Speed (Overclock)** [nestopia_overclock] (**1x**|2x)

	Overclock the emulated CPU.

- **4 Player Adapter** [nestopia_select_adapter] (**auto**|ntsc|famicom)

	Manually select a 4 Player Adapter if needed. Some games will not recognize the adapter correctly through the internal database, this option should help fix that.

- **FDS Auto Insntert** [nestopia_fds_auto_insert] (**enabled**|disabled)

	Automatically insert first FDS disk on reset.

- **Mask Overscan (Vertical)** [nestopia_overscan_v] (**enabled**|disabled)

	Mask out (vertically) the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.

??? note "Mask Overscan (Vertical) - On"
	![](../image/core/nestopia/vert_on.png)

??? note "Mask Overscan (Vertical) - Off"
	![](../image/core/nestopia/vert_off.png)

- **Mask Overscan (Horizontal)** [nestopia_overscan_h] (**disabled**|enabled)

	Mask out (horizontally) the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.

??? note "Mask Overscan (Horizontal) - Off"
	![](../image/core/nestopia/horiz_off.png)

??? note "Mask Overscan (Horizontal) - On"
	![](../image/core/nestopia/horiz_on.png)

- **Preferred aspect ratio** [nestopia_aspect] (**auto**|ntsc|pal|4:3)

	Choose the preferred aspect ratio. RetroArch's aspect ratio must be set to Core provided in the Video settings. 'auto' will use the [internal database](#nstdatabasexml) for aspect ratio autodetection.

??? note "Preferred aspect ratio - ntsc"
	![](../image/core/nestopia/ratio_ntsc.png)

??? note "Preferred aspect ratio - pal"
	![](../image/core/nestopia/ratio_pal.png)

??? note "Preferred aspect ratio - 4:3"
	![](../image/core/nestopia/ratio_4by3.png)

- **Game Genie Sound Distortion** [nestopia_genie_distortion] (**disabled**|enabled)

	The Game Genie cheat device could inadvertently introduce sound distortion in games. By enabling this, you can simulate the distortion it would add to a game's sound.

- **System Region** [nestopia_favored_system] (**auto**|ntsc|pal|famicom|dendy)

	Choose which region the system is from. 'auto' will use the internal database for region autodetection.

- **RAM Power-on State** [nestopia_ram_power_state] (**0x00**|0xFF|random)

	Awaiting description.

- **Turbo Pulse Speed** [nestopia_turbo_pulse] (**2**|3|4|5|6|7|8|9)

	Set the turbo pulse speed for the Turbo B and Turbo A buttons.

## Controllers

The Nestopia core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 4 device types

- None - Disables input.
- **Auto** - Automatically detects the device to use based on the internal database.
- Gamepad - Joypad
- Arkanoid - Arkanoid paddle -  This should be automatic from the internal database, but this can be changed to Gamepad if you'd prefer using a joypad rather than a paddle. (Port 2 only)
- Zapper - Lightgun - The Nestopia core can emulate Zapper inputs.  This is generally done automatically based off of the internal database, but can be manually selected as a device type. (Port 2 only)

### Multitap support

The Nestopia core uses the internal database to detect which games have multitap support.

### Controller tables

#### Joypad

![](../image/controller/nes.png)

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Turbo B                  | ![](../image/retropad/retro_y.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |
| Turbo A                  | ![](../image/retropad/retro_x.png)          |
| (FDS) Disk Side Change   | ![](../image/retropad/retro_l1.png)         |
| (FDS) Eject Disk         | ![](../image/retropad/retro_r1.png)         |
| (VSSystem) Coin 1        | ![](../image/retropad/retro_l2.png)         |
| (VSSystem) Coin 2        | ![](../image/retropad/retro_r2.png)         |
| (Famicom) Microphone     | ![](../image/retropad/retro_l3.png)         |

| User 2 - 4 Remap descriptors | RetroPad Inputs                             |
|------------------------------|---------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)          |
| Turbo B                      | ![](../image/retropad/retro_y.png)          |
| Select                       | ![](../image/retropad/retro_select.png)     |
| Start                        | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png) |
| A                            | ![](../image/retropad/retro_a.png)          |
| Turbo A                      | ![](../image/retropad/retro_x.png)          |
| (FDS) Disk Side Change       | ![](../image/retropad/retro_l1.png)         |
| (FDS) Eject Disk             | ![](../image/retropad/retro_r1.png)         |

#### Lightgun

| RetroLightgun Inputs                                   | Zapper           |
|--------------------------------------------------------|------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | Zapper Crosshair |
| Gun Trigger                                            | Zapper Trigger   |
| Gun Aux B                                              | Zapper Light On  |

## Compatibility

The Nestopia core is compatible with 100% of officially released titles, and the vast majority of homebrew and hacks.

## External Links

- [Upstream Nestopia JG Repository](https://gitlab.com/jgemu/nestopia)
- [Libretro Nestopia Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/nestopia_libretro.info)
- [Libretro Nestopia Github Repository](https://github.com/libretro/nestopia)
- [Report Libretro Nestopia Core Issues Here](https://github.com/libretro/nestopia/issues)

### See also

#### Nintendo - Family Computer Disk System

- [Nintendo - NES / Famicom (FCEUmm)](fceumm.md)
- [Nintendo - NES / Famicom (Mesen)](mesen.md)

#### Nintendo - Nintendo Entertainment System

- [Nintendo - NES / Famicom (bnes)](bnes.md)
- [Nintendo - NES / Famicom (Emux NES)](emux_nes.md)
- [Nintendo - NES / Famicom (FCEUmm)](fceumm.md)
- [Nintendo - NES / Famicom (Mesen)](mesen.md)
- [Nintendo - NES / Famicom (QuickNES)](quicknes.md)
