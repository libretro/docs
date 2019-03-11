# Sharp - X68000 (PX68k)

## Background

Portable SHARP X68000 Emulator for PSP, Android and other platforms.

### Author/License

The PX68k core has been authored by

- hissorii

The PX68k core is licensed under

- [kero_src.txt](https://github.com/libretro/px68k-libretro/blob/master/doc/kero_src.txt)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the PX68k core have the following file extensions:

- .dim
- .zip
- .img
- .d88
- .88d
- .hdm
- .dup
- .2hd
- .xdf
- .hdf
- .cmd
- .m3u

## Databases

RetroArch database(s) that are associated with the PX68k core:

- [Sharp - X68000](https://github.com/libretro/libretro-database/blob/master/rdb/Sharp%20-%20X68000.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	The firmware files need to be in a directory named 'keropi' in RetroArch's system directory.

|   Filename          |    Description           |              md5sum              |
|:-------------------:|:------------------------:|:--------------------------------:|
| keropi/iplrom.dat   | X68000 BIOS - Required   |                                  |
| keropi/iplrom30.dat | X68000 BIOS 2 - Optional |                                  |
| keropi/iplromco.dat | X68000 BIOS 3 - Optional |                                  |
| keropi/iplromxv.dat | X68000 BIOS 4 - Optional |                                  |
| keropi/cgrom.dat    | Font file - Required     |                                  |

## Features

Frontend-level settings or features that the PX68k core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
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

The PX68k core's library name is 'PX68K'

The PX68k core saves/loads to/from these directories.

**Frontend's System directory**

| File            | Description |
|:---------------:|:-----------:|
| keropi/config   | Config      |
| keropi/sram.dat | SRAM        |

### Geometry and timing

- The PX68k core's core provided FPS is 55.45 or 59.94.
- The PX68k core's core provided sample rate is 44100 Hz
- The PX68k core's base width is 800
- The PX68k core's base height is 600
- The PX68k core's max width is 800
- The PX68k core's max height is 600
- The PX68k core's core provided aspect ratio is 4/3

## Usage

L2 button or F12 key brings up the original px68k menu where you can change the inserted disks. 

They have to be unzipped to be accessible from this menu but can be zipped/archived when launching directly from RetroArch.

After the first boot a “config” file will be generated in the “keropi” folder. You can enter your rom folder into the “StartDir” line to make it accessible from the PX68k-libretro core’s in-game menu.

Define your disks path in system/keropi/config StartDir line.

You can launch content with:

- retroarch -L px68k_libretro.so ./content.hdf

- retroarch -L px68k_libretro.so ./content.xdf

- retroarch -L px68k_libretro.so ./content.cmd (cmdfile is a text file contening cmd like "px68k /somewhere/software/x68000/content1.dim /somewhere/software/x68000/content2.dim")

- retroarch -L sdlpx68k_libretro.so "px68k /somewhere/software/x68000/content1.dim /somewhere/software/x68000/content2.dim"

- retroarch -L px68k_libretro.so ./content.m3u (m3u files are useful for launching multi-disk games, see section below for more details on the format)

- load retroarch , then load core and content from RA menu.

## Multiple-disk games

If foo is a multiple-disk game, you should have .dim files for each one, e.g. foo (Disk 1).dim, foo (Disk 2).dim, foo (Disk 3).dim.

PX68k has a few methods to support loading and swapping multi-disk games.

### Loading multiple disks at startup

- Use an M3U playlist file

	Create a text file and save it as foo.m3u. Then enter your game's .dim files on it, one per line. The m3u file contents should look something like this:

	`foo.m3u`
	```
	foo (Disk 1).dim
	foo (Disk 2).dim
	foo (Disk 3).dim
	```
	After that, you can load the foo.m3u file in RetroArch with the PX68k core either using the frontend or from the command line.

	The first 2 disks listed in this file are loaded into disk drives FDD0 and FDD1 on the core, respectively. To swap disks for games that use more than 2 disks, use the disk swapping option either from within RetroArch's menu or using the native PX68k menu explained below.

- Use a CMD file
	
	This method is similar to the m3u playlist and allows loading up to 2 disks at launch. Create a text file and save it as foo.cmd. The format of this file should have all the games on one line and begins with px68k as in the example below.
	
	"px68k /somewhere/software/x68000/content1.dim /somewhere/software/x68000/content2.dim"

	To swap disks for games that use more than 2 disks, use the native PX68k menu explained below.

- From the command line
	
	As shown in the usage section, you can use the following format to launch multi-disk games directly from the command line:
	
	retroarch -L sdlpx68k_libretro.so "px68k /somewhere/software/x68000/content1.dim /somewhere/software/x68000/content2.dim"
	 
	To swap disks for games that use more than 2 disks, use the native PX68k menu explained below.

### Swapping Disks

Games that have more than 2 disks will often require swapping disks at some point during gameplay. There are 2 supported methods to swap disks in this core.

- Use the disk swapping option from RetroArch GUI. 
	
	Open the RetroArch gui, select Quick Menu ->Disk Control to access the disk controls. Eject the disk using the Disk Cycle Tray Status command, then set the new disk index and load the new disk by selecting Disk Cycle Tray Status again.

	The default disk drive that is swapped is FDD1. If you need to swap the disk loaded in FDD0, change the Core Option "Swap Disks on Drive" first before loading the new disk in this menu.

- Use the native PX68k menu

	Press L2 on the controller or F12 on the keyboard to access the PX68k menu, then select the disk slot and choose the file from here. 
	
	The starting directory for loading disks is determined by the setting StartDir in the system/keropi/config file.
	
## Core options

The PX68k core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CPU Speed** [px68k_cpuspeed] (**10Mhz**|16Mhz|25Mhz|33Mhz (OC)|66Mhz (OC)|100Mhz (OC)|150Mhz (OC)|200Mhz (OC))

	Configure the CPU speed. Can be used to slow down games that run too fast or to speed up floppy loading times.
	
- **RAM Size (Restart)** [px68k_ramsize] (**2MB**|3MB|4MB|5MB|6MB|7MB|8MB|9MB|10MB|11MB|12MB|1MB)

	Amount of RAM used.
	
- **Use Analog** [px68k_analog] (**OFF**|ON)

	Awaiting description.
	
- **P1 Joypad Type** [px68k_joytype1] (**Default (2 Buttons)**|CPSF-MD (8 Buttons)|CPSF-SFC (8 Buttons))

	Awaiting description.
	
- **P2 Joypad Type** [px68k_joytype2] (**Default (2 Buttons)**|CPSF-MD (8 Buttons)|CPSF-SFC (8 Buttons))

	Awaiting description.
	
- **ADPCM Volume** [px68k_adpcm_vol] (**15**|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14)

	Awaiting description.
	
- **OPM Volume** [px68k_opm_vol] (**12**|13|14|15|0|1|2|3|4|5|6|7|8|9|10|11)

	Awaiting description.
	
- **Swap Disks on Drive** [px68k_disk_drive] (**FDD1**|FDD0)

	By default using the native Disk Swap interface within RetroArch's menu will swap the disk in drive FDD1. Change this option to swap disks in drive FDD0.
	
## Controllers

The PX68k core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroKeyboard - Keyboard - Keyboard inputs are always active. Has keymapper support.

### User 2 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroKeyboard - Keyboard - Keyboard inputs are always active.

### Other controllers

- Mouse - The PX68k core can emulate mouse inputs but this is done automatically and cannot be manually selected as a device type.

### Controller tables

#### Joypad

| User 1 - 2 Remap descriptors | RetroPad Inputs                                | 2 Button  | CPSF-MD (8 Buttons) | CPSF-SFC (8 Buttons) |
|------------------------------|------------------------------------------------|-----------|---------------------|----------------------|
| B                            | ![](/image/retropad/retro_b.png)             | JOY_TRG2  | JOY_TRG2            | JOY_TRG1             |
| Y                            | ![](/image/retropad/retro_y.png)             | JOY_TRG1  | JOY_TRG3            | JOY_TRG4             |
| Select                       | ![](/image/retropad/retro_select.png)        | JOY_LEFT  | JOY_TRG7            | JOY_TRG7             |
| Start                        | ![](/image/retropad/retro_start.png)         | JOY_RIGHT | JOY_TRG6            | JOY_TRG6             |
| Up                           | ![](/image/retropad/retro_dpad_up.png)       | JOY_UP    | JOY_UP              | JOY_UP               |
| Down                         | ![](/image/retropad/retro_dpad_down.png)     | JOY_DOWN  | JOY_DOWN            | JOY_DOWN             |
| Left                         | ![](/image/retropad/retro_dpad_left.png)     | JOY_LEFT  | JOY_LEFT            | JOY_LEFT             |
| Right                        | ![](/image/retropad/retro_dpad_right.png)    | JOY_RIGHT | JOY_RIGHT           | JOY_RIGHT            |
| A                            | ![](/image/retropad/retro_a.png)             | JOY_TRG1  | JOY_TRG1            | JOY_TRG2             |
| X                            | ![](/image/retropad/retro_x.png)             | JOY_TRG2  | JOY_TRG4            | JOY_TRG3             |
| L                            | ![](/image/retropad/retro_l1.png)            | JOY_TRG1  | JOY_TRG5            | JOY_TRG8             |
| R                            | ![](/image/retropad/retro_r1.png)            | JOY_TRG2  | JOY_TRG8            | JOY_TRG5             |
| L2 - Menu                    | ![](/image/retropad/retro_l2.png)            | Menu      | Menu                | Menu                 |
| R2                           | ![](/image/retropad/retro_r2.png)            |           |                     |                      |
| L3                           | ![](/image/retropad/retro_l3.png)            |           |                     |                      |
| R3                           | ![](/image/retropad/retro_r3.png)            |           |                     |                      |
|                              | ![](/image/retropad/retro_left_stick.png) X  |           |                     |                      |
|                              | ![](/image/retropad/retro_left_stick.png) Y  |           |                     |                      |
|                              | ![](/image/retropad/retro_right_stick.png) X |           |                     |                      |
|                              | ![](/image/retropad/retro_right_stick.png) Y |           |                     |                      |

#### Keyboard

![](/image/core/px68k/keyboard.jpg)

| RetroKeyboard Inputs         | PX68k inputs              |
|------------------------------|---------------------------|
| Keyboard Backspace           | -                         |
| Keyboard Tab                 | -                         |
| Keyboard Clear               | -                         |
| Keyboard Return              | -                         |
| Keyboard Pause               | -                         |
| Keyboard Escape              | -                         |
| Keyboard Space               | -                         |
| Keyboard Exclaim !           | -                         |
| Keyboard Double Quote "      | -                         |
| Keyboard Hash #              | -                         |
| Keyboard Dollar $            | -                         |
| Keyboard Ampersand &         | -                         |
| Keyboard Quote '             | -                         |
| Keyboard Left Parenthesis (  | -                         |
| Keyboard Right Parenthesis ) | -                         |
| Keyboard Asterisk *          | -                         |
| Keyboard Plus +              | -                         |
| Keyboard Comma ,             | -                         |
| Keyboard Minus -             | -                         |
| Keyboard Period .            | -                         |
| Keyboard Slash /             | -                         |
| Keyboard 0                   | -                         |
| Keyboard 1                   | -                         |
| Keyboard 2                   | -                         |
| Keyboard 3                   | -                         |
| Keyboard 4                   | -                         |
| Keyboard 5                   | -                         |
| Keyboard 6                   | -                         |
| Keyboard 7                   | -                         |
| Keyboard 8                   | -                         |
| Keyboard 9                   | -                         |
| Keyboard Colon :             | -                         |
| Keyboard Semicolon ;         | -                         |
| Keyboard Less than <         | -                         |
| Keyboard Equals =            | -                         |
| Keyboard Greater than >      | -                         |
| Keyboard Question ?          | -                         |
| Keyboard At @                | -                         |
| Keyboard Left Bracket [      | -                         |
| Keyboard Backslash \         | -                         |
| Keyboard Right Bracket ]     | -                         |
| Keyboard Caret ^             | -                         |
| Keyboard Underscore _        | -                         |
| Keyboard Backquote `         | -                         |
| Keyboard a                   | -                         |
| Keyboard b                   | -                         |
| Keyboard c                   | -                         |
| Keyboard d                   | -                         |
| Keyboard e                   | -                         |
| Keyboard f                   | -                         |
| Keyboard g                   | -                         |
| Keyboard h                   | -                         |
| Keyboard i                   | -                         |
| Keyboard j                   | -                         |
| Keyboard k                   | -                         |
| Keyboard l                   | -                         |
| Keyboard m                   | -                         |
| Keyboard n                   | -                         |
| Keyboard o                   | -                         |
| Keyboard p                   | -                         |
| Keyboard q                   | -                         |
| Keyboard r                   | -                         |
| Keyboard s                   | -                         |
| Keyboard t                   | -                         |
| Keyboard u                   | -                         |
| Keyboard v                   | -                         |
| Keyboard w                   | -                         |
| Keyboard x                   | -                         |
| Keyboard y                   | -                         |
| Keyboard z                   | -                         |
| Keyboard Delete              | -                         |
| Keyboard Keypad 0            | -                         |
| Keyboard Keypad 1            | -                         |
| Keyboard Keypad 2            | -                         |
| Keyboard Keypad 3            | -                         |
| Keyboard Keypad 4            | -                         |
| Keyboard Keypad 5            | -                         |
| Keyboard Keypad 6            | -                         |
| Keyboard Keypad 7            | -                         |
| Keyboard Keypad 8            | -                         |
| Keyboard Keypad 9            | -                         |
| Keyboard Keypad Period .     | -                         |
| Keyboard Keypad Divide /     | -                         |
| Keyboard Keypad Multiply *   | -                         |
| Keyboard Keypad Minus -      | -                         |
| Keyboard Keypad Plus +       | -                         |
| Keyboard Keypad Enter        | -                         |
| Keyboard Keypad Equals =     | -                         |
| Keyboard Up                  | -                         |
| Keyboard Down                | -                         |
| Keyboard Right               | -                         |
| Keyboard Left                | -                         |
| Keyboard Insert              | -                         |
| Keyboard Home                | -                         |
| Keyboard End                 | -                         |
| Keyboard Page Up             | -                         |
| Keyboard Page Down           | -                         |
| Keyboard F1                  | -                         |
| Keyboard F2                  | -                         |
| Keyboard F3                  | -                         |
| Keyboard F4                  | -                         |
| Keyboard F5                  | -                         |
| Keyboard F6                  | -                         |
| Keyboard F7                  | -                         |
| Keyboard F8                  | -                         |
| Keyboard F9                  | -                         |
| Keyboard F10                 | -                         |
| Keyboard F11                 | -                         |
| Keyboard F12                 | -                         |
| Keyboard F13                 | -                         |
| Keyboard F14                 | -                         |
| Keyboard F15                 | -                         |
| Keyboard Num Lock            | -                         |
| Keyboard Caps Lock           | -                         |
| Keyboard Scroll Lock         | -                         |
| Keyboard Right Shift         | -                         |
| Keyboard Left Shift          | -                         |
| Keyboard Right Control       | -                         |
| Keyboard Left Control        | -                         |
| Keyboard Right Alt           | -                         |
| Keyboard Left Alt            | -                         |
| Keyboard Right Meta          | -                         |
| Keyboard Left Meta           | -                         |
| Keyboard Right Super         | -                         |
| Keyboard Left Super          | -                         |
| Keyboard Mode                | -                         |
| Keyboard Compose             | -                         |
| Keyboard Help                | -                         |
| Keyboard Print               | -                         |
| Keyboard Sys Req             | -                         |
| Keyboard Break               | -                         |
| Keyboard Menu                | -                         |
| Keyboard Power               | -                         |
| Keyboard €                   | -                         |
| Keyboard Undo                | -                         |
| Keyboard Unmapped            | -                         |
| Keyboard Unknown             | -                         |

#### Mouse

| RetroMouse Inputs                                     | PX68k inputs       |
|-------------------------------------------------------|--------------------|
| ![](/image/retromouse/retro_mouse.png) Mouse Cursor | Mouse Cursor       |
| ![](/image/retromouse/retro_left.png) Mouse 1       | Mouse Left Button  |
| ![](/image/retromouse/retro_right.png) Mouse 2      | mouse Right Button |

## External Links

- [Official PX68k Website](http://hissorii.blog45.fc2.com/)
- [Official PX68k Github Repository](https://github.com/hissorii/px68k)
- [Libretro PX68k Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/px68k_libretro.info)
- [Libretro PX68k Github Repository](https://github.com/libretro/px68k-libretro)
- [Report Libretro PX68k Core Issues Here](https://github.com/libretro/px68k-libretro/issues)