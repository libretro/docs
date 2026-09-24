# Nintendo - Wii U (Cemu)

## Background

A port of the [Cemu](https://github.com/cemu-project/Cemu) Wii U emulator to libretro. It renders through the frontend's hardware context - Vulkan, sharing RetroArch's instance, device and queue, or OpenGL 4.5 core profile - and can show the Wii U GamePad's screen next to the TV screen in several layouts, switching between them with a button combination.

The core is built for Windows x64, Linux x86_64 and arm64, macOS x86_64 and arm64, and Android arm64-v8a and x86_64.

The Cemu core has been authored by

- Cemu Project
- WizzardSK

The Cemu core is licensed under

- [MPLv2](https://github.com/WizzardSK/cemu-libretro/blob/libretro/LICENSE.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A 64-bit CPU and a GPU with Vulkan or OpenGL 4.5 support. The core cannot run without a hardware context: if the frontend cannot provide one, loading content fails. On Linux under Wayland use the Vulkan graphics API - the OpenGL path renders a black screen there. On Android, Cemu has no GLES renderer, so the core always uses Vulkan.

The requirements of [standalone Cemu](https://wiki.cemu.info/wiki/Main_Page) apply otherwise; Wii U emulation is demanding on the CPU.

## Setup

Everything the core reads and writes lives in a `Cemu` folder in RetroArch's system directory, except the emulated Wii U storage (MLC), which is in the save directory:

```
retroarch/
├── saves/
│   └── Cemu/
│       └── mlc01/            (Wii U storage: saves, updates, DLC)
└── system/
    └── Cemu/
        ├── keys.txt          (disc keys)
        ├── graphicPacks/     (optional)
        ├── resources/
        │   └── sharedFonts/  (optional)
        ├── shaderCache/
        ├── settings.xml
        └── log.txt
```

* `keys.txt` holds the keys that encrypted disc images (`.wud`, `.wux`) need, in the same format as standalone Cemu's. Put it in `system/Cemu/`.
* `mlc01/` is the emulated Wii U storage: game saves go here, and installed updates and DLC are found here, as in standalone Cemu. It is created on the first run.
* `graphicPacks/` takes Cemu graphic packs. Packs marked `default = 1` (such as crash fixes for specific games) are enabled automatically.
* `resources/sharedFonts/` takes the Wii U system fonts (`CafeStd.ttf`, `CafeCn.ttf`, `CafeKr.ttf`, `CafeTw.ttf`) for games that need them, if the system font title is not installed in `mlc01/`.
* `shaderCache/` is where compiled shaders are kept between runs.

## Extensions

Content that can be loaded by the Cemu core have the following file extensions:

- .wud
- .wux
- .wua
- .iso
- .rpx
- .elf
- .tmd

`.tmd` loads a title stored as a folder of `.app` files: point the core at its `title.tmd`.

RetroArch has no Wii U database yet, so a regular scan does not recognise Wii U games: load them with `Load Content`, or build a playlist with `Import Content > Manual Scan`.

## Features

Frontend-level settings or features that the Cemu core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
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

Save states are not supported, and cannot be: Cemu has no way of serializing the emulated system's state.

## Directories

The Cemu core's library name is 'Cemu'.

**Frontend's System directory**

- `Cemu/` (keys, graphic packs, fonts, shader cache, settings, log)

**Frontend's Save directory**

- `Cemu/mlc01/` (emulated Wii U storage)

## Screen layouts

A Wii U game draws to two screens, the TV and the GamePad. The **Screen** core options set up to five layouts - the TV screen, the GamePad screen, side by side, top and bottom, or picture in picture - and **Next Screen Layout** names the button combination that steps through them while a game runs. **GamePad Position** swaps which side (or which corner) the GamePad screen takes.

The mouse or a touch screen acts as the GamePad's touch screen. In the layouts that show both screens, only touches inside the GamePad's part of the picture register.

## Core options

The Cemu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. The options are grouped into the categories below.

#### Video

- **Upscale Filter** [cemu_upscale_filter] (**Linear**|Bicubic|Bicubic Hermite|Nearest)
- **Downscale Filter** [cemu_downscale_filter] (**Linear**|Bicubic|Bicubic Hermite|Nearest)
- **Internal Resolution** [cemu_internal_resolution] (640x360|960x540|**1280x720**|1920x1080|2560x1440|3840x2160)
- **Fullscreen Scaling** [cemu_fullscreen_scaling] (**Keep Aspect**|Stretch)
- **Reduce BC1 Texture Memory** [cemu_bc1_16bit] (**OFF**|ON)
- **Graphics API (restart)** [cemu_gpu_api] (**OpenGL**|Vulkan)

#### Shaders

- **Async Shader Compile** [cemu_async_shader_compile] (**ON**|OFF)
- **GX2DrawDone Sync** [cemu_gx2drawdone_sync] (**ON**|OFF)
- **Precompiled Shaders** [cemu_precompiled_shaders] (**Auto**|ON|OFF)
- **Accurate Shader Multiplication** [cemu_accurate_shader_mul] (**ON**|OFF)
- **Shader Fast Math** [cemu_shader_fast_math] (**ON**|OFF)

#### Screen

- **# of Screen Layouts** [cemu_number_of_screen_layouts] (1|**2**|3|4|5)
- **Layout 1** [cemu_screen_layout1] (**Default Screen**|GamePad Screen|Side by Side|Top Bottom|Picture in Picture)
- **Layout 2** [cemu_screen_layout2] (Default Screen|**GamePad Screen**|Side by Side|Top Bottom|Picture in Picture)
- **Layout 3** [cemu_screen_layout3] (Default Screen|GamePad Screen|**Side by Side**|Top Bottom|Picture in Picture)
- **Layout 4** [cemu_screen_layout4] (Default Screen|GamePad Screen|Side by Side|**Top Bottom**|Picture in Picture)
- **Layout 5** [cemu_screen_layout5] (Default Screen|GamePad Screen|Side by Side|Top Bottom|**Picture in Picture**)
- **Next Screen Layout** [cemu_next_screen_layout_button] (OFF|**L + R + L2 + R2 + L3 + R3**|Select + L3|Select + R3|Tab)
- **GamePad Position** [cemu_drc_position] (**Normal**|Swapped)

#### Audio

- **Audio Latency** [cemu_audio_latency] (1|**2**|3|4)

#### System

- **CPU Mode (restart)** [cemu_cpu_mode] (**Auto**|Singlecore Interpreter|Singlecore Recompiler|Multicore Recompiler|Multicore Interpreter)
- **Console Language** [cemu_console_language] (**English**|Japanese|French|German|Italian|Spanish|Chinese|Korean|Dutch|Portuguese|Russian|Taiwanese)
- **Thread Quantum** [cemu_thread_quantum] (20000|**45000**|60000|80000|100000)

#### Add-ons

- **Emulate Skylander Portal** [cemu_emulate_skylander_portal] (**OFF**|ON)
- **Emulate Infinity Base** [cemu_emulate_infinity_base] (**OFF**|ON)
- **Emulate Dimensions Toypad** [cemu_emulate_dimensions_toypad] (**OFF**|ON)

#### Logging

- **Write Cemu Log to log.txt** [cemu_log_to_file] (**ON**|OFF)
- **Log File Access (debugging)** [cemu_log_filesystem] (**OFF**|ON)
- **Log Thread Synchronisation (debugging)** [cemu_log_thread_sync] (**OFF**|ON)
- **Log System API Calls (debugging)** [cemu_log_system_api] (**OFF**|ON)
- **Log Texture Memory (debugging)** [cemu_log_texture_memory] (**OFF**|ON)
- **Log Controller API Calls (debugging)** [cemu_log_input_api] (**OFF**|ON)
- **Log Audio Pacing (debugging)** [cemu_log_audio] (**OFF**|ON)

#### Convert to WUA

- **Output Directory** [cemu_wua_output_dir] (*filled in at run time*)
- **Start Conversion to WUA** [cemu_convert_to_wua] (**OFF**|ON)

The **Convert to WUA** options appear when a game is loaded and there is somewhere to write the result: they convert the loaded game to a single `.wua` archive, while it keeps running.

## Controllers

What each port emulates is set with RetroArch's device type (`Controls > Port N Controls > Device Type`).

- **Port 1** is always the Wii U GamePad. It can also drive a Wii Remote - held upright or sideways - for games that want one alongside the GamePad.
- **Ports 2-4** can be a Wii Remote, a Wii Remote held sideways, a Wii U Pro Controller or a Classic Controller, or nothing (the default).

## Joypad

| RetroPad Inputs                                | Wii U GamePad / Pro Controller | Classic Controller | Wii Remote | Wii Remote (sideways) |
|------------------------------------------------|--------------------------------|--------------------|------------|-----------------------|
| ![](../image/retropad/retro_b.png)             | B                              | B                  | A          | 2                     |
| ![](../image/retropad/retro_a.png)             | A                              | A                  | B          | 1                     |
| ![](../image/retropad/retro_y.png)             | Y                              | Y                  | 1          | A                     |
| ![](../image/retropad/retro_x.png)             | X                              | X                  | 2          | B                     |
| ![](../image/retropad/retro_select.png)        | -                              | -                  | -          | -                     |
| ![](../image/retropad/retro_start.png)         | +                              | +                  | +          | +                     |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                       | D-Pad Up           | D-Pad Up   | D-Pad Right           |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                     | D-Pad Down         | D-Pad Down | D-Pad Left            |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                     | D-Pad Left         | D-Pad Left | D-Pad Up              |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                    | D-Pad Right        | D-Pad Right| D-Pad Down            |
| ![](../image/retropad/retro_l1.png)            | L                              | L                  | Home       | Home                  |
| ![](../image/retropad/retro_r1.png)            | R                              | R                  |            |                       |
| ![](../image/retropad/retro_l2.png)            | ZL                             | ZL                 |            |                       |
| ![](../image/retropad/retro_r2.png)            | ZR                             | ZR                 |            |                       |
| ![](../image/retropad/retro_l3.png)            | Left stick click               | Home               |            |                       |
| ![](../image/retropad/retro_r3.png)            | Right stick click              |                    |            |                       |
| ![](../image/retropad/retro_left_stick.png)    | Left stick                     | Left stick         |            |                       |
| ![](../image/retropad/retro_right_stick.png)   | Right stick                    | Right stick        |            |                       |

## External Links

- [Cemu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/cemu_libretro.info)
- [Cemu libretro GitHub Repository](https://github.com/WizzardSK/cemu-libretro)
- [Report Cemu Core Issues Here](https://github.com/WizzardSK/cemu-libretro/issues)
- [Upstream Cemu](https://github.com/cemu-project/Cemu)
