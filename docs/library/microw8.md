# MicroW8

## Background

- MicroW8 is a WebAssembly based fantasy console usable for size-coding or larger games.

The MicroW8 core has been authored by

- [Dennis Ranke](https://github.com/exoticorn)
- [Kivutar](https://github.com/kivutar)


The MicroW8 core is licensed under

- [Unlicense](https://github.com/libretro/uw8-libretro/blob/main/UNLICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the MicroW8 core have the following file extensions:

- .uw8
- .wasm

RetroArch database(s) that are associated with the MicroW8 core:

- [MicroW8](https://github.com/libretro/libretro-database/blob/master/rdb/MicroW8.rdb)

## Features

Frontend-level settings or features that the MicroW8 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✕         |
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

## Geometry and timing

- The MicroW8 core's core provided FPS is 60.
- The MicroW8 core's core provided sample rate is 44100.
- The MicroW8 core's base width is 320.
- The MicroW8 core's base height is 240.
- The MicroW8 core's max width is 320.
- The MicroW8 core's max height is 240.
- The MicroW8 core's core provided aspect ratio is 4/3.

## User 1 device types

The MicroW8 core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Doesn't disable input.
- **RetroPad**


## Joypad

| RetroPad Inputs                                | MicroW8 inputs           |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
| ![](../image/retropad/retro_x.png)             | Button X                 |
| ![](../image/retropad/retro_y.png)             | Button Y                 |
| ![](../image/retropad/retro_a.png)             | Button A                 |
| ![](../image/retropad/retro_b.png)             | Button B                 |

## External Links

- [Official Website](https://exoticorn.github.io/microw8)
- [Libretro MicroW8 core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/uw8_libretro.info)
- [Libretro MicroW8 repository](https://github.com/libretro/uw8-libretro)
- [Report Libretro MicroW8 core issues here](https://github.com/libretro/uw8-libretro/issues)
- [MicroW8 games](https://itch.io/games/tag-microw8)