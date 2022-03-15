# VeMUlator

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/hqTm_3elBU4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

VeMUlator is a Sega VMU emulator. This is a port of the Android SEGA Dreamcast VMU emulator "VeMUlator" for libretro, it was translated from Java to C++ and then implemented the libretro.h callbacks.

### Author/License

The VeMUlator core has been authored by

- Mahmoud Jaoune

The VeMUlator core is licensed under

- [GPLv3](https://github.com/MJaoune/vemulator-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the VeMUlator core have the following file extensions:

- .vms
- .dci
- .bin

## Features

Frontend-level settings or features that the VeMUlator core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕[^1]     |
| Screenshots       | ✔        |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔        |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔        |
| Remapping         | -          |
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

[^1]: It will cause a crash.

### Directories

The VeMUlator core's internal core name is 'VeMUlator'

### Geometry and timing

- The VeMUlator core's core provided FPS is 60
- The VeMUlator core's core provided sample rate is 32768 Hz
- The VeMUlator core's core provided aspect ratio is 3/2

## Core options

The VeMUlator core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Enable flash write (.bin, requires restart)** [enable_flash_write] (**enabled**|disabled)

	Self-explanatory.

## Controllers

The VeMUlator core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

| RetroPad Inputs                           | VeMUlator core Inputs |
|-------------------------------------------|-----------------------|
| ![](../image/retropad/retro_a.png)    | A                           |
| ![](../image/retropad/retro_b.png)    | B                           |
| ![](../image/retropad/retro_start.png)      | Start                 |
| ![](../image/retropad/retro_dpad_up.png)    | Up                    |
| ![](../image/retropad/retro_dpad_down.png)  | Down                  |
| ![](../image/retropad/retro_dpad_left.png)  | Left                  |
| ![](../image/retropad/retro_dpad_right.png) | Right                 |

## Compatibility

Known issues:

- Timer problems (Mainly T0, due to lack of documentation of the VMU.)
- Sound not being synchronized with the system.
- Close/restart content will cause crash.

## External Links

- [Official/Libretro VeMUlator Github Repository](https://github.com/MJaoune/vemulator-libretro)
- [Libretro VeMUlator Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/vemulator_libretro.info)
- [Report Libretro VeMUlator Core Issues Here](https://github.com/MJaoune/vemulator-libretro/issues)