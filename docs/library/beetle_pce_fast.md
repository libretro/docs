# NEC - PC Engine / CD (Beetle PCE FAST)

## Background

Beetle/Mednafen PCE FAST is a libretro port of Mednafen PCE Fast with the PC Engine SuperGrafx module removed.

The Beetle PCE FAST core has been authored by

- [Mednafen Team](https://mednafen.github.io/)

The Beetle PCE FAST core is licensed under

- [GPLv2](https://github.com/libretro/beetle-pce-fast-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in RetroArch's system directory.

!!! warning ""
	Which PCE CD BIOS file the Beetle PCE FAST core will use can be configured by the ['CD BIOS' core option](#core-options).

!!! warning ""
	Any CD-ROM System BIOS will work, but some of them are known to be incompatible with certain games.

|   Filename    |    Description                        |              md5sum              |
|:-------------:|:-------------------------------------:|:--------------------------------:|
| syscard3.pce  | Super CD-ROM2 System V3.xx - Required | 38179df8f4ac870017db21ebcbf53114 |
| syscard2.pce  | CD-ROM System V2.xx - Optional        |                                  |
| syscard1.pce  | CD-ROM System V1.xx - Optional        |                                  |
| gexpress.pce  | Game Express CD Card - Optional       |                                  |

## Extensions

Content that can be loaded by the Beetle PCE FAST core have the following file extensions:

- .pce
- .cue
- .ccd
- .iso
- .img
- .bin
- .chd

RetroArch database(s) that are associated with the [Core name] core:

- [NEC - PC Engine - TurboGrafx 16](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20-%20TurboGrafx%2016.rdb)
- [NEC - PC Engine CD - TurboGrafx-CD](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20CD%20-%20TurboGrafx-CD.rdb)

## Features

Frontend-level settings or features that the Beetle PCE FAST core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✕         |
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

## Directories

The Beetle PCE FAST core's library name is 'Beetle PCE Fast'

The Beetle PCE FAST core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description |
|:-----:|:-----------:|
| *.srm | Save        |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Beetle PCE FAST core's core provided FPS is 59.82
- The Beetle PCE FAST core's core provided sample rate is 44100 Hz
- The Beetle PCE FAST core's base width is 512
- The Beetle PCE FAST core's base height is 243
- The Beetle PCE FAST core's max width is 512
- The Beetle PCE FAST core's max height is 243
- The Beetle PCE FAST core's core provided aspect ratio is 6/5

## Loading PC Engine CD content

To load PC Engine CD content, Beetle PCE FAST needs a cue-sheet that points to an image file. A cue sheet, or cue file, is a metadata file which describes how the tracks of a CD or DVD are laid out.

If you have e.g. `foo.bin`, you should create a text file and save it as `foo.cue`. If you're playing a single-track Saturn game, then the cue file contents should look like this:

`foobin.cue`
```
 FILE "foo.bin" BINARY
  TRACK 01 MODE1/2352
   INDEX 01 00:00:00
```

After that, you can load the `foo.cue` file in RetroArch with the Beetle PCE FAST core.

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

	Modify the horizontal overscan.

- **Initial scanline** [pce_initial_scanline] (0 to 40 in increments of 1. **3 is default.**)

	Adjust initial display scanline.

- **Last scanline** [pce_last_scanline] (208 to 242 in increments of 1. **242 is default.**)

	Adjust last display scanline.

- **(CD) CDDA Volume %** [pce_cddavolume] (0 to 200 in increments of 10. **100 is default**.)

	Adjust CDDA Volume %.

- **(CD) ADPCM Volume %** [pce_adpcmvolume] (0 to 200 in increments of 10. **100 is default**.)

	Adjust ADPCM Volume %.

- **(CD) CD PSG Volume %** [pce_cdpsgvolume] (0 to 200 in increments of 10. **100 is default**.)

    Adjust CD PSG Volume %.

- **(CD) CD Speed** [pce_cdspeed] (**1**/2/4/8)

	Set the speed of the emulated CD drive.

- **Turbo Delay** [pce_Turbo_Delay] (**Fast**/Medium/Slow)

	Adjust turbo delay.

- **Turbo ON/OFF Toggle** [pce_Turbo_Toggling] (**disabled**/enabled)

	Enables Turbo ON/OFF inputs.

	Look at the [Joypad section](#joypad) for more information.

- **Alternate Turbo Hotkey** [pce_turbo_toggle_hotkey] (**disabled**/enabled)

	Enables Alternate Turbo ON/OFF inputs.

	You can avoid remapping Button III and IV when switching to 6-button gamepad mode with this.

	Look at the [Joypad section](#joypad) for more information.

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

## User 1 - 2 device types

The Beetle PCE FAST core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Doesn't disable input.
- **PCE Joypad** - Joypad
- Mouse - Mouse

## Joypad

- Which PCE Joypad button mode is in use can be configured by the Mode Switch input.

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
| ![](../image/retropad/retro_r2.png)            |                              | Alternate II Turbo On/Off |                     |
| ![](../image/retropad/retro_r3.png)            |                              | Alternate I Turbo On/Off  |                     |

## Mouse

| RetroMouse Inputs                                     | Mouse             |
|-------------------------------------------------------|--------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Mouse Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Mouse Right Button |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle PCE FAST Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_pce_fast_libretro.info)
- [Libretro Beetle PCE FAST Github Repository](https://github.com/libretro/beetle-pce-fast-libretro)
- [Report Libretro Beetle PCE FAST Core Issues Here](https://github.com/libretro/beetle-pce-fast-libretro/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IcICSGZARi72aNezAyfpKzJ)

## TG-16

- [NEC - PC Engine SuperGrafx (Beetle SGX)](beetle_sgx.md)
