# NEC - PC Engine SuperGrafx (Beetle SuperGrafx)

## Background

Standalone port of Mednafen PCE Fast to libretro.

The Beetle SuperGrafx core has been authored by

- [Mednafen Team](https://mednafen.github.io/)

The Beetle SuperGrafx core is licensed under

- [GPLv2](https://github.com/libretro/beetle-supergrafx-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in RetroArch's system directory.

!!! attention
	Which PCE CD BIOS file the Beetle SuperGrafx core will use can be configured by the ['CD BIOS' core option](#core-options).

!!! attention
	Any CD-ROM System BIOS will work, but some of them are known to be incompatible with certain games.

|   Filename    |    Description                        |              md5sum              |
|:-------------:|:-------------------------------------:|:--------------------------------:|
| syscard3.pce  | Super CD-ROM2 System V3.xx - Required | 38179df8f4ac870017db21ebcbf53114 |
| syscard2.pce  | CD-ROM System V2.xx - Optional        |                                  |
| syscard1.pce  | CD-ROM System V1.xx - Optional        |                                  |
| gexpress.pce  | Game Express CD Card - Optional       |                                  |

## Extensions

Content that can be loaded by the Beetle SuperGrafx core have the following file extensions:

- .pce
- .sgx
- .cue
- .ccd
- .chd

RetroArch database(s) that are associated with the Beetle SuperGrafx core:

- [NEC - PC Engine - TurboGrafx 16](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20-%20TurboGrafx%2016.rdb)
- [NEC - PC Engine CD - TurboGrafx-CD](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20CD%20-%20TurboGrafx-CD.rdb)
- [NEC - PC Engine SuperGrafx](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20SuperGrafx.rdb)

## Features

Frontend-level settings or features that the Beetle Saturn core respects.

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
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✔         |
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

## Directories

The Beetle SuperGrafx core's library name is 'Beetle SuperGrafx'

The Beetle SuperGrafx core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description |
|:-----:|:-----------:|
| *.srm | Save        |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Beetle SuperGrafx core's core provided FPS is 59.82
- The Beetle SuperGrafx core's core provided sample rate is 44100 Hz
- The Beetle SuperGrafx core's base width is 512
- The Beetle SuperGrafx core's base height is dependent on the ['Initial scanline' and 'Last scanline' core options](#core-options).
- The Beetle SuperGrafx core's max width is 512
- The Beetle SuperGrafx core's max height is 243
- The Beetle SuperGrafx core's core provided aspect ratio is dependent on the ['Aspect Ratio' core option](#core-options).

## Loading PC Engine CD content

To load PC Engine CD content, Beetle SuperGrafx needs a cue-sheet that points to an image file. A cue sheet, or cue file, is a metadata file which describes how the tracks of a CD or DVD are laid out.

If you have e.g. `foo.bin`, you should create a text file and save it as `foo.cue`. If you're playing a single-track Saturn game, then the cue file contents should look like this:

`foobin.cue`
```
 FILE "foo.bin" BINARY
  TRACK 01 MODE1/2352
   INDEX 01 00:00:00
```

After that, you can load the `foo.cue` file in RetroArch with the Beetle SuperGrafx core.

!!! warning ""
    Certain PC Engine content are multi-track, so their .cue files might be more complicated.

ISO + OGG and ISO + WAV format games are supported, but they require a properly formatted cue sheet. For iso files, tracks should be denoted as BINARY, for ogg files, they should be denoted as OGG, and for wav files, they should be denoted as WAVE.

## CHD

Alternatively to using cue sheets with .bin/.iso files, you can convert your games to .chd (MAME Compressed Hunks of Data) to reduce file sizes and neaten up your game folder.

To convert content to CHD format, use the chdman tool found inside the latest MAME distribution and point it to a .cue file, like so:

```
chdman createcd --input foo.cue --output foo.chd
```

## Core options

The Beetle SuperGrafx core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CD Image Cache (Restart)** [sgx_cdimagecache] (**disabled**|enabled)

	Loads the complete image in memory at startup. Can potentially decrease loading times at the cost of increased startup time.

- **CD Bios (Restart)** [sgx_cdbios] (**System Card 3**|Games Express|System Card 1|System Card 2)

	Select which PC Engine CD BIOS to use.

	Look at the [BIOS section](#core-options) for more information.

- **Force SuperGrafx Emulation (Restart)** [sgx_forcesgx] (**disabled**|enabled)

	This is helpful to run homebrew games or isolate games that will not run in SuperGrafx mode. (like Space Harrier).

	**Savestates are not compatible with each mode. It's better to leave this option at default (Off) unless needed. Known Supergrafx games (like Dai-Makaimura, Aldyns) will automatically switch to SuperGrafx regardless of this option.**

- **No Sprite Limit** [sgx_nospritelimit] (**disabled**|enabled)

	Remove 16-sprites-per-scanline hardware limit.

- **CPU Overclock Multiplier (Restart)** [sgx_ocmultiplier] (**1**|2|3|4|5|6|7|8|9|10|20|30|40|50)

	Overclock the emulated CPU.

- **Horizontal Overscan (352 Width Mode Only)** [sgx_hoverscan] (300 to 352 in increments of 2. **352 in default**.)

	Modify the horizontal overscan.

- **Initial scanline** [sgx_initial_scanline] (0 to 40 in increments of 1. **3 is default.**)

	Adjust first display scanline.

- **Last scanline** [sgx_last_scanline] (208 to 242 in increments of 1. **242 is default.**)

	Adjust last display scanline.

- **(CD) CDDA Volume %** [sgx_cddavolume] (0 to 200 in increments of 10. **100 is default**.)

	Modify CDDA Volume %.

- **(CD) ADPCM Volume %** [sgx_adpcmvolume] (0 to 200 in increments of 10. **100 is default**.)

	Modify ADPCM Volume %.

- **(CD) CD PSG Volume %;** [sgx_cdpsgvolume] (0 to 200 in increments of 10. **100 is default**.)

	Modify CD PSG Volume %.

- **(CD) CD Speed** [sgx_cdspeed] (**1**|2|4|8)

	Set the speed of the emulated CD drive.

- **Turbo Delay** [sgx_turbo_delay] (**3**|4|5|6|7|8|9|10|11|12|13|14|15|30|60|2)

	Adjust turbo delay.

- **Turbo ON/OFF Toggle** [sgx_turbo_toggle] (**disabled**|enabled)

	Enables Turbo ON/OFF inputs.

	Look at the [Joypad section](#joypad) for more information.

- **Alternate Turbo Hotkey** [sgx_turbo_toggle_hotkey] (**disabled**|enabled)

	Enables Alternate Turbo ON/OFF inputs.

	You can avoid remapping Button III and IV when switching to 6-button gamepad mode with this.

	Look at the [Joypad section](#joypad) for more information.

- **Disable Soft Reset (RUN+SELECT)** [sgx_disable_softreset] (**disabled**|enabled)

	Pressing RUN and SELECT simultaneously on PCE gamepad will SOFT RESET the console. This is a default hardware behaviour.

	Set this to enabled if you want the soft reset functionality turned off.

- **Allow Opposing Directions** [sgx_up_down_allowed] (**disabled**|enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time.

	This may cause movement based glitches to occur in certain games.

	It's best to keep this core option disabled.

- **Mouse Sensitivity** [sgx_mouse_sensitivity] (1.00 to 5.00 in increments of 0.25. **1.00 is default**.)

	Configure the PCE Mouse device type's sensitivity.

- **Aspect Ratio** [sgx_aspect_ratio] (**auto**|6:5|4:3)

	Select an auto (PAR) aspect ratio, or a 6:5 (Used to be default) aspect ratio, or a 4:3 TV aspect ratio.

	**When using games that constantly switches between 256 and 352 modes and using auto aspect, its best to set Horizontal width to 342 as to minimize resizing and extra black lines since this width is in ratio of 256-width mode(or something like that, just test with Asuka 100% which is one of the game that switches between these modes)**

## User 1 - 5 device types

The Beetle SuperGrafx core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Input is disabled.
- **PCE Joypad** - Joypad
- PCE Mouse - Mouse

## Joypad

- Use the Mode Switch input to switch between button modes.

- The regular Turbo inputs for 2-button mode are only active when the ['Turbo ON/OFF Toggle' core option](#core-options) is set to On.

- The Alternate Turbo inputs for 2-button mode are only active when the ['Turbo ON.mdOFF Toggle' core option](#core-options) is set to On and the ['Alternate Turbo Hotkey' core option](#core-options) is set to On.

| RetroPad Inputs                                | User 1 - 5 input descriptors | PCE Joypad 2-button       | PCE Joypad 6-button |
|------------------------------------------------|------------------------------|---------------------------|---------------------|
| ![](../image/retropad/retro_b.png)             | II                           | II                        | II                  |
| ![](../image/retropad/retro_y.png)             | III                          | II Turbo On/Off           | III                 |
| ![](../image/retropad/retro_select.png)        | Select                       | Select                    | Select              |
| ![](../image/retropad/retro_start.png)         | Run                          | Run                       | Run                 |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     | D-Pad Up                  | D-Pad Up            |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   | D-Pad Down                | D-Pad Down          |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   | D-Pad Left                | D-Pad Left          |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  | D-Pad Right               | D-Pad Right         |
| ![](../image/retropad/retro_a.png)             | I                            | I                         | I                   |
| ![](../image/retropad/retro_x.png)             | IV                           | I Turbo On/Off            | IV                  |
| ![](../image/retropad/retro_l1.png)            | V                            |                           | V                   |
| ![](../image/retropad/retro_r1.png)            | VI                           |                           | VI                  |
| ![](../image/retropad/retro_l2.png)            | Mode Switch                  | Mode Switch               | Mode Switch         |
| ![](../image/retropad/retro_l3.png)            |                              | Alternate II Turbo On/Off |                     |
| ![](../image/retropad/retro_r3.png)            |                              | Alternate I Turbo On/Off  |                     |

## Mouse

| RetroMouse Inputs                                     | PCE Mouse              |
|-------------------------------------------------------|------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | PCE Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | PCE Mouse Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | PCE Mouse Right Button |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | PCE Mouse Start Button |
| ![](../image/retropad/retro_select.png)               | Select (Joypad)        |
| ![](../image/retropad/retro_start.png)                | Start (Joypad)         |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle SuperGrafx Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_supergrafx_libretro.info)
- [Libretro Beetle SuperGrafx Github Repository](https://github.com/libretro/beetle-supergrafx-libretro)
- [Report Libretro Beetle SuperGrafx Core Issues Here](https://github.com/libretro/beetle-supergrafx-libretro/issues)

## TG-16

- [NEC - PC Engine / CD (Beetle PCE FAST)](beetle_pce_fast.md)
