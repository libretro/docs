# Wenquxing (WQXEmu)

## Background

Wenquxing (文曲星) is a series of Chinese electronic dictionaries manufactured by BESTA. The devices use a 6502/W65C02 CPU (SPDC1024 SoC) and include built-in games and applications. WQXEmu is a low-level emulator that runs actual firmware dumped from physical devices, supporting NC1020, PC1000, CC800, NC2000, and NC3000 models.

The WQXEmu core has been authored by:

- Aloys

The WQXEmu core is licensed under:

- [GPL-3.0-or-later](https://github.com/AloysHF/WQXEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Firmware

WQXEmu requires original hardware firmware files placed in RetroArch's system directory. The firmware is model-specific and conditionally required based on the selected model in Core Options.

| Model | Required files |
|-------|---------------|
| NC1020 | `WQXEmu/nc1020/obj_lu.bin`, `WQXEmu/nc1020/nc1020.fls` |
| PC1000 | `WQXEmu/pc1000/pc1000.rom`, `WQXEmu/pc1000/pc1000.fls` |
| CC800 | `WQXEmu/cc800/obj.bin`, `WQXEmu/cc800/cc800.fls` |
| NC2000 | `WQXEmu/nc2000/nc2000.nor`, `WQXEmu/nc2000/nc2000.nand`, `WQXEmu/nc2000/nc2000.nand0` |
| NC3000 | `WQXEmu/nc3000/nc3000.nor`, `WQXEmu/nc3000/nc3000.nand` (optional: `WQXEmu/nc3000/nc3000.nand0`) |

## Extensions

WQXEmu does not accept content files. The core starts without content and boots the selected model's firmware directly.

## Features

Frontend-level settings or features that the WQXEmu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
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

The WQXEmu core's library name is 'Wenquxing (WQXEmu)'

## Usage

The WQXEmu core starts without content. Select a model in **Quick Menu → Core Options → Machine Model**, then start the core. The selected model is applied when the core starts, so changing it requires closing and starting the core again.

Video is output in the XRGB8888 pixel format at 160×80 pixels. Save states are supported. Persistent device state (writable flash/NAND, RAM, CPU, RTC) is saved automatically on content unload.

## Core Options

- **Machine Model** — Select NC1020, PC1000, CC800, NC2000, or NC3000. NC1020 is the default.

## User 1 device types

The WQXEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_a.png)             | Enter                    |
| ![](../image/retropad/retro_b.png)             | Escape                   |
| ![](../image/retropad/retro_x.png)             | F1                       |
| ![](../image/retropad/retro_y.png)             | F4                       |
| ![](../image/retropad/retro_l1.png)            | Page Up                  |
| ![](../image/retropad/retro_r1.png)            | Page Down                |
| ![](../image/retropad/retro_select.png)        | F11                      |
| ![](../image/retropad/retro_start.png)         | F10                      |

## External links

- [WQXEmu Repository](https://github.com/AloysHF/WQXEmu)
- [Libretro WQXEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/wqxemu_libretro.info)
- [Report Libretro WQXEmu Core Issues Here](https://github.com/AloysHF/WQXEmu/issues)
