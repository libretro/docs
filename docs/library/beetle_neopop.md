# SNK - Neo Geo Pocket / Color (Beetle NeoPop)

## Background

Beetle/Mednafen NGP is a SNK Neo Geo Pocket (Color) video game system emulator based on NeoPop.

### Author/License

The Beetle NeoPop core has been authored by

- neopop_uk
- [Mednafen Team](https://mednafen.github.io/)

The Beetle NeoPop core is licensed under

- [GPLv2](https://github.com/libretro/beetle-ngp-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Beetle NeoPop core have the following file extensions:

- .ngp
- .ngc

## Databases

RetroArch database(s) that are associated with the Beetle Neopop core:

- [SNK - Neo Geo Pocket](https://github.com/libretro/libretro-database/blob/master/rdb/SNK%20-%20Neo%20Geo%20Pocket.rdb)
- [SNK - Neo Geo Pocket Color](https://github.com/libretro/libretro-database/blob/master/rdb/SNK%20-%20Neo%20Geo%20Pocket%20Color.rdb)

## Features

Frontend-level settings or features that the Beetle NeoPop core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔ (not link-cable emulation)         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Beetle NeoPop core's internal core name is 'Beetle NeoPop'

The Beetle NeoPop core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.flash (Cartrtidge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Beetle NeoPop core's core provided FPS is 60
- The Beetle NeoPop core's core provided sample rate is 44100 Hz
- The Beetle NeoPop core's core provided aspect ratio is 20/19

## Core options

The Beetle NeoPop core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Language (restart)** [ngp_language] (**english**/japanese)

	Choose the system language of the BIOS.

## Controllers

The Beetle NeoPop core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/ngp.png)

| User 1 Remap descriptors | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| A                        | ![](../image/retropad/retro_b.png)             |
| Option                   | ![](../image/retropad/retro_start.png)         |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)     |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png)    |
| B                        | ![](../image/retropad/retro_a.png)             |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle NeoPop Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_ngp_libretro.info)
- [Libretro Beetle NeoPop Github Repository](https://github.com/libretro/beetle-ngp-libretro)
- [Report Libretro Beetle NeoPop Core Issues Here](https://github.com/libretro/beetle-ngp-libretro/issues)
