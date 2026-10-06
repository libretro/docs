# Arcadia 2001 / Interton VC 4000 (AmiArcadia)

## Background

AmiArcadia is an emulator for Signetics 2650 CPU-based systems. It emulates the Emerson Arcadia 2001 and its many clones (Bandai, Grandstand, etc.), the Interton VC 4000 family (Voltmace, Rowtron, etc.), the Elektor TV Games Computer, and Zaccaria/Malzak coin-op arcade machines.

The core automatically identifies known ROMs by CRC32 and configures the correct machine type, memory map, and game-specific settings. For unknown ROMs, use the "Machine" core option to select between Arcadia and Interton modes.

### Author/License

The AmiArcadia core has been authored by

- James Jacobs

The AmiArcadia core is licensed under

- Non-commercial

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the AmiArcadia core have the following file extensions:

- .bin
- .tvc

## Databases

RetroArch database(s) that are associated with the AmiArcadia core:

- [Elektor - TV Games Computer](https://github.com/libretro/libretro-database/blob/master/rdb/Elektor%20-%20TV%20Games%20Computer.rdb)
- [Emerson - Arcadia 2001](https://github.com/libretro/libretro-database/blob/master/rdb/Emerson%20-%20Arcadia%202001.rdb)
- [Interton - VC 4000](https://github.com/libretro/libretro-database/blob/master/rdb/Interton%20-%20VC%204000.rdb)

## BIOS

The AmiArcadia core does not require any BIOS files.

## Features

Frontend-level settings or features that the AmiArcadia core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
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

### Directories

The AmiArcadia core's library name is 'AmiArcadia'

### Geometry and timing

- The AmiArcadia core's core provided FPS is 60 for NTSC and 50 for PAL
- The AmiArcadia core's core provided sample rate is 11025 Hz
- The AmiArcadia core's base width is 164 (home consoles) or 240 (coin-ops)
- The AmiArcadia core's base height is 226 (NTSC) / 269 (PAL) for home consoles, or 240 for coin-ops
- The AmiArcadia core's max width is 240
- The AmiArcadia core's max height is 269

## Core options

The AmiArcadia core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Machine** [amiarcadia_machine] (**Arcadia**|Interton)

	Select the machine type for unknown ROMs. Known ROMs auto-detect the correct machine. Choose between Arcadia 2001 and Interton VC 4000 modes.

- **Region** [amiarcadia_region] (**PAL**|NTSC)

	Select the video timing region. PAL runs at 50Hz, NTSC runs at 60Hz.

- **Sprite Demultiplexing** [amiarcadia_demultiplex] (**enabled**|disabled)

	Reduces sprite flicker in games that multiplex sprites across frames.

## Joypad

| RetroPad Inputs                                | Player 1/2 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | Keypad 1                     |
| ![](../image/retropad/retro_y.png)             | Keypad 4                     |
| ![](../image/retropad/retro_select.png)        | Console A                    |
| ![](../image/retropad/retro_start.png)         | Console Start                |
| ![](../image/retropad/retro_dpad_up.png)       | Paddle Up                    |
| ![](../image/retropad/retro_dpad_down.png)     | Paddle Down                  |
| ![](../image/retropad/retro_dpad_left.png)     | Paddle Left                  |
| ![](../image/retropad/retro_dpad_right.png)    | Paddle Right                 |
| ![](../image/retropad/retro_a.png)             | Keypad 2 (Fire)              |
| ![](../image/retropad/retro_x.png)             | Keypad 5                     |
| ![](../image/retropad/retro_l1.png)            | Console B (Coin for arcade)  |
| ![](../image/retropad/retro_r1.png)            | Keypad 0                     |
| ![](../image/retropad/retro_l2.png)            | Console Reset                |
| ![](../image/retropad/retro_r2.png)            | Keypad Enter                 |
| ![](../image/retropad/retro_l3.png)            | Keypad Clear                 |
| ![](../image/retropad/retro_r3.png)            | Keypad 6                     |
| ![](../image/retropad/retro_left_stick.png) X  | Paddle X (Analog)            |
| ![](../image/retropad/retro_left_stick.png) Y  | Paddle Y (Analog)            |
| ![](../image/retropad/retro_right_stick.png) X | Keypad 1-9 (8-directional)   |
| ![](../image/retropad/retro_right_stick.png) Y | Keypad 1-9 (8-directional)   |

The right analog stick maps to keypad keys 1-9 (excluding 5) in 8 directions, matching the layout of the original keypad:

```
7 8 9      ↖ ↑ ↗
4   6  =   ←   →
1 2 3      ↙ ↓ ↘
```

Console buttons (Start, A, B, Reset) are only active on Player 1.

## Keyboard

Desktop keyboard input is supported for Player 1's keypad. Both the number row and numeric keypad are mapped.

| RetroKeyboard Inputs         | AmiArcadia Inputs |
|------------------------------|-------------------|
| Keyboard 0 / Numpad 0       | Keypad 0          |
| Keyboard 1 / Numpad 1       | Keypad 1          |
| Keyboard 2 / Numpad 2       | Keypad 2          |
| Keyboard 3 / Numpad 3       | Keypad 3          |
| Keyboard 4 / Numpad 4       | Keypad 4          |
| Keyboard 5 / Numpad 5       | Keypad 5          |
| Keyboard 6 / Numpad 6       | Keypad 6          |
| Keyboard 7 / Numpad 7       | Keypad 7          |
| Keyboard 8 / Numpad 8       | Keypad 8          |
| Keyboard 9 / Numpad 9       | Keypad 9          |
| Keyboard [ / * / Numpad *   | Keypad Clear      |
| Keyboard ] / # / Numpad Enter | Keypad Enter    |

## Compatibility

The core identifies known ROMs by CRC32 and automatically configures the correct machine type and settings. The following systems are emulated:

**Home Consoles**

- Emerson Arcadia 2001 (and compatible systems: Bandai, Grandstand, etc.)
- Interton VC 4000 (and compatible systems: Voltmace, Rowtron, etc.)
- Elektor TV Games Computer

**Arcade (Coin-op)**

- Zaccaria (Astro Wars, Galaxia, Laser Battle, Lazarian)
- Malzak (Malzak I & II)

## External Links

- [Official AmiArcadia/WinArcadia Website](https://amigan.1emu.net/releases/)
- [Libretro AmiArcadia Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/amiarcadia_libretro.info)
- [Libretro AmiArcadia Github Repository](https://github.com/warmenhoven/amiarcadia)
