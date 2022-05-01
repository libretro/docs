# WebAssembly (WASM-4)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/34FXmvWVH-4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

WASM-4 is a low-level fantasy game console for building small games with WebAssembly. Game cartridges (ROMs) are small, self-contained .wasm files that can be built with any programming language that compiles to WebAssembly.

The WASM-4 core have been authored by

- aduros (Bruno Garcia)

The WASM-4 core is licensed under

- [ISC](https://github.com/aduros/wasm4/blob/main/LICENSE.txt)


A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

- No Glue Code: If you've ever tried to write even a simple "Hello World" with WebAssembly before, you'll know it usually involves writing a bunch of JS and HTML glue. WASM-4 removes all of that, games interface directly with the system through a small API.
- Minimalist: Fantasy consoles force developers to work with limited resources. This makes them simple to learn, and easier to focus on finishing your game.
- Language Agnostic: Use any programming language, as long as it can compile to WebAssembly. Out of the box we currently support: AssemblyScript, C/C++, Rust, Go, D, Nim, Odin, Zig.
- Portable: WASM-4 is designed to run on any device that can execute WebAssembly, even outside of the web! We're planning a lightweight implementation written in C that will run even on a potato.

## Extensions

Content that can be loaded by the WASM-4 core have the following file extensions:

- .wasm

## Databases

RetroArch database(s) that are associated with the WASM-4 core:

- [WASM-4](https://github.com/libretro/libretro-database/blob/master/rdb/WASM-4.rdb)

## BIOS

WASM-4 does not require BIOS (bootrom) files to work.

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔          |
| States            | ✔         |
| Rewind            | ✔        |
| Netplay           | ✔         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
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
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Crop Overscan (in RetroArch's Video settings) | ✕         |

### Directories

The WASM-4 core's doesn't create any directory.

### Core provided aspect ratio

WASM-4's core provided aspect ratio is 1/1.

## Core options

The WASM-4 core's doesn't have any Core Options.

## Controllers


### Device types

The WASM-4 core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 1 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table


| RetroPad Inputs                                | User 1 - 5 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | Z                            |
| ![](../image/retropad/retro_a.png)             | X                            |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  |

## External Links

- [Libretro WASM-4 Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/wasm4_libretro.info)
- [Libretro WASM-4 Github Repository](https://github.com/libretro/)
- [Report WASM-4 Core Issues Here](https://github.com/libretro/)
