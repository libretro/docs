# Nintendo - NES / Famicom (Mesen)

## Background

Mesen is a high-accuracy NES and Famicom emulator and NSF player for Windows and Linux.

Features

- High Accuracy: A lot of effort has gone into making Mesen as accurate as possible.
- High Compatibility: Over 220 mappers supported (all licensed games supported)
- NES, Famicom, Famicom Disk System, Dendy, VS System, NSF and NSFe emulation is supported.
- General: Save States, Rewinding, Movie/Audio Recording, Overclocking, Cheat Codes.
- Video: Numerous video filters, customizable palettes/overscan, support for HDNes' HD packs.
- Audio: Stereo effects, per-channel volume and panning, equalizer, etc.
- Misc: Netplay, 7z/zip support, IPS/BPS patch support, automatic updates, and more!

### Author/License

The Mesen core has been authored by

- M. Bibaud (aka Sour)

The Mesen core is licensed under

- [GPLv3](https://github.com/SourMesen/Mesen/blob/master/README.md)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Mesen core have the following file extensions:

- .nes
- .fds
- .unf
- .unif

## Databases

RetroArch database(s) that are associated with the Mesen core:

- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Family Computer Disk System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Family%20Computer%20Disk%20System.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename    | Description                                                                           | md5sum                           |
|:-----------:|:-------------------------------------------------------------------------------------:|:--------------------------------:|
| disksys.rom | Family Computer Disk System BIOS - Required for Family Computer Disk System emulation | ca30b50f880eb660a320674ed365ef7a |

## Features

Frontend-level settings or features that the Mesen core respects.

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

The Mesen core's library name is 'Mesen'

The Mesen core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

**Frontend's System directory**

| File              | Description       |
|:-----------------:|:-----------------:|
| MesenPalette.pal  | Custom palette    |
| HdPacks/*         | HD Pack directory |

### Geometry and timing

- The Mesen core's core provided FPS is NTSC 60, PAL/Dendy 50
- The Mesen core's core provided sample rate is 48000 Hz
- The Mesen core's base width is 256
- The Mesen core's base height is 240
- The Mesen core's max width is 256 (higher when using HD Packs)
- The Mesen core's max height is 240 (higher when using HD Packs)
- The Mesen core's core provided aspect ratio is dependent on the ['Aspect Ratio' core option](#core-options).

### Custom Palettes

To use custom color palettes in the Mesen core, the ['Palette' core option](#core-options) must be set to Custom and the custom color palette file you want to use must be in RetroArch's system directory.

Make sure the custom palette file is named 'MesenPalette.pal'

Custom color palettes for the NES can be generated with either of these tools.

- [Bisqwit's NTSC NES palette generator](http://bisqwit.iki.fi/utils/nespalette.php)
- [Drag's NTSC NES palette generator](http://drag.wootest.net/misc/palgen.html)

## HD packs

!!! attention
	There is more HD pack documentation at the [official Mesen documentation](https://www.mesen.ca/docs/hdpacks/#using-hd-packs).

To use HD packs, first make sure to turn on the [Enable HD Packs core option](#core-options.)

First, create a folder named 'HdPacks' in RetroArch's System directory.

Next, create a folder inside the HdPacks directory that has the same name as the content you're going to load.

So, if the content you're loading is Mega Man (USA).nes, the folder should be named 'Mega Man (USA)'.

Finally, extract the HD pack content files to the Mega Man (USA) folder.

Here's an example of a working HD pack setup done with [Mega Man 1 (NES) - 30th Anniversary 16-bit Graphic Pack](https://www.romhacking.net/forum/index.php?topic=25426.0).

Pay attention to the file path.

![](../image/core/mesen/hdpack.png)

## Core options

The Mesen core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

!!! attention
	These core option descriptions have been sourced from the [official Mesen documentation](https://www.mesen.ca/docs/). Please go there for more information.

- **NTSC filter** [mesen_ntsc_filter] (**Disabled**/Composite (Blargg)/S-Video (Blargg)/RGB (Blargg)/Monochrome (Blargg)/Bisqwit 2x/Bisqwit 4x/Bisqwit 8x)

	Selects a filter to apply to the picture.

	Blargg filters are fast.

	Bisqwit filters are slower.

