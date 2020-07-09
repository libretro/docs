# Sega - Master System (Emux SMS)

## Background

Emux is a cross-platform emulator project with a goal of emulating multiple kinds of machines related to gaming, such as consoles or arcades. Its philosophy is very much inspired by the Linux kernel (hence the name), which brilliantly manages to support multiple machines while keeping drivers entirely platform-independent. Emux is designed in the same way, keeping a code base of CPUs and controllers separate from machines.

### Author/License

The Emux SMS core has been authored by

- Sebastien Ronsse

The Emux SMS core is licensed under

- [GPLv2](https://github.com/libretro/emux/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Emux SMS core have the following file extensions:

- .sms
- .bin
- .rom

## Databases

RetroArch database(s) that are associated with the Emux SMS core:

- [Sega - Master System - Mark III](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Master%20System%20-%20Mark%20III.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename | Description                   | md5sum                           |
|:--------:|:-----------------------------:|:--------------------------------:|
| bios.sms | Master System BIOS - Required | 840481177270d5642a14ca71ee72844c |

## Features

Frontend-level settings or features that the Emux SMS core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
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

### Directories

The Emux SMS core's internal core name is 'emux (sms)'

### Geometry and timing

- The Emux SMS core's core provided FPS is (FPS)
- The Emux SMS core's core provided sample rate is (Rate)
- The Emux SMS core's core provided aspect ratio is (Ratio)

## Controllers

The Emux SMS core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't diable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/sms.png)

| RetroPad Inputs                           | Emux SMS core Inputs |
|-------------------------------------------|----------------------|
| ![](../image/retropad/retro_b.png)    | 1                    |
| ![](../image/retropad/retro_start.png)      | Pause                |
| ![](../image/retropad/retro_dpad_up.png)    | D-Pad Up             |
| ![](../image/retropad/retro_dpad_down.png)  | D-Pad Down           |
| ![](../image/retropad/retro_dpad_left.png)  | D-Pad Left           |
| ![](../image/retropad/retro_dpad_right.png) | D-Pad Right          |
| ![](../image/retropad/retro_a.png)    | 2                    |

## External Links

- [Official Emux SMS Github Repository](https://github.com/sronsse/emux)
- [Libretro Emux SMS Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/emux_sms_libretro.info)
- [Libretro Emux SMS Github Repository](https://github.com/libretro/emux)
- [Report Libretro Emux SMS Core Issues Here](https://github.com/libretro/libretro-meta/issues)

### See also

#### Sega - Master System - Mark III

- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)
- [Sega - MS/MD/CD/32X (PicoDrive)](picodrive.md)