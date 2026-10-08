# Sony - PlayStation 3 (RPCS3)

## Background

A port of the [RPCS3](https://github.com/RPCS3/rpcs3) PlayStation 3 emulator to libretro. It runs the PS3's Cell processor with RPCS3's LLVM recompilers and renders with Vulkan or OpenGL. The emulator is upstream's; the core reports upstream's version and follows its releases.

The core is built for Linux (x86_64, arm64), Windows (x64), macOS (Apple Silicon, Intel) and Android (arm64-v8a, x86_64).

The RPCS3 core has been authored by

- RPCS3 Team
- WizzardSK

The RPCS3 core is licensed under

- [GPLv2](https://github.com/WizzardSK/rpcs3-libretro/blob/libretro/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A 64-bit CPU and a GPU with Vulkan or OpenGL 4.5 support. The two renderers (the **Renderer** core option) reach the screen differently:

* **Vulkan** (the default) renders on its own device and hands each finished frame to the frontend, so it works with any RetroArch video driver.
* **OpenGL** draws straight into the frontend's context, so it needs RetroArch's `glcore` video driver and an OpenGL 4.5 capable GPU. It is not available on macOS and Android, where the core renders with Vulkan (through MoltenVK on macOS).

PS3 emulation is very demanding on the CPU; the requirements of [standalone RPCS3](https://rpcs3.net/quickstart) apply.

## BIOS

The core needs the PS3 system software (firmware), which is not included with it. Download `PS3UPDAT.PUP` from [PlayStation's system software update page](https://www.playstation.com/en-us/support/hardware/ps3/system-software/) and put it in RetroArch's system directory.

| Filename     | Description                                | md5sum |
|:------------:|:------------------------------------------:|:------:|
| PS3UPDAT.PUP | PS3 system software (firmware) - Required  | -      |

The core looks for it as `system/rpcs3/PS3UPDAT.PUP`, `system/PS3UPDAT.PUP` or `system/rpcs3/firmware/PS3UPDAT.PUP`, and installs it the first time content is loaded, which makes that first start take longer. Once it is installed, the file itself is no longer needed.

## Setup

Everything the core reads and writes lives in an `rpcs3` folder in RetroArch's system directory, laid out the way standalone RPCS3 lays out its own:

```
retroarch/
├── saves/
│   └── rpcs3_libretro_crash.log (written if the core crashes)
└── system/
    ├── PS3UPDAT.PUP             (until it is installed)
    └── rpcs3/
        ├── dev_flash/           (installed firmware)
        ├── dev_hdd0/            (PS3 internal storage: game data, saves, installed PKGs)
        ├── dev_hdd1/            (game cache)
        ├── data/redump/         (optional: disc keys)
        ├── cache/               (compiled PPU/SPU code and shaders)
        ├── patches/             (patch.yml, imported_patch.yml)
        ├── rpcs3_detailed.log   (RPCS3's own log)
        ├── config.yml
        └── vfs.yml
```

* Game saves are kept where a PS3 keeps them, in `dev_hdd0/home/00000001/savedata/`, not as RetroArch save files.
* `cache/` holds what the LLVM recompilers and the shader compiler produce. The first run of a game compiles a lot of it and stutters while doing so; later runs reuse it. A game that has built up a large cache can take a minute or more to close.
* `dev_hdd1/` fills up with games' cache over time, and RPCS3 never cleans it. Its contents can be deleted safely when it gets too big.
* On Windows, `config.yml` and `vfs.yml` are in a `config/` subfolder of `system/rpcs3/`, as standalone RPCS3 keeps them.
* `vfs.yml` sets where the emulated drives are: `dev_hdd0` and the others can be moved outside RetroArch's folders by editing it.
* The PS3 user name is in `dev_hdd0/home/00000001/localusername`.

## Extensions

Content that can be loaded by the RPCS3 core have the following file extensions:

- .sfb
- .sfo
- .iso
- .pkg
- .bin
- .self
- .elf

A game in folder form is loaded through its `PS3_DISC.SFB` (a dumped disc) or its `PARAM.SFO` (an installed or PSN game). Its `EBOOT.BIN` can be loaded too, but then RetroArch's per-game and per-folder options cannot tell games apart, since every game's executable has the same name; loading the `.SFB` or `.SFO` file gives each game options of its own.

An `.iso` is mounted as a PS3 disc. An encrypted (redump) image needs its disc key: a `.dkey` or `.key` file with the same name as the image, next to it or in `system/rpcs3/data/redump/`.

Loading a `.pkg` installs it and boots the installed game. It is installed into RetroArch's core assets directory when the frontend has one, otherwise into `dev_hdd0/game/` (wherever `vfs.yml` puts `dev_hdd0`). A PSN game's license, a `.rap` file next to the `.pkg`, is copied to `dev_hdd0/home/00000001/exdata/` with it.

RetroArch has no PS3 database yet, so a regular scan does not recognise PS3 games: load them with `Load Content`, or build a playlist with `Import Content > Manual Scan`.

## Game settings and patches

* **Database Settings Override** (on by default) applies RPCS3's per-game settings database, the same fixes standalone RPCS3 applies from its [compatibility list](https://rpcs3.net/compatibility). For a game that still misbehaves, the game's page there lists what else it needs. Its [Vblank compatible games list](https://wiki.rpcs3.net/index.php?title=Vblank_compatible_games_list) shows which games can run above 60 FPS.
* The **Patch Manager** category lists the loaded game's patches from RPCS3's `patch.yml` (carried by the core) and `imported_patch.yml`, and turns them on per game. The core keeps its own patch settings: standalone RPCS3's `patch_config.yml` is not imported.
* A few rarely needed options are left out of the menu, as standalone RPCS3 keeps them out of its settings dialog, but can still be set in the core's `.opt` file.

## Features

Frontend-level settings or features that the RPCS3 core respects.

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
| Native Cheats     | ✔         |
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

Games save to the emulated PS3's storage (see Setup), not to RetroArch save files. Save states are not supported: RPCS3 cannot serialize the emulated system's state in the middle of a game. Native cheats are RPCS3's game patches (see Game settings and patches). PS3 peripherals beyond the DualShock 3 (guitars, PlayStation Move, cameras and the like) are not supported.

## Directories

The RPCS3 core's library name is 'RPCS3'.

**Frontend's System directory**

- `PS3UPDAT.PUP` (firmware, until it is installed)
- `rpcs3/` (installed firmware, PS3 storage, caches, configuration, patches, `rpcs3_detailed.log`)

**Frontend's Save directory**

- `rpcs3_libretro_crash.log` (crash report)

## Core options

The RPCS3 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. The options are grouped into the categories below; the Patch Manager category lists the loaded game's patches.

#### CPU

- **PPU Decoder** [rpcs3_ppu_decoder] (**Recompiler (LLVM)**|Interpreter (static))
- **SPU Decoder** [rpcs3_spu_decoder] (**Recompiler (LLVM)**|Recompiler (ASMJIT)|Interpreter (dynamic)|Interpreter (static))
- **SPU XFloat Accuracy** [rpcs3_spu_xfloat_accuracy] (Accurate|**Approximate**|Relaxed|Inaccurate)
- **SPU Block Size** [rpcs3_spu_block_size] (**Safe**|Mega|Giga)
- **Accurate RSX Reservation Access** [rpcs3_accurate_rsx_reservation] (**OFF**|ON)
- **Accurate SPU DMA** [rpcs3_spu_accurate_dma] (**OFF**|ON)
- **Accurate SPU Reservations** [rpcs3_spu_accurate_reservations] (**ON**|OFF)
- **Debug Console Mode** [rpcs3_debug_console_mode] (**OFF**|ON)
- **Delay Each Odd MFC Command** [rpcs3_mfc_delay_command] (**OFF**|ON)
- **Disable SPU GETLLAR Spin Optimization** [rpcs3_disable_getllar_spin_opt] (**OFF**|ON)
- **Emulate HDD Read Speed** [rpcs3_emulate_hdd_speed] (**OFF**|ON)
- **Emulate BD-ROM Read Speed** [rpcs3_emulate_bdvd_speed] (**OFF**|ON)
- **PPU Reservation Priority** [rpcs3_ppu_reservation_priority] (**OFF**|ON)
- **PPU/SPU LLVM Precompilation** [rpcs3_llvm_precompilation] (**ON**|OFF)
- **Sleep Timers Accuracy** [rpcs3_sleep_timers_accuracy] (**Automatic**|As Host|Usleep Only|All Timers)
- **Clocks Scale** [rpcs3_clocks_scale] (50%|75%|**100%**|150%|200%|300%)

#### GPU

- **Renderer** [rpcs3_renderer] (OpenGL|**Vulkan**|Null (No Video))
- **Frame Limit** [rpcs3_frame_limit] (**Auto**|PS3 Native|Off|30 FPS|50 FPS|60 FPS|120 FPS|144 FPS|240 FPS)
- **Anisotropic Filtering** [rpcs3_anisotropic_filter] (**Auto**|2x|4x|8x|16x)
- **Anti-Aliasing** [rpcs3_msaa] (**Auto**|OFF)
- **ZCULL Accuracy** [rpcs3_zcull_accuracy] (**Precise (Default)**|Approximate|Relaxed (Fastest))
- **Shader Quality** [rpcs3_shader_quality] (Low|**High**|Ultra)
- **Default Resolution** [rpcs3_default_resolution] (**720p (Default)**|1080p|480p|576p)
- **Resolution Scale** [rpcs3_resolution_scale] (25%|50%|66%|75%|**100% (Native)**|150%|200%|250%|300%|400%|500%|600%|700%|800%)
- **Resolution Scale Threshold** [rpcs3_scale_threshold] (1x1|**16x16 (Default)**|64x64|128x128|160x160|256x256|320x320|512x512|592x592|640x640|1024x1024)
- **Shader Mode** [rpcs3_shader_mode] (**Async (Recommended)**|Async with Shader Interpreter (no stalls)|Async with Recompiler|Shader Interpreter only|Synchronous)
- **Write Color Buffers** [rpcs3_write_color_buffers] (**OFF**|ON)
- **Strict Rendering Mode** [rpcs3_strict_rendering] (**OFF**|ON)
- **Stretch to Display Area** [rpcs3_stretch_to_display] (**OFF**|16:9|16:10|21:9|32:9|4:3|5:4)
- **Multithreaded RSX** [rpcs3_multithreaded_rsx] (**OFF**|ON)
- **Asynchronous Texture Streaming** [rpcs3_async_texture_streaming] (**OFF**|ON)
- **Allow Host GPU Labels** [rpcs3_host_gpu_labels] (**OFF**|ON)
- **Disable Blit Engine Upscaling** [rpcs3_disable_blit_upscaling] (**OFF**|ON)
- **Disable Vertex Cache** [rpcs3_disable_vertex_cache] (**OFF**|ON)
- **Emulate Special Depth Comparison** [rpcs3_emulate_depth_compare] (**OFF**|ON)
- **Force Hardware MSAA Resolve** [rpcs3_force_hw_msaa_resolve] (**OFF**|ON)
- **Handle RSX Memory Tiling** [rpcs3_handle_tiled_memory] (**OFF**|ON)
- **Read Depth Buffers** [rpcs3_read_depth_buffers] (**OFF**|ON)
- **Read Color Buffers** [rpcs3_read_color_buffers] (**OFF**|ON)
- **Use Re-BAR Memory for GPU Uploads** [rpcs3_use_rebar] (**ON**|OFF)
- **Write Depth Buffers** [rpcs3_write_depth_buffers] (**OFF**|ON)
- **RSX FIFO Accuracy** [rpcs3_rsx_fifo_accuracy] (Fast|**Atomic**|Ordered & Atomic|PS3)
- **Driver Wake-Up Delay** [rpcs3_driver_wakeup_delay] (**0 (Default)**|20|50|100|200|400|800)
- **VBlank Frequency** [rpcs3_vblank_rate] (50 Hz (PAL)|**60 Hz (NTSC)**|120 Hz|144 Hz|240 Hz)

#### Scheduling

- **Thread Scheduler** [rpcs3_thread_scheduler] (**Operating System**|RPCS3 Scheduler|RPCS3 Alternative Scheduler)
- **Preferred SPU Threads** [rpcs3_preferred_spu_threads] (**Auto**|1|2|3|4|5|6)
- **Enable SPU Loop Detection** [rpcs3_spu_loop_detection] (**OFF**|ON)
- **PPU/SPU LLVM Compiler Threads** [rpcs3_llvm_threads] (**Auto**|1|2|3|4|6|8)
- **Shader Compiler Threads** [rpcs3_shader_compiler_threads] (**Auto**|1|2|3|4|6|8)
- **PPU Thread Count** [rpcs3_ppu_threads] (1|**2 (Default)**|3|4|5|6|7|8)
- **Maximum Number of SPURS Threads** [rpcs3_max_spurs_threads] (**Auto**|1|2|3|4|5|6)
- **Max Power Saving CPU-Preemptions** [rpcs3_max_preempt_count] (**0 (Disabled)**|10|20|50|100|200|400)

#### Network

- **Network Enabled** [rpcs3_network_enabled] (**OFF**|ON)
- **PSN Status** [rpcs3_psn_status] (**OFF**|Simulated|RPCN)
- **UPnP** [rpcs3_upnp] (**OFF**|ON)
- **Show RPCN Popups** [rpcs3_show_rpcn_popups] (**ON**|OFF)
- **Show Trophy Popups** [rpcs3_show_trophy_popups] (**ON**|OFF)
- **DNS Server** [rpcs3_dns] (**Google DNS**|Cloudflare DNS|OpenDNS)

#### Debug

- **Disable FIFO Reordering** [rpcs3_disable_fifo_reordering] (**OFF**|ON)
- **Disable Hardware Blending** [rpcs3_disable_hw_blending] (**OFF**|ON)
- **Disable Hardware ColorSpace Remapping** [rpcs3_disable_hw_colorspace] (**OFF**|ON)
- **Disable ZCull Occlusion Queries** [rpcs3_disable_zcull_queries] (**OFF**|ON)
- **Force CPU Blit Emulation** [rpcs3_cpu_blit] (**OFF**|ON)
- **Force GPU Texture Scaling** [rpcs3_gpu_texture_scaling] (**OFF**|ON)
- **Enable SPU Events Busy Loop** [rpcs3_spu_events_busy_loop] (**OFF**|ON)
- **Hook Static Functions** [rpcs3_hook_static_funcs] (**OFF**|ON)
- **PPU Set DAZ and FTZ** [rpcs3_set_daz_ftz] (**OFF**|ON)
- **Accurate PPU/SPU Cache Line Stores** [rpcs3_spu_cache_line_stores] (**OFF**|ON)
- **Accurate PPU Float Condition Control** [rpcs3_ppu_set_fpcc] (**OFF**|ON)
- **Accurate PPU Saturation Bit** [rpcs3_ppu_set_sat_bit] (**OFF**|ON)
- **Accurate PPU Non-Java Mode** [rpcs3_ppu_nj_mode] (**OFF**|ON)
- **Accurate PPU Vector NaN Handling** [rpcs3_ppu_accurate_vector_nan] (**OFF**|ON)
- **Accurate PPU 128 Reservations** [rpcs3_accurate_ppu_128] (**Never (Default)**|Always|1|2|3|4|5|6|7|8|9|10|11|12|13|14)
- **Framebuffer Aliasing Heuristic Bias** [rpcs3_fb_aliasing_bias] (**Auto**|Prefer Color|Prefer Depth)

#### Core

- **Database Settings Override** [rpcs3_database_override] (**ON**|OFF)
- **Performance Overlay** [rpcs3_perf_overlay] (**OFF**|Frame rate only|Low|Medium|High)
- **Frame Pacing** [rpcs3_frame_pacing] (RetroArch|**Emulator clock**)
- **Save Data Slot** [rpcs3_savedata_slot] (**Pick from list**|0|1|2|3|4|5|6|7|8|9)
- **Master Volume** [rpcs3_master_volume] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**)
- **System Language** [rpcs3_language] (**English**|Japanese|French|Spanish|German|Italian|Dutch|Portuguese|Russian|Korean|Chinese (Traditional)|Chinese (Simplified))
- **Console Region** [rpcs3_license_area] (**SCEA (Americas)**|SCEE (Europe, Oceania)|SCEJ (Japan)|SCEH (Hong Kong, Southeast Asia)|SCEK (Korea)|SCH (China))
- **Enter Button Assignment** [rpcs3_enter_button] (**Cross (Western)**|Circle (Japanese))
- **Show PPU Compilation Hint** [rpcs3_show_ppu_compilation_hint] (**OFF**|ON)
- **Show Shader Compilation Hint** [rpcs3_show_shader_compilation_hint] (**OFF**|ON)
- **Silence All Logs** [rpcs3_silence_all_logs] (**OFF**|ON)

## Controllers

Up to seven DualShock 3 controllers, one per RetroArch port. Rumble goes through the frontend's rumble interface.

## Joypad

| RetroPad Inputs                                | DualShock 3        |
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
| ![](../image/retropad/retro_l1.png)            | L1                 |
| ![](../image/retropad/retro_r1.png)            | R1                 |
| ![](../image/retropad/retro_l2.png)            | L2                 |
| ![](../image/retropad/retro_r2.png)            | R2                 |
| ![](../image/retropad/retro_l3.png)            | L3                 |
| ![](../image/retropad/retro_r3.png)            | R3                 |
| ![](../image/retropad/retro_left_stick.png)    | Left stick         |
| ![](../image/retropad/retro_right_stick.png)   | Right stick        |

## External Links

- [RPCS3 Core info file](https://github.com/WizzardSK/rpcs3-libretro/blob/libretro/rpcs3/libretro/rpcs3_libretro.info)
- [RPCS3 libretro GitHub Repository](https://github.com/WizzardSK/rpcs3-libretro)
- [Report RPCS3 Core Issues Here](https://github.com/WizzardSK/rpcs3-libretro/issues)
- [Upstream RPCS3](https://github.com/RPCS3/rpcs3)