- **Palette** [mesen_palette] (**Default**/Composite Direct (by FirebrandX)/Nes Classic/Nestopia (RGB)/Original Hardware (by FirebrandX)/PVM Style (by FirebrandX)/Sony CXA2025AS/Unsaturated v6 (by FirebrandX)/YUV v3 (by FirebrandX)/Custom)

	Mesen comes with a number of built-in palette options - you can select them from here.

- **Overclock** [mesen_overclock] (**None**/Low/Medium/High/Very High)

	Use this to overclock or underclock the CPU.

!!! warning
	Overclocking can cause issues in some games.

- **Overclock Type** [mesen_overclock_type] (**Before NMI (Recommended)**/After NMI)

	Before NMI: Increases the number of scanlines in the PPU, before the NMI signal is triggered at the end of the visible frame. This effectively gives more time for games to perform calculations, which can reduce slowdowns in games. **This is the preferred option for overclocking.**

	After NMI: Increases the number of scanlines in the PPU, after the NMI signal is triggered at the end of the visible frame. This effectively gives more time for games to perform calculations, which can reduce slowdowns in games. **This option is less compatible and should only be used if the before NMI variation does not work as expected.**

- **Region** [mesen_region] (**Auto**/NTSC/PAL/Dendy)

	When set to Auto, the emulator will try to detect the game’s region (NTSC or PAL) - however, this is not always possible. When there is nothing to suggest a game is for the PAL region (Australia & Europe), the NTSC region (North America & Japan) will be used by default. Dendy is used to mimic a number of different NES clones, in particular, the Dendy, which was a popular clone in Russia.

- **Vertical Overscan** [mesen_overscan_vertical] (**None**/8px/16px)

	This overscan setting allow you to cut out pixels vertically on any edge of the screen. On a CRT TV, a few pixels on each side of the screen was usually invisible to the player. Because of this, games often have glitches or incorrect palette colors on the edges of the screen – this is normal and caused by the game itself. Setting a value of 8 or so on each side of the overscan configuration will usually hide most glitches.

- **Horizontal Overscan** [mesen_overscan_horizontal] (**None**/8px/16px)

	This overscan setting allow you to cut out pixels horizontally on any edge of the screen. On a CRT TV, a few pixels on each side of the screen was usually invisible to the player. Because of this, games often have glitches or incorrect palette colors on the edges of the screen – this is normal and caused by the game itself. Setting a value of 8 or so on each side of the overscan configuration will usually hide most glitches.

- **Aspect Ratio** [mesen_aspect_ratio] (**Auto**/No Stretching/NTSC/PAL/4:3/16:9)

	The NES’ internal aspect ratio is almost square (Default (No Stretching)), but it used to be displayed on CRT TVs that had a rectangular picture. To simulate a CRT TV, you can use the Auto option - it will switch between NTSC and PAL aspect ratios depending on the game you are playing. Using anything other than the Default (No Stretching) option may cause pixels to have irregular sizes. You can reduce this effect by using a combination of video filters and the bilinear filtering option.

- **Controller Turbo Speed** [mesen_controllerturbospeed] (**Fast**/Very Fast/Disabled/Slow/Normal)

	Configure the controller's turbo buttons' speed.

- **Enable HD Packs** [mesen_hdpacks] (Off/**On**)

	Enables the use of [HD packs](https://www.mesen.ca/docs/hdpacks/). [Look at the HD packs section for more information](#hd-packs).

- **Remove sprite limit** [mesen_nospritelimit] (Off/**On**)

	The NES can normally only draw up to 8 sprites per line – this limitation is indirectly responsible for some of the flickering seen in games at times. When this option is enabled, the limit is disabled, allowing up to 64 sprites to be drawn on the same line.

- **Enable fake stereo effect** [mesen_fake_stereo] (**Off**/On)

	Self-explanatory.

