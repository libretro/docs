# Super Cassette Vision (EmuSCV) *Not Finished*

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/UZbd3gxj2XU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Super Cassette Vision is a home video game console made by EPOCH CO. and released in Japan on July 17, 1984 and released in Europe (France only) later in 1984 under the YENO brand.

The EmuSCV core has been authored by:
- MARCONATO Maxime
- TAKEDA Toshiya

The EmuSCV core is licensed under [GPLv3](https://github.com/libretro/). A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the EmuSCV core have the following file extensions:

- `.cart` (Native)
- `.bin`
- `.rom`

Supported ROMs extensions: .CART (native), .BIN, .ROM, .0 (.1, .2, .3)
and Zipped Roms (the name of the rom must be the same as the ZIP archive).

All ROMs can be stored in a 1 file ROM (.CART, .BIN, .ROM or .0).
Large ROMs can be stored in multiple files (.0, .1, .2, .3).

## Features

Frontend-level settings or features that the EmuSCV core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | -         |
| States            | -         |
| Rewind            | -         |
| Netplay           | x         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | x         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | x         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | x         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Geometry and timing

- The EmuSCV core's core provided FPS is 60.
- The EmuSCV core's core provided sample rate is 48000/00 Hz.
- The EmuSCV core's base width is 960.
- The EmuSCV core's base height is 720.
- The EmuSCV core's core provided aspect ratio is 4:3.

## Usage

Load any supported content file. Content type will be autodetected, and if possible, started. 

## Core options

The EmuSCV core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.
Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- CONSOLE (**AUTO**|EPOCH|YENO|EPOCHLADY) - forced sleep in main thread for lower CPU use
- DISPLAY (**AUTO**|EMUSCV|EPOCH|YENO)
- PIXELASPECT (**AUTO**|RECTANGULAR|SQUARE) - enable in case of performance problems (has some 

## Control device types

## Joypad

## Keyboard

## BIOS

EmuSCV require a Super Cassette Vision BIOS to run.

There is only one version of the BIOS that can use diferent names:
- upd7801g.s01 (standard)
- upd7801g.bin
- upd7801g.bios
- bios.rom
- bios.bin

MD5: 635a978fd40db9a18ee44eff449fc126

The MD5 Checksum control for the BIOS can be disabled in core options to permit use of custom BIOS.

## External Links


