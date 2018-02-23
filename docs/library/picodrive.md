# Sega - MS/MD/CD/32X (PicoDrive)

## Background

PicoDrive is an open-source Sega 8/16 bit and 32X emulator which was written having ARM-based handheld devices in mind.

- Supports 32x emulation.
- Designed to run on weak devices.

### Author/License

The PicoDrive core has been authored by

- notaz
- fdave

The PicoDrive core is licensed under

- [Non-commercial](https://github.com/libretro/picodrive/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the PicoDrive core have the following file extensions:

- .bin
- .gen
- .smd
- .md
- .32x
- .cue
- .iso
- .sms
- .68k

## Databases

RetroArch database(s) that are associated with the PicoDrive core:

- [Sega - Master System - Mark III](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Master%20System%20-%20Mark%20III.rdb)
- [Sega - Mega-CD - Sega CD](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Mega-CD%20-%20Sega%20CD.rdb)
- [Sega - Mega Drive - Genesis](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Mega%20Drive%20-%20Genesis.rdb)
- [Sega - PICO](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20PICO.rdb)
- [Sega - 32X](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%2032X.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename    |    Description            |              md5sum              |
|:-------------:|:-------------------------:|:--------------------------------:|
| bios_CD_E.bin | MegaCD EU BIOS - Required | e66fa1dc5820d254611fdcdba0662372 |
| bios_CD_U.bin | SegaCD US BIOS - Required | 2efd74e3232ff260e371b99f84024f7f |
| bios_CD_J.bin | MegaCD JP BIOS - Required | 278a9397d192149e84e820ac621a8edd |

## Features

Frontend-level settings or features that the PicoDrive core respects.

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The PicoDrive core's internal core name is 'PicoDrive'

The PicoDrive core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge backup save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The PicoDrive core's core provided FPS is 60 for NTSC games and 50 for PAL games.
- The PicoDrive core's core provided sample rate is 44100 Hz
- The PicoDrive core's core provided aspect ratio is dependent on the ['Core-provided aspect ratio' core option](https://docs.libretro.com/picodrive/#core-options).

### Loading Sega CD content

When loading Sega CD games, PicoDrive needs a cue-sheet that points to an image file. A cue sheet, or cue file, is a metadata file which describes how the tracks of a CD or DVD are laid out.

If you have e.g. `foo.bin`, you should create a text file and save it as `foo.cue`. If the Sega CD game is single-track, the cue file contents should look like this:

```
 FILE "foo.bin" BINARY
  TRACK 01 MODE1/2352
   INDEX 01 00:00:00
```

After that, you can load the `foo.cue` file in RetroArch with the PicoDrive core.

!!! warning ""
    Certain Sega CD games are multi-track, so their .cue files might be more complicated.

Here's a cue file example done with Lunar - Eternal Blue (USA)

![](images\Cores\genesis_plus_gx\cue.png)

## Core options

The PicoDrive core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Input device 1** [picodrive_input1] (**3 button pad**/6 button pad/None)

	Choose which kind of controller is plugged in slot 1.
	
- **"Input device 2** [picodrive_input2] (**3 button pad**/6 button pad/None)

	Choose which kind of controller is plugged in slot 2.
	
- **No sprite limit** [picodrive_sprlim] (**disabled**/enabled)

	Enable this to remove the sprite limit.
	
- **MegaCD RAM cart** [picodrive_ramcart] (**disabled**/enabled)

	Emulate a MegaCD RAM cart.
	
- **Region** [picodrive_region] (**Auto**/Japan NTSC/Japan PAL/US/Europe)

	Force a specific region.
	
- **Core-provided aspect ratio** [picodrive_aspect] (**PAR**/4/3/CRT)

	Choose the core-provided aspect ratio. RetroArch's aspect ratio must be set to Core provided in the Video seetings.
	
??? note "Core-provided aspect ratio - PAR"
	![](images\Cores\picodrive\par.png)
	
??? note "Core-provided aspect ratio - 4/3"
	![](images\Cores\picodrive\4by3.png)

??? note "Core-provided aspect ratio - CRT"
	![](images\Cores\picodrive\crt.png)	
	
- **Show Overscan** [picodrive_overscan] (**disabled**/enabled)

	Crop out the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.
	
??? note "Show Overscan - Off"
	![](images\Cores\picodrive\overscan_off.png)
	
??? note "Show Overscan - On"
	![](images\Cores\picodrive\overscan_on.png)	
	
- **68k overclock** [picodrive_overclk68k] (**disabled**/+25%/+50%/+75%/+100%/+200%/+400%)

	Overclock the emulated [68k chip](http://segaretro.org/M68000)
	
- **Dynamic recompilers** [picodrive_drc] (**enabled**/disabled)
	
	Enable dynamic recompilers which help to improve performance. **This core option is not available on all hardware.**

## Controllers

The PicoDrive core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog  - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

| User 1 - 2 Remap descriptors | RetroPad Inputs                              | 3 button pad | 6 button pad |
|------------------------------|----------------------------------------------|--------------|--------------|
| B                            | ![](images/RetroPad/Retro_B_Round.png)       | B            | B            |
| A                            | ![](images/RetroPad/Retro_Y_Round.png)       | A            | A            |
| Mode                         | ![](images/RetroPad/Retro_Select.png)        |              | Mode         |
| Start                        | ![](images/RetroPad/Retro_Start.png)         | Start        | Start        |
| D-Pad Up                     | ![](images/RetroPad/Retro_Dpad_Up.png)       | D-Pad Up     | D-Pad Up     |
| D-Pad Down                   | ![](images/RetroPad/Retro_Dpad_Down.png)     | D-Pad Down   | D-Pad Down   |
| D-Pad Left                   | ![](images/RetroPad/Retro_Dpad_Left.png)     | D-Pad Left   | D-Pad Left   |
| D-Pad Right                  | ![](images/RetroPad/Retro_Dpad_Right.png)    | D-Pad Right  | D-Pad Right  |
| C                            | ![](images/RetroPad/Retro_A_Round.png)       | C            | C            |
| Y                            | ![](images/RetroPad/Retro_X_Round.png)       |              | Y            |
| X                            | ![](images/RetroPad/Retro_L1.png)            |              | X            |
| Z                            | ![](images/RetroPad/Retro_R1.png)            |              | Z            |

## Compatibility

| 32x games                                    | Issue                                                         |
|----------------------------------------------|---------------------------------------------------------------|
| Brutal Unleashed – Above the Claw            | Softlocks after the first fight.                              |
| FIFA Soccer ’96                              | Glitched main menu text.                                      |
| Knuckles’ Chaotix                            | Glitched graphics on the Player Select screen.                |
| NBA Jam Tournament Edition                   | Framerate issues.                                             |
| NFL Quarterback Club                         | Some menu graphics are missing.                               |
| Star Wars Arcade (PAL version)               | Glitched opening visuals. Cannot get past Press Start screen. |
| Virtua Racing Deluxe                         | Blinking line during the SEGA logo screen.                    |
| World Series Baseball Starring Deion Sanders | Crashes when starting a match.                                |
| WWF Raw                                      | Various graphics are missing.                                 |

## External Links

- [Official PicoDrive Website](http://notaz.gp2x.de/pico.php)
- [Official PicoDrive Github Repository](https://github.com/notaz/picodrive)
- [Libretro PicoDrive Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/picodrive_libretro.info)
- [Libretro PicoDrive Github Repository](https://github.com/libretro/picodrive)
- [Report Libretro PicoDrive Core Issues Here](https://github.com/libretro/picodrive/issues)

### See also

#### Sega - Master System - Mark III

- [Sega - Master System (Emux SMS)](https://docs.libretro.com/library/emux_sms/)
- [Sega - MS/GG/MD/CD (Genesis Plus GX)](https://docs.libretro.com/library/genesis_plus_gx/)

#### Sega - Mega Drive - Genesis

- [Sega - MS/GG/MD/CD (Genesis Plus GX)](https://docs.libretro.com/library/genesis_plus_gx/)

#### Sega - Mega-CD - Sega CD

- [Sega - MS/GG/MD/CD (Genesis Plus GX)](https://docs.libretro.com/library/genesis_plus_gx/)

#### Sega - PICO

- [Sega - MS/GG/MD/CD (Genesis Plus GX)](https://docs.libretro.com/library/genesis_plus_gx/)