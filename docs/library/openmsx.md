# Microsoft - MSX/MSX2/MSX2+/turbo R (openMSX)

## Background

A libretro core of [openMSX](https://openmsx.org), the MSX emulator that aims for perfection. It emulates the MSX1, MSX2, MSX2+ and turbo R computers, with C-BIOS machines that need no other BIOS and many real machines with their own ROMs, and extensions such as Konami's SCC, the FM-PAC, MSX-Audio, MoonSound and the GFX9000. It is preliminary.

The core is built for Linux (x86_64, aarch64), Windows (x64), macOS (Apple Silicon, Intel) and Android (arm64-v8a, Software video output only).

The openMSX core has been authored by

- openMSX team
- WizzardSK

The openMSX core is licensed under

- [GPLv2](https://github.com/WizzardSK/openmsx-libretro/blob/libretro/doc/GPL.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

None needed to start: the core carries openMSX's machines, extensions and scripts with the C-BIOS ROMs, and writes them to `system/openmsx/share` at its first start (and again after an update of the core, over its own files only). A real MSX machine (core option Machine) needs its system ROMs in `system/openmsx/share/systemroms`, otherwise C-BIOS MSX2+ starts instead; openMSX finds them there by their contents, whatever their names.

## Extensions

Content that can be loaded by the openMSX core have the following file extensions:

- .rom, .ri, .mx1, .mx2, .col, .sg, .sc (cartridges)
- .dsk, .di1, .di2, .dmk, .xsa (disk images)
- .cas, .wav (cassettes)
- .m3u (lists of disks)
- .zip, .gz

Disk images need a machine with a disk drive; the C-BIOS machines have none. Cassettes need a machine with BASIC.

## Features

Frontend-level settings or features that the openMSX core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           |     ✔     |
| Screenshots       |     ✔     |
| Saves             |     ✕     |
| States            |     ✔     |
| Rewind            |     ✔     |
| Netplay           |     ✕     |
| Core Options      |     ✔     |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) |     ✕     |
| RetroArch Cheats  |     ✕     |
| Native Cheats     |     ✕     |
| Controls          |     ✔     |
| Remapping         |     ✔     |
| Multi-Mouse       |     ✕     |
| Rumble            |     ✕     |
| Sensors           |     ✕     |
| Camera            |     ✕     |
| Location          |     ✕     |
| Subsystem         |     ✕     |
| [Softpatching](../guides/softpatching.md) |     ✕     |
| Disk Control      |     ✔     |
| Username          |     ✕     |
| Language          |     ✕     |
| Crop Overscan     |     ✔     |
| LEDs              |     ✕     |

A savestate loads only into the build of the core that made it. Run-ahead works. A cartridge's SRAM and the machine's settings are kept in RetroArch's save directory, in `openmsx/`.

## Directories

The openMSX core's library name is 'openMSX'.

**Frontend's System directory**

- `openmsx/share/` (openMSX's machines, extensions, scripts and the C-BIOS ROMs, written by the core)
- `openmsx/share/systemroms/` (real machines' and extensions' system ROMs)

**Frontend's Save directory**

- `openmsx/` (openMSX's user folder: SRAM, settings)

## Core options

The openMSX core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

The MSX machine and the cartridges in its slots. Changes take effect when the content is loaded again.

- **Machine (Restart)** [openmsx_machine] (C-BIOS MSX1|C-BIOS MSX1 (Europe)|C-BIOS MSX1 (Japan)|C-BIOS MSX2|C-BIOS MSX2 (Europe)|C-BIOS MSX2 (Japan)|**C-BIOS MSX2+**|C-BIOS MSX2+ (Europe)|C-BIOS MSX2+ (Japan)|Philips VG-8020 (MSX1, Europe)|Sony HB-75P (MSX1, Europe)|Toshiba HX-10 (MSX1, UK)|Yamaha CX5M (MSX1, Europe)|Philips NMS 8245 (MSX2, Europe)|Philips NMS 8250 (MSX2, Europe)|Sony HB-F700P (MSX2, Europe)|Sony HB-F1XD (MSX2, Japan)|Sony HB-F1XV (MSX2+, Japan)|Panasonic FS-A1WSX (MSX2+, Japan)|Panasonic FS-A1ST (turbo R, Japan)|Panasonic FS-A1GT (turbo R, Japan))

    The MSX computer to emulate. The C-BIOS machines need nothing else; a real machine needs its system ROMs in `<system>/openmsx/share/systemroms`, otherwise C-BIOS MSX2+ starts instead. Europe and the UK run at 50 Hz.

- **Extension 1** to **Extension 10 (Restart)** [openmsx_ext1] to [openmsx_ext10] (**None**, or one of openMSX's extensions, by maker and name: Konami SCC and SCC+, Panasoft FMPAC, Sunrise MoonSound, GFX9000 and ATA-IDE, memory mappers, disk drives, MSX-DOS 2 and many more)

    A cartridge or device in a free slot, as openMSX's `-ext`. Some need their ROMs in `<system>/openmsx/share/systemroms`. The extension options are shown up to the last one in use, and as many as the machine has free slots for.

#### Video

The size of the picture and its border.

- **Resolution** [openmsx_scale] (Auto|1x (320x240)|**2x (640x480)**|3x (960x720)|4x (1280x960))

    The size openMSX draws the picture at, borders included: 320x240 times this. Auto follows the screen mode: 1x for the 256 pixel wide modes, 2x for the 512 wide and interlaced ones.

- **Video Output (Restart)** [openmsx_video_output] (**Software**|OpenGL)

    Software hands RetroArch the picture as pixels, for any video driver. OpenGL draws through RetroArch's OpenGL context (the `gl` or `glcore` video driver), with openMSX's own scalers and effects. Android has Software only.

- **Crop Overscan** [openmsx_crop_overscan] (**Disabled**|Enabled)

    Shows only the part of the screen the MSX displays on, without its border; the size follows the screen mode.

- **Pixel Aspect Ratio** [openmsx_pixel_aspect] (**TV**|Square)

    TV: the picture as wide as on a TV, as openMSX shows it. Square: each pixel as wide as it is tall.

## Controllers

The device for each port is chosen in Controls > Port 1/2 Controls > Device Type:

- **MSX Joystick** (default): D-pad or left stick, A and B are triggers A and B; ports 1 and 2 are the MSX's two joystick ports.
- **Cursor Keys**: for games played on the keyboard: the D-pad presses the cursor keys, A presses Space and B presses M.
- **MSX Mouse**: RetroArch's mouse.
- **Arkanoid Vaus Paddle**: turned by the mouse's horizontal motion, the left button fires.
- **Keyboard**: nothing in the MSX port; the port's pad buttons can be remapped to keyboard keys.
- **None**

With either RetroPad device, X presses Space, Y Return, Start F1, Select F5, L Esc and R Shift. L3 on port 1 shows the machine's details over the picture (Software output). A keyboard works as the MSX keyboard.

## External Links

- [openMSX Core info file](https://github.com/WizzardSK/openmsx-libretro/blob/libretro/openmsx_libretro.info)
- [openMSX libretro GitHub Repository](https://github.com/WizzardSK/openmsx-libretro)
- [Report openMSX Core Issues Here](https://github.com/WizzardSK/openmsx-libretro/issues)
- [Upstream openMSX](https://github.com/openMSX/openMSX)
- [openMSX Website](https://openmsx.org)
