# Game Boy/Game Boy Color (Emux GB) *WIP*

## Background

Emux is a cross-platform emulator project with a goal of emulating multiple kinds of machines related to gaming, such as consoles or arcades. Its philosophy is very much inspired by the Linux kernel (hence the name), which brilliantly manages to support multiple machines while keeping drivers entirely platform-independent. Emux is designed in the same way, keeping a code base of CPUs and controllers separate from machines.

The Emux GB core has been authored by

- Sebastien Ronsse

The Emux GB core is licensed under

- [GPLv2](https://github.com/libretro/emux/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Emux GB core have the following file extensions:

- .gb
- .bin
- .rom

## Databases

RetroArch database(s) that are associated with the Emux GB core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

## BIOS

Required or optional firmware files go in RetroArch's system directory.

|   Filename    |    Description                 |              md5sum              |
|:-------------:|:------------------------------:|:--------------------------------:|
| dmg_boot.bin   | Game Boy Boot ROM - Required   | 32fbbd84168d3482956eb3c5051637f5 |

## Features

RetroArch-level settings or features that the Emux GB core respects.

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
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |

### Directories

The Emux GB core's directory name is 'emux (gb)'

### Geometry and timing

- The Emux GB core's internal FPS is (FPS)
- The Emux GB core's internal sample rate is (Rate)
- The Emux GB core's core provided aspect ratio is (Ratio)

## Controllers

### Device types

The Emux GB core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There is no reason to switch to this.

### Controller tables

#### Joypad and analog device type table

| User 1 Input descriptors      | RetroPad Inputs                              | RetroPad           |
|-------------------------------|----------------------------------------------|--------------------|
|                               | ![](../image/retropad/retro_b.png)       | B                  |
|                               | ![](../image/retropad/retro_select.png)        | Select             |
|                               | ![](../image/retropad/retro_start.png)         | Start              |
|                               | ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up           |
|                               | ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down         |
|                               | ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left         |
|                               | ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right        |
|                               | ![](../image/retropad/retro_a.png)       | A                  |

## Compatibility

Awaiting description.

## External Links

- [Libretro Emux GB Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/emux_gb_libretro.info)
- [Libretro Emux GB Github Repository](https://github.com/libretro/emux)
- [Report Libretro Emux GB Core Issues Here](https://github.com/libretro/libretro-meta/issues)
- [Official Emux GB Github Repository](https://github.com/sronsse/emux)

### See also

#### Nintendo - Game Boy (+ Color)

- [Nintendo - Game Boy / Color (Gambatte)](gambatte.md)
- [Nintendo - Game Boy / Color (Gearboy)](gearboy.md)
- [Nintendo - Game Boy / Color (SameBoy)](sameboy.md)
- [Nintendo - Game Boy / Color (TGB Dual)](tgb_dual.md)
- [Nintendo - Game Boy Advance (mGBA)](mgba.md)
- [Nintendo - Game Boy Advance (VBA-M)](vba_m.md)
- [Nintendo - SNES / Famicom (higan Accuracy)](higan_accuracy.md)
- [Nintendo - SNES / Famicom (nSide Balanced)](nside_balanced.md)
- [Nintendo - SNES / Famicom (Mesen-S)](mesen-s.md)