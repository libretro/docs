# XO-CHIP/CHIP-8 (JAXE) *WIP*

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/DA032CSJLSE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

## Background

A fully-featured, cross platform XO-CHIP/S-CHIP/CHIP-8 emulator written in C. The JAXE core has been authored by

- phcoder (Vladimir Serbinenko)
- kurtjd (Kurtis Dinelle)

The JAXE core is licensed under

- [MIT](https://github.com/kurtjd/jaxe/blob/main/LICENSE)


A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Tecnical Info

The original CHIP-8 virtual machine was designed with the following specs:

- 35 opcodes
- 4kb RAM
- 16 8-bit general purpose registers
- 16-bit program counter, stack pointer, and index registers
- 8-bit delay and sound timer registers
- 64x32 monochrome display
- 16-key keypad (0-F)
- Program memory starting at address 0x200

Due to the way CHIP-8 was designed, the "flicker" that happens when sprites are drawn is normal. Games developed for it also rarely made any attempt to cap their frame rate due to the slow hardware of the time hence the need to artificially slow the CPU down on modern emulators.

In the early 90s, Andreas Gustafsson created a port for the HP48 calculator which was eventually superseded by S-CHIP 1.0/1.1 created by Erik Bryntse. The S-CHIP added several features as well as accidentally (or intentionally?) modifying the behavior of several original opcodes:

- 9 new opcodes
- 128x64 HI-RES display
- Persistent storage
- Modified Bnnn, Fx55, Fx65, Dxyn, 8xy6, and 8xyE instructions

With time, it seems the S-CHIP became more popular and many programs were written to work with its various quirks. Thus, JAXE defaults to original S-CHIP design however many of its quirks can be toggled for improved compatibility using the flags in the Options section below.

However, recently John Earnest designed the XO-CHIP extension allowing CHIP-8 programs to take advantage of modern hardware to an extent. This extension adds several more instructions and features including:

- 7 new opcodes
- 16-bit addressing for a total of ~64kb RAM
- Second display buffer allowing for 4 colors instead of the typical 2
- Improved sound support
- Modified Fx75 and Fx85 instructions to allow for 16 user flags instead of typical 8
- JAXE currently supports all of these extensions.

It should also be noted that JAXE stores its fonts in memory starting at address 0x0000 followed immediately by large fonts and finally immediately by the stack. Therefore the stack pointer initially points to address 0x00F0.

## Extensions

Content that can be loaded by the JAXE core have the following file extensions:

- .ch8
- .sc8
- .xo8

## Databases

RetroArch database(s) that are associated with the JAXE core:

- [CHIP-8](https://github.com/libretro/libretro-database/blob/master/rdb/)

## BIOS

JAXE does not require BIOS (bootrom) files to work.

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔        |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| Softpatching      | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Crop Overscan (in RetroArch's Video settings) | ✕         |

### Directories

The JAXE core's directory name is 'JAXE'

### Core provided aspect ratio

JAXE's core provided aspect ratio is 2/1.

## Core options

The JAXE core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

**Ram init quirk** [] (**ON**|OFF)

**8xy6/8xyE quirk** [] (**ON**|OFF)

**Fx55/Fx65 quirk** [] (**ON**|OFF)

**Bnnn quirk** [] (**ON**|OFF)

**Big Sprite LORES quirk** [] (**ON**|OFF)

**00FE/00FF quirk** [] (**ON**|OFF)

**Sprite Wrapping** [] (**ON**|OFF)

**Collision Enumeration** [] (**ON**|OFF)

**Collision with Bottom of Screen** [] (**ON**|OFF)

**CPU frequency** [] (**1000**|1500|2000|3000|5000|10000|800|750|600|500|400|300)

**Theme** [] (**Default**|Black and white|Inverted black and white|Blood|Hacker|Space|Crazy Orange|Cyberpunk)

## Controllers


### Device types

The JAXE core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table


| User 1 - 1 input descriptors |                                             | RetroPad           |
|------------------------------|---------------------------------------------|--------------------|
| 0                            | ![](../image/retropad/retro_b.png)      | B                  |
| 2                            | ![](../image/retropad/retro_y.png)      | Y                  |
| 1                        | ![](../image/retropad/retro_start.png)        | Start              |
| 5                    | ![](../image/retropad/retro_dpad_up.png)      | D-Pad Up           |
| 8                   | ![](../image/retropad/retro_dpad_down.png)    | D-Pad Down         |
| 7                  | ![](../image/retropad/retro_dpad_left.png)    | D-Pad Left         |
| 9                  | ![](../image/retropad/retro_dpad_right.png)   | D-Pad Right        |
| 6                            | ![](../image/retropad/retro_a.png)      | A                  |
| C                           | ![](../image/retropad/retro_x.png)      | X                  |
| 5                   | ![](../image/retropad/retro_l1.png)           | L          |
| A                   | ![](../image/retropad/retro_r1.png)           | R          |
| B                     | ![](../image/retropad/retro_l2.png)           | L2            |
| D                     | ![](../image/retropad/retro_r2.png)           | R2          |
| E                     | ![](../image/retropad/retro_left_stick.png)  | L3 Button           |
| F                     | ![](../image/retropad/retro_right_stick.png)  | R3 Button          |
                                                                                                   |

## External Links

- [Libretro JAXE Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/jaxe_libretro.info)
- [Libretro JAXE Github Repository](https://github.com/libretro/)
- [Report JAXE Core Issues Here](https://github.com/libretro/)

## CHIP-8

- [CHIP-8 (Emux)](emux_chip8.md)
