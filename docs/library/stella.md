# Atari - 2600 (Stella)

## Background

Stella is a multi-platform Atari 2600 VCS emulator.

### Author/License

The Stella core has been authored by

- Stephen Anthony
- Bradford Mott
- Eckhard Stolberg
- Brian Watson

The Stella core is licensed under

- [GPLv2](https://github.com/stella-emu/stella/blob/master/License.txt)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Stella core have the following file extensions:

- .a26
- .bin

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
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

![](images/Controllers/atari_2600.png)

| User 1 Remap descriptors | RetroPad Inputs                              |
|--------------------------|----------------------------------------------|
| Fire                     | ![](images/RetroPad/Retro_B_Round.png)       |
| Select                   | ![](images/RetroPad/Retro_Select.png)        |
| Reset                    | ![](images/RetroPad/Retro_Start.png)         |
| Up                       | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| Down                     | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| Left                     | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| Right                    | ![](images/RetroPad/Retro_Dpad_Right.png)    | 
| Left Difficulty A        | ![](images/RetroPad/Retro_L1.png)            |
| Right Difficulty A       | ![](images/RetroPad/Retro_R1.png)            | 
| Left Difficulty B        | ![](images/RetroPad/Retro_L2.png)            |
| Left Difficulty B        | ![](images/RetroPad/Retro_R2.png)            |
| Color                    | ![](images/RetroPad/Retro_L3.png)            |
| Black/White              | ![](images/RetroPad/Retro_R3.png)            |

| User 2 Remap descriptors | RetroPad Inputs                              |
|--------------------------|----------------------------------------------|
| Fire                     | ![](images/RetroPad/Retro_B_Round.png)       |
| Up                       | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| Down                     | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| Left                     | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| Right                    | ![](images/RetroPad/Retro_Dpad_Right.png)    |

## External Links

- [Official Stella Website](https://stella-emu.github.io/)
- [Official Stella Github Repository](https://github.com/stella-emu/stella)
- [Libretro Stella Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/stella_libretro.info)
- [Libretro Stella Github Repository](https://github.com/libretro/stella-libretro)
- [Report Libretro Stella Core Issues Here](https://github.com/libretro/stella-libretro/issues)