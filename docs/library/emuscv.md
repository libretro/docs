# Super Cassette Vision (EmuSCV)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/UZbd3gxj2XU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Super Cassette Vision is a home video game console made by EPOCH CO. and released in Japan on July 17, 1984. It was released in France later in 1984 under the YENO brand. The two machines differ in more than their badge: the French one runs at 50 Hz and its CPU is slower in the same proportion, so the core emulates them as separate consoles rather than as one console with two frame rates.

The EmuSCV core has been authored by:

- MARCONATO Maxime
- TAKEDA Toshiya

The EmuSCV core is licensed under [GPLv3](https://github.com/libretro/). A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the EmuSCV core have the following file extensions:

- `.cart` (Native)
- `.bin`
- `.rom`
- `.0` (with `.1`, `.2`, `.3` beside it)
- `.zip`

A cartridge dumped in one piece loads from its `.cart`, `.bin`, `.rom` or `.0` file. A cartridge dumped in several pieces loads from its `.0` file, and the core reads the other parts from the same directory.

Inside a zip archive, the ROM file must carry the same name as the archive.

`.cart` is the core's own format: a 32 byte header followed by the ROM data. The header records how the cartridge wires its banks and whether it carries RAM, which a raw dump cannot express. When content is loaded from any other format, the core writes the converted `.cart` into the save directory, so a `.cart` file appearing there after a launch is expected.

## Features

Frontend-level settings or features that the EmuSCV core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
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

Cartridge RAM is not exposed to the frontend, so RetroArch does not manage it. The core writes it itself, in a `.save` file beside the converted cartridge, which is why **Saves** is marked unsupported while battery-backed cartridges still keep their contents.

Rewind and fast forward both work, and are in daily use on the distributions that ship this core. Rewind steps back through save states; fast forward simply runs the core more often.

## Geometry and timing

- The EmuSCV core's core provided FPS is 60, or 50 when the YENO console is emulated.
- The EmuSCV core's core provided sample rate is 44100 Hz.
- The EmuSCV core's core provided aspect ratio is 4:3.

The frame buffer size depends on the RESOLUTION and DISPLAY options, so there is no single base width and height. With the default DISPLAY setting the three resolutions give 288x216, 576x432 and 1152x864. The EPOCH and YENO framings are wider, 1200x900 and 1408x1056 at the highest resolution.

## Usage

Load any supported content file. Content type will be autodetected, and if possible, started.

The core also starts with no content at all, on a screen that reports the state of the emulated machine. This is the same screen a real console shows without a cartridge.

## Core options

The EmuSCV core has the following options that can be tweaked from the core options menu. The default setting is bolded.

- CONSOLE (**AUTO**|EPOCH|YENO|EPOCHLADY) - which machine to emulate. YENO is the French console, which runs at 50 Hz with a proportionally slower CPU. EPOCHLADY emulates the same machine as EPOCH, with its own logo and keypad artwork. AUTO uses EPOCH.
- DISPLAY (**AUTO**|EMUSCV|EPOCH|YENO) - the visible area. EPOCH and YENO reproduce the framing of each real console, edge artefacts included. EMUSCV is a third framing, chosen by the author rather than taken from hardware, which trims those artefacts across the whole game library; it is the default.
- PIXELASPECT (**AUTO**|RECTANGULAR|SQUARE) - the console's pixels are not square. RECTANGULAR reproduces their real shape, SQUARE draws them square.
- RESOLUTION (**AUTO**|LOW|MEDIUM|HIGH) - internal render scale. AUTO is fixed when the core is built, so its value depends on the platform.
- PALETTE (**AUTO**|STANDARD|OLDNTSC) - colour table. OLDNTSC uses the warmer set an early NTSC set would show.
- FPS (**AUTO**|EPOCH60|YENO50) - frame rate, when it needs to be forced independently of the console setting.
- DISPLAYFULLMEMORY (**AUTO**|YES|NO) - draws the whole video memory instead of the area a television would show, borders included.
- DISPLAYINPUTS (**AUTO**|YES|NO) - overlays the state of the two controllers.
- LANGAGE (**AUTO**|JP|FR|EN) - language of the core's own screens.
- CHECKBIOS (**AUTO**|YES|NO) - whether to verify the BIOS checksum before starting.

## Control device types

## Joypad

## Keyboard

The console has a numeric keypad, which the core reaches through an on-screen overlay. SELECT opens and closes it.

## BIOS

EmuSCV require a Super Cassette Vision BIOS to run.

There is only one version of the BIOS that can use different names:

- upd7801g.s01 (standard)
- upd7801.s01
- upd7801g.bin
- upd7801g.bios
- bios.rom
- bios.bin

MD5: 635a978fd40db9a18ee44eff449fc126

The MD5 Checksum control for the BIOS can be disabled in core options to permit use of custom BIOS.

## External Links
