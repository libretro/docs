# Game Boy Advance (mGBA)

## Background

mGBA is an emulator for running Game Boy Advance games. It aims to be faster and more accurate than many existing Game Boy Advance emulators, as well as adding features that other emulators lack. It also supports Game Boy and Game Boy Color games.

### Author/License

The mGBA core has been authored by

- endrift

The mGBA core is licensed under

- [MPLv2.0](https://github.com/libretro/mgba/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the mGBA core have the following file extensions:

- .gb
- .gbc
- .gba

## Databases

RetroArch database(s) that are associated with the mGBA core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)
- [Nintendo - Game Boy Advance](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Advance.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename    |    Description                  |              md5sum              |
|:-------------:|:-------------------------------:|:--------------------------------:|
| gba_bios.bin  |Game Boy Advance BIOS - Optional | a860e8c0b6d573d191e4ec7db1b1e4f6 |

!!! warning
	In order for the Game Boy Advance BIOS to be used, the 'Use BIOS file if found' core option must be set to On.

## Features

Frontend-level settings or features that the mGBA core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay (State based) | ✔ (not link-cable emulation)        |
| Core Options      | ✔         |
| RetroAchievements | ✔ (GBA only)        |
| Cheats (Cheats menu) | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
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

The mGBA core's directory name is 'mGBA'

The mGBA core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'cotent-name'.state# (State)

### Geometry and timing

- The mGBA core's core provided FPS is (FPS)
- The mGBA core's core provided sample rate is 32768 Hz
- The mGBA core's core provided aspect ratio is (Ratio)

## Core options

The mGBA core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Solar sensor level** [mgba_solar_sensor_level] (0 to 10 in increments of 1. **0 is default.**)

	Can be used for games that employed the use of a solar sensor on their cartridges.
	
- **Allow opposing directional input** [mgba_allow_opposing_directions] (**Off**/On)

	Self-explanatory.
	
- **Use BIOS file if found** [mgba_use_bios] (Off/**On**)
	
	Uses a Game Boy Advance BIOS present in RetroArch's system directory. Look at the [BIOS section](https://docs.libretro.com/library/mgba/#bios) for more information.
	
- **Skip BIOS intro** [mgba_skip_bios] (**Off**/On)
	
	Skips the BIOS intro when a Game Boy Advance BIOS present in RetroArch's system directory is used. The 'Use BIOS file if found' core option must be set to On for proper operation.

??? note "Skip BIOS intro - Off"
    ![](..\image\core\mgba\bios.png)	

- **Idle loop removal** [mgba_idle_optimization] (**Remove Known**/Detect and Remove/Don't Remove)

	Awaiting description.
	
- **Frameskip** [mgba_frameskip] (0 to 10 in increments of 1. **0 is default**)

	Choose how much frames should be skipped to improve performance at the expense of visual smoothness.

## Controllers

The mGBA core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Rumble support

Rumble only works in the mGBA core when

- The content being ran has rumble support. (e.g. Cartridges with a Rumble Pak)
- The frontend being used has rumble support.
- The joypad device being used has rumble support.

### Controller tables

#### Joypad

![](../image/controller/gba.png)

| User 1 Remap descriptors | RetroPad Inputs                              |
|--------------------------|----------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)       |
| Turbo B                  | ![](../image/retropad/retro_y.png)       |
| Select                   | ![](../image/retropad/retro_select.png)        |
| Start                    | ![](../image/retropad/retro_start.png)         |
| Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| A                        | ![](../image/retropad/retro_a.png)       |
| Turbo A                  | ![](../image/retropad/retro_x.png)       |
| L                        | ![](../image/retropad/retro_l1.png)            |
| R                        | ![](../image/retropad/retro_r1.png)            |
| Turbo L                  | ![](../image/retropad/retro_l2.png)            |
| Turbo R                  | ![](../image/retropad/retro_r2.png)            |
| Darken Solar Sensor      | ![](../image/retropad/retro_l3.png)            |
| Brighten Solar Sensor    | ![](../image/retropad/retro_r3.png)            |

## Compatibility

Please file game bugs on the issue tracker [here](https://github.com/mgba-emu/mgba/issues)

## External Links

- [Official mGBA Website](https://mgba.io/)
- [Official mGBA Github Repository](https://github.com/mgba-emu/mgba)
- [Libretro mGBA Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mgba_libretro.info)
- [Libretro mGBA Github Repository](https://github.com/libretro/mgba)
- [Report Libretro mGBA Core Issues Here](https://github.com/mgba-emu/mgba/issues)

### See also

#### GBA

- [Game Boy Advance (Beetle GBA)](https://docs.libretro.com/library/beetle_gba/)
- [Game Boy Advance (gpSP)](https://docs.libretro.com/library/gpsp/)
- [Game Boy Advance (Meteor)](https://docs.libretro.com/library/meteor/)
- [Game Boy Advance (VBA Next)](https://docs.libretro.com/library/vba_next/)
- [Game Boy Advance (VBA-M)](https://docs.libretro.com/library/vba_m/)

#### GB/GBC

- [Game Boy / Game Boy Color (Emux GB)](https://docs.libretro.com/library/emux_gb/)
- [Game Boy / Game Boy Color (Gambatte)](https://docs.libretro.com/library/gambatte/)
- [Game Boy / Game Boy Color (SameBoy)](https://docs.libretro.com/library/sameboy/)
- [Game Boy / Game Boy Color (TGB Dual)](https://docs.libretro.com/library/tgb_dual/)
- [Game Boy / Game Boy Color (Gearboy)](https://docs.libretro.com/library/gearboy/)
- [SNES / Super Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [SNES / Super Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)