- **Reduce popping on Triangle channel** [mesen_mute_triangle_ultrasonic] (Off/**On**)

	This option mutes the triangle channel under certain conditions, which prevents it from causing popping sounds.

- **Reduce popping on DMC channel** [mesen_reduce_dmc_popping] (Off/**On**)

	Similar to the previous option, but for the DMC channel – this option prevents games from changing the output of the DMC channel too abruptly, which often causes popping sounds.

- **Swap Square channel duty cycles** [mesen_swap_duty_cycle] (**Off**/On)

	This option is to mimic some older NES clones that had incorrect sound output for both of the square channels. It greatly alters the sound in some games, and shouldn’t be enabled unless you want this behavior.

- **Disable Noise channel mode flag** [mesen_disable_noise_mode_flag] (**Off**/On)

	Very early Famicom models did not implement this feature, so this option is available to mimic early Famicom consoles. It changes the sound output of the noise channel in some games, and shouldn’t be enabled unless you want this behavior.

- **Screen Rotation** [mesen_screenrotation] (**None**/90 degrees/180 degrees/270 degrees)

	Rotates the display by the specified angle. This is useful to play games (generally homebrew games) designed for a vertical display.

- **Default power-on state for RAM** [mesen_ramstate] (**All 0s (Default)**/All 1s/Random Values)

	On a console, the RAM’s state at power on is undetermined and relatively random. This option lets you select Mesen’s behavior when initializing RAM - set all bits to 0, set all bits to 1, or randomize the value of each bit.

- **FDS: Automatically insert disks** [mesen_fdsautoinsertdisk] (**Off**/On)

	By default, the FDS boots with no disk inserted in the drive. This option makes it so the player does not need to manually insert disk 1, side A manually.

- **FDS: Fast forward while loading** [mesen_fdsfastforwardload] (**Off**/On)

	FDS games contain a large number of load screens due to their data being stored on floppy drives. Mesen needs to emulate this floppy drive’s speed to ensure accurate emulation. This option makes it so Mesen runs the emulation as fast as it can when a game is loading data from the disk, which greatly reduces the time spent on loading screens.

## Controllers

