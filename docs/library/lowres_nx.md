# LowRes NX

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/YSSrGT9P_b8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

A port of the LowRes NX fantasy console to libretro. This core represents an imaginary handheld game console inspired by real 8- and 16-bit systems that is intended for simple games that can be programmed in second-generation, structured BASIC. It supports a d-pad, two action buttons and a keyboard for input. The LowRes NX platform comes with a variety of development tools including a Character Designer for editing sprites tile sand fonts, a Background Designer for tile maps and screen layouts and a Sound Composer for music and sound effects.

The LowRes NX core has been authored by

- Timoinutilis

The LowRes NX core is licensed under

- [zlib](https://github.com/timoinutilis/lowres-nx/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the LowRes NX core have the following file extensions:

- .nx

RetroArch database(s) that are associated with the LowRes NX core:

- [LowRes NX](https://github.com/libretro/libretro-database/blob/master/rdb/LowRes%20NX.rdb)

## Features

Frontend-level settings or features that the LowRes NX core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | -         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | -         |
| Disk Control      | ✕         |
| Username          | -         |
| Language          | -         |
| Crop Overscan     | -         |
| LEDs              | -         |


## Geometry and timing

- The LowRes NX core's core provided FPS is 60
- The LowRes NX core's core provided sample rate is 44100 Hz
- The LowRes NX core's base width is 160
- The LowRes NX core's base height is 128
- The LowRes NX core's max width is 160
- The LowRes NX core's max height is 128

## Controllers

### Device types

The LowRes NX core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad

#### Joypad


| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Button 2                 |
| ![](../image/retropad/retro_select.png)        | Button SELECT            |
| ![](../image/retropad/retro_start.png)         | Button START             |
| ![](../image/retropad/retro_dpad_up.png)       | Button UP                |
| ![](../image/retropad/retro_dpad_down.png)     | Button DOWN              |
| ![](../image/retropad/retro_dpad_left.png)     | Button LEFT              |
| ![](../image/retropad/retro_dpad_right.png)    | Button RIGHT             |
| ![](../image/retropad/retro_a.png)             | BUTTON 1                 |


## External Links

- [Official LowRes NX Website](https://lowresnx.inutilis.com)
- [Official LowRes NX Repository](https://github.com/timoinutilis/lowres-nx)
- [Lowres Nx games](https://lowresnx.inutilis.com/programs.php)
- [Libretro LowRes NX Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/lowresnx_libretro.info)
- [Report Libretro LowRes NX Core Issues Here](https://github.com/timoinutilis/lowres-nx/issues)
