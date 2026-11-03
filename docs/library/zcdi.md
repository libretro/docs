---
title: "zcdi – Philips CD-i core for RetroArch"
description: "RetroArch zcdi core (Philips CD-i): BIOS files, core options and controls. zcdi emulates the Philips CD-i Mono-I board and supports the 22ER9141 Digital Video Cartridge."
---

# Philips - CD-i (zcdi)

## Background

zcdi emulates the Philips CD-i Mono-I player (SCC68070 CPU, MCD212 video, CDIC disc and audio controller) and the optional 22ER9141 Digital Video Cartridge (DVC) for MPEG-1 video titles. It runs the original BIOS and cartridge firmware.

The goal of zcdi is to play CD-i discs rather than to be a cycle-exact replica of the hardware. It builds on the work of [MAME](https://github.com/mamedev/mame), [CDi_MiSTer](https://github.com/MiSTer-devel/CDi_MiSTer) (which its DVC support relies on) and [CD-i Fan](https://www.cdiemu.org/). The player can also play audio CDs and Video CDs.

The zcdi core has been authored by:

- pastisme

The zcdi core is licensed under:

- [GPLv3+](https://github.com/pastisme/zcdi/blob/main/LICENSE)

Bundled third-party components keep their own licenses.

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## How to start the zcdi core:

- Put the BIOS for your Video Standard in the frontend's system directory: cdi200.rom for NTSC (the default) or cdi220b.rom for PAL. The core does not start without it. See [BIOS](#bios).

- For Digital Video titles and Video CDs, also put vmpega.rom in the system directory. It is loaded automatically while the 'DVC Enabled' core option is set to Auto.

- To play a disc, load its image with the zcdi core. The player boots to its menu; select 'PLAY CD-I', or turn on the 'Auto Play' core option to start the disc automatically.

- The core can also be started without content: go to RetroArch's main menu screen, select 'Load Core', then 'Philips - CD-i (zcdi)', then 'Start Core'. The player boots to its menu with an empty tray, and a disc can be inserted later through Disk Control.

## BIOS

[Required or optional firmware files](https://docs.libretro.com/library/bios/) go in the frontend's system directory:

| Filename    | Description                                                         | md5sum                           |
|:-----------:|:-------------------------------------------------------------------:|:--------------------------------:|
| cdi200.rom  | CD-i BIOS, NTSC - Required when Video Standard is NTSC (default)    | 2969341396aa61e0143dc2351aaa6ef6 |
| cdi220b.rom | CD-i BIOS, PAL - Required when Video Standard is PAL                | ac0d468be366779c9df633be98da250a |
| vmpega.rom  | Digital Video Cartridge ROM - Optional, needed for DVC (MPEG) titles | 53ba3bf7443187a657baa272d01d3771 |

Only the BIOS for the selected Video Standard core option is needed. Use cdi220b.rom for PAL, not cdi220.rom. Without vmpega.rom the player has no Digital Video Cartridge, most titles that need one ask for it.

## Extensions

Content that can be loaded by the zcdi core have the following file extensions:

- .chd
- .cue
- .bin
- .iso
- .m3u

Every track must hold raw 2352-byte sectors. A .iso is read as a bare .bin, so a 2048-byte ISO9660 image (user data only) does not load, and neither does a CHD made from one.

RetroArch database(s) that are associated with the zcdi core:

- [Philips - CD-i](https://github.com/libretro/libretro-database/blob/master/rdb/Philips%20-%20CD-i.rdb)

## Features

Frontend-level settings or features that the zcdi core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | -         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | -         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | -         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The zcdi core's library name is 'zcdi'

The zcdi core saves/loads to/from these directories.

**Frontend's Save directory**

| File               | Description |
|:------------------:|:-----------:|
| *.srm              | Player NVRAM (settings and game saves) for each disc, when NVRAM Storage Mode is Per Disc |
| zcdi_[BIOS name].nvram | Player NVRAM shared by every disc on that BIOS, when NVRAM Storage Mode is Global (for example zcdi_cdi200.nvram for cdi200.rom) |

Without a save directory, the Global NVRAM files go in the system directory.

**Frontend's State directory**

| File    | Description |
|:-------:|:-----------:|
| *.state# | Save state |

**Frontend's System directory**

| File        | Description |
|:-----------:|:-----------:|
| cdi200.rom  | CD-i BIOS, NTSC |
| cdi220b.rom | CD-i BIOS, PAL |
| vmpega.rom  | Digital Video Cartridge ROM |

## Geometry and timing

- The zcdi core's core provided FPS is 60 (NTSC) or 50 (PAL), following the Video Standard core option
- The zcdi core's core provided sample rate is 44100 Hz
- The zcdi core's base width is 768
- The zcdi core's base height is 280
- The zcdi core's max width is 768
- The zcdi core's max height is 560
- The zcdi core's core provided aspect ratio is 4/3

The displayed size follows the title's display mode (720 or 768 wide, 240 or 280 lines, doubled to 480 or 560 for interlaced pictures).

## Usage

### Multi-disc titles

List the discs of a multi-disc title in an .m3u playlist and load the playlist. Ejecting the disc through Disk Control opens the player's tray; select the next disc, then close the tray.

### Digital Video Cartridge

Titles that use MPEG video (Digital Video titles, Video CDs) need vmpega.rom in the system directory, with the 'DVC Enabled' core option set to Auto.

## Core options

The zcdi core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

All options take effect when content is next loaded.

- **NVRAM Storage Mode** [zcdi_nvram_mode] (**Per Disc**|Global)

	Per Disc: the frontend saves the player's NVRAM (settings, game saves) as each disc's save file. Global: one NVRAM file per BIOS in the save directory, shared by every disc, like a real player's NVRAM.

- **Video Standard** [zcdi_preferred_bios] (**NTSC**|PAL)

	Select NTSC or PAL for BIOS file selection and frame timing. NTSC uses cdi200.rom, PAL uses cdi220b.rom.

- **DVC Enabled** [zcdi_dvc_enabled] (**Auto**|Off)

	Auto loads the Digital Video Cartridge ROM (vmpega.rom) from the system directory when it is present. Off runs the player without a cartridge.

- **Auto Play** [zcdi_auto_play] (**Off**|On)

	Automatically click "PLAY CD-I" on the boot menu instead of waiting for the player to press it.

## User 1 - 2 device types

The zcdi core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

User 1 is the player's front socket and User 2 the back socket.

### User 1 device types

- **Gamepad** - Joypad - A CD-i gamepad.
- Mouse - Mouse - A CD-i mouse.
- Lightgun - Lightgun - A CD-i light gun (Peacekeeper).

### User 2 device types

- **None** - Nothing plugged into the back socket.
- Gamepad (2nd player) - Joypad - A second CD-i gamepad.
- Mouse (2nd player) - Mouse - A second CD-i mouse.

With two gamepads plugged in, the player's BIOS menu follows the User 2 (back) gamepad, as on real hardware. Titles choose the role of each controller themselves.

## Joypad

CD-i controllers have a pointer and two buttons. The joypad layout is based on the Philips 22ER9017 touchpad controller.

| RetroPad Inputs                                | User 1 - 2 input descriptors | CD-i Inputs               |
|------------------------------------------------|------------------------------|---------------------------|
| ![](../image/retropad/retro_b.png)             | Button 1                     | -                         |
| ![](../image/retropad/retro_y.png)             | Button 1+2                   | -                         |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     | -                         |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   | -                         |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   | -                         |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  | -                         |
| ![](../image/retropad/retro_a.png)             | Button 2                     | -                         |
| ![](../image/retropad/retro_x.png)             | Button 1                     | -                         |
| ![](../image/retropad/retro_left_stick.png) X  | -                            | Pointer Left/Right        |
| ![](../image/retropad/retro_left_stick.png) Y  | -                            | Pointer Up/Down           |

## Mouse

| RetroMouse Inputs                                     | CD-i Mouse Inputs         |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Pointer Movement          |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Button 1                  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Button 2                  |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Button 1+2                |

## Lightgun

| RetroLightgun Inputs                                   | CD-i Light Gun Inputs     |
|--------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | Pointer Position          |
| Gun Trigger                                            | Button 1                  |
| Gun Aux A                                              | Button 2                  |

## Compatibility

Compatibility reports are tracked as issues on the zcdi repository:

- [Compatibility reports](https://github.com/pastisme/zcdi/issues?q=is%3Aissue%20label%3Acompatibility)
- [Report a title](https://github.com/pastisme/zcdi/issues/new?template=report_compatibility.yml)

## External links

- [Libretro zcdi Core info file](https://github.com/pastisme/zcdi/blob/main/src/libretro/zcdi_libretro.info)
- [zcdi GitHub Repository](https://github.com/pastisme/zcdi)
- [Report zcdi Core Issues Here](https://github.com/pastisme/zcdi/issues)

### See also

- [Philips - CD-i (CDi 2015)](cdi2015.md)
- [SAME_CDI](same_cdi.md)
