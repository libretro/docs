# Nintendo - NES / Famicom (bnes)

## Background

A port of bNES v083 to libretro.

### Author/License

The bnes core has been authored by

- byuu
- Ryphecha

The bnes core is licensed under

- [GPLv3](https://github.com/libretro/bnes-libretro/blob/master/license)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the bnes core have the following file extensions:

- .nes

## Databases

RetroArch database(s) that are associated with the bnes core:

- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)

## Features

Frontend-level settings or features that the bnes core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The bnes core's directory name is 'bnes'

The bnes core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The bnes core's core provided FPS is 60
- The bnes core's core provided sample rate is 32000 Hz
- The bnes core's core provided aspect ratio is 16/15

## Controllers

The bnes core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There is no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/nes.png)

| User 1 - 2 Remap descriptors | RetroPad Inputs                           |
|------------------------------|-------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)    |
| Select                       | ![](../image/retropad/retro_select.png)     |
| Start                        | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png) |
| A                            | ![](../image/retropad/retro_a.png)    |

## Compatibility

| Game                         | Issue                                          |
|------------------------------|------------------------------------------------|
| Crisis Force                 | Graphical glitches. (1)                        |
| Huge Insect                  | No enemies spawn.                              |
| Lagrange Point               | No music.                                      |
| Ms. Pac-Man (Tengen version) | Graphical glitches on the sides of the screen. |
| Skull & Crossbones           | Crashes on start.                              |

??? note "(1)"
    ![](../image/core/bnes/crisisforce.png)

## External Links

- [Official higan Website](https://byuu.org/)
- [Official higan Downloads](https://byuu.org/emulation/higan/)
- [Libretro bnes Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/bnes_libretro.info)
- [Libretro bnes Github Repository](https://github.com/libretro/bnes-libretro)
- [Report Libretro bnes Core Issues Here](https://github.com/libretro/bnes-libretro/issues)

### See also

#### Nintendo - Nintendo Entertainment System

- [Nintendo - NES / Famicom (Emux NES)](emux_nes.md)
- [Nintendo - NES / Famicom (FCEUmm)](fceumm.md)
- [Nintendo - NES / Famicom (Mesen)](mesen.md)
- [Nintendo - NES / Famicom (Nestopia)](nestopia.md)
- [Nintendo - NES / Famicom (QuickNES)](quicknes.md)
