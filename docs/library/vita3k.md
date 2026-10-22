# Sony - PlayStation Vita (Vita3K)

## Background

A port of [Vita3K](https://vita3k.org/), the experimental PlayStation Vita emulator, to libretro. It is built on current upstream Vita3K and on [danprice142's libretro port](https://github.com/danprice142/Vita3K-libretro), and reports upstream's version. Which games work is the same as in standalone Vita3K; see its [compatibility list](https://vita3k.org/compatibility.html).

The core is built for Linux (x86_64, arm64), Windows (x64) and Android (arm64-v8a, x86_64).

The Vita3K core has been authored by

- Vita3K Team
- danprice142
- WizzardSK

The Vita3K core is licensed under

- [GPLv2](https://github.com/WizzardSK/vita3k-libretro/blob/libretro/COPYING.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A 64-bit CPU and a GPU with Vulkan 1.1 support. The core renders on RetroArch's own Vulkan device, so set RetroArch's video driver to `vulkan`. The **Backend Renderer** core option also offers OpenGL, which needs the `glcore` video driver.

## BIOS

The core needs the PS Vita system software (firmware), which is not included with it. Download the packages from PlayStation's website and put them in a `vita3k` folder in RetroArch's system directory. The core installs them the first time it starts.

| Filename              | Description                                       | md5sum |
|:---------------------:|:-------------------------------------------------:|:------:|
| PSP2UPDAT.PUP         | PS Vita system firmware - Required                | -      |
| PSP2UPDAT_PREINST.PUP | PS Vita firmware preinstalled package - Required  | -      |
| PSP2UPDAT_FONT.PUP    | PS Vita firmware fonts - Optional                 | -      |

The preinstalled and font packages are also accepted under the names they are downloaded with, `preinst_fresh.pup` and `font_fresh.pup`.

The core also needs its own data files: the `data` and `shaders-builtin` folders that come with the core's release go in `system/vita3k/` too.

## Extensions

Content that can be loaded by the Vita3K core have the following file extensions:

- .vpk
- .zip
- .pkg
- .bin

A game is loaded as a `.vpk` or `.zip` archive, or from a game folder through its `eboot.bin`. It is installed into `system/vita3k/` the first time it is started, and started from there afterwards.

A `.pkg` (a game, its update or its DLC) needs its license next to it: `<name>.zrif`, `<name>.rif`, `work.bin` or `<CONTENT_ID>.rif`. The **Game PKG** core option chooses whether a game's PKG is run straight from the file or installed first.

## Features

Frontend-level settings or features that the Vita3K core respects.

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
| Rumble            | ✕         |
| Sensors           | ✔         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

Games save to the emulated console's memory card under `system/vita3k/ux0/`, not to RetroArch save files. Save states are not supported.

## Directories

The Vita3K core's library name is 'Vita3K'.

**Frontend's System directory**

- `vita3k/PSP2UPDAT.PUP`, `vita3k/PSP2UPDAT_PREINST.PUP`, `vita3k/PSP2UPDAT_FONT.PUP` (firmware packages)
- `vita3k/data/`, `vita3k/shaders-builtin/` (the core's data files)
- `vita3k/ux0/` (the emulated memory card)
    - `ux0/app/<title ID>/` (an installed game)
    - `ux0/patch/<title ID>/` (its installed update)
    - `ux0/addcont/<title ID>/<DLC ID>/` (its installed DLC)
    - `ux0/user/00/savedata/<title ID>/` (its saves)
    - `ux0/user/00/trophy/` (trophies)
- `vita3k/cache/pkg/` (the persistent cache of a game run directly with a cache: the parts of the game, its update and DLC that were read)
- `vita3k/cache/shaders/<title ID>/` (a game's shader cache)

## Core options

The Vita3K core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### GPU

- **Backend Renderer** [vita3k_backend_renderer] (**Vulkan**|OpenGL)

    Select the graphics backend. Vulkan is recommended.

- **Internal Resolution Multiplier** [vita3k_resolution_multiplier] (**1x (960x544)**|2x (1920x1088)|3x (2880x1632)|4x (3840x2176))

    Multiplier for the internal rendering resolution (960x544 base).

- **Screen Filter** [vita3k_screen_filter] (**Bilinear**|Nearest|Bicubic|FXAA|FSR)

    Post-processing filter applied to the rendered frame.

- **Anisotropic Filtering** [vita3k_anisotropic_filtering] (**1x (Off)**|2x|4x|8x|16x)

    Level of anisotropic texture filtering.

- **V-Sync** [vita3k_v_sync] (**ON**|OFF)

    Enable or disable vertical sync.

- **Async Pipeline Compilation** [vita3k_async_pipeline] (**ON**|OFF)

    Compile shader pipelines asynchronously to reduce stuttering.

- **Memory Mapping** [vita3k_memory_mapping] (OFF|**Double Buffer**|External Host|Page Table|Native Buffer)

    GPU memory mapping method. Higher methods improve performance but require GPU support.

- **High Accuracy Rendering** [vita3k_high_accuracy] (**OFF**|ON)

    Enable more accurate but slower rendering techniques.

- **Surface Sync** [vita3k_surface_sync] (**Enabled (more accurate)**|Disabled (faster))

    GPU memory optimization. May improve performance by 20-40%.

#### CPU

- **CPU Optimizations (Dynarmic JIT)** [vita3k_cpu_opt] (**ON**|OFF)

    Enable Dynarmic JIT for faster CPU emulation.

#### System

- **Game PKG** [vita3k_pkg_mode] (**Run Without Installing**|Install)

    How a game's PKG is run. Run Without Installing: the game starts in seconds, and a file is decrypted from the PKG the first time the game reads it, into the system folder; it is all removed when the game is closed. Install: the whole game is decrypted and installed into ux0/app the first time, as Vita3K does, which takes as long as the game is big and uses its size on disk. A game installed already runs from its installation either way. Updates and DLC are always installed.

- **PS TV Mode** [vita3k_pstv_mode] (**OFF**|ON)

    Emulate a PlayStation TV instead of a PS Vita.

- **Modules Mode** [vita3k_modules_mode] (**Automatic**|Auto & Manual|Manual)

    How system modules are loaded. Automatic is recommended.

- **FPS Hack (30 to 60)** [vita3k_fps_hack] (**OFF**|ON)

    Attempt to run 30fps-locked games at 60fps. May cause issues.

- **Confirm Button** [vita3k_sys_button] (Circle|**Cross**)

    Which button is used for confirm actions.

- **File Loading Delay** [vita3k_file_loading_delay] (**0 ms**|5 ms|10 ms|15 ms|20 ms|25 ms|30 ms)

    Delay in milliseconds for file loading. Helps with timing-sensitive games.

#### Audio

- **Audio Volume** [vita3k_audio_volume] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**)

    Master audio volume level.

- **NGS Audio Engine** [vita3k_ngs_enable] (**ON**|OFF)

    Enable the NGS audio engine for enhanced audio.

#### Network

- **PSN Signed In** [vita3k_psn_signed_in] (**OFF**|ON)

    Pretend to be signed in to PSN. Required by some games.

## Controllers

The PS Vita's own controls are on RetroArch's first port; ports two to four are the extra controllers of PS TV Mode. The touchscreen follows the frontend's pointer (mouse or touchscreen): it touches the front screen, or the rear touch pad while L2 is held. The motion sensors use the frontend's accelerometer and gyroscope where the device has them.

## Joypad

| RetroPad Inputs                                | PS Vita            |
|------------------------------------------------|--------------------|
| ![](../image/retropad/retro_b.png)             | Cross              |
| ![](../image/retropad/retro_a.png)             | Circle             |
| ![](../image/retropad/retro_y.png)             | Square             |
| ![](../image/retropad/retro_x.png)             | Triangle           |
| ![](../image/retropad/retro_select.png)        | Select             |
| ![](../image/retropad/retro_start.png)         | Start              |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up           |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down         |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left         |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right        |
| ![](../image/retropad/retro_l1.png)            | L                  |
| ![](../image/retropad/retro_r1.png)            | R                  |
| ![](../image/retropad/retro_l2.png)            | L2 (PS TV mode)    |
| ![](../image/retropad/retro_r2.png)            | R2 (PS TV mode)    |
| ![](../image/retropad/retro_l3.png)            | L3 (PS TV mode)    |
| ![](../image/retropad/retro_r3.png)            | R3 (PS TV mode)    |
| ![](../image/retropad/retro_left_stick.png)    | Left stick         |
| ![](../image/retropad/retro_right_stick.png)   | Right stick        |

## External Links

- [Vita3K Core info file](https://github.com/WizzardSK/vita3k-libretro/blob/libretro/vita3k_libretro.info)
- [Vita3K libretro GitHub Repository](https://github.com/WizzardSK/vita3k-libretro)
- [Report Vita3K Core Issues Here](https://github.com/WizzardSK/vita3k-libretro/issues)
- [Upstream Vita3K](https://github.com/Vita3K/Vita3K)
- [Vita3K Website](https://vita3k.org/)
