# NEC - PC Engine / CD (Beetle PCE FAST)

## Background

Beetle/Mednafen PCE FAST is a libretro port of Mednafen PCE Fast with the PC Engine SuperGrafx module removed.

### Author/License

The Beetle PCE FAST core has been authored by

- [Mednafen Team](https://mednafen.github.io/)

The Beetle PCE FAST core is licensed under

- [GPLv2](https://github.com/libretro/beetle-pce-fast-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Beetle PCE FAST core have the following file extensions:

- .pce
- .cue
- .ccd
- .iso
- .img
- .bin
- .chd

## Databases

RetroArch database(s) that are associated with the Beetle PCE FAST core:

- [NEC - PC Engine - TurboGrafx 16](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20-%20TurboGrafx%2016.rdb)
- [NEC - PC Engine CD - TurboGrafx-CD](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20CD%20-%20TurboGrafx-CD.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

Any CD-ROM System BIOS will work, but some them are known to be incompatible with certain games. 

|   Filename    |    Description                        |              md5sum              |
|:-------------:|:-------------------------------------:|:--------------------------------:|
| syscard3.pce  | Super CD-ROM2 System V3.xx - Required | 38179df8f4ac870017db21ebcbf53114 |
| syscard2.pce  | CD-ROM System V2.xx - Optional        |                                  |
| syscard1.pce  | CD-ROM System V1.xx - Optional        |                                  |
| gexpress.pce  | Game Express CD Card - Optional       |                                  |

!!! attention
	Any CD-ROM System BIOS will work, but some them are known to be incompatible with certain games.
	
!!! attention
	Which PCE CD BIOS file the Beetle PCE FAST core will use can be configured by the ['CD BIOS' core option](https://docs.libretro.com/library/beetle_pce_fast#core-options).

## Features

Frontend-level settings or features that the Beetle PCE FAST core respects.

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
| RetroArch Cheats  | -         |
| Native Cheats     | -         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Beetle PCE FAST core's internal core name is 'Mednafen PCE Fast'

The Beetle PCE FAST core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Beetle PCE FAST core's core provided FPS is 59.82
- The Beetle PCE FAST core's core provided sample rate is 44100 Hz
- The Beetle PCE FAST core's core provided aspect ratio is 6/5

## Loading PC Engine CD content

When loading PC Engine CD games, Beetle PCE FAST needs a cue-sheet that points to an image file. A cue sheet, or cue file, is a metadata file which describes how the tracks of a CD or DVD are laid out.

If you have e.g. `foo.bin`, you should create a text file and save it as `foo.cue`. If the PC Engine CD game is single-track, the cue file contents should look like this:

```
 FILE "foo.bin" BINARY
  TRACK 01 MODE1/2352
   INDEX 01 00:00:00
```

After that, you can load the `foo.cue` file in RetroArch with the Beetle PCE FAST core.

!!! warning
    Certain Beetle PCE FAST games are multi-track, so their .cue files might be more complicated.
	
!!! attention
	For cue files track type use OGG for ogg files, WAVE for wav files, BINARY for iso files.

## Core options

The Beetle PCE FAST core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CD Image Cache (Restart)** [pce_fast_cdimagecache] (**disabled**/enabled)

	Loads the complete image in memory at startup. Can potentially decrease loading times at the cost of increased startup time.
	
- **CD Bios (Restart)** [pce_fast_cdbios] (**System Card 3**/Games Express/System Card 1/System Card 2)

	Select which PC Engine CD BIOS to use.

- **No Sprite Limit (Restart)** [pce_nospritelimit] (**disabled**/enabled")

	Remove 16-sprites-per-scanline hardware limit.
	
- **CPU Overclock Multiplier (Restart)** [pce_ocmultiplier] (**1**/2/3/4/5/6/7/8/9/10/20/30/40/50)

	Overclock the emulated CPU.
	
- **Horizontal Overscan (352 Width Mode Only)** [pce_hoverscan] (300 to 352 in increments of 2. **352 in default**.)

	Awaiting description.
	
- **Initial scanline** [pce_initial_scanline] (0 to 40 in increments of 1. **3 is default.**)

	Adjust first display scanline.
	
- **Last scanline** [pce_last_scanline] (208 to 242 in increments of 1. **242 is default.**)

	Adjust last display scanline.
	
- **(CD) CDDA Volume %** [pce_cddavolume] (0 to 200 in increments of 10. **100 is default**.)

	Awaiting description.
	
- **(CD) ADPCM Volume %** [pce_adpcmvolume] (0 to 200 in increments of 10. **100 is default**.)

	Awaiting description.
	
- **(CD) CD PSG Volume %** [pce_cdpsgvolume] (0 to 200 in increments of 10. **100 is default**.)

	Awaiting description.
	
- **(CD) CD Speed** [pce_cdspeed] (**1**/2/4/8)

	Set the speed of the emulated CD drive.
	
- **Turbo Delay** [pce_Turbo_Delay] (**Fast**/Medium/Slow)

	Awaiting description.
	
- **Turbo ON/OFF Toggle** [pce_Turbo_Toggling] (**disabled**/enabled)

	Enables Turbo ON/OFF inputs. Look at the [Controllers table section](https://docs.libretro.com/library/beetle_pce_fast#controller-tables) for more information.
	
- **Alternate Turbo Hotkey** [pce_turbo_toggle_hotkey] (**disabled**/enabled)

	nables Alternate Turbo ON/OFF inputs. You can avoid remapping Button III and IV when switching to 6-button gamepad mode with this. Look at the [Controllers table section](https://docs.libretro.com/library/beetle_pce_fast#controller-tables) for more information.
	
- **P1 Turbo I** [pce_p0_turbo_I_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P1 Turbo II** [pce_p0_turbo_II_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P2 Turbo I** [pce_p1_turbo_I_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P2 Turbo II** [pce_p1_turbo_II_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P3 Turbo I** [pce_p2_turbo_I_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P3 Turbo II** [pce_p2_turbo_II_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P4 Turbo I** [pce_p3_turbo_I_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P4 Turbo II** [pce_p3_turbo_II_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P5 Turbo I** [pce_p4_turbo_I_enable] (**disabled**/enabled)

	Awaiting description.
	
- **P5 Turbo II** [pce_p4_turbo_II_enable] (**disabled**/enabled)

	Awaiting description.

## Controllers

The Beetle PCE FAST core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input.
- **PCE Joypad** - Joypad
- Mouse - Mouse

### Controller tables

#### Joypad

![](images/Controllers/pce.png)

!!! attention
	Which PCE Joypad button mode is in use can be configured by the Mode Switch input.

!!! attention
	The regular Turbo inputs for 2-button mode are only active when the ['Turbo ON/OFF Toggle' core option](https://docs.libretro.com/library/beetle_pce_fast#core-options) is set to On.
	
!!! attention
	The Alternate Turbo inputs for 2-button mode are only active when the ['Turbo ON/OFF Toggle' core option](https://docs.libretro.com/library/beetle_pce_fast#core-options) is set to On and the ['Alternate Turbo Hotkey' core option](https://docs.libretro.com/library/beetle_pce_fast#core-options) is set to On.

| User 1 - 5 Remap descriptors | RetroPad Inputs                              | PCE Joypad 2 button mode  | PCE Joypad 6-button mode |
|------------------------------|----------------------------------------------|---------------------------|--------------------------|
| II                           | ![](images/RetroPad/Retro_B_Round.png)       | II                        | II                       |
| III                          | ![](images/RetroPad/Retro_Y_Round.png)       | II Turbo On/Off           | III                      |
| Select                       | ![](images/RetroPad/Retro_Select.png)        | Select                    | Select                   |
| Run                          | ![](images/RetroPad/Retro_Start.png)         | Run                       | Run                      |
| D-Pad Up                     | ![](images/RetroPad/Retro_Dpad_Up.png)       | D-Pad Up                  | D-Pad Up                 |
| D-Pad Down                   | ![](images/RetroPad/Retro_Dpad_Down.png)     | D-Pad Down                | D-Pad Down               |
| D-Pad Left                   | ![](images/RetroPad/Retro_Dpad_Left.png)     | D-Pad Left                | D-Pad Left               |
| D-Pad Right                  | ![](images/RetroPad/Retro_Dpad_Right.png)    | D-Pad Right               | D-Pad Right              |
| I                            | ![](images/RetroPad/Retro_A_Round.png)       | I                         | I                        |
| IV                           | ![](images/RetroPad/Retro_X_Round.png)       | I Turbo On/Off            | IV                       |
| V                            | ![](images/RetroPad/Retro_L1.png)            |                           | V                        |
| VI                           | ![](images/RetroPad/Retro_R1.png)            |                           | VI                       |
| Mode Switch                  | ![](images/RetroPad/Retro_L2.png)            | Mode Switch               | Mode Switch              |
|                              | ![](images/RetroPad/Retro_L3.png)            | Alternate II Turbo On/Off |                          |
|                              | ![](images/RetroPad/Retro_R3.png)            | Alternate I Turbo On/Off  |                          |

#### Mouse

| RetroMouse Inputs                                   | Mouse                     |
|-----------------------------------------------------|---------------------------|
| ![](images/RetroMouse/Retro_Mouse.png) Mouse Cursor | Mouse Cursor              |
| ![](images/RetroMouse/Retro_Left.png) Mouse 1       | Mouse Left Button         |
| ![](images/RetroMouse/Retro_Right.png) Mouse 2      | Mouse Right Button        |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle PCE FAST Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_pce_fast_libretro.info)
- [Libretro Beetle PCE FAST Github Repository](https://github.com/libretro/beetle-pce-fast-libretro)
- [Report Libretro Beetle PCE FAST Core Issues Here](https://github.com/libretro/beetle-pce-fast-libretro/issues)