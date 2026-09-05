# Atari - ST/STE/TT/Falcon (hatariB)

See the [hatariB documentation](https://github.com/bbbradsmith/hatariB/blob/main/README.md) on GitHub for more in-depth information.

## Background

hatariB is an Atari ST/STE/TT/Falcon system emulator that can be used as a libretro core. It emulates the family of 16-bit Atari home computers that began with the Atari ST. While this core is primarily intended to run game software, it is also capable of running many other types of Atari programs.

The hatariB core has been authored by:

- Brad Smith

This core integrates the [Hatari](https://www.hatari-emu.org/) emulator, lead by:

- Nicolas Pomarède

The Hatari core is licensed under

- [GPLv2](https://github.com/bbbradsmith/hatariB/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## How to start the hatariB core:

The simplest way to start this core is by loading an Atari ST game disk image ('Load Content'), which is equivalent to booting an Atari ST with that disk in the drive. Multi-disk games should be loaded from an M3U file containing a list of disks, though the Libretro disk controls can be used to add or swap additional disk images while running.

The core may also be started with no disk at all ('Load Core', then 'Start Core'), which will boot to the Atari desktop. This is often useful if you wish to use a virtual hard disk with the emulator, instead of running games from floppy disks. See: [Hard Disks](https://github.com/bbbradsmith/hatariB/blob/main/README.md#Hard-Disks).

Some games require a high resolution monochrome monitor setting, instead of the default colour monitor. This can be selected in the 'Core Options' 'System' menu.

## BIOS

The ST family of computers had a long history of TOS BIOS ROMs, with many regions and revisions. By default, it will look in your [system directory](https://docs.libretro.com/library/bios/) for the same `tos.img` as [Hatari](hatari.md) and use that:

| Filename          | Description                    |
|:-----------------:|:------------------------------:|
| tos.img           | Atari TOS ROM Image - Optional |

If this default TOS is not supplied, the open source [EmuTOS](https://emutos.sourceforge.io/) BIOS will be supplied automatically as a substitute. EmuTOS is capable of running most games, but it is not 100% compatible, so it is recommended to use an original Atari TOS instead.

Multiple TOS files can be placed in the system folder in a `hatarib` subdirectory, which will allow you to select one via the 'Core Options' 'System' menu. This is especially useful when switching between machine types, as later hardware like the TT or Falcon require later TOS revisions.

There is no one perfect TOS that runs everything. In general TOS 1.0 is the most widely compatible with Atari ST software. Since the majority of ST game software was produced in Europe, a European TOS (e.g. UK) is recommended. The US TOS versions will boot the system with a 60hz framerate, as opposed to 50hz. This may cause some European games that do not override the default framerate to run too fast. (Conversely, some US games will run too slow on a 50hz TOS.)

If using a hard disk, TOS 1.04 is recommended instead, because the operating system support for hard disks in TOS 1.0 was very minimal.

## Extensions

Content that can be loaded by the hatariB core have the following file extensions:

Disk images:
- st
- msa
- dim
- stx
- ipf^*^
- ctr^*^

Multi-disk playlists:
- m3u
- m3u8

Multi-disk archives:
- zip
- zst
- gz

Hard Drive images:
- acsi
- ahd
- vhd
- scsi
- shd
- ide
- gem

^*^ Requires 'capsimg' support library.

See [hatariB File Formats](https://github.com/bbbradsmith/hatariB/blob/main/README.md#File-Formats) more information.

## Features

Frontend-level settings or features that the [Core name] core respects:

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
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

The libretro Crop Overscan interface is not supported, but there are Core Options in the 'Video' submenu that address the issue in detail.

## Directories

The hatariB core's internal name is 'hatarib'

The hatariB core saves/loads to/from these directories:

**Frontend's Save directory**

When disks are modified by saving your game, or otherwise writing to the disk, the original ROM file is not modified. Instead a modified copy or overlay file is saved here.

**Frontend's System directory**

| File          | Description                                           |
|:-------------:|:-----------------------------------------------------:|
| hatarib.nvram | Internal OS memory for TT/Falcon                      |
| hatarib/      | Contains TOS images, and hard disk folders or images. |


## Geometry and timing

- The hatariB core's provided FPS is 50, 60, or 71Hz, dependent on software or settings.
- The hatariB core's provided sample rate is configurable to 11025, 16000, 22050, 32000, 44100, or 48000 (default) Hz.
- The hatariB core's minimum width is 320
- The hatariB core's minimum height is 200
- The hatariB core's maximum width is 832
- The hatariB core's maximum height is 588
- The hatariB core's provided aspect ratio is configurable to 1.000 (square, default), 0.844 (atari colour monitor), 1.010 (atari monochrome monitor), 0.766 (NTSC TV), 0.921 (PAL TV), 0.750 (4:3)

## User 1 - 4 device types

The hatariB core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- Gamepad
- Keyboard
- Mouse

## Joypad

The gamepad buttons can be remapped to a variety of Atari ST inputs, including joystick, keyboard and mouse. The default mappings are:

| RetroPad Inputs                                | Atari Inputs                |
|------------------------------------------------|-----------------------------|
| ![](../image/retropad/retro_b.png)             | Joystick Button             |
| ![](../image/retropad/retro_y.png)             | Mouse Left Click            |
| ![](../image/retropad/retro_select.png)        | Select Drive A/B            |
| ![](../image/retropad/retro_start.png)         | Pause/Core Info             |
| ![](../image/retropad/retro_dpad_up.png)       | Joystick Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | Joystick Down               |
| ![](../image/retropad/retro_dpad_left.png)     | Joystick Left               |
| ![](../image/retropad/retro_dpad_right.png)    | Joystick Right              |
| ![](../image/retropad/retro_a.png)             | Joystick Auto-Fire          |
| ![](../image/retropad/retro_x.png)             | Mouse Right Click           |
| ![](../image/retropad/retro_l1.png)            | On-Screen Keyboard          |
| ![](../image/retropad/retro_r1.png)            | On-Screen Keyboard One-Shot |
| ![](../image/retropad/retro_l2.png)            | Mouse Speed Slow            |
| ![](../image/retropad/retro_r2.png)            | Mouse Speed Fast            |
| ![](../image/retropad/retro_l3.png)            | Space Key                   |
| ![](../image/retropad/retro_r3.png)            | Return Key                  |
| ![](../image/retropad/retro_left_stick.png) X  | Joystick Left/Right         |
| ![](../image/retropad/retro_left_stick.png) Y  | Joystick Up/Down            |
| ![](../image/retropad/retro_right_stick.png) X | Mouse Left/Right            |
| ![](../image/retropad/retro_right_stick.png) Y | Mouse Up/Down               |

By default user 1's joystick controls are mapped to the Atari's Joy 1 port, and user 2's joystick is mapped to the Joy 0 port, but these are both configurable. STE A/B and Parallel joystick ports can also be assigned, as well as keyboard keys and other arbitrary mappings.

By default 'L1' opens an on-screen keyboard which can be used to type Atari keys, selected with the 'D-Pad' and pressed with the 'L1' button. 'R1' closes the keyboard. Alternatively 'R1' opens a "one-shot" keyboard where 'L1' will press the selected key and close the keyboard immediately. These button assignments can be configured.

## Keyboard

Keyboard input maps to the Atari ST keyboard. Focus mode might be useful to access keys normally used by the front-end interface.

## Mouse

Mouse input maps to the Atari ST mouse.

| RetroMouse Inputs                                     | Atari Inputs              |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Move Mouse                |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Left Click                |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Right Click               |

## External links

- [Official hatariB Documentation](https://github.com/bbbradsmith/hatariB/blob/main/README.md)
- [Official hatariB GitHub Repository](https://github.com/bbbradsmith/hatariB)
- [Libretro hatariB Core info file](https://github.com/bbbradsmith/hatariB/blob/main/info/hatarib.info)
- [Report Libretro hatariB Core Issues Here](https://github.com/bbbradsmith/hatariB/issues)

## Related cores

- [Hatari](hatari.md)
