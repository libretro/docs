# Sony - PlayStation 3 (RPCS3)

## Background

A port of the [RPCS3](https://github.com/RPCS3/rpcs3) PlayStation 3 emulator to libretro. It runs the PS3's Cell processor with RPCS3's LLVM recompilers and renders with Vulkan or OpenGL.

The core is built for Linux x86_64 and arm64, Windows x64 and Android arm64-v8a.

The RPCS3 core has been authored by

- RPCS3 Team
- WizzardSK

The RPCS3 core is licensed under

- [GPLv2](https://github.com/WizzardSK/rpcs3-libretro/blob/libretro/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A 64-bit CPU and a GPU with Vulkan or OpenGL 4.5 support. The two renderers (the **Renderer** core option) reach the screen differently:

* **Vulkan** (the default) renders on its own device and hands each finished frame to the frontend through memory, so it works with any RetroArch video driver.
* **OpenGL** draws straight into the frontend's context, so it needs RetroArch's `glcore` video driver and an OpenGL 4.5 capable GPU.

PS3 emulation is very demanding on the CPU; the requirements of [standalone RPCS3](https://rpcs3.net/quickstart) apply.

## BIOS

The core needs the PS3 system software (firmware), which is not included with it. Download `PS3UPDAT.PUP` from [PlayStation's system software update page](https://www.playstation.com/en-us/support/hardware/ps3/system-software/) and put it in RetroArch's system directory.

| Filename     | Description                                | md5sum |
|:------------:|:------------------------------------------:|:------:|
| PS3UPDAT.PUP | PS3 system software (firmware) - Required  | -      |

The core looks for it as `system/PS3UPDAT.PUP`, `system/rpcs3/PS3UPDAT.PUP` or `system/rpcs3/firmware/PS3UPDAT.PUP`, and installs it the first time content is loaded, which makes that first start take longer. Once it is installed, the file itself is no longer needed.

## Setup

Everything the core reads and writes lives in an `rpcs3` folder in RetroArch's system directory, laid out the way standalone RPCS3 lays out its own:

```
retroarch/
├── saves/
│   ├── rpcs3_detailed.log       (RPCS3's own log)
│   └── rpcs3_libretro_crash.log (written if the core crashes)
└── system/
    ├── PS3UPDAT.PUP             (until it is installed)
    └── rpcs3/
        ├── dev_flash/           (installed firmware)
        ├── dev_hdd0/            (PS3 internal storage: game data, saves, installed PKGs)
        ├── data/redump/         (optional: disc keys)
        ├── cache/               (compiled PPU/SPU code and shaders)
        ├── config.yml
        └── vfs.yml
```

* Game saves are kept where a PS3 keeps them, in `dev_hdd0/home/00000001/savedata/`, not as RetroArch save files.
* `cache/` holds what the LLVM recompilers and the shader compiler produce. The first run of a game compiles a lot of it and stutters while doing so; later runs reuse it.
* Game patches: the core reads RPCS3's `patch_config.yml` from `system/rpcs3/config/`, but cannot turn patches on by itself. Create the file with standalone RPCS3's patch manager and copy it there.

## Extensions

Content that can be loaded by the RPCS3 core have the following file extensions:

- .bin
- .self
- .elf
- .iso
- .pkg

A game in folder form - as dumped from a disc, or installed from a PKG - is loaded through its `EBOOT.BIN`, in `PS3_GAME/USRDIR/` or `USRDIR/`.

An `.iso` is mounted as a PS3 disc. An encrypted (redump) image needs its disc key: a `.dkey` or `.key` file with the same name as the image, next to it or in `system/rpcs3/data/redump/`.

Loading a `.pkg` installs it - next to the package, or else in `system/rpcs3/dev_hdd0/game/` - and boots the installed game.

RetroArch has no PS3 database yet, so a regular scan does not recognise PS3 games: load them with `Load Content`, or build a playlist with `Import Content > Manual Scan`.

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

Games save to the emulated PS3's storage (see Setup), not to RetroArch save files. Save states are not supported: RPCS3 cannot serialize the emulated system's state in the middle of a game.

## Directories

The RPCS3 core's library name is 'RPCS3'.

**Frontend's System directory**

- `PS3UPDAT.PUP` (firmware, until it is installed)
- `rpcs3/` (installed firmware, PS3 storage, caches, configuration)

**Frontend's Save directory**

- `rpcs3_detailed.log` (RPCS3's log)
- `rpcs3_libretro_crash.log` (crash report)

## Core options

The RPCS3 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. The options are grouped into the categories below.

#### CPU

- **PPU Decoder** [rpcs3_ppu_decoder] (**Recompiler (LLVM)**|Interpreter (Slow))
- **SPU Decoder** [rpcs3_spu_decoder] (**Recompiler (LLVM)**|Recompiler (ASMJIT)|Interpreter (Slow))
- **SPU Block Size** [rpcs3_spu_block_size] (**Safe**|Mega|Giga)
- **Preferred SPU Threads** [rpcs3_preferred_spu_threads] (**Auto**|1|2|3|4|5|6)
- **SPU Loop Detection** [rpcs3_spu_loop_detection] (**ON**|OFF)
- **SPU Cache** [rpcs3_spu_cache] (**ON**|OFF)
- **LLVM Precompilation** [rpcs3_llvm_precompilation] (**ON**|OFF)
- **Accurate DFMA** [rpcs3_accurate_dfma] (**OFF**|ON)
- **PPU Thread Reservations** [rpcs3_ppu_reservations] (**ON**|OFF)
- **Accurate XFLOAT** [rpcs3_accurate_xfloat] (**OFF**|ON)
- **Clocks Scale** [rpcs3_clocks_scale] (50%|75%|**100%**|150%|200%|300%)
- **Sleep Timers Accuracy** [rpcs3_sleep_timers_accuracy] (**Usleep**|All Timers|As Host)
- **Max SPURS Threads** [rpcs3_max_spurs_threads] (**Auto**|1|2|3|4|5|6)
- **Enable TSX** [rpcs3_enable_tsx] (**ON**|OFF|Forced)
- **SPU XFloat Accuracy** [rpcs3_spu_xfloat_accuracy] (Relaxed (Fastest)|**Accurate**|Ultra (Slowest))
- **SPU DMA Busy Waiting** [rpcs3_spu_dma_busy_wait] (**OFF**|ON)
- **PPU LLVM Java Mode Handling** [rpcs3_ppu_llvm_java_mode] (**OFF**|ON)

#### GPU

- **Renderer** [rpcs3_renderer] (OpenGL|**Vulkan (through memory)**|Null (No Video))
- **Resolution Scale** [rpcs3_resolution_scale] (25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|**100% (Native)**|105%|110%|115%|120%|125%|130%|135%|140%|145%|150%|175%|200%|250%|300%)
- **Frame Limit** [rpcs3_frame_limit] (**Auto**|Off|30 FPS|50 FPS|60 FPS|120 FPS|144 FPS|240 FPS)
- **Shader Mode** [rpcs3_shader_mode] (**Async (Recommended)**|Async with Shader Interpreter (no stalls)|Async with Recompiler|Shader Interpreter only|Synchronous)
- **Shader Compiler Threads** [rpcs3_shader_compiler_threads] (**Auto**|1|2|3|4|6|8)
- **Anisotropic Filtering** [rpcs3_anisotropic_filter] (**Auto**|1x (Off)|2x|4x|8x|16x)
- **Anti-Aliasing (MSAA)** [rpcs3_msaa] (**OFF**|2x|4x|8x|16x)
- **Shader Precision** [rpcs3_shader_precision] (Low (Fastest)|**Normal**|High (Most Accurate))
- **Write Color Buffers** [rpcs3_write_color_buffers] (**OFF**|ON)
- **Read Color Buffers** [rpcs3_read_color_buffers] (**OFF**|ON)
- **Read Depth Buffers** [rpcs3_read_depth_buffers] (**OFF**|ON)
- **Write Depth Buffers** [rpcs3_write_depth_buffers] (**OFF**|ON)
- **Strict Rendering Mode** [rpcs3_strict_rendering] (**OFF**|ON)
- **Vertex Cache** [rpcs3_vertex_cache] (**ON**|OFF)
- **Multithreaded RSX** [rpcs3_multithreaded_rsx] (**ON**|OFF)
- **ZCULL Accuracy** [rpcs3_zcull_accuracy] (**Relaxed (Fastest)**|Approximate|Precise (Slowest))
- **Force CPU Blit** [rpcs3_cpu_blit] (**OFF**|ON)
- **Driver Wake-Up Delay** [rpcs3_driver_wakeup_delay] (0 (Minimum)|20|50|100|**200 (Default)**|400|800)
- **VBlank Rate** [rpcs3_vblank_rate] (50 Hz (PAL)|**60 Hz (NTSC)**|120 Hz|144 Hz|240 Hz)
- **Stretch to Display** [rpcs3_stretch_to_display] (**OFF**|ON)

#### Audio

- **Enable Buffering** [rpcs3_audio_buffering] (ON|**OFF**)
- **Buffer Duration** [rpcs3_audio_buffer_duration] (10ms|20ms|30ms|40ms|50ms|75ms|**100ms (Default)**|150ms|200ms)
- **Time Stretching** [rpcs3_time_stretching] (**OFF**|ON)
- **Microphone Type** [rpcs3_microphone_type] (**Null (Disabled)**|Standard|SingStar|Real SingStar|Rocksmith)
- **Master Volume** [rpcs3_master_volume] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**)

#### Network

- **Network Enabled** [rpcs3_network_enabled] (**OFF**|ON)
- **PSN Status** [rpcs3_psn_status] (**OFF**|Simulated|RPCN)
- **UPNP** [rpcs3_upnp] (**OFF**|ON)
- **Show RPCN Popups** [rpcs3_show_rpcn_popups] (**ON**|OFF)
- **Show Trophy Popups** [rpcs3_show_trophy_popups] (**ON**|OFF)
- **DNS Server** [rpcs3_dns] (**Google DNS**|Cloudflare DNS|OpenDNS)
- **RPCN Server** [rpcs3_rpcn_server] (**Official RPCN**|Custom)

#### Advanced

- **SPU Verification** [rpcs3_spu_verification] (OFF|**ON**)
- **SPU Cache Line Stores** [rpcs3_spu_cache_line_stores] (**OFF**|ON)
- **RSX FIFO Accuracy** [rpcs3_rsx_fifo_accuracy] (**Fast**|Balanced|Accurate)
- **Driver Recovery Timeout** [rpcs3_driver_recovery_timeout] (Disabled|**1 second**|2 seconds|5 seconds|10 seconds)
- **MFC Commands Shuffling** [rpcs3_mfc_shuffling] (**OFF**|ON)
- **SPU Delay Penalty** [rpcs3_spu_delay_penalty] (0|1|2|**3 (Default)**|4|5)
- **Relaxed ZCull Sync** [rpcs3_zcull_sync] (**OFF**|ON)
- **Async Texture Streaming** [rpcs3_async_texture_streaming] (**OFF**|ON)
- **PPU LLVM Greedy Mode** [rpcs3_ppu_llvm_greedy] (**OFF**|ON)
- **SPU NJ Fixup** [rpcs3_spu_nj_fixup] (**OFF**|ON)
- **PPU NJ Fixup Mode** [rpcs3_ppu_nj_mode] (**OFF**|ON)
- **Set Saturation Bit** [rpcs3_ppu_set_sat_bit] (**OFF**|ON)
- **PPU Accurate Vector NaN** [rpcs3_ppu_accurate_vector_nan] (**OFF**|ON)
- **PPU Set FPCC** [rpcs3_ppu_set_fpcc] (**OFF**|ON)

#### Core

- **System Language** [rpcs3_language] (**English**|Japanese|French|Spanish|German|Italian|Dutch|Portuguese|Russian|Korean|Chinese (Traditional)|Chinese (Simplified))
- **Confirm Button** [rpcs3_enter_button] (**Cross (Western)**|Circle (Japanese))
- **License Area** [rpcs3_license_area] (**USA**|Europe|Japan|Hong Kong|Korea)
- **Show Shader Compilation Hint** [rpcs3_show_shader_compilation_hint] (**OFF**|ON)
- **Show PPU Compilation Hint** [rpcs3_show_ppu_compilation_hint] (**OFF**|ON)
- **VFS Initialize Mode** [rpcs3_vfs_init] (**Auto**|Reset)
- **Silence All Logs** [rpcs3_silence_all_logs] (**OFF**|ON)
- **Hook Static Functions** [rpcs3_hook_static_funcs] (**OFF**|ON)
- **HLE lwmutex** [rpcs3_hle_lwmutex] (**OFF**|ON)

## Controllers

Up to seven DualShock 3 controllers, one per RetroArch port.

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
