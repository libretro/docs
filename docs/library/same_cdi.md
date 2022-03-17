# Arcade (SAME_CDI) *WIP*

## Background

SAME CDi is a S(ingle) A(rcade) M(achine) E(mulator) for libretro, forked from MAME libretro, which is in turn a fork of MAME. It includes only the Philips CD-i driver, and simplifies the loading of CD content to provide a 'plug and play' experience.

The SAME_CDI core has been authored by

- zach-morris

The SAME_CDI core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).


## Extensions

Content that can be loaded by the SAME_CDI core have the following file extensions:

- .chd
- .iso

## Databases

RetroArch database(s) that are associated with the SAME_CDI core:

- [SAME_CDI](https://github.com/libretro/libretro-database/blob/master/rdb/MAME.rdb)

## BIOS

SAME_CDI does require BIOS (bootrom) files to work. You'll need to have following directory under retroarch system folder and put bios files: `../same_cdi/bios/`

|   Filename      |      Description       |
|:---------------:|:----------------------:|
| cdibios.zip | cdi200.rom, cdi220b.rom and zx405042p__cdi_slave_2.0__b43t__zzmk9213.mc68hc705c8a_withtestrom.7206  |
| cdimono1.zip     | cdi200.rom, cdi220.rom, cdi220b.rom, zx405037p__cdi_servo_2.1__b43t__llek9215.mc68hc705c8a_withtestrom.7201 and zx405042p__cdi_slave_2.0__b43t__zzmk9213.mc68hc705c8a_withtestrom.7206 |
| cdimono2    | philips__cdi-220_ph3_r1.2__mb834200b-15__02f_aa__9402_z04.tc574200-le._1.7211, zc405351p__servo_cdi_4.1__0d67p__lluk9404.mc68hc705c8a.7490 and zc405352p__slave_cdi_4.1__0d67p__lltr9403.mc68hc705c8a.7206  |

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔          |
| States            | ✕         |
| Rewind            | ✕        |
| Netplay           | ✕         |
| Core Options      | ✔         |
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
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Crop Overscan (in RetroArch's Video settings) | ✕         |

### Directories

The SAME_CDI core's doesn't create any directory.

### Geometry and timing

SAME_CDI's core provided aspect ratio is 1/1.

## Core options *WIP*


## Controllers *WIP*


### Device types

The SAME_CDI core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table


| RetroPad Inputs                                | User 1 - 5 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | Z                            |
| ![](../image/retropad/retro_a.png)             | X                            |
| ![](../image/retropad/retro_x.png)             | S                            |
| ![](../image/retropad/retro_y.png)             | A                            |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  |

## External Links

- [Libretro SAME_CDI Core info file](https://github.com/libretro/same_cdi/blob/master/same_cdi_libretro.info)
- [Libretro SAME_CDI Github Repository](https://github.com/libretro/same_cdi)
- [Report SAME_CDI Core Issues Here](https://github.com/libretro/same_cdi/issues)

### See also

- [MAME 2003](mame_2003.md)
- [MAME 2003 Plus](mame2003_plus.md)
- [MAME 2010](mame_2010.md)