# MSX/SVI/ColecoVision/SG-1000 (blueMSX)

## Contribute to this documentation

**DOCUMENTATION IS A WORK IN PROGRESS**

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/bluemsx.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

blueMSX is a cycle accurate emulator that emulates all generations of MSX computers as well as SVI, ColecoVision and Sega SG-1000.

### Why use this core?

Awaiting description.

### How to install the blueMSX core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](images\Cores\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](images\Cores\all\info.png) </center>

- Browse through the list and select 'MSX/SVI/ColecoVision/SG-1000 (blueMSX)'.

<center> ![](images\Cores\updater\bluemsx.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start the (Core name) core:

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](images\Cores\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

- If you are asked which core to select, choose 'MSX/SVI/ColecoVision/SG-1000 (blueMSX)'.

The content should now start running!

### Authors

- Daniel Vik

## See also

- [MSX (fMSX)](https://docs.libretro.com/library/fmsx/)

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The blueMSX core is licensed under

- [GPLv2](https://github.com/libretro/blueMSX-libretro/blob/master/license.txt)

## Extensions

Content that can be loaded by the blueMSX core have the following file extensions:

- .rom
- .ri
- .mx1
- .mx2
- .col
- .dsk
- .cas
- .sg
- .sc
- .m3u

## Databases

RetroArch database(s) that are associated with the blueMSX core:

- [Microsoft - MSX](https://github.com/libretro/libretro-database/blob/master/rdb/Microsoft%20-%20MSX.rdb)
- [Microsoft - MSX2](https://github.com/libretro/libretro-database/blob/master/rdb/Microsoft%20-%20MSX2.rdb)
- [Coleco - ColecoVision](https://github.com/libretro/libretro-database/blob/master/rdb/Coleco%20-%20ColecoVision.rdb)
- [Sega - SG-1000](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20SG-1000.rdb)

## BIOS

The blueMSX core requires the 'Databases' and 'Machines' folders from a full installation of blueMSX.

You can download the 'Databases' and 'Machines' folders from here  [https://github.com/libretro/blueMSX-libretro/tree/master/system/bluemsx](https://github.com/libretro/blueMSX-libretro/tree/master/system/bluemsx) or you can get them from an official full standalone blueMSX emulator installation. (link to blueMSX official website at bottom of page)

Copy the 'Databases' and 'Machines' Folders to RetroArch's System directory.

## Features

RetroArch-level settings or features that the blueMSX core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | -         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The blueMSX core's directory name is 'blueMSX'

The blueMSX core saves/loads to/from these directories.

**RetroArch's Config directory**

- blueMSX.cfg (Core Overrides)
- 'content-name'.cfg (Game Overrides)
- 'content-name'.opt (Game-options)

**RetroArch's Input Remapping directory**

- blueMSX.rmp (Core Remap)
- 'content-name'.rmp (Game Remap)

**RetroArch's Video Shader directory**

- blueMSX.'shader-preset-extension' (Core Shader Preset)
- 'content-name'.'shader-preset-extension' (Game Shader Preset)

### Geometry and timing

- The blueMSX core's core provided FPS is 60
- The blueMSX core's core provided sample rate is 41000 Hz
- The blueMSX core's core provided aspect ratio is (Ratio)

### Usage

To play SpectraVideo cassettes, type 'cload' and then 'run' or BLOAD "CAS:",R depending on the game.

### Multiple-disk games

If foo is a multiple-disk game, you should have .dsk files for each one, e.g. `foo (Disk 1).dsk`, `foo (Disk 2).dsk`, `foo (Disk 3).dsk`.

To take advantage of BlueMSX Disk Control feature for disk swapping, an index file (a m3u file) should be made.

Create a text file and save it as `foo.m3u`. Then enter your game's .dsk files on it. The m3u file contents should look something like this:

`foo.m3u`
```
foo (Disk 1).dsk
foo (Disk 2).dsk
foo (Disk 3).dsk
```

After that, you can load the `foo.m3u` file in RetroArch with the BlueMSX core.

An alternative is to append disks to the current playlist via the "Disk Image Append" option RetroArch menu.

## Core options

The blueMSX core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Machine Type (Restart)** (**Auto**/MSX/MSXturboR/MSX2/MSX2+/SEGA - SG-1000/SEGA - SC-3000/SEGA - SF-7000/SVI - Spectravideo SVI-318/SVI - Spectravideo SVI-328/SVI - Spectravideo SVI-328 MK2/ColecoVision/Coleco (Spectravideo SVI-603))

	Select the machine type you would like the core to start in.

- **Crop Overscan** (**Off**/On/MSX2)

	Forces cropping of overscanned frames
	
??? note "*Crop Overscan Off*"
    ![](images\Cores\bluemsx\crop_off.png)

??? note "*Crop Overscan On*"
    ![](images\Cores\bluemsx\crop_on.png)

??? note "*Crop Overscan MSX2*"
    ![](images\Cores\bluemsx\crop_msx2.png)	

- **VDP Sync Type (Restart)** (**Auto**/50Hz/60Hz)

	Match the game/machine region frequency to avoid emulated speed issues.

- **No Sprite Limit** (**Off**/On)

	Remove the 4 sprite per line limit which can reduce or remove sprite flicker in some games.

- **Sound YM2413 Enable (Restart)** (Off/**On**)

	Sound YM2413 enable.

- **Cart Mapper Type (Restart)** (**Auto**/Normal/mirrored/basic/0x4000/0xC000/ascii8/ascii8sram/ascii16/ascii16sram/ascii16nf/konami4/konami4nf/konami5/konamisynth/korean80/korean90/korean126/MegaFlashRomScc/MegaFlashRomSccPlus/msxdos2/scc/sccexpanded/sccmirrored/sccplus/snatcher/dsnatcher/SegaBasic/SG1000/SG1000Castle/SG1000RamA/SG1000RamB/SC3000)

	When a rom game or application is in the database, the emulator uses the databases to apply the correct mapper. If the sha1 value of a dump is not yet in the databases, it uses an automatic mapper detection system, but it can fail in some cases. In this situation, you can manually select the correct mapper.

## Controllers

The blueMSX core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroKeyboard - Keyboard - Has keymapper support
- RetroPad Keyboard Map - Joypad

### User 2 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroKeyboard - Keyboard

### Controller tables

#### Joypad

| User 1 - 2 Remap descriptors for 'RetroPad' device type | RetroPad Inputs                              | RetroPad             |
|---------------------------------------------------------|----------------------------------------------|----------------------|
| Button 2                                                | ![](images/RetroPad/Retro_B_Round.png)       | Button 2             |
| Button 3                                                | ![](images/RetroPad/Retro_Y_Round.png)       | Button 3, Coleco #2  |
| Select                                                  | ![](images/RetroPad/Retro_Select.png)        | Select, Coleco *     |
| Start                                                   | ![](images/RetroPad/Retro_Start.png)         | Start, Coleco #      |
| Joy Up                                                  | ![](images/RetroPad/Retro_Dpad_Up.png)       | D-Pad Up             |
| Joy Down                                                | ![](images/RetroPad/Retro_Dpad_Down.png)     | D-Pad Down           |
| Joy Left                                                | ![](images/RetroPad/Retro_Dpad_Left.png)     | D-Pad Left           |
| Joy Right                                               | ![](images/RetroPad/Retro_Dpad_Right.png)    | D-Pad Right          |
| Button 1                                                | ![](images/RetroPad/Retro_A_Round.png)       | Button 1             |
| Button 4                                                | ![](images/RetroPad/Retro_X_Round.png)       | Button 4, Coleco #1  |
| Button 5                                                | ![](images/RetroPad/Retro_L1.png)            | Button 5, Coleco #4  |
| Button 6                                                | ![](images/RetroPad/Retro_R1.png)            | Button 6, Coleco #3  |
| Button 7                                                | ![](images/RetroPad/Retro_L2.png)            | Button 7, Coleco #6  |
| Button 8                                                | ![](images/RetroPad/Retro_R2.png)            | Button 8, Coleco #5  |
| Button 9                                                | ![](images/RetroPad/Retro_L3.png)            | Button 9, Coleco #8  |
| Button 10                                               | ![](images/RetroPad/Retro_R3.png)            | Button 10, Coleco #7 |

!!! attention
	Coleco #0 and #9 inputs are mapped to Keyboard 1 & 2 for Player 1 and Keyboard 3 & 4 for Player 2.

| User 1 Remap descriptors for 'RetroPad Keyboard Map' device type | RetroPad Inputs                              | RetroPad Keyboard Map |
|------------------------------------------------------------------|----------------------------------------------|-----------------------|
|                                                                  | ![](images/RetroPad/Retro_B_Round.png)       |                       |
|                                                                  | ![](images/RetroPad/Retro_Y_Round.png)       |                       |
|                                                                  | ![](images/RetroPad/Retro_Select.png)        |                       |
|                                                                  | ![](images/RetroPad/Retro_Start.png)         |                       |
|                                                                  | ![](images/RetroPad/Retro_Dpad_Up.png)       |                       |
|                                                                  | ![](images/RetroPad/Retro_Dpad_Down.png)     |                       |
|                                                                  | ![](images/RetroPad/Retro_Dpad_Left.png)     |                       |
|                                                                  | ![](images/RetroPad/Retro_Dpad_Right.png)    |                       |
|                                                                  | ![](images/RetroPad/Retro_A_Round.png)       |                       |
|                                                                  | ![](images/RetroPad/Retro_X_Round.png)       |                       |
|                                                                  | ![](images/RetroPad/Retro_L1.png)            |                       |
|                                                                  | ![](images/RetroPad/Retro_R1.png)            |                       |
|                                                                  | ![](images/RetroPad/Retro_L2.png)            |                       |
|                                                                  | ![](images/RetroPad/Retro_R2.png)            |                       |
|                                                                  | ![](images/RetroPad/Retro_L3.png)            |                       |
|                                                                  | ![](images/RetroPad/Retro_R3.png)            |                       |

#### Keyboard

| RetroKeyboard Inputs         | RetroKeyboard      |
|------------------------------|--------------------|
| Keyboard Backspace           | EC_BKSPACE         |
| Keyboard Tab                 | EC_TAB             |
| Keyboard Return              | EC_RETURN          |
| Keyboard Pause               | EC_PAUSE           |
| Keyboard Escape              | EC_ESC             |
| Keyboard Space               | EC_SPACE           |
| Keyboard Quote '             | EC_COLON           |
| Keyboard Comma ,             | EC_COMMA           |
| Keyboard Minus -             | EC_NEG             |
| Keyboard Period .            | EC_PERIOD          |
| Keyboard Slash /             | EC_DIV             |
| Keyboard 0                   | EC_0               |
| Keyboard 0 + Keyboard Left Shift | EC_UNDSCRE     |
| Keyboard 1                   | EC_1               |
| Keyboard 2                   | EC_2               |
| Keyboard 3                   | EC_3               |
| Keyboard 4                   | EC_4               |
| Keyboard 5                   | EC_5               |
| Keyboard 6                   | EC_6               |
| Keyboard 7                   | EC_7               |
| Keyboard 8                   | EC_8               |
| Keyboard 9                   | EC_9               |
| Keyboard Semicolon ;         | EC_SEMICOL         |
| Keyboard Equals =            | EC_CIRCFLX         |
| Keyboard Left Bracket [      | EC_LBRACK          |
| Keyboard Backslash \         | EC_BKSLASH         |
| Keyboard Right Bracket ]     | EC_RBRACK          |
| Keyboard Backquote `         | EC_AT              |
| Keyboard a                   | EC_A               |
| Keyboard b                   | EC_B               |
| Keyboard c                   | EC_C               |
| Keyboard d                   | EC_D               |
| Keyboard e                   | EC_E               |
| Keyboard f                   | EC_F               |
| Keyboard g                   | EC_G               |
| Keyboard h                   | EC_H               |
| Keyboard i                   | EC_I               |
| Keyboard j                   | EC_J               |
| Keyboard k                   | EC_K               |
| Keyboard l                   | EC_L               |
| Keyboard m                   | EC_M               |
| Keyboard n                   | EC_N               |
| Keyboard o                   | EC_O               |
| Keyboard p                   | EC_P               |
| Keyboard q                   | EC_Q               |
| Keyboard r                   | EC_R               |
| Keyboard s                   | EC_S               |
| Keyboard t                   | EC_T               |
| Keyboard u                   | EC_U               |
| Keyboard v                   | EC_V               |
| Keyboard w                   | EC_W               |
| Keyboard x                   | EC_X               |
| Keyboard y                   | EC_Y               |
| Keyboard z                   | EC_Z               |
| Keyboard Delete              | EC_DEL             |
| Keyboard Keypad 0            | EC_NUM0            |
| Keyboard Keypad 1            | EC_NUM1            |
| Keyboard Keypad 2            | EC_NUM2            |
| Keyboard Keypad 3            | EC_NUM3            |
| Keyboard Keypad 4            | EC_NUM4            |
| Keyboard Keypad 5            | EC_NUM5            |
| Keyboard Keypad 6            | EC_NUM6            |
| Keyboard Keypad 7            | EC_NUM7            |
| Keyboard Keypad 8            | EC_NUM8            |
| Keyboard Keypad 9            | EC_NUM9            |
| Keyboard Keypad Period .     | EC_NUMCOM          |
| Keyboard Keypad Divide /     | EC_NUMDIV          |
| Keyboard Keypad Multiply *   | EC_NUMMUL          |
| Keyboard Keypad Minus -      | EC_NUMSUB          |
| Keyboard Keypad Plus +       | EC_NUMADD          |
| Keyboard Keypad Equals =     | EC_NUMPER          |
| Keyboard Up                  | EC_UP              |
| Keyboard Down                | EC_DOWN            |
| Keyboard Right               | EC_RIGHT           |
| Keyboard Left                | EC_LEFT            |
| Keyboard Insert              | EC_INS             |
| Keyboard Home                | EC_CLS             |
| Keyboard End                 | EC_STOP            |
| Keyboard Page Up             | EC_SELECT          |
| Keyboard F1                  | EC_F1              |
| Keyboard F2                  | EC_F2              |
| Keyboard F3                  | EC_F3              |
| Keyboard F4                  | EC_F4              |
| Keyboard F5                  | EC_F5              |
| Keyboard Caps Lock           | EC_CAPS            |
| Keyboard Right Shift         | EC_RSHIFT          |
| Keyboard Left Shift          | EC_LSHIFT          |
| Keyboard Left Control        | EC_CTRL            |
| Keyboard Left Alt            | EC_GRAPH           |
| Keyboard Print               | EC_PRINT           |

## Compatibility

Awaiting description.

## External Links

- [Libretro blueMSX Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/bluemsx_libretro.info)
- [Libretro blueMSX Github Repository](https://github.com/libretro/blueMSX-libretro)
- [Report Libretro blueMSX Core Issues Here](https://github.com/libretro/blueMSX-libretro/issues)
- [Official/Original blueMSX Website](http://bluemsx.com/)
- [Official/Original blueMSX SourceForge Repository](http://sourceforge.net/projects/bluemsx/)