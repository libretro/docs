# Nintendo - Game Boy Advance (VBA-M)

## Background

VBA-M is a Game Boy Advance emulator with the goal to improve upon VisualBoyAdvance by integrating the best features from the various builds floating around.

### Author/License

The VBA-M core has been authored by

- Forgotten
- VBA-M Team

The VBA-M core is licensed under

- [GPLv2](https://github.com/libretro/vbam-libretro/blob/master/doc/gpl.txt) 

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the VBA-M core have the following file extensions:

- .gba

## Databases

RetroArch database(s) that are associated with the VBA-M core:

- [Nintendo - Game Boy Advance](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Advance.rdb)

## Features

Frontend-level settings or features that the VBA-M core respects.

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The VBA-M core's directory name is 'VBA-M'

The VBA-M core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The VBA-M core's core provided FPS is 59.727
- The VBA-M core's core provided sample rate is 32000 Hz
- The VBA-M core's core provided aspect ratio is 3/2

## Core options

The VBA-M core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Show layer 1** [vbam_layer_1] (Off/**On**)

	Self-explanatory.
	
- **Show layer 2** [vbam_layer_2] (Off/**On**)

	Self-explanatory.
	
- **Show layer 3** [vbam_layer_3] (Off/**On**)

	Self-explanatory.
	
- **Show layer 4** [vbam_layer_4] (Off/**On**)

	Self-explanatory.
	
- **Show sprite layer** [vbam_layer_5] (Off/**On**)

	Self-explanatory.
	
- **Show window layer 1** [vbam_layer_6] (Off/**On**)

	Self-explanatory.
	
- **Show window layer 2** [vbam_layer_7] (Off/**On**)

	Self-explanatory.
	
- **Show sprite window layer** [vbam_layer_8] (Off/**On**)

	Self-explanatory.
	
## Controllers

The VBA-M core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- GBA Joypad - Joypad
- Alt Joypad YB - Joypad
- Alt Joypad AB - Joypad

### Controller tables

#### Joypad

![](../image/controller/gba.png)

| User 1 Remap descriptors | RetroPad Inputs                              | RetroPad device type | GBA Joypad  | Alt Joypad YB | Alt Joypad AB |
|--------------------------|----------------------------------------------|----------------------|-------------|---------------|---------------|
| B                        | ![](../image/retropad/retro_b.png)             | B                    | B           | A             |  A            |
|                          | ![](../image/retropad/retro_y.png)             |                      |             | B             |               |
| Select                   | ![](../image/retropad/retro_select.png)        | Select               | Select      | Select        | Select        |
| Start                    | ![](../image/retropad/retro_start.png)         | Start                | Start       | Start         | Start         |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up             | D-Pad Up    | D-Pad Up      | D-Pad Up      |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down           | D-Pad Down  | D-Pad Down    | D-Pad Down    |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left           | D-Pad Left  | D-Pad Left    | D-Pad Left    |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right          | D-Pad Right | D-Pad Right   | D-Pad Right   |
| A                        | ![](../image/retropad/retro_a.png)             | A                    | A           |               | B             |
| L                        | ![](../image/retropad/retro_l1.png)            | L                    | L           | L             | L             |
| R                        | ![](../image/retropad/retro_r1.png)            | R                    | R           | R             | R             |

## Compatibility

| Game                            | Issue                            |
|---------------------------------|----------------------------------|
| Boktai Trilogy                  | The solar sensor is not emulated |
| Digimon Racing (Europe)         | Freezes during the intro. This can be avoided by enabling linking in the standalone VBA-M release |
| Koro Koro Puzzle Happy Panechu! |	The tilt sensor is not emulated  |
| Phantasy Star Collection        | Digital Eclipse logo sound effect is missing. Phantasy Star 1 flickers |
| WarioWare: Twisted!             | The tilt sensor is not emulated  |
| Yoshi’s Universal Gravitation   | The tilt sensor is not emulated  |

## External Links

- [Official VBA-M Website](http://vba-m.com/)
- [Official VBA-M Github Repository](https://github.com/visualboyadvance-m/visualboyadvance-m)
- [Libretro VBA-M Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/vbam_libretro.info)
- [Libretro VBA-M Github Repository](https://github.com/libretro/vbam-libretro)
- [Report Libretro VBA-M Core Issues Here](https://github.com/libretro/vbam-libretro/issues)

### See also

#### Nintendo - Game Boy Advance

- [Nintendo - Game Boy Advance (Beetle GBA)](https://docs.libretro.com/library/beetle_gba/)
- [Nintendo - Game Boy Advance (gpSP)](https://docs.libretro.com/library/gpsp/)
- [Nintendo - Game Boy Advance (Meteor)](https://docs.libretro.com/library/meteor/)
- [Nintendo - Game Boy Advance (mGBA)](https://docs.libretro.com/library/mgba/)
- [Nintendo - Game Boy Advance (TempGBA)](https://docs.libretro.com/library/tempgba/)
- [Nintendo - Game Boy Advance (VBA Next)](https://docs.libretro.com/library/vba_next/)