# MSX (fMSX)

## Contribute to this documentation

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/fmsx.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

fMSX is a program that emulates MSX, MSX2, and MSX2+ 8bit home computers.

### Why use this core?

Awaiting description.

### How to get and install the fMSX core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](images\Cores\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](images\Cores\all\info.png) </center>

- Browse through the list and select 'MSX (fMSX)'.

<center> ![](images\Cores\updater\fmsx.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](images\Cores\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

<center> ![](images\Cores\all\screenshot_name.png) </center>

- If you are asked which core to select, choose 'MSX (fMSX)'.

The content should now start running!

### Authors

- Marat Fayzullin

## See also

### MSX

- [MSX/SVI/ColecoVision/SG-1000 (blueMSX)](https://docs.libretro.com/library/bluemsx/)

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The fMSX core is licensed under

- [Non-commercial](https://github.com/libretro/fmsx-libretro/blob/master/LICENSE)

## Extensions

Content that can be loaded by the fMSX core have the following file extensions:

- .rom
- .mx1
- .mx2
- .dsk
- .cas

## Databases

RetroArch database(s) that are associated with the fMSX core:

- [Microsoft - MSX](https://github.com/libretro/libretro-database/blob/master/rdb/Microsoft%20-%20MSX.rdb)
- [Microsoft - MSX2](https://github.com/libretro/libretro-database/blob/master/rdb/Microsoft%20-%20MSX2.rdb)

## BIOS

Required or optional firmware files go in RetroArch's system directory.

|   Filename   |    Description          |              md5sum              |
|:------------:|:-----------------------:|:--------------------------------:|
| MSX.ROM      | MSX BIOS - Required     | 364a1a579fe5cb8dba54519bcfcdac0d |
| MSX2.ROM     | MSX2 BIOS - Required    | ec3a01c91f24fbddcbcab0ad301bc9ef |
| MSX2EXT.ROM  | MSX2 ExtROM - Required  | 2183c2aff17cf4297bdb496de78c2e8a |
| MSX2P.ROM    | MSX2+ BIOS - Required   | 847cc025ffae665487940ff2639540e5 |
| MSX2PEXT.ROM  |MSX2+ ExtROM - Required | 7c8243c71d8f143b2531f01afa6a05dc |

## Features

RetroArch-level settings or features that the fMSX core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | -         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
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

### Directories

The fMSX core's directory name is 'fMSX'

The fMSX core saves/loads to/from these directories.

**RetroArch's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The fMSX core's internal FPS is 60
- The fMSX core's internal sample rate is 48000 Hz
- The fMSX core's core provided aspect ratio is (Ratio)

## Core options

The fMSX core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **MSX Mode** (**MSX2+**/MSX1/MSX2)

	Select MSX model.

- **MSX Video Mode** (**NTSC**/PAL)

	Awaiting description.
	
- **MSX Mapper Type Mode** (**Guess Mapper Type A**/Guess Mapper Type B)

	Awaiting description.
	
- **MSX Main Memory** (**Auto**/64KB/128KB/256KB/512KB)

	Awaiting description.
	
- **MSX Video Memory** (**Auto**/32KB/64KB/128KB/192KB)

	Awaiting description.

## Controllers

### Device types

The fMSX core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- None - Input disabled.
- **Joystick** - Joypad
- Joystick + Emulated Keyboard - Joypad
- Emulated Keyboard - Joypad
- Keyboard - Keyboard - Has Keymapper support

#### User 2 device types

- None - Input disabled.
**Joystick** - Joypad

### Controller tables

#### Joypad and analog device type table

| User 1 - 2 Remap descriptors for 'Joystick' device type | RetroPad Inputs                              |                         
|---------------------------------------------------------|----------------------------------------------|
| Fire B                                                  | ![](images/RetroPad/Retro_B_Round.png)       |
| Stick Up                                                | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| Stick Down                                              | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| Stick Left                                              | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| Stick Right                                             | ![](images/RetroPad/Retro_Dpad_Right.png)    |
| Fire A                                                  | ![](images/RetroPad/Retro_A_Round.png)       |

| User 1 Remap descriptors for 'Joystick + Emulated Keyboard' device type | RetroPad Inputs                           |
|-------------------------------------------------------------------------|-------------------------------------------|
| Fire B                                                                  | ![](images/RetroPad/Retro_B_Round.png)    |
| Spacebar                                                                | ![](images/RetroPad/Retro_Y_Round.png)    |
| F2                                                                      | ![](images/RetroPad/Retro_Select.png)     |
| F1                                                                      | ![](images/RetroPad/Retro_Start.png)      |
| Stick Up                                                                | ![](images/RetroPad/Retro_Dpad_Up.png)    |
| Stick Down                                                              | ![](images/RetroPad/Retro_Dpad_Down.png)  |
| Stick Left                                                              | ![](images/RetroPad/Retro_Dpad_Left.png)  |
| Stick Right                                                             | ![](images/RetroPad/Retro_Dpad_Right.png) |
| Fire A                                                                  | ![](images/RetroPad/Retro_A_Round.png)    |
| F3                                                                      | ![](images/RetroPad/Retro_X_Round.png)    |
| F4                                                                      | ![](images/RetroPad/Retro_L1.png)         |
| F5                                                                      | ![](images/RetroPad/Retro_R1.png)         |
| Graph                                                                   | ![](images/RetroPad/Retro_L2.png)         |
| Ctrl                                                                    | ![](images/RetroPad/Retro_R2.png)         |
| Enter                                                                   | ![](images/RetroPad/Retro_L3.png)         |
| Escape                                                                  | ![](images/RetroPad/Retro_R3.png)         |

| User 1 Remap descriptors for 'Emulated Keyboard' device type | RetroPad Inputs                           |
|--------------------------------------------------------------|-------------------------------------------|
| Enter                                                        | ![](images/RetroPad/Retro_B_Round.png)    |
| M                                                            | ![](images/RetroPad/Retro_Y_Round.png)    |
| F4                                                           | ![](images/RetroPad/Retro_Select.png)     |
| F1                                                           | ![](images/RetroPad/Retro_Start.png)      |
| Arrow Up                                                     | ![](images/RetroPad/Retro_Dpad_Up.png)    |
| Arrow Down                                                   | ![](images/RetroPad/Retro_Dpad_Down.png)  |
| Arrow Left                                                   | ![](images/RetroPad/Retro_Dpad_Left.png)  |
| Arrow Right                                                  | ![](images/RetroPad/Retro_Dpad_Right.png) |
| Space                                                        | ![](images/RetroPad/Retro_A_Round.png)    |
| N                                                            | ![](images/RetroPad/Retro_X_Round.png)    |
| F2                                                           | ![](images/RetroPad/Retro_L1.png)         |
| F3                                                           | ![](images/RetroPad/Retro_R1.png)         |
| Graph                                                        | ![](images/RetroPad/Retro_L2.png)         |
| Ctrl                                                         | ![](images/RetroPad/Retro_R2.png)         |
| F5                                                           | ![](images/RetroPad/Retro_L3.png)         |
| Escape                                                       | ![](images/RetroPad/Retro_R3.png)         |

#### Keyboard device type table

| RetroKeyboard Inputs          | Keyboard           |
|-------------------------------|--------------------|
| Keyboard Backspace            | Backspace          |
| Keyboard Tab                  | Tab                |
| Keyboard Return               | Enter              |
| Keyboard Pause                | Stop               |
| Keyboard Escape               | Escape             |
| Keyboard Space                | Space              |
| Keyboard !                    | !                  |
| Keyboard "                    | "                  |
| Keyboard #                    | #                  |
| Keyboard $                    | $                  |
| Keyboard &                    | &                  |
| Keyboard '                    | `                  |
| Keyboard (                    | (                  |
| Keyboard )                    | )                  |
| Keyboard *                    | #                  |
| Keyboard +                    | +                  |
| Keyboard ,                    | ,                  |
| Keyboard .                    | .                  |
| Keyboard /                    | /                  |
| Keyboard 0                    | 0                  |
| Keyboard 1                    | 1                  |
| Keyboard 2                    | 2                  |
| Keyboard 3                    | 3                  |
| Keyboard 4                    | 4                  |
| Keyboard 5                    | 5                  |
| Keyboard 6                    | 6                  |
| Keyboard 7                    | 7                  |
| Keyboard 8                    | 8                  |
| Keyboard 9                    | 9                  |
| Keyboard :                    | :                  |
| Keyboard ;                    | ;                  |
| Keyboard -                    | -                  |
| Keyboard =                    | =                  |
| Keyboard <                    | <                  |
| Keyboard >                    | >                  |
| Keyboard ?                    | ?                  |
| Keyboard @                    | @                  |
| Keyboard [                    | [                  |
| Keyboard \                    | \                  |
| Keyboard ]                    | ]                  |
| Keyboard ^                    | ^                  |
| Keyboard _                    | _                  |
| Keyboard `                    | -                  |
| Keyboard a                    | a                  |
| Keyboard b                    | b                  |
| Keyboard c                    | c                  |
| Keyboard d                    | d                  |
| Keyboard e                    | e                  |
| Keyboard f                    | f                  |
| Keyboard g                    | g                  |
| Keyboard h                    | h                  |
| Keyboard i                    | i                  |
| Keyboard j                    | j                  |
| Keyboard k                    | k                  |
| Keyboard l                    | l                  |
| Keyboard m                    | m                  |
| Keyboard n                    | n                  |
| Keyboard o                    | o                  |
| Keyboard p                    | p                  |
| Keyboard q                    | q                  |
| Keyboard r                    | r                  |
| Keyboard s                    | s                  |
| Keyboard t                    | t                  |
| Keyboard u                    | u                  |
| Keyboard v                    | v                  |
| Keyboard w                    | w                  |
| Keyboard x                    | x                  |
| Keyboard y                    | y                  |
| Keyboard z                    | z                  |
| Keyboard Delete               | Delete             |
| Keyboard Numpad 0             | Numpad 0           |
| Keyboard Numpad 1             | Numpad 1           |
| Keyboard Numpad 2             | Numpad 2           |
| Keyboard Numpad 3             | Numpad 3           |
| Keyboard Numpad 4             | Numpad 4           |
| Keyboard Numpad 5             | Numpad 5           |
| Keyboard Numpad 6             | Numpad 6           |
| Keyboard Numpad 7             | Numpad 7           |
| Keyboard Numpad 8             | Numpad 8           |
| Keyboard Numpad 9             | Numpad 9           |
| Keyboard Up                   | Up                 |
| Keyboard Down                 | Down               |
| Keyboard Right                | Right              |
| Keyboard Left                 | Left               |
| Keyboard Insert               | Insert             |
| Keyboard Home                 | Home               |
| Keyboard End                  | Select             |
| Keyboard Page Up              | Country            |
| Keyboard F1                   | F1                 |
| Keyboard F2                   | F2                 |
| Keyboard F3                   | F3                 |
| Keyboard F4                   | F4                 |
| Keyboard F5                   | F5                 |
| Keyboard Caps Lock            | Caps Lock          |
| Keyboard Scroll Lock          | Shift              |
| Keyboard Right Shift          | Shift              |
| Keyboard Right Control        | Control            |
| Keyboard Left Control         | Control            |
| Keyboard Left Alt             | Graph              |

## Compatibility

Awaiting description.

## External Links

- [Libretro fMSX Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/fmsx_libretro.info)
- [Libretro fMSX Github Repository](https://github.com/libretro/fmsx-libretro)
- [Report Libretro fMSX Core Issues Here](https://github.com/libretro/fmsx-libretro/issues)
- [Official fMSX Website](http://fms.komkon.org/fMSX/)
- [Official fMSX Downloads](https://fms.komkon.org/fMSX/#Downloads)