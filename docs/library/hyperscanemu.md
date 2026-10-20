# HyperScan (HyperScanEmu)

## Background

The HyperScan is a 2006 Mattel home console built around the Sunplus SPG290 SoC (S+Core 7 CPU). Games ship on CD with optional RFID save cards. HyperScanEmu is an evidence-driven, clean-room emulator for this platform written in Rust, with a libretro core front-end.

The HyperScanEmu core has been authored by:

- Aloys

The HyperScanEmu core is licensed under:

- [BSD-3-Clause](https://github.com/AloysHF/HyperScanEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

[Required firmware files](https://docs.libretro.com/library/bios/) go in the frontend's system directory:

| Filename          | Description                                | md5sum |
|:-----------------:|:------------------------------------------:|:------:|
| spg290.bin        | SPG290 internal ROM (32768 bytes) - Required |        |
| hyperscan.bin     | HyperScan BIOS (1048576 bytes) - Required  |        |

Firmware and game media are never distributed with the core. Obtain and dump them legally from hardware and media you own.

## Extensions

Content that can be loaded by the HyperScanEmu core have the following file extensions:

- .bin
- .cue
- .zip

RetroArch database(s) that are associated with the HyperScanEmu core:

- HyperScan

## Features

Frontend-level settings or features that the HyperScanEmu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
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

The HyperScanEmu core's library name is 'HyperScan (HyperScanEmu)'

## Geometry and timing

- The HyperScanEmu core's core provided FPS is NTSC (60)
- The HyperScanEmu core's core provided sample rate is 48000 Hz
- The HyperScanEmu core's base width is 640
- The HyperScanEmu core's base height is 480

## Usage

The HyperScanEmu core requires the full path to content (it loads complete BIN/CUE/ZIP disc packages), so content is loaded directly from disk rather than from memory.

Video is output in the XRGB8888 pixel format. Audio uses the DAC ring-buffer path (16-bit PCM); the hardware synthesizer is not yet implemented.

Boot progress currently reaches retail game loading screens. Title/menu and gameplay have not been validated yet. See the [Game Compatibility](https://github.com/AloysHF/HyperScanEmu/blob/master/docs/Game-Compatibility.md) matrix for recorded results.

## User 1 device types

The HyperScanEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

Two controllers are supported. Each pad maps to the HyperScan dual I²C controller:

| RetroPad Inputs                        | User 1/2 input descriptors |
|----------------------------------------|----------------------------|
| ![](../image/retropad/retro_b.png)     | Red                        |
| ![](../image/retropad/retro_y.png)     | Yellow                     |
| ![](../image/retropad/retro_x.png)     | Blue                       |
| ![](../image/retropad/retro_a.png)     | Green                      |
| ![](../image/retropad/retro_start.png) | Start                      |
| ![](../image/retropad/retro_select.png)| Select                     |
| ![](../image/retropad/retro_l1.png)    | Left shoulder              |
| ![](../image/retropad/retro_r1.png)    | Right shoulder             |
| ![](../image/retropad/retro_l2.png)    | Left trigger               |
| ![](../image/retropad/retro_r2.png)    | Right trigger              |
| ![](../image/retropad/retro_left_stick.png) X | Analog stick X       |
| ![](../image/retropad/retro_left_stick.png) Y | Analog stick Y       |

## External links

- [HyperScanEmu Repository](https://github.com/AloysHF/HyperScanEmu)
- [Libretro HyperScanEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/hyperscanemu_libretro.info)
- [Report Libretro HyperScanEmu Core Issues Here](https://github.com/AloysHF/HyperScanEmu/issues)
