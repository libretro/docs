# Atari - ST/STE/TT/Falcon (Hatari)

## Background

Hatari is an Atari ST/STE/TT/Falcon system emulator that can be used as a libretro core. Hatari tries to emulate the hardware as close as possible so that it is able to run most of the old Atari games and demos.

### Author/License

The Hatari core has been authored by

- Nicolas Pomarède

The Hatari core is licensed under

- [GPLv2](https://github.com/libretro/hatari/blob/master/readme.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Hatari core have the following file extensions:

- .st
- .msa
- .zip
- .stx
- .dim
- .ipf

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	The plain ST mode only works with TOS 1.00, 1.02, 1.04, or 2.06. STE mode requires any of the TOS versions 1.xx or 2.xx. TOS 3.0x is for TT, and TOS 4.0x is for Falcon.

| Filename | Description               | md5sum                           |
|:--------:|:-------------------------:|:--------------------------------:|
| tos.img  | TOS Boot Image - Required | c1c57ce48e8ee4135885cee9e63a68a2 |

## Features

Frontend-level settings or features that the Hatari core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Hatari core's internal core name is 'Hatari'

The Hatari core saves/loads to/from these directories.

**Frontend's System directory**

- hatari.cfg (Hatari Config file)

**User directory**

- .hatari/ (Unused directory)

### Geometry and timing

- The Hatari core's core provided FPS is (FPS)
- The Hatari core's core provided sample rate is (Rate)
- The Hatari core's core provided aspect ratio is (Ratio)

## Getting Started With Hatari

!!! attention
	This guide was written by [AnicetusCer on the LibRetro Forums](https://forums.libretro.com/t/getting-started-with-hatari-atari-st-ste-tt-falcon-emulation/13237).

This was written using Lakka 2.1 rc6 x86_64

I was excited to find out Lakka has an Atari ST core, but then disappointed that it chucked out some errors when I tried to “just load an .st image”. There really was not much of a guide out there, even to get started, So I picked apart a handful of posts and docs and wrote my own mini guide below.

### Quick Start

- Get a copy of US TOS 1.02 , name and put it here; “/storage/system/tos.img”

- Create a folder for your Atari ST games “/storage/roms/Atari - ST”

- Create a hatari.cfg file in “/storage/system/hatari.cfg” with the following lines


```
[Floppy]
bAutoInsertDiskB = TRUE
FastFloppy = TRUE
nWriteProtection = 0
szDiskAFileName = /storage/roms/Atari\ -\ ST/game.st
szDiskBFileName =
szDiskImageDirectory = /storage/roms/Atari\ -\ ST/
szDiskAZipPath =
szDiskBZipPath =

[ROM]
szCartridgeImageFileName =
szTosImageFileName = /storage/system/tos.img
```

- Changing Floppy disks can be achieved by accessing the Hatari menu and selecting the “Floppy” menu (see long winded explanation below)

- So far I have found non of my own .st files get scanned into a playlist so I’ll have to build my own, but in the mean time to load a disk, in the Lakka menu go to “Load Content” > select you first game disk > then select to run it with the Hatari Core, it will now try to load the game without complaining it has no TOS. (ST games can have varying Hardware requirements, see “Long Winded Start” on how to change settings, but you should be able to play a lot of games with just the defaults.

- Note on controllers, A controller can be used as both a mouse and joystick, see “Long Winded Start” for more info.

### Long Winded Start

- The TOS image (TOS stands for THE Operating System, cool huh) Consider TOS like a bios image used for other consoles, it needs adding to the the “/storage/system” directory. The one the retroarch Hatari documents mention is the US TOS version 1.02 this was an Atari ST OS and is probably the most compatible version for playing games, if you want to learn more about the different TOS versions and which hardware systems they correspond to (ST, STE, TT & FALCON) here is a good link; [http://www.atarimania.com/atari-st-tt-falcon.html9](http://www.atarimania.com/atari-st-tt-falcon.html9).

- I found Hatari would kick out this error when loading a game without the config set up “Can not load TOS file J’/usr/bin/TOS” This is because it was looking for the tos.img in the /usr/bin directory of Lakka, this is a read only location so we can not just drop the TOS image there, this is what the config file is needed for. This section tells Hatari to look for TOS in the location specified.

```
[ROM]
szCartridgeImageFileName =
szTosImageFileName = /storage/system/tos.img
```

- Hatari does not seem to have a default hatari.cfg in place when first loaded (Hence the error above), It expects it to be read from two places by default, /storage/.hatari/hatari.cfg and /storage/system/hatari.cfg, I prefer the latter as it is more visible, once you load your first game you can then access the Hatari menu and save over your first base config in either location with whatever settings you change.

### Controller and Hatari Menu (And Changing Floppy Disk)

- The Hatari menu can be accessed using the default controller button “Y” when the core is loaded (IE during a game" (i was using a PlayStation 4 controller and it was the square button for me)

- Once in the menu I found a real mouse is not usable, however you can press “select” on your controller to switch to mouse mode (there is also another button to display the mouse speed “ms” and another to change it), now you can navigate the menu.

- The menu can be used to change your system settings, here you can;
	- Point to new TOS images
	- Change the CPU & the amount of memory (needed sometimes to get some games working, dropping to 512k can help with some earlier games)
	- Change floppy disks, “YOU WILL DO THIS A LOT WITH SOME GAMES” When the first game disk is loaded you can then access the Hatari menu, go to the “Floppy” Menu and then browse to a new disk to put into a drive (A or B). It is important that you choose not to reset the system when exiting the Hatari menu if still in a game (this is not selected by default , so you will be fine).
	- Add a HDD not really needed (for die hard Atari fans).
	- Change Keyboard and Joystick settings.
	- Change the screen size (Warning Hatari is strict when it comes to aspect ratios it will always want to use the available resolutions of 1990s Monitors, with a little tweaking you can get it to fill most of your modern screen)
	- Change the sound chip settings (don’t touch unless you know what you’re doing)
	- There is also a save state option in the memory menu (Save state is not available directly from Lakka for Hatari, but it is inside the emulator :slight_smile: )

- Once you have finished setting up your settings you can now save them using the save config button , rather than use the default location of /storage/.hatari/hatari.cfg I would navigate back to your initial basic config file /storage/hatari.cfg as it is more accessible and visible, Note if you like, you can have as many config files as you want, as long as you remember where you put them :blush: , "The Immortal (one of the hardest games ever made), for instance, needs its memory setting back to 512k with a 68000 cpu in st mode 1.02 TOS, so why not create an “immortal.cfg” with the right system settings and floppy already in the drive, then you can load it and it is all just done.

## Core options

The Hatari core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Internal resolution** [Hatari_resolution] (**640x480**|832x576|832x588|800x600|960x720|1024x768|1024x1024)

	Set the internal resolution.

## Controllers

The Hatari core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Other controllers

- Mouse - The Hatari core can emulate mouse inputs but this is done automatically and cannot be manually selected as a device type.

### Controller tables

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| Enter GUI                | ![](../image/retropad/retro_y.png)          |
| Mouse mode toggle        | ![](../image/retropad/retro_select.png)     |
| Keyboard overlay         | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| Fire                     | ![](../image/retropad/retro_a.png)          |
| Joystick number          | ![](../image/retropad/retro_l1.png)         |
| Mouse speed              | ![](../image/retropad/retro_r1.png)         |
| Toggle m/k status        | ![](../image/retropad/retro_l2.png)         |

#### Keyboard

| RetroKeyboard Inputs         | Hatari core Inputs        |
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

| RetroMouse Inputs                                     | Hatari core inputs |
|-------------------------------------------------------|--------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Mouse Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Mouse Right Button |

## Compatibility

- Hatari compatibility can be found [here](https://hg.tuxfamily.org/mercurialroot/hatari/hatari/raw-file/tip/doc/compatibility.html)

## External Links

- [Official Hatari Website](http://hatari.tuxfamily.org/)
- [Official Hatari Downloads](http://hatari.tuxfamily.org/download.html)
- [Libretro Hatari Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/hatari_libretro.info)
- [Libretro Hatari Github Repository](https://github.com/libretro/hatari)
- [Report Libretro Hatari Core Issues Here](https://github.com/libretro/hatari/issues)
