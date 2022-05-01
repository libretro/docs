# Rick Dangerous (XRick)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/V09CwrlFgA8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

XRick is an open source implementation of the game "Rick Dangerous". Rick Dangerous is a platform game developed by Core Design for the Acorn Archimedes, Amiga, Atari ST, Amstrad CPC, ZX Spectrum, Commodore 64, and MS-DOS. The game was released in 1989 and published by MicroProse on the Firebird Software label in the UK, and on the MicroPlay label in America. It was also published in Spain by Erbe Software. Later, it was released with two other games, Stunt Car Racer and MicroProse Soccer, on the Commodore 64 Powerplay 64 cartridge. The game was followed by a sequel, Rick Dangerous 2, in 1990. Loosely based on the Indiana Jones film franchise, the game received mixed reviews from critics. This libretro core is based on BigOrno's [work](http://www.bigorno.net/xrick/).

The XRick core have been authored by

- fabiensanglard
- r-type
- phcoder

The XRick core is licensed under

- [GPLv3](https://github.com/libretro/xrick-libretro/blob/master/README)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the XRick core have the following file extensions:

- .zip

## Databases

RetroArch database(s) that are associated with the XRick core:

- [Rick Dangerous](https://github.com/libretro/libretro-database/blob/master/rdb/Rick%20Dangerous.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename    | Description                                                                           | md5sum                           |
|:-----------:|:-------------------------------------------------------------------------------------:|:--------------------------------:|
| xrick/data.zip | Audio and visual files required for Core to work. | A471E64E9F69AFBE59C10CC94ED1B184 |

## Features

Frontend-level settings or features that the XRick core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔        |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔        |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✔        |
| Controls          | ✔        |
| Remapping         | ✕         |
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

The XRick core's internal core name is 'xrick'.

## Geometry and timing

- The XRick core's core provided FPS is 25.
- The XRick core's core provided sample rate is 22050.0 Hz.
- The XRick core's core provided aspect ratio is 4/3.
- The XRick core's base width is 801.
- The XRick core's base height is 600.

## Core Options

The Mesen core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Crop Border** [xrick_crop_borders] (**ON**|OFF)
	Remove the 32 pixels of empty padding either side of the game screen. Note: Cheat mode indicators will only be shown if cropping is disabled.

- **Cheats**
	Configure internal trainer/cheat modes provided by the game engine.

	- **Trainer Mode** [xrick_cheat1] (**OFF**|ON)
		Always have 6 bullets, 6 dynamite stick, 6 lives.
	- **Invulnerability Mode** [xrick_cheat2] (**OFF**|ON)
		Nothing can kill Rick. Use with care. May break the game.
	- **Expose Mode** [xrick_cheat3] (**OFF**|ON)
		Highlight all entities on the game map.	

## Controllers

The XRick core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

| RetroPad Inputs                                | XRick core inputs |
|------------------------------------------------|-------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Jump              |
| ![](../image/retropad/retro_dpad_down.png)     | Crouch            |
| ![](../image/retropad/retro_dpad_left.png)     | Left              |
| ![](../image/retropad/retro_dpad_right.png)    | Right             |
| ![](../image/retropad/retro_a.png)             | Attack            |

Supported combinations

- Attack + Left = Stab left using your bayonet
- Attack + Right = Stab right using your bayonet
- Attack + Up = Shoot
- Attack + Down = Drop a bomb

## External Links

- [Official XRick Website](http://www.bigorno.net/xrick/)
- [Libretro XRick Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/xrick_libretro.info)
- [Libretro XRick Github Repository](https://github.com/libretro/xrick-libretro)
- [Report Libretro XRick Core Issues Here](https://github.com/libretro/libretro-meta/issues)