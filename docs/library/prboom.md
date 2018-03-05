# Doom (PrBoom)

## Background

Port of prboom to libretro - plays Doom, Doom II, Final Doom and other Doom IWAD mods. 

### Author/License

The PrBoom core has been authored by

- Florian Schulze

The PrBoom core is licensed under

- [GPLv2](https://github.com/libretro/libretro-prboom/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the PrBoom core have the following file extensions:

- .wad
- .iwad
- .pwad

## Databases

RetroArch database(s) that are associated with the PrBoom core:

- [DOOM](https://github.com/libretro/libretro-database/blob/master/rdb/DOOM.rdb)

## Features

Frontend-level settings or features that the PrBoom core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
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

The PrBoom core's library name is 'PrBoom'

The PrBoom core saves/loads to/from these directories.

**Loaded content's directory**

| File         | Description |
|:------------:|:-----------:|
| *.dsg | Quicksave |
| *.cfg | DOOM Config |

### Geometry and timing

- The PrBoom core's core provided FPS is 60
- The PrBoom core's core provided sample rate is 44100 Hz
- The PrBoom core's base width is (Base width)
- The PrBoom core's base height is (Base height)
- The PrBoom core's max width is (Max width)
- The PrBoom core's max height is (Max height)
- The PrBoom core's core provided aspect ratio is 4/3

## Loading DOOM

PrBoom can load wad, iwad, and pwad files. The PrBoom core requires data ROM ['prboom.wad'](https://github.com/libretro/libretro-prboom/blob/master/prboom.wad) inside the loaded content's directory.

The PrBoom core is not able to play the music files inside the wad files (they are in a proprietary midi format).

To have music, you have to put the files in mp3 format inside the content's directory.

## Core options

The PrBoom core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Internal resolution (restart)** [prboom-resolution] (**320x200**|640x400|960x600|1280x800|1600x1000|1920x1200)

	Configure the resolution.
	
??? note "Internal resolution - 320x200"
	![](..\image\core\prboom\320x200.png)
	
??? note "Internal resolution - 1920x1200"
	![](..\image\core\prboom\1920x1200.png)	
	
- **Mouse active when using Gamepad** [prboom-mouse_on] (**disabled**|enabled)

	Allows you to use mouse inputs even when User 1's device type isn't set to RetroKeyboard/Mouse.
	
- **Look on parent folders for IWADs** [prboom-find_recursive_on] (**enabled**|disabled)

	Awaiting description.
	
## Controllers

The PrBoom core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- **RetroKeyboard/Mouse** - Keyboard and Mouse - Switch to this for keyboard and mouse input. Has keymapper support.

### Controller tables

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                                | PrBoom inputs     |
|--------------------------|------------------------------------------------|-------------------|
| Strafe                   | ![](../image/retropad/retro_b.png)             | Strafe            |
| Run                      | ![](../image/retropad/retro_y.png)             | Run               |
| Show/Hide Map            | ![](../image/retropad/retro_select.png)        | Show/Hide Map     |
| Settings                 | ![](../image/retropad/retro_start.png)         | Settings          |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up          |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down        |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left        |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right       |
| Use                      | ![](../image/retropad/retro_a.png)             | Use               |
| Fire                     | ![](../image/retropad/retro_x.png)             | Fire              |
| Strafe Left              | ![](../image/retropad/retro_l1.png)            | Strafe Left       |
| Strafe Right             | ![](../image/retropad/retro_r1.png)            | Strafe Right      |  
| Previous Weapon          | ![](../image/retropad/retro_l2.png)            | Previous Weapon   |
| Next Weapon              | ![](../image/retropad/retro_r2.png)            | Next Weapon       |
|                          | ![](../image/retropad/retro_left_stick.png) X  | Strafe Left/Right |
|                          | ![](../image/retropad/retro_left_stick.png) Y  | D-Pad Up/Down     |
|                          | ![](../image/retropad/retro_right_stick.png) X | D-Pad Left/Right  |

#### Keyboard and Mouse

| RetroKeyboard/Mouse Inputs         | Weapons      |
|------------------------------|--------------|
| Keyboard 1                   | Fist         |
| Keyboard 2                   | Pistol       |
| Keyboard 3                   | Shotgun                         |
| Keyboard 4                   | Chaingun                         |
| Keyboard 5                   | Rocket                         |
| Keyboard 8                   | Chainsaw                         |
| Keyboard 0                   | Best                         |
| Keyboard Left Control        | Fire                         |
| Keyboard Right Control       | Fire                         |
| Wheel Up                                              | Next Weapon                         |
| Wheel Down                                            | Previous Weapon                         |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Fire                         |

| RetroKeyboard/Mouse Inputs         | Movement      |
|------------------------------|---------------------------|
| Keyboard Up                  | Forward                         |
| Keyboard Down                | Backward                         |
| Keyboard Left                | Turn Left                         |
| Keyboard Right               | Turn Right                         |
| Keyboard Left Shift          | Run                         |
| Keyboard Right Shift         | Run                         |
| Keyboard Less than <         | Strafe Left                 |
| Keyboard Greater than >      | Strafe Right                 |
| Keyboard Left Alt            | Strafe                         |
| Keyboard Right Alt           | Strafe                         |
| Keyboard Caps Lock           | Autorun                         |
| Keyboard Slash /             | 180 Turn                         |
| Keyboard Space               | Use                         |
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Turn Left/Right                         |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Strafe                         |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Use                         |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Forward                         |

| RetroKeyboard/Mouse Inputs         | Game      |
|------------------------------|---------------------------|
| Keyboard F2                  | Save                         |
| Keyboard F3                  | Load                         |
| Keyboard F6                  | Quicksave                         |
| Keyboard F7                  | Endgame                         |
| Keyboard F9                  | Quickload                         |
| Keyboard F10                 | Quit                         |

| RetroKeyboard/Mouse Inputs         | Screen      |
|------------------------------|---------------------------|
| Keyboard F1                  | Help                         |
| Keyboard Escape              | Menu                         |
| Keyboard Home                | Setup                         |
| Keyboard Pause               | Pause                         |
| Keyboard Tab                 | Automap                         |
| Keyboard F4                  | Sound Volume                         |
| Keyboard F5                  | HUD                         |
| Keyboard F8                  | Messages                         |
| Keyboard F11                 | Gamma Fix                         |
| Keyboard F12                 | Spy                         |
| Keyboard Minus -             | Smaller View                         |
| Keyboard Plus +              | Larger View                         |

| RetroKeyboard/Mouse Inputs         | Automap      |
|------------------------------|---------------------------|
| Keyboard f                   | Follow Mode                         |
| Keyboard Minus -             | Zoom in                         |
| Keyboard Plus +              | Zoom out                         |
| Keyboard m                   | Mark Place                         |
| Keyboard c                   | Clear Marks                         |
| Keyboard o                   | Full/Zoom                         |
| Keyboard g                   | Grid                         |

## External Links

- [Official PrBoom Website](http://prboom.sourceforge.net/)
- [Official PrBoom SourceForge Repository](http://sourceforge.net/projects/prboom/)
- [Libretro PrBoom Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/prboom_libretro.info)
- [Libretro PrBoom Github Repository](https://github.com/libretro/libretro-prboom)
- [Report Libretro PrBoom Core Issues Here](https://github.com/libretro/libretro-prboom/issues)

#### id Software

- [Quake 1 (TyrQuake)](https://docs.libretro.com/library/tyrquake/)