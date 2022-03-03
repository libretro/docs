# Mega Duck / Cougar Boy (SameDuck)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/TAb45kwAgek" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

An adaptation of SameDuck to play Mega Duck games.

### Author/License

The SameDuck core has been authored by

- LIJI32

The SameDuck core is licensed under

- [MIT](https://github.com/libretro)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the SameDuck core have the following file extensions:

- .bin

## Databases *WIP*

RetroArch database(s) that are associated with the SameDuck core:

- [Mega Duck / Cougar Boy ](https://github.com/libretro/libretro-database/blob/master/rdb/)


## BIOS

SameDuck does not require BIOS (bootrom) files to work.

## Features

Frontend-level settings or features that the SameDuck core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕          |
| Core Options      | ✔         |
| RetroAchievements | ✕          |
| RetroArch Cheats  | ✕          |
| Native Cheats     | ✕          |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕          |
| Rumble            | ✔         |
| Sensors           | ✕          |
| Camera            | ✕          |
| Location          | ✕          |
| Subsystem         | ✔         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕          |
| Username          | ✕          |
| Language          | ✕          |
| Crop Overscan     | ✕          |
| LEDs              | ✕          |

### Directories

The SameDuck core's internal core name is 'SameDuck'

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The SameDuck core's core provided FPS is 59.7275 FPS
- The SameDuck core's core provided sample rate is 384000.00 Hz
- The SameDuck core's core provided aspect ratio is 10:9

## Link

Link cable emulation is supported in single-cart mode and in dual-cart mode.
To use it in single-cart mode enable the **Single cart dual mode** option under options and reload the content

## Core options

The SameDuck core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Color correction** [SameDuck_color_correction_mode] (off|correct curves|**emulate hardware**|preserve brightness|reduce contrast)

- **High-pass filter** [SameDuck_high_pass_filter_mode] (off|**accurate**|remove dc offset)

- **Enable Rumble** (**All Games**|never)


## Controllers

The SameDuck core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- Nintendo Game Boy - Joypad - Same as RetroPad. There's no reason to switch to this.

### Rumble support

Rumble only works in the SameDuck core when

- The content being ran has rumble support.
- The frontend being used has rumble support.
- The joypad device being used has rumble support.

### Controller tables

#### Joypad

![](../image/controller/gb.png)

| User 1 - 2 Remap descriptors | RetroPad Inputs                           |
|------------------------------|-------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)    |
| Select                       | ![](../image/retropad/retro_select.png)     |
| Start                        | ![](../image/retropad/retro_start.png)      |
| Up                           | ![](../image/retropad/retro_dpad_up.png)    |
| Down                         | ![](../image/retropad/retro_dpad_down.png)  |
| Left                         | ![](../image/retropad/retro_dpad_left.png)  |
| Right                        | ![](../image/retropad/retro_dpad_right.png) |
| A                            | ![](../image/retropad/retro_a.png)    |

## External Links

- [Official SameDuck Github Repository](https://github.com/LIJI32/SameBoy/tree/SameDuck)
- [Libretro SameDuck Core info file](https://github.com/libretro/libretro-core-info/blob/master/sameduck_libretro.info)