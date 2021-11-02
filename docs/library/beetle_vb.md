# Nintendo - Virtual Boy (Beetle VB)

## Background

Port of Mednafen VB to libretro.

### Author/License

The Beetle VB core has been authored by

- [Mednafen Team](https://mednafen.github.io/)

The Beetle VB core is licensed under

- [GPLv2](https://github.com/libretro/beetle-vb-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Beetle VB core have the following file extensions:

- .vb
- .vboy
- .bin

## Databases

RetroArch database(s) that are associated with the Beetle VB core:

- [Nintendo - Virtual Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Virtual%20Boy.rdb)

## Features

Frontend-level settings or features that the Beetle VB core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay (State based) | ✔ (not link-cable emulation)         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| Cheats (Cheats menu) | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

### Directories

The Beetle VB core's directory name is 'Beetle VB'

The Beetle VB core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Beetle VB core's core provided FPS is 50.27
- The Beetle VB core's core provided sample rate is 44100 Hz
- The Beetle VB core's core provided aspect ratio is 12/7

## Core options

The Beetle VB core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Anaglyph preset (restart)** [vb_anaglyph_preset] (**Off**/red & blue/red & cyan/red & electric cyan/red & green/green & magenta/yellow & blue)

	Select anaglyph 3D mode.

!!! attention
	These Analglyph preset screenshots have been taken with the Palette core option set to black & red.

??? note "Anaglyph preset - Off"
	![](../image/core/beetle_vb/off.png)

??? note "Anaglyph preset - red & blue"
	![](../image/core/beetle_vb/red&blue.png)

??? note "Anaglyph preset - red & cyan"
	![](../image/core/beetle_vb/red&cyan.png)

??? note "Anaglyph preset - red & electric cyan"
	![](../image/core/beetle_vb/red&electriccyan.png)

??? note "Anaglyph preset - red & green"
	![](../image/core/beetle_vb/red&green.png)

??? note "Anaglyph preset - green & magenta"
	![](../image/core/beetle_vb/green&magenta.png)

??? note "Anaglyph preset - yellow & blue"
	![](../image/core/beetle_vb/yellow&blue.png)

- **Palette (restart)** [vb_color_mode] (**black & red**/black & white)

	Choose which color palette to use.

??? note "Palette - black & red"
	![](../image/core/beetle_vb/black&red.png)

??? note "Palette - black & white"
	![](../image/core/beetle_vb/black&white.png)

- **Right Analog to Digital** [vb_right_analog_to_digital] (**Off**/On/invert x/invert y/invert both)

	Self-explanatory.

## Controllers

The Beetle VB core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- Retropad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

!!! attention
	The Right D-Pad X and Right D-Pad Y inputs are only active when the 'Right Analog to Digital' core option is set to anything other than Off.

| User 1 Remap descriptors | RetroPad Inputs                              |
|--------------------------|----------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)       |
| Select                   | ![](../image/retropad/retro_select.png)        |
| Start                    | ![](../image/retropad/retro_start.png)         |
| Left D-Pad Up            | ![](../image/retropad/retro_dpad_up.png)       |
| Left D-Pad Down          | ![](../image/retropad/retro_dpad_down.png)     |
| Left D-Pad Left          | ![](../image/retropad/retro_dpad_left.png)     |
| Left D-Pad Right         | ![](../image/retropad/retro_dpad_right.png)    |
| A                        | ![](../image/retropad/retro_a.png)       |
| L                        | ![](../image/retropad/retro_l1.png)            |
| R                        | ![](../image/retropad/retro_r1.png)            |
| Right D-Pad Up           | ![](../image/retropad/retro_l2.png)            |
| Right D-Pad Left         | ![](../image/retropad/retro_r2.png)            |
| Right D-Pad Down         | ![](../image/retropad/retro_l3.png)            |
| Right D-Pad Right        | ![](../image/retropad/retro_r3.png)            |
| Right D-Pad X            | ![](../image/retropad/retro_right_stick.png) X |
| Right D-Pad Y            | ![](../image/retropad/retro_right_stick.png) Y |

## Compatibility

Awaiting description.

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Official Mednafen Virtual Boy Documentation](https://mednafen.github.io/documentation/vb.html)
- [Libretro Beetle VB Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_vb_libretro.info)
- [Libretro Beetle VB Github Repository](https://github.com/libretro/beetle-vb-libretro)
- [Report Libretro Beetle VB Core Issues Here](https://github.com/libretro/beetle-vb-libretro/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0Ie8JxLxnW6r6_OeI8TSBPH_)