# Microsoft - Xbox (xemu)

## Background

A port of [xemu](https://xemu.app), the original Xbox emulator, to libretro. The emulator is upstream's: the core follows [xemu-project/xemu](https://github.com/xemu-project/xemu) and reports upstream's version. It is experimental.

The core is built for Linux (x86_64, arm64), Windows (x64), macOS (Apple Silicon, Intel) and Android (arm64-v8a, x86_64).

The xemu core has been authored by

- xemu-project team
- Matt Borgerson
- WizzardSK

The xemu core is licensed under

- [GPLv2](https://github.com/WizzardSK/xemu-libretro/blob/libretro/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A 64-bit CPU and a GPU with OpenGL 4.0 (core profile) or Vulkan 1.1 support. The **Graphics API** core option picks the renderer, Vulkan by default; a change takes effect after RetroArch is restarted.

* On Android the core renders with Vulkan only.
* On macOS it renders with OpenGL only: MoltenVK has no geometry shaders, which xemu's Vulkan renderer needs. Use RetroArch's `glcore` video driver there.

## BIOS

The core needs the console's boot ROM and BIOS and a hard disk image, none of which are included with it. Put them in an `xemu` folder in RetroArch's system directory.

| Filename              | Description                                   | md5sum                           |
|:---------------------:|:---------------------------------------------:|:--------------------------------:|
| mcpx_1.0.bin          | MCPX boot ROM, 512 bytes - Required           | d49c52a4102f6df7bcf8d0617ac475ed |
| Complex_4627v1.03.bin | Flash ROM (BIOS), 1 MB or 256 KB - Required   | -                                |
| xbox_hdd.qcow2        | Hard disk image - Required                    | -                                |
| xbox_eeprom.bin       | EEPROM - Optional, created when it is missing | -                                |

The boot ROM and the BIOS are Microsoft's and have to be dumped from your own console; see xemu's [required files](https://xemu.app/docs/required-files/). A ready-made hard disk image is published by the xemu project as [xemu-hdd-image](https://github.com/xemu-project/xemu-hdd-image/releases).

## Extensions

Content that can be loaded by the xemu core have the following file extensions:

- .iso
- .xiso

Games are loaded as XISO images, the format made by tools such as extract-xiso. A plain redump `.iso` of an Xbox disc has to be converted to XISO first.

## Features

Frontend-level settings or features that the xemu core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
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
| Rumble            | ✔         |
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

Games save to the emulated console's hard disk, inside `xbox_hdd.qcow2`, not to RetroArch save files. Save states are not supported.

## Directories

The xemu core's library name is 'xemu'.

**Frontend's System directory**

- `xemu/mcpx_1.0.bin`, `xemu/Complex_4627v1.03.bin` (boot ROM and BIOS)
- `xemu/xbox_hdd.qcow2` (hard disk image, which holds the game saves)
- `xemu/xbox_eeprom.bin` (EEPROM)

## Core options

The xemu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

- **System Memory (MB)** [xemu_memory] (**64 MB**|128 MB)

    Amount of system RAM. 64 MB is standard; 128 MB is used by debug kits.

- **Network Backend** [xemu_network_backend] (**Disabled**|NAT)

    Enable network support for Xbox games with LAN/System Link features. NAT backend provides basic connectivity.

- **Skip Boot Animation** [xemu_skip_boot_anim] (**Disabled**|Enabled)

    Skip the Xbox boot animation.

- **Hardware FPU Emulation** [xemu_hard_fpu] (**Enabled**|Disabled)

    Use host FPU for x87 emulation. Faster but may have minor inaccuracies.

#### Video

- **Graphics API (Restart)** [xemu_renderer] (**Vulkan**|OpenGL)

    The renderer the emulated GPU is drawn with. Vulkan is the default; OpenGL is the fallback for drivers where Vulkan misbehaves. Takes effect after RetroArch is restarted. Android always uses Vulkan, macOS always OpenGL.

- **Aspect Ratio** [xemu_aspect_ratio] (**Auto**|4:3|16:9)

    The shape the picture is shown in. Auto follows the game: 16:9 when it switches the console to widescreen (Widescreen has to be on in the dashboard's video settings), 4:3 otherwise. Choose 16:9 for a game that renders widescreen but is shown squashed.

- **Internal Resolution Scale** [xemu_surface_scale] (**1x (640x480)**|2x (1280x960)|3x (1920x1440)|4x (2560x1920)|5x (3200x2400)|6x (3840x2880)|7x (4480x3360)|8x (5120x3840)|9x (5760x4320)|10x (6400x4800))

    Scales the internal rendering resolution. Higher values improve quality but reduce performance.

- **AV Pack** [xemu_avpack] (**HDTV**|Composite|S-Video|SCART|VGA)

    Select the AV pack type. Affects available video modes.

- **Shader Cache** [xemu_cache_shaders] (**Enabled**|Disabled)

    Cache compiled GPU shaders to disk. Reduces stutter on subsequent runs.

- **Reduced Vulkan Buffers (Restart)** [xemu_vk_reduced_buffers] (**Enabled**|Disabled)

    The Vulkan renderer reserves its work buffers when it starts, whatever the game needs. Enabled keeps the buffer for inline vertex data at a tenth of xemu's size, which takes about 1.2 GB less video memory and as much less system memory. Disabled reserves xemu's full size on graphics cards with 4 GB or more; try it if a game is slower with this enabled.

- **Display Filtering** [xemu_display_filtering] (**Bilinear**|Nearest Neighbor)

    Texture filtering mode for the display output.

#### Audio

- **APU DSP Emulation** [xemu_use_dsp] (**Disabled**|Enabled)

    Enable DSP emulation for improved audio accuracy. May impact performance.

- **Audio Volume Limit (%)** [xemu_audio_volume] (**100%**|80%|60%|40%|20%|Muted)

    Limit Xbox audio output volume independently from RetroArch master volume.

## Controllers

Up to four Xbox controllers, one per RetroArch port. Rumble goes through the frontend's rumble interface.

## Joypad

| RetroPad Inputs                                | Xbox controller    |
|------------------------------------------------|--------------------|
| ![](../image/retropad/retro_b.png)             | A                  |
| ![](../image/retropad/retro_a.png)             | B                  |
| ![](../image/retropad/retro_y.png)             | X                  |
| ![](../image/retropad/retro_x.png)             | Y                  |
| ![](../image/retropad/retro_select.png)        | Back               |
| ![](../image/retropad/retro_start.png)         | Start              |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up           |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down         |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left         |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right        |
| ![](../image/retropad/retro_l1.png)            | White              |
| ![](../image/retropad/retro_r1.png)            | Black              |
| ![](../image/retropad/retro_l2.png)            | Left Trigger       |
| ![](../image/retropad/retro_r2.png)            | Right Trigger      |
| ![](../image/retropad/retro_l3.png)            | Left Stick click   |
| ![](../image/retropad/retro_r3.png)            | Right Stick click  |
| ![](../image/retropad/retro_left_stick.png)    | Left stick         |
| ![](../image/retropad/retro_right_stick.png)   | Right stick        |

## External Links

- [xemu Core info file](https://github.com/WizzardSK/xemu-libretro/blob/libretro/ui/xemu_libretro.info)
- [xemu libretro GitHub Repository](https://github.com/WizzardSK/xemu-libretro)
- [Report xemu Core Issues Here](https://github.com/WizzardSK/xemu-libretro/issues)
- [Upstream xemu](https://github.com/xemu-project/xemu)
- [xemu Website](https://xemu.app)
