# Magnavox - Odyssey2 / Phillips Videopac+ (O2EM)

## Background

O2EM is an open source multi-platform Odyssey2 / Videopac+ emulator. The Odyssey2 (Videopac/Jopac in Europe) was a video game console created in the late 70s.

The O2EM core has been authored by

- Daniel Boris
- Andre de la Rocha
- Arlindo M. de Oliveira

The O2EM core is licensed under

- [Artistic License](https://sourceforge.net/projects/o2em/)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename   | Description                                      |              md5sum              |
|:----------:|:------------------------------------------------:|:--------------------------------:|
| o2rom.bin  | Odyssey2 BIOS - G7000 model - Required           | 562d5ebf9e030a40d6fabfc2f33139fd |
| c52.bin    | Videopac+ French BIOS - G7000 model - Required   | f1071cdb0b6b10dde94d3bc8a6146387 |
| g7400.bin  | Videopac+ European BIOS - G7400 model - Required | c500ff71236068e0dc0d0603d265ae76 |
| jopac.bin  | Videopac+ French BIOS - G7400 model - Required   | 279008e4a0db2dc5f1c048853b033828 |

## Extensions

Content that can be loaded by the O2EM core have the following file extensions:

- .bin

RetroArch database(s) that are associated with the O2EM core:

- [Magnavox - Odyssey2](https://github.com/libretro/libretro-database/blob/master/rdb/Magnavox%20-%20Odyssey2.rdb)
- [Phillips - Videopac+](https://github.com/libretro/libretro-database/blob/master/rdb/Philips%20-%20Videopac%2B.rdb)

## Features

Frontend-level settings or features that the O2EM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay           | ✕         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The O2EM core's library name is 'O2EM'

## Geometry and timing

- The O2EM core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The O2EM core's core provided sample rate is 44100 Hz
- The O2EM core's base width is 340
- The O2EM core's base height is 250
- The O2EM core's max width is 340
- The O2EM core's max height is 250
- The O2EM core's core provided aspect ratio is 4/3

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_y.png)             | 1                        |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_a.png)             | Fire                     |
| ![](../image/retropad/retro_x.png)             | 2                        |
| ![](../image/retropad/retro_l1.png)            | 3                        |
| ![](../image/retropad/retro_r1.png)            | 4                        |

| RetroPad Inputs                                | User 2 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_a.png)             | Action                   |

## Keyboard

| RetroKeyboard Inputs         | O2EM Inputs |
|------------------------------|-------------|
| Keyboard Return              | Enter       |
| Keyboard Space               | Space       |
| Keyboard Minus -             | -           |
| Keyboard Period .            | .           |
| Keyboard Slash /             | /           |
| Keyboard 0                   | 0           |
| Keyboard 1                   | 1           |
| Keyboard 2                   | 2           |
| Keyboard 3                   | 3           |
| Keyboard 4                   | 4           |
| Keyboard 5                   | 5           |
| Keyboard 6                   | 6           |
| Keyboard 7                   | 7           |
| Keyboard 8                   | 8           |
| Keyboard 9                   | 9           |
| Keyboard Equals =            | =           |
| Keyboard Question ?          | ?           |
| Keyboard a                   | a           |
| Keyboard b                   | b           |
| Keyboard c                   | c           |
| Keyboard d                   | d           |
| Keyboard e                   | e           |
| Keyboard f                   | f           |
| Keyboard g                   | g           |
| Keyboard h                   | h           |
| Keyboard i                   | i           |
| Keyboard j                   | j           |
| Keyboard k                   | k           |
| Keyboard l                   | l           |
| Keyboard m                   | m           |
| Keyboard n                   | n           |
| Keyboard o                   | o           |
| Keyboard p                   | p           |
| Keyboard q                   | q           |
| Keyboard r                   | r           |
| Keyboard s                   | s           |
| Keyboard t                   | t           |
| Keyboard u                   | u           |
| Keyboard v                   | v           |
| Keyboard w                   | w           |
| Keyboard x                   | x           |
| Keyboard y                   | y           |
| Keyboard z                   | z           |
| Keyboard End                 | Clear       |

## External Links

- [Official O2EM Website](http://o2em.sourceforge.net/)
- [Official O2EM SourceForge Repository](https://sourceforge.net/projects/o2em/)
- [Libretro O2EM Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/o2em_libretro.info)
- [Libretro O2EM Github Repository](https://github.com/libretro/libretro-o2em)
- [Report Libretro O2EM Core Issues Here](https://github.com/libretro/libretro-o2em/issues)