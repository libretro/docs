# MSX (fMSX)

## Background

This is a port of Marat Fayzullin's fMSX 6.0 (21-Feb-2021) to the libretro API. fMSX is a program that emulates MSX, MSX2, and MSX2+ 8bit home computers. It runs MSX/MSX2/MSX2+ software on many different platforms including Windows, Android, Symbian, MacOS, Unix, MSDOS, AmigaOS, etc. I started developing fMSX in 1993 when there were only two other MSX emulators available, both exclusively for MSDOS. From the very beginning, I developed fMSX as a portable program able to run on many different computers. The initial development, for example, was done on DEC Alpha workstations running Unix. Since then, fMSX has seen quite a lot of updates and been ported to many systems. It is still being developed, although not as actively as before because most features are pretty much complete now.

The Meteor core has been authored by

- Marat Fayzullin

The fMSX core is licensed under

- [Non-commercial](https://github.com/libretro/fmsx-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

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
| DISK.ROM     | DiskROM/BDOS (optional)   | 80dcd1ad1a4cf65d64b7ba10504e8190 |
| FMPAC.ROM    | FMPAC BIOS (optional)     | 6f69cc8b5ed761b03afd78000dfb0e19 |
| MSXDOS2.ROM  | MSX-DOS 2 (optional)      | 6418d091cd6907bbcf940324339e43bb |
| PAINTER.ROM  | Yamaha Painter (optional) | 403cdea1cbd2bb24fae506941f8f655e |
| KANJI.ROM    | Kanji Font (optional)     | febe8782b466d7c3b16de6d104826b34 |

This list of compatible ROMS is not complete.

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

| User 1 - 2 Remap descriptors for 'Joystick device type'| RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| Fire B                   | ![](../image/retropad/retro_b.png)             |
| Stick Up                 | ![](../image/retropad/retro_dpad_up.png)       |
| Stick Down               | ![](../image/retropad/retro_dpad_down.png)     |
| Stick Left               | ![](../image/retropad/retro_dpad_left.png)     |
| Stick Right              | ![](../image/retropad/retro_dpad_right.png)    |
| Fire A                   | ![](../image/retropad/retro_a.png)             |

| User 1 Remap descriptors for 'Joystick + Emulated Keyboard' device type | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| Fire B                   | ![](../image/retropad/retro_b.png)             |
| Spacebar                 | ![](../image/retropad/retro_y.png)             |
| F2                       | ![](../image/retropad/retro_select.png)        |
| F1                       | ![](../image/retropad/retro_start.png)         |
| Stick Up                 | ![](../image/retropad/retro_dpad_up.png)       |
| Stick Down               | ![](../image/retropad/retro_dpad_down.png)     |
| Stick Left               | ![](../image/retropad/retro_dpad_left.png)     |
| Stick Right              | ![](../image/retropad/retro_dpad_right.png)    |
| Fire A                   | ![](../image/retropad/retro_a.png)             |
| F3                       | ![](../image/retropad/retro_x.png)             |
| F4                       | ![](../image/retropad/retro_l1.png)            |
| F5                       | ![](../image/retropad/retro_r1.png)            |
| Graph                    | ![](../image/retropad/retro_l2.png)            |
| Ctrl                     | ![](../image/retropad/retro_r2.png)            |
| Enter                    | ![](../image/retropad/retro_l3.png)            |
| Escape                   | ![](../image/retropad/retro_r3.png)            |

| User 1 Remap descriptors for 'Emulated Keyboard' device type | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| Enter                    | ![](../image/retropad/retro_b.png)             |
| M                        | ![](../image/retropad/retro_y.png)             |
| F4                       | ![](../image/retropad/retro_select.png)        |
| F1                       | ![](../image/retropad/retro_start.png)         |
| Arrow Up                 | ![](../image/retropad/retro_dpad_up.png)       |
| Arrow Down               | ![](../image/retropad/retro_dpad_down.png)     |
| Arrow Left               | ![](../image/retropad/retro_dpad_left.png)     |
| Arrow Right              | ![](../image/retropad/retro_dpad_right.png)    |
| Space                    | ![](../image/retropad/retro_a.png)             |
| N                        | ![](../image/retropad/retro_x.png)             |
| F2                       | ![](../image/retropad/retro_l1.png)            |
| F3                       | ![](../image/retropad/retro_r1.png)            |
| Graph                    | ![](../image/retropad/retro_l2.png)            |
| Ctrl                     | ![](../image/retropad/retro_r2.png)            |
| F5                       | ![](../image/retropad/retro_l3.png)            |
| Escape                   | ![](../image/retropad/retro_r3.png)            |

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

### MSX

- [MSX/SVI/ColecoVision/SG-1000 (blueMSX)](bluemsx.md)