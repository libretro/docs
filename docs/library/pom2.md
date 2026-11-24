---
title: "POM2 – Apple II core for RetroArch"
description: "RetroArch POM2 core (Apple II): firmware, core options and controls. Apple ][, ][+, //e, //e Enhanced, //c and //c Plus, NTSC and PAL."
---

# Apple II (POM2)

## Background

Apple ][, ][+, //e, //e Enhanced, //c and //c Plus, NTSC and PAL. Disk II (WOZ, NIB, DSK, D13), 3.5-inch SmartPort, ProDOS hard disks (HDV), Mockingboard, AppleMouse, Le Chat Mauve RGB, eleven displays from composite to OpenEmulator and AppleWin NTSC, ShrinkIt, DiskCopy 4.2 and A2R flux captures, cassette tapes that load themselves, private writable disks, M3U playlists, save states, rewind, RetroAchievements memory map, cheats and a RetroPad keyboard.

POM2 aims at the real machine: every hardware claim in its source carries the grade of the evidence behind it (a measurement on the iron, a data sheet, a ROM disassembly, another emulator). On 4am's woz-a-day collection of copy-protected disks (2245 titles) the core boots 99.3 % to a picture ([audit](https://github.com/habib256/pom2/blob/main/docs/audits/woz-a-day-2026-11-24.md)).

The POM2 core has been authored by

- VERHILLE Arnaud

The POM2 core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

[Required or optional firmware files](https://docs.libretro.com/library/bios/) go in the frontend's system directory, in a `pom2` folder. Each machine needs its own system ROM; the Disk II PROMs are optional (POM2 has its own 16- and 13-sector boot PROMs and its own disk sequencer).

| Filename | Description | md5sum |
|---|---|---|
| pom2/apple2e.rom | Apple IIe Enhanced system ROM - Required | 003a780b461c96ae3e72861ed0f4d3d9 |
| pom2/apple2e_char.rom | Apple IIe Enhanced and //c character ROM - Required | 9123fff3442c0e688cc6816be88dd4ab |
| pom2/apple2e_unenh.rom | Apple IIe (unenhanced) system ROM - Optional | 346bc782c6a08a531c460e33bc03daf4 |
| pom2/apple2e_char_2k.rom | Apple IIe (unenhanced) character ROM - Optional | 2fbc2be2a84ea742de37be9925c7d7cd |
| pom2/apple2p.rom | Apple II Plus system ROM - Optional | 2deb4f578f1f0f1fa95399df15989842 |
| pom2/apple2o.rom | Apple II (1977) system ROM - Optional | 2a68f049d44e326574b95c0ec638c1ca |
| pom2/apple2_char.rom | Apple II and II Plus character ROM - Optional | 9ac0dc8c4d0002eb45b0b84be0bde5ec |
| pom2/apple2c-32Kv0.rom | Apple IIc system ROM (32 KiB) - Optional | 88434c2f87c5c180ae06b83de51c3c0a |
| pom2/apple2cp.rom | Apple IIc Plus system ROM - Optional | c8c2c4009a4a059460ed7426a9d67705 |
| pom2/disk2.rom | Disk II boot PROM 341-0027 (optional, POM2 has its own) - Optional | 2020aa1413ff77fe29353f3ee72dc295 |
| pom2/diskii_p6.rom | Disk II sequencer PROM 341-0028 (optional, POM2 has its own) - Optional | 5f1be0c1cdff26f5956eef9643911886 |
| pom2/mouse_341-0270-c.bin | AppleMouse slot ROM (optional mouse) - Optional | 22563ab338024dac7b03510371d49c57 |
| pom2/mouse_341-0269.bin | AppleMouse MCU (optional hardware model) - Optional | 1518752ba8444b950b76f14163cbb6a1 |
| pom2/apple2c-16K.rom | Apple IIc 16 KiB system ROM (alternative) - Optional | 6b2cf9588da87954de396ccb0286ecb4 |
| pom2/342-0135-b.64.rom | Apple IIe (unenhanced) system ROM, MAME name (alternative) - Optional |  |
| pom2/disk2_13.rom | Disk II 13-sector boot PROM 341-0009 (optional, POM2 has its own) - Optional | 4f80448507cf43ab40c17ac08d89e278 |
| pom2/diskii_p6_13.rom | Disk II 13-sector sequencer PROM 341-0010 (optional) - Optional | 897b0edef70b440133c99f65a507ebb6 |

## Extensions

Content that can be loaded by the POM2 core have the following file extensions:

- .dsk
- .do
- .po
- .nib
- .woz
- .d13
- .2mg
- .2img
- .hdv
- .m3u
- .zip
- .gz
- .bin
- .bas
- .shk
- .sdk
- .bxy
- .sea
- .dc
- .dc42
- .image
- .a2r
- .wav
- .aci

The POM2 core can also be started without content: the machine starts at its BASIC prompt.

RetroArch database(s) that are associated with the POM2 core:

- [Apple - II](https://github.com/libretro/libretro-database/blob/master/rdb/Apple%20-%20II.rdb)

## Features

Frontend-level settings or features that the POM2 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
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
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✔         |

Netplay is checked frame by frame in POM2's CI: the same state on both machines, exact rollbacks, a joining player in step. For games played at the keyboard, set Port 3 to "Keyboard (for netplay)": RetroArch's netplay carries a keyboard only as a port's device.

### Directories

The POM2 core's library name is 'POM2'

The POM2 core saves/loads to/from these directories.

**Frontend's Save directory**

| File | Description |
|---|---|
| pom2/disks/... | A private writable copy of each disk the game writes to; the original image is never written |

**Frontend's State directory**

| File | Description |
|---|---|
| *.state# | State |

## Geometry and timing

- The POM2 core's core provided FPS is 60.054 for NTSC machines (50.080 for PAL)
- The POM2 core's core provided sample rate is 44100 Hz
- The POM2 core's base width is 280
- The POM2 core's base height is 192

## Core options

The POM2 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. Options marked (restart) take effect at the next Load Content or Restart.

#### System

Machine, processor and video standard. Changes apply when the content is reloaded.

- **Machine (restart)** [pom2_machine] (**Automatic**|Apple //e Enhanced (65C02)|Apple //e (6502)|Apple ][+|Apple ][ (1977)|Apple //c|Apple //c Plus)

    Automatic picks the machine a WOZ disk names, then the first one whose firmware is in system/pom2: //e Enhanced, //e, ][+, //c.

- **Video standard (restart)** [pom2_video_standard] (**Automatic**|NTSC (60 Hz)|PAL (50 Hz))

    NTSC is 60 Hz at 1.0227 MHz. PAL is the European 50 Hz machine at 1.0156 MHz, needed by French Touch demos. Automatic selects PAL for DIX.

- **Processor (restart)** [pom2_cpu] (**Machine's own**|NMOS 6502|65C02)

    Replace the machine's 6502 on a ][, ][+ or //e. The //c family keeps its soldered 65C02.

- **Accelerator (restart)** [pom2_accelerator] (**Automatic**|None (1 MHz)|Zip Chip (4 MHz)|FASTChip (16.6 MHz))

    A faster 6502 in the socket. Automatic gives the //c Plus its built-in 4 MHz. The Zip Chip runs at 4 MHz, the FASTChip up to 16.6 MHz; programs can slow them, and Esc held at reset starts a //c Plus at 1 MHz.

- **Auxiliary memory (restart)** [pom2_ramworks] (**64 KiB (standard)**|RamWorks 256 KiB|RamWorks 512 KiB|RamWorks 1 MiB|RamWorks 3 MiB|RamWorks 8 MiB)

    A RamWorks III in the //e's auxiliary slot: AppleWorks, ProDOS RAM disks and some demos use the extra banks. Save states grow with it.

- **No-Slot Clock (restart)** [pom2_clock] (**Emulated time**|Host clock|Absent)

    A DS1216E clock under the ROM gives ProDOS and many programs the date. Emulated time starts at the host's date when the content loads and follows the machine, so save states and netplay replay the same date.

- **DIX preset (restart)** [pom2_dix_preset] (**Automatic**|Always|Never)

    French Touch's DIX anthology: a PAL //e Enhanced with a Mockingboard in slot 2 and a Le Chat Mauve RGB card. Automatic recognizes the published DIX images.

#### Video

Monitor and RGB card.

- **Display** [pom2_display] (**Automatic**|Composite colour|Composite, medium colours|Composite, sharp|Composite signal (OpenEmulator)|NTSC monitor (AppleWin)|NTSC television (AppleWin)|NTSC idealized colours|Monochrome white|Monochrome green|Monochrome amber|RGB (Le Chat Mauve card))

    Composite modes reproduce the colours of an NTSC monitor. OpenEmulator and AppleWin decode the composite signal. Automatic uses the RGB card's monitor when one is present.

- **Le Chat Mauve RGB card (restart)** [pom2_rgb_card] (**Automatic (DIX)**|Absent|Installed)

    The Féline in slot 7 of a ][+ or //e, the RGB adapter on a //c. Its RGB monitor shows double hi-res without colour fringes.

- **Frameskip** [pom2_frameskip] (**Off**|Automatic|Threshold)

    Skip drawing a frame when RetroArch's audio buffer runs low, so a slow device (a Raspberry Pi, a phone) keeps the sound whole. The machine runs every frame either way. Threshold skips below the level set next.

- **Frameskip threshold (%)** [pom2_frameskip_threshold] (**33**|15|20|25|30|40|50|60)

    Audio buffer level under which a frame is not drawn.

#### Audio

Speaker and Mockingboard.

- **Sound card (restart)** [pom2_mockingboard] (**Mockingboard A/C**|Mockingboard with speech (SSI263)|Phasor (Applied Engineering)|Absent)

    A Mockingboard: two AY-3-8910 sound chips in stereo, the speech model adds an SSI263; on a //c, the Mockingboard 4c. Or a Phasor: four AY-3-8910s and two SSI263s, Mockingboard-compatible until a program switches it (not on a //c).

- **Mockingboard slot (restart)** [pom2_mockingboard_slot] (**Automatic**|Slot 4|Slot 5|Slot 2|Slot 1|Slot 7)

    Most programs look for it in slot 4. Automatic uses slot 2 when the mouse or DIX takes slot 4.

- **MIDI card (restart)** [pom2_midi] (**Absent**|Passport MIDI Interface)

    A Passport MIDI Interface in a free slot (2 first): what a program plays on it goes to RetroArch's MIDI output (Settings > Audio > MIDI). Not on a //c.

- **Speaker volume** [pom2_speaker_volume] (**100%**|0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|110%|120%|130%|140%|150%|160%|170%|180%|190%|200%)

    The Apple II's built-in speaker.

- **Mockingboard volume** [pom2_mockingboard_volume] (**100%**|0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|110%|120%|130%|140%|150%|160%|170%|180%|190%|200%)

- **Disk drive sounds (restart)** [pom2_drive_sounds] (**Off**|On)

    The motor, head steps and door of the drives, from MAME's samples in system/pom2/floppy_samples. With run-ahead each step is heard once; a loaded state picks up the drive's motor.

- **Disk drive sound volume** [pom2_drive_sound_volume] (**100%**|0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|110%|120%|130%|140%|150%|160%|170%|180%|190%|200%)

#### Input

Joystick, paddles, keyboard and mouse.

- **Analog dead zone** [pom2_paddle_deadzone] (**12.5%**|0%|5%|10%|15%|20%|25%|30%)

    Stick travel ignored around the centre.

- **Analog sensitivity** [pom2_paddle_sensitivity] (**100%**|50%|75%|125%|150%|175%|200%)

    Above 100% the paddle reaches its end before the stick does.

- **Joystick axes** [pom2_joystick_axes] (**Normal**|Invert X|Invert Y|Invert X and Y|Swap X and Y)

- **Swap joystick buttons** [pom2_swap_buttons] (**No**|Yes)

    Exchange button 0 (B) and button 1 (A).

- **Alt keys are the Apple keys** [pom2_alt_apple_keys] (**Yes**|No)

    Left Alt presses Open Apple and right Alt Solid Apple, which are also joystick buttons 0 and 1.

- **Uppercase keyboard** [pom2_uppercase] (**Automatic (][ and ][+)**|Always|Never)

    The ][ and ][+ have no lowercase. Many //e games expect Caps Lock.

- **AppleMouse in slot 4 (restart)** [pom2_mouse] (**Absent**|Installed)

    Needs mouse_341-0270-c.bin in system/pom2. The //c has its mouse built in.

- **AppleMouse model (restart)** [pom2_mouse_model] (**Automatic**|Apple MCU firmware|AppleWin model)

    The card's microcontroller runs Apple's firmware when mouse_341-0269.bin is present, or AppleWin's model of it.

- **Mouse speed** [pom2_mouse_speed] (**100%**|25%|50%|75%|125%|150%|175%|200%|225%|250%|275%|300%)

#### Disks

Disk drives, write protection and saving.

- **Fast disk loading** [pom2_fast_disk_loading] (**Enabled**|Original drive timing)

    Run up to twelve frames per frontend frame while a floppy is read.

- **Disk II drive 2 (restart)** [pom2_drive2] (**Empty**|Next disk of the playlist)

    Put the playlist's next 5.25-inch disk in drive 2 at start, for games that use two drives (Ultima, Wizardry, The Bard's Tale).

- **Disc Control drive** [pom2_disk_control_drive] (**Drive 1**|Drive 2)

    The drive that Quick Menu > Disc Control and the R3 button eject and load. Drive 2 takes 5.25-inch disks.

- **Write-protect every disk** [pom2_write_protect] (**No**|Yes)

    Disks always mount read-only and no private copy is made. Applies to the next disk inserted.

- **Disk save interval** [pom2_autosave_interval] (**5 seconds**|1 second|2 seconds|10 seconds|30 seconds)

    How often guest writes reach the private disk copy.

- **Disk II firmware (restart)** [pom2_disk2_firmware] (**Apple's when present**|POM2's own)

    Apple's boot PROM and sequencer ROM when disk2.rom and diskii_p6.rom are present, or POM2's own.

## Controllers

The POM2 core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s).

### User 1 device types

- **Apple II joystick**
- Keyboard: arrows, Space, Return
- Keyboard: I J K M, Space, Return
- Keyboard: W A S D, Space, Return
- None

### User 2 device types

- **Second joystick (paddles 2 and 3)**
- None

### User 3 device types

- **None (keyboard typed directly)**
- Keyboard (for netplay)

### User 4 device types

- **None (mouse read with port 1)**
- Mouse (for netplay)

The keyboard types into the machine directly (the keyboard callback), on the host's layout. Port 3's "Keyboard (for netplay)" reads it as a device instead, on a US layout.

## Joypad

| RetroPad Inputs | User 1 input descriptors |
|---|---|
| D-Pad Left | Joystick Left |
| D-Pad Right | Joystick Right |
| D-Pad Up | Joystick Up |
| D-Pad Down | Joystick Down |
| B | Button 0 / Open Apple / Space |
| A | Button 1 / Solid Apple / Return |
| Start | Return |
| Select | Escape |
| L3 | Show / hide Apple keyboard |
| R3 | Next disk |
| Y | Keyboard shift |
| X | Keyboard delete |

## External Links

- [POM2 Repository](https://github.com/habib256/pom2)
- [Core installation, firmware and controls](https://github.com/habib256/pom2/blob/main/libretro/README.md)
- [Report POM2 Core Issues Here](https://github.com/habib256/pom2/issues)

## See also

### Apple II

- [Apple II (AppleWin)](applewin.md)
- [Arcade (MAME - Current)](mame.md)
