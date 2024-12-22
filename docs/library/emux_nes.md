# Nintendo - NES / Famicom (Emux NES)

## Background

Emux is a cross-platform emulator project with a goal of emulating multiple kinds of machines related to gaming, such as consoles or arcades. Its philosophy is very much inspired by the Linux kernel (hence the name), which brilliantly manages to support multiple machines while keeping drivers entirely platform-independent. Emux is designed in the same way, keeping a code base of CPUs and controllers separate from machines.

### Author/License

The Emux NES core has been authored by

- Sebastien Ronsse

The Emux NES core is licensed under

- [GPLv2](https://github.com/libretro/emux/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Emux NES core have the following file extensions:

- .nes
- .bin
- .rom

## Databases

RetroArch database(s) that are associated with the Emux NES core:

- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)

## Features

Frontend-level settings or features that the Emux NES core respects.

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

The Emux NES core's internal core name is 'emux (nes)'

### Geometry and timing

- The Emux NES core's core provided FPS is (FPS)
- The Emux NES core's core provided sample rate is (Rate)
- The Emux NES core's core provided aspect ratio is (Ratio)

## Controllers

The Emux NES core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/nes.png)

| RetroPad Inputs                              | Emux NES core Inputs |
|----------------------------------------------|----------------------|
| ![](../image/retropad/retro_b.png)       | B                    |
| ![](../image/retropad/retro_select.png)        | Select               |
| ![](../image/retropad/retro_start.png)         | Start                |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up             |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down           |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left           |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right          |
| ![](../image/retropad/retro_a.png)       | A                    |

## Compatibility

Awaiting description.

## External Links

- [Official Emux GB Github Repository](https://github.com/sronsse/emux)
- [Libretro Emux GB Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/emux_gb_libretro.info)
- [Libretro Emux GB Github Repository](https://github.com/libretro/emux)
- [Report Libretro Emux GB Core Issues Here](https://github.com/libretro/libretro-meta/issues)

### See also

#### Nintendo - Nintendo Entertainment System

- [Nintendo - NES / Famicom (bnes)](bnes.md)
- [Nintendo - NES / Famicom (FCEUmm)](fceumm.md)
- [Nintendo - NES / Famicom (Mesen)](mesen.md)
- [Nintendo - NES / Famicom (Nestopia)](nestopia.md)
- [Nintendo - NES / Famicom (QuickNES)](quicknes.md)
