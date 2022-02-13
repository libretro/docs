# Nintendo - Game Boy Advance (TempGBA)

## Background

TempGBA is a Gameboy Advance emulator. A fork of the PSP-specific TempGBA emulator for the Game Boy Advance console, ported to libretro. This core is only intended for use on Playstation Portable hardware, and, as a device-optimized fork of gpSP, it is intended to provide a better, more playable experience for GBA games on this low-powered device. Anyone using any other device should stick with the regular gpSP core or--even better--a more accurate core, such as mGBA.

The Meteor core has been authored by

- Exophase
- Takka
- Nebuleon
- Normmatt
- BassAceGold

The Meteor core is licensed under

- [GPLv2](https://github.com/libretro/TempGBA-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! warning
	In order for the BIOS to be used, the 'Use BIOS file if found' core option must be set to On.

|   Filename   |    Description                   |              md5sum              |
|:------------:|:--------------------------------:|:--------------------------------:|
| gba_bios.bin | Game Boy Advance BIOS - Optional | a860e8c0b6d573d191e4ec7db1b1e4f6 |

## Extensions

Content that can be loaded by the Meteor core have the following file extensions:

- gba
- bin
- agb
- gbz

## Databases

RetroArch database(s) that are associated with the TempGBA core:

- [Nintendo - Game Boy Advance](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Advance.rdb)

## Features

Frontend-level settings or features that the Meteor core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Meteor core's internal core name is 'TempGBA'

The Meteor core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Meteor core's core provided FPS is 59.7275005696
- The Meteor core's core provided sample rate is 44100 Hz
- The Meteor core's core provided aspect ratio is 3/2

## Controllers

The Meteor core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/gba.png)

| User 1 Remap descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)    |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)    |
| L                        | ![](../image/retropad/retro_l1.png)         |
| R                        | ![](../image/retropad/retro_r1.png)         |

## Compatibility

Awaiting description.

## External Links

- [Official Meteor Github Repository](https://github.com/blastrock/meteor)
- [Libretro Meteor Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/meteor_libretro.info)
- [Libretro Meteor Github Repository](https://github.com/libretro/meteor-libretro)
- [Report Libretro Meteor Core Issues Here](https://github.com/libretro/meteor-libretro/issues)

### See also

#### Nintendo - Game Boy Advance

- [Nintendo - Game Boy Advance (Beetle GBA)](beetle_gba.md)
- [Nintendo - Game Boy Advance (gpSP)](gpsp.md)
- [Nintendo - Game Boy Advance (mGBA)](mgba.md)
- [Nintendo - Game Boy Advance (meteor)](meteor.md)
- [Nintendo - Game Boy Advance (VBA-M)](vba_m.md)
- [Nintendo - Game Boy Advance (VBA Next)](vba_next.md)