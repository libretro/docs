# Bandai - WonderSwan/Color (Beetle Cygne)

## Background

Standalone port of Mednafen WonderSwan to libretro, itself a fork of Cygne.

### Author/License

The Beetle Cygne core has been authored by

- Dox
- [Mednafen Team](https://mednafen.github.io/)

The Beetle Cygne core is licensed under

- [GPLv2](https://github.com/libretro/beetle-wswan-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Beetle Cygne core have the following file extensions:

- .ws
- .wsc
- .pc2 (Benesse Pocket Challenge v2 files)

## Databases

RetroArch database(s) that are associated with the Beetle Cygne core:

- [Bandai - WonderSwan](https://github.com/libretro/libretro-database/blob/master/rdb/Bandai%20-%20WonderSwan.rdb)
- [Bandai - WonderSwan Color](https://github.com/libretro/libretro-database/blob/master/rdb/Bandai%20-%20WonderSwan%20Color.rdb)

## Features

Frontend-level settings or features that the Beetle Cygne core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔ (not link-cable emulation)         |
| Core Options      | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Beetle Cygne core's internal core name is 'Beetle WonderSwan'

The Beetle Cygne core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge backup save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Beetle Cygne core's core provided FPS is 75.47
- The Beetle Cygne core's core provided sample rate is 44100 Hz
- The Beetle Cygne core's core provided aspect ratio is 14/9

## Controllers

The Beetle Cygne core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - There is no reason to switch to this.

### Controller tables

#### Joypad

| User 1 Remap descriptors     | RetroPad Inputs                           |
|------------------------------|-------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)    |
| Rotate screen + active D-Pad | ![](../image/retropad/retro_select.png)     |
| Start                        | ![](../image/retropad/retro_start.png)      |
| X Cursor Up                  | ![](../image/retropad/retro_dpad_up.png)    |
| X Cursor Down                | ![](../image/retropad/retro_dpad_down.png)  |
| X Cursor Left                | ![](../image/retropad/retro_dpad_left.png)  |
| X Cursor Right               | ![](../image/retropad/retro_dpad_right.png) |
| A                            | ![](../image/retropad/retro_a.png)    |
| Y Cursor Left                | ![](../image/retropad/retro_l1.png)         |
| Y Cursor Right               | ![](../image/retropad/retro_r1.png)         |
| Y Cursor Down                | ![](../image/retropad/retro_l2.png)         |
| Y Cursor Up                  | ![](../image/retropad/retro_r2.png)         |

## Compatibility

| Game      | Issue                                                                        |
|-----------|------------------------------------------------------------------------------|
| Tonpuusou | Title screen announcer voice missing. Softlocks after picking a menu option. |

## External Links

- [Official Mednafen Website](https://mednafen.github.io/)
- [Official Mednafen Downloads](https://mednafen.github.io/releases/)
- [Libretro Beetle Cygne Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mednafen_wswan_libretro.info)
- [Libretro Beetle Cygne Github Repository](https://github.com/libretro/beetle-wswan-libretro)
- [Report Libretro Beetle Cygne Core Issues Here](https://github.com/libretro/beetle-wswan-libretro/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IdmXFd9hF4bXjsk_zKwT8Yz)