The Mesen core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Input disabled.
- **Auto** - Joypad - Automatically selects an input device according to the data in the game database.
- [Standard Controller](https://wiki.nesdev.com/w/index.php/Standard_controller) - Joypad - Manually selects a standard game controller.
- [Zapper](https://wiki.nesdev.com/w/index.php/Zapper) - Pointer - Manually selects a Zapper light gun.
- [Power Pad](https://wiki.nesdev.com/w/index.php/Power_Pad) - Joypad - Manually selects a Power Pad peripheral.
- [Arkanoid](https://wiki.nesdev.com/w/index.php/Arkanoid_controller) - Mouse - Manually selects an Arkanoid controller.
- [SNES Controller](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller) - Joypad - Manually selects a SNES Controller.
- [SNES Mouse](https://wiki.nesdev.com/w/index.php/Mouse) - Mouse - Manually selects a SNES Mouse.

### User 3 device types

- None - Input disabled.
- **Auto** - Joypad - Automatically selects an input device according to the data in the game database.
- [Standard Controller](https://wiki.nesdev.com/w/index.php/Standard_controller) - Joypad - Manually selects a standard game controller.

### User 4 device types

- None - Input disabled.
- **Auto** - Joypad - Automatically selects an input device according to the data in the game database.
- [Standard Controller](https://wiki.nesdev.com/w/index.php/Standard_controller) - Joypad - Manually selects a standard game controller.

### User 5 device types

- None - Input disabled.
- **Auto** - Joypad - Automatically selects an input device according to the data in the game database.
- [Arkanoid](https://wiki.nesdev.com/w/index.php/Arkanoid_controller) - Mouse - Manually selects an Arkanoid controller.
- [Ascii Turbo Fire](https://en.wikipedia.org/wiki/Turbo_File_(ASCII)) - None - Manually selects an Ascii Turbo Fire device.
- Bandai Hypershot - Pointer - Manually selects a Bandai Hypershot light gun.
- Battle Box - None - Manually selects a Battle Box device.
- [Exciting Boxing](https://wiki.nesdev.com/w/index.php/Exciting_Boxing_Punching_Bag) - Joypad - Manually selects an Exciting Boxing punching bag.
- [Family Trainer](https://wiki.nesdev.com/w/index.php/Power_Pad) - Joypad - Manually selects a Family Trainer peripheral.
- [Four Player Adapter](https://wiki.nesdev.com/w/index.php/Four_Score) - None - Manually selects a Four Player Adapter device.
- [Hori Track](https://wiki.nesdev.com/w/index.php/Mouse#Hori_Track) - Mouse - Manually selects a Hori Track trackball.
- [Konami Hypershot](https://wiki.nesdev.com/w/index.php/Konami_Hyper_Shot) - Joypad - Manually selects a Konami Hypershot controller.
- [Pachinko](https://wiki.nesdev.com/w/index.php/Coconuts_Pachinko) - Joypad - Manually selects a Pachinko controller.
- [Partytap](https://wiki.nesdev.com/w/index.php/Partytap) - Joypad - Manually selects Partytap controllers.

### Other controllers

- [Oeka Kids Tablet](https://wiki.nesdev.com/w/index.php/Oeka_Kids_tablet) - Pointer - The Mesen core will automatically select the Oeka Kids Tablet input device according to the data in the game database. It cannot be manually selected as a device type in RetroArch's controls menu.

### Multitap support

Multitap support can be activated in the Mesen core by switching User 5's device type to Four Player Adapter.

### Controller tables

#### Joypad

!!! attention
	The (FDS) Insert Next Disk and (FDS) Switch Disk Side inputs will NOT do anything while the ['FDS: Automatically insert disks' core option](#core-options) is enabled.

![](../image/controller/nes.png)

| User Remap descriptors for 'Standard Controller' device type | RetroPad Inputs                             |
|--------------------------------------------------------------|---------------------------------------------|
| A                                                            | ![](../image/retropad/retro_b.png)          |
| B                                                            | ![](../image/retropad/retro_y.png)          |
| Select                                                       | ![](../image/retropad/retro_select.png)     |
| Start                                                        | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                                                     | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                                                   | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                                                   | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                                                  | ![](../image/retropad/retro_dpad_right.png) |
| Turbo A                                                      | ![](../image/retropad/retro_a.png)          |
| Turbo B                                                      | ![](../image/retropad/retro_x.png)          |
| (FDS) Insert Next Disk                                       | ![](../image/retropad/retro_l1.png)         |
| (FDS) Switch Disk Side                                       | ![](../image/retropad/retro_r1.png)         |
| (VS) Insert Coin 1                                           | ![](../image/retropad/retro_l2.png)         |
| (VS) Insert Coin 2                                           | ![](../image/retropad/retro_r2.png)         |
| (Famicom) Microphone                                         | ![](../image/retropad/retro_l3.png)         |

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

| User Remap descriptors for 'Power Pad' and 'Family Trainer' device types | RetroPad Inputs                             |
|--------------------------------------------------------------------------|---------------------------------------------|
| Powerpad B1                                                              | ![](../image/retropad/retro_b.png)          |
| Powerpad B3                                                              | ![](../image/retropad/retro_y.png)          |
| Powerpad B11                                                             | ![](../image/retropad/retro_select.png)     |
| Powerpad B12                                                             | ![](../image/retropad/retro_start.png)      |
| Powerpad B9                                                              | ![](../image/retropad/retro_dpad_up.png)    |
| Powerpad B10                                                             | ![](../image/retropad/retro_dpad_down.png)  |
| Powerpad B7                                                              | ![](../image/retropad/retro_dpad_left.png)  |
| Powerpad B8                                                              | ![](../image/retropad/retro_dpad_right.png) |
| Powerpad B2                                                              | ![](../image/retropad/retro_a.png)          |
| Powerpad B4                                                              | ![](../image/retropad/retro_x.png)          |
| Powerpad B5                                                              | ![](../image/retropad/retro_l1.png)         |
| Powerpad B6                                                              | ![](../image/retropad/retro_r1.png)         |

| User Remap descriptors for 'Exciting Boxing' device type | RetroPad Inputs                             |
|----------------------------------------------------------|---------------------------------------------|
| Left Hook                                                | ![](../image/retropad/retro_b.png)          |
| Left Jab                                                 | ![](../image/retropad/retro_y.png)          |
| Move Left                                                | ![](../image/retropad/retro_dpad_left.png)  |
| Move Right                                               | ![](../image/retropad/retro_dpad_right.png) |
| Right Hook                                               | ![](../image/retropad/retro_a.png)          |
| Right Jab                                                | ![](../image/retropad/retro_x.png)          |
| Body                                                     | ![](../image/retropad/retro_l1.png)         |
| Straight                                                 | ![](../image/retropad/retro_r1.png)         |

| User Remap descriptors for 'Pachinko' device type | RetroPad Inputs                     |
|---------------------------------------------------|-------------------------------------|
| Release Trigger                                   | ![](../image/retropad/retro_l1.png) |
| Press Trigger                                     | ![](../image/retropad/retro_r1.png) |

| User Remap descriptors for 'Partytap' device type | RetroPad Inputs                     |
|---------------------------------------------------|-------------------------------------|
| Partytap P1                                       | ![](../image/retropad/retro_b.png)  |
| Partytap P3                                       | ![](../image/retropad/retro_y.png)  |
| Partytap P2                                       | ![](../image/retropad/retro_a.png)  |
| Partytap P4                                       | ![](../image/retropad/retro_x.png)  |
| Partytap P5                                       | ![](../image/retropad/retro_l1.png) |
| Partytap P6                                       | ![](../image/retropad/retro_r1.png) |

| RetroPad Inputs                                | Konami Hypershot |
|------------------------------------------------|------------------|
| ![](../image/retropad/retro_b.png)             | Jump             |
| ![](../image/retropad/retro_y.png)             | Run              |
| ![](../image/retropad/retro_a.png)             | Turbo Jump       |
| ![](../image/retropad/retro_x.png)             | Turbo Run        |

#### Mouse

| RetroMouse Inputs                                     | Arkanoid          | SNES Mouse              | Hori Track              |
|-------------------------------------------------------|-------------------|-------------------------|-------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Arkanoid Movement | SNES Mouse Cursor       | Hori Track Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Arkanoid Fire     | SNES Mouse Left Button  | Hori Track Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      |                   | SNES Mouse Right Button | Hori Track Right Button |

#### Pointer

| RetroPointer Inputs                                                                                                      | Zapper           | Bandai Hypershot           | Oeka Kids Tablet             |
|--------------------------------------------------------------------------------------------------------------------------|------------------|----------------------------|------------------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Zapper Crosshair | Bandai Hypershot Crosshair | Oeka Kids Tablet Stylus      |
| ![](../image/retromouse/retro_left.png) Mouse 1                                                                          | Zapper Fire      | Bandai Hypershot Fire      | Oeka Kids Tablet Click/Touch |
| ![](../image/retromouse/retro_right.png) Mouse 2                                                                         | Zapper Offscreen | Bandai Hypershot Offscreen |                              |

## Compatibility

- [Mesen Mapper Support List](https://github.com/SourMesen/Mesen/blob/master/Core/MapperFactory.cpp#L275)

## External Links

- [Official Mesen Website](https://www.mesen.ca/)
- [Official Mesen Documentation](https://www.mesen.ca/docs/)
- [Official Mesen Downloads](https://www.mesen.ca/#Downloads)
- [Official Mesen Changelog](https://www.mesen.ca/#Changelog)
- [Libretro Mesen Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mesen_libretro.info)
- [Official Mesen Github Repository](https://github.com/SourMesen/Mesen)
- [Report Libretro Mesen Core Issues Here](https://github.com/SourMesen/Mesen/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IdbTgE4bID9L5s5f323IewO)

### See also

#### Nintendo - Family Computer Disk System

- [Nintendo - NES / Famicom (FCEUmm)](fceumm.md)
- [Nintendo - NES / Famicom (Nestopia)](nestopia.md)

#### Nintendo - Nintendo Entertainment System

- [Nintendo - NES / Famicom (bnes)](bnes.md)
- [Nintendo - NES / Famicom (Emux NES)](emux_nes.md)
- [Nintendo - NES / Famicom (FCEUmm)](fceumm.md)
- [Nintendo - NES / Famicom (Nestopia)](nestopia.md)
- [Nintendo - NES / Famicom (QuickNES)](quicknes.md)
