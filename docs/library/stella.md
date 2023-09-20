# Atari - 2600 (Stella)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/wQdrwJbxIgk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Stella is a multi-platform Atari 2600 VCS emulator.

### Author/License

The Stella core has been authored by

- Stephen Anthony
- Bradford Mott
- Thomas Jentzsch
- Christian Speckner

The Stella core is licensed under

- [GPLv2](https://github.com/stella-emu/stella/blob/master/License.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Stella core have the following file extensions:

- .a26
- .bin
- .zip

## Databases

RetroArch database(s) that are associated with the Stella core:

- [Atari - 2600](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%202600.rdb)

## Features

Frontend-level settings or features that the Stella core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Stella core's internal core name is 'Stella'

The Stella core saves/loads to/from these directories.

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Stella core's core provided FPS is (FPS)
- The Stella core's core provided sample rate is 31400 Hz
- The Stella core's core provided aspect ratio is 4/3

## Controllers

The Stella core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad - Stay on this
- RetroPad w/Analog - Joypad - There's no reason to switch to this

### Controller tables

#### Joypad

![](../image/controller/atari_2600.png)

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| Fire                     | ![](../image/retropad/retro_b.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Reset                    | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| Left Difficulty A        | ![](../image/retropad/retro_l1.png)         |
| Right Difficulty A       | ![](../image/retropad/retro_r1.png)         |
| Left Difficulty B        | ![](../image/retropad/retro_l2.png)         |
| Right Difficulty B       | ![](../image/retropad/retro_r2.png)         |
| Color                    | ![](../image/retropad/retro_l3.png)         |
| Black/White              | ![](../image/retropad/retro_r3.png)         |

| User 2 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| Fire                     | ![](../image/retropad/retro_b.png)          |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |

## External Links

- [Official Stella Website](https://stella-emu.github.io/)
- [Official Stella Github Repository](https://github.com/stella-emu/stella)
- [Libretro Stella Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/stella_libretro.info)
- [Libretro Stella Github Repository](https://github.com/libretro/stella-libretro)
- [Report Libretro Stella Core Issues Here](https://github.com/libretro/stella-libretro/issues)
