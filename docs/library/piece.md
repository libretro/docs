---
title: "piece-emu – Aquaplus P/ECE core for RetroArch"
description: "RetroArch piece-emu core (Aquaplus P/ECE): how to prepare .pfi content, save data, core options and controls. piece-emu emulates the Aquaplus P/ECE handheld, a Japanese homebrew-oriented portable from 2001."
---

# Aquaplus - P/ECE (piece-emu)

## Background

The [P/ECE](https://aquaplus.jp/piece/) (pronounced "piece") is a handheld game console released by Aquaplus in Japan in 2001. It is built around the EPSON S1C33209 SoC (S1C33000 32-bit RISC CPU core) and has a 128×88 four-level grayscale LCD, a D-pad, A/B/START/SELECT buttons, PWM sound and a USB connection to a PC. Aquaplus published the development kit and the kernel source, so most P/ECE software is homebrew distributed by its authors as `.pex` application files.

piece-emu is a P/ECE emulator written in C++. It emulates the S1C33000 CPU, the S1C33209 on-chip peripherals, the LCD controller and the NOR flash, and boots the real P/ECE kernel from a flash image. The libretro core is part of the piece-emu project.

The piece-emu core has been authored by:

- Autch

The piece-emu core is licensed under:

- [MIT](https://github.com/autch/piece-emu/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

None.

## How to start the piece-emu core:

The content for this core is a `.pfi` (P/ECE Flash Image) file: a complete image of the P/ECE flash memory that contains the kernel (system software) and the applications installed in the on-flash file system (PFFS). There is no separate BIOS.

A `.pfi` is not a per-title ROM. It is closer to the hard disk image of a computer core: the user assembles it, and a single image holds the system plus any number of applications. P/ECE applications (`.pex`) cannot be loaded as content directly; add them to a `.pfi` and start them from the P/ECE launcher. Everything RetroArch handles per content, such as the save file, playlists, and per-game remaps and option overrides, therefore applies to the whole image rather than to each application.

A `.pfi` can be made from a real P/ECE with the `ripper` tool, or built without the hardware from Aquaplus's official system updater:

1. Download [update120.exe](https://aquaplus.jp/piece/dl/update120.exe) from the [official PieceSystem 1.20 download page](https://aquaplus.jp/piece/dl/update120.html). It is an LHA self-extracting archive: run it on Windows, or extract it with `lha x update120.exe` elsewhere.
2. Build the image with the `mkpfi` tool from the [piece-emu repository](https://github.com/autch/piece-emu):
    ```
    mkpfi -512kb piece/update/all.bin piece.pfi
    ```
    Use `mkpfi -2mb piece/update/2mb/all.bin piece.pfi` for units modded to 2 MB flash.
3. Add applications (`.pex`) to the content with the `pfar` tool, for example `pfar piece.pfi -a mygame.pex`.

Then, in RetroArch, select 'Load Content', choose the `.pfi` file and, if asked which core to use, choose 'Aquaplus - P/ECE (piece-emu)'. The P/ECE launcher (menu) starts; pick an application from it.

## BIOS

Not required. The P/ECE kernel is part of the `.pfi` content.

## Extensions

Content that can be loaded by the piece-emu core have the following file extensions:

- .pfi

RetroArch database(s) that are associated with the piece-emu core:

- None

## Features

Frontend-level settings or features that the piece-emu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
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

## Directories

The piece-emu core's library name is 'piece-emu'

The piece-emu core saves/loads to/from these directories.

**Frontend's Save directory**

| File       | Description |
|:----------:|:-----------:|
| *.srm      | Flash memory contents (PFFS save data of every application in the image) |

The loaded content (`.pfi`) itself is never modified. Everything the kernel and applications write to flash (high scores, settings, user data) goes to the `.srm` file instead, which is itself a complete PFI image: it can be inspected with `pfar` (`pfar piece.srm -l`), or renamed to `.pfi` to boot it as standalone content.

Once a `.srm` exists, the core restores the entire flash from it when the content is loaded, so the `.srm`, not the `.pfi`, becomes the live image. Applications added to the `.pfi` afterwards do not appear. To add an application at that point, close the content and either add it to the `.srm` (`pfar piece.srm -a newgame.pex`), or rename the `.srm` to `.pfi` and use it as new content.

## Geometry and timing

- The piece-emu core's core provided FPS is 60
- The piece-emu core's core provided sample rate is 32000 Hz
- The piece-emu core's base width is 128
- The piece-emu core's base height is 88
- The piece-emu core's max width is 128
- The piece-emu core's max height is 88
- The piece-emu core's core provided aspect ratio is 16:11 (128:88)

## Usage

By default RetroArch writes the `.srm` only when the content is closed, so exit with 'Close Content' rather than killing RetroArch. Setting 'Settings → Saving → SaveRAM Autosave Interval' to a non-zero value also protects against losing data when RetroArch is killed.

## Core options

The piece-emu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Swap A/B Buttons** [piece_swap_ab] (**Off (RetroArch standard)**|On (Swapped))

	Off: RetroPad A is the P/ECE A button and RetroPad B is the P/ECE B button. On: the two are swapped.

- **Timer Tick Granularity** [piece_tick_burst] (2000|3000|**4000**|6000|8000|12000|16000)

	How often the emulated peripheral timers and interrupts are serviced, in CPU cycles. Larger values reduce the per-frame cost (raising the frame rate on slow hosts, such as RetroArch Web) but deliver interrupts more coarsely; if set too large, audio goes silent. 4000 runs at roughly the speed of the real P/ECE.

## User 1 device types

The piece-emu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Joypad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | B Button                 |
| ![](../image/retropad/retro_select.png)        | Select                   |
| ![](../image/retropad/retro_start.png)         | Start                    |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
| ![](../image/retropad/retro_a.png)             | A Button                 |

With the 'Swap A/B Buttons' core option enabled, RetroPad A and B are exchanged.

## Compatibility

The kernel boots and applications run with display, input, sound and flash saves. The following P/ECE hardware is not emulated yet, so applications that depend on it do not work or have reduced functionality:

- USB
- IrDA (infrared communication)
- MMC card interface
- ADC
- IDMA

## External links

- [Official Aquaplus P/ECE Website (Japanese)](https://aquaplus.jp/piece/)
- [piece-emu GitHub Repository](https://github.com/autch/piece-emu)
- [Libretro piece-emu Core info file](https://github.com/libretro/libretro-core-info/blob/master/piece_libretro.info)
- [Report Libretro piece-emu Core Issues Here](https://github.com/autch/piece-emu/issues)
