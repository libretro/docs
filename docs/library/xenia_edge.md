# Microsoft - Xbox 360 (Xenia Edge)

## Background

A port of [Xenia Edge](https://github.com/has207/xenia-edge), an Xbox 360 emulator, to libretro. The emulator is upstream's: the core follows xenia-edge and reports upstream's version. It is experimental.

The core is built for Linux (x86_64, arm64), Windows (x64), macOS (Apple Silicon) and Android (arm64-v8a, x86_64). There is no build for Intel Macs: the x64 CPU backend needs the address space below 4 GB, which a core loaded into a frontend cannot free.

The Xenia Edge core has been authored by

- Xenia team
- has207 (Xenia Edge)
- WizzardSK

The Xenia Edge core is licensed under

- [BSD](https://github.com/WizzardSK/xenia-libretro/blob/libretro/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A 64-bit CPU and a GPU with Vulkan 1.1 support, or Direct3D 12 on Windows. The **Graphics API** core option picks Xenia's GPU backend. The core asks the frontend for that kind of context, and RetroArch switches its video driver to match when it is allowed to (`Settings > Video > Output`); otherwise set the video driver to `vulkan` (or `d3d12`) yourself.

* On Windows the core needs the Visual C++ 2015-2022 runtime. Direct3D 12 runs on the system's Direct3D 12 runtime.
* On Linux the core needs glibc 2.35 or newer.

## BIOS

The Xenia Edge core does not need any BIOS or firmware.

## Extensions

Content that can be loaded by the Xenia Edge core have the following file extensions:

- .iso
- .xex
- .zar
- .xcp
- .m3u

A game is loaded as a disc image (`.iso`), as its executable (`.xex`) from an extracted game, or as a `.zar` or `.xcp` package. For a game on several discs, an `.m3u` playlist lists its disc images, one per line and relative to the playlist's folder, and the discs are changed with the frontend's disc control.

## Setup

Everything the core keeps is in a `Xenia-Edge` folder in RetroArch's system directory:

```
retroarch/
└── system/
    └── Xenia-Edge/
        ├── content/              (saves, title updates and DLC, laid out as in standalone Xenia)
        ├── cache/                (shader and other caches)
        ├── xbl_profilename.txt   (name of the profile the core creates)
        └── xenia.log             (Xenia's own log)
```

* Title updates and DLC are used from `content/`, where standalone Xenia keeps them. The **Apply Title Updates** core option turns updates off.
* Games that need a signed-in profile get one: the core signs in the first profile under `content/`, or creates one when there is none. The new profile is named after the first line of `xbl_profilename.txt` ("Player" when the file is missing, and the core then writes it).
* Errors and warnings from `xenia.log` also appear in RetroArch's log.

## Features

Frontend-level settings or features that the Xenia Edge core respects.

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
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

Games save to the emulated console's storage (`content/`), not to RetroArch save files. Save states are not supported.

## Directories

The Xenia Edge core's library name is 'Xenia Edge'.

**Frontend's System directory**

- `Xenia-Edge/` (saves, title updates, DLC, caches, `xenia.log`)

## Core options

The Xenia Edge core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. Direct3D 12 is offered by **Graphics API** on Windows only.

#### Graphics Settings

- **Graphics API (Restart)** [xenia_graphics_api] (**Vulkan**|Direct3D 12)

    The GPU backend Xenia emulates the Xbox 360 GPU with, and the context the core asks RetroArch for: RetroArch changes its video driver to match when it is allowed to (Settings > Video > Output). Applies when the content is loaded again.

- **Render Target Path** [xenia_render_target_path] (**Performance**|Accuracy)

    Select render target emulation mode. Performance: host render targets with fixed-function blending. Accuracy: pixel shader interlock / rasterizer-ordered views.

- **Draw Resolution Scale (Restart)** [xenia_draw_resolution_scale] (**1x (Native 720p)**|2x (1440p)|3x (2160p/4K)|4x|5x|6x|7x|8x)

    Scale the internal rendering resolution. Higher values improve image quality but require more GPU power. Requires restart.

- **Anisotropic Filtering** [xenia_anisotropic_filtering] (**Default (Game)**|Off|2x|4x|8x|16x)

    Override anisotropic filtering level for all textures. 'Default' uses the game's own settings.

- **Async Shader Compilation** [xenia_async_shader_compilation] (**ON**|OFF)

    Compile shaders in background threads. Reduces stutter but may cause brief rendering artifacts.

- **Readback Resolve** [xenia_readback_resolve] (**ON**|OFF)

    Copy render-to-texture output back into guest RAM when the CPU accesses it. Off breaks games that read it back.

- **Store Shaders** [xenia_store_shaders] (**ON**|OFF)

    Store compiled shaders persistently to avoid recompilation stutter on subsequent runs.

- **Half-Pixel Offset** [xenia_half_pixel_offset] (**ON**|OFF)

    Enable D3D9-style half-pixel offset. Correct for most games. Disable if you see shifted/blurry rendering.

- **Allow Invalid Fetch Constants** [xenia_gpu_allow_invalid_fetch_constants] (**ON**|OFF)

    Allow texture/vertex fetch constants with invalid type. May fix crashes in some games but is generally unsafe.

- **Fuzzy Alpha Epsilon (NVIDIA Fix)** [xenia_use_fuzzy_alpha_epsilon] (**OFF**|ON)

    Use approximate alpha comparison to prevent flickering on NVIDIA GPUs.

- **Emulated Display Refresh Rate** [xenia_display_refresh] (**NTSC (60Hz)**|PAL (50Hz))

    The refresh rate of the TV the game thinks it is on, as standalone's option. NTSC (60 Hz) is the console's. PAL (50 Hz) is a PAL TV: games run at 50 frames a second. Unlock Framerate overrides this.

- **Wait for the Game's Frame** [xenia_wait_for_frame] (**OFF**|ON)

    Removes 1 frame of input lag at the possible cost of the game slowing down.

- **Unlock Framerate** [xenia_unlock_framerate] (**OFF**|Listed games|30 fps games at 60|60 fps games at 120|Uncapped)

    Only for games whose logic is not tied to their frame rate, else they run too fast. 30 fps games at 60: two vblanks for each frame RetroArch shows. 60 fps games at 120: the core at 120 frames a second (set RetroArch and the display up for it). Uncapped: vblanks as fast as possible. Listed games: the rate system/Xenia-Edge/xenia_framerate_unlock.txt gives the running game, if it lists it. Can be changed while a game runs.

#### Video Settings

- **Internal Display Resolution (Restart)** [xenia_internal_display_resolution] (640x480|640x576|720x480|720x576|800x600|848x480|1024x768|1152x864|**1280x720 (Default)**|1280x768|1280x1024|1360x768|1440x900|1680x1050|1920x540|1920x1080)

    Allow games that support multiple resolutions to render at a specific resolution. Not all games support this.

- **Widescreen (16:9)** [xenia_widescreen] (**16:9 Widescreen**|4:3 Standard)

    Toggle between 16:9 widescreen and 4:3 standard aspect ratio.

- **Video Standard** [xenia_video_standard] (**NTSC**|NTSC-J (Japan)|PAL)

    Select the video signal standard. Affects region detection.

- **Display Gamma** [xenia_display_gamma] (Linear|sRGB (CRT)|**BT.709 (HDTV)**)

    Select display gamma curve. BT.709 (HDTV) is closest to Xbox 360 on a modern display.

#### Audio Settings

- **Audio Output** [xenia_audio_enabled] (**ON**|OFF)

    Enable or disable audio processing and output.

- **Mute Audio** [xenia_mute] (**OFF**|Enabled (Muted))

    Mute all audio output while keeping audio processing active.

- **Audio Channels (Restart)** [xenia_audio_channels] (**Stereo**|Surround 5.1)

    Stereo: the console's 5.1 folded down to two channels. Surround 5.1: all six channels to RetroArch, whose audio output layout then decides between speakers and a fold-down. Needs a RetroArch with multi-channel audio output, else stays stereo.

- **XMA Decoder (Restart)** [xenia_xma_decoder] (**New (Default)**|Old|Master|Fake (Silence))

    Select the XMA audio decoder implementation. Try a different option if audio is broken in a specific game.

- **Dedicated XMA Thread** [xenia_dedicated_xma_thread] (**OFF**|ON)

    Use a dedicated thread for XMA audio decoding. May improve audio performance.

- **Music Player (XMP)** [xenia_enable_xmp] (**ON**|OFF)

    Enable the Xbox Music Player for background music playback.

- **Music Player Volume** [xenia_xmp_default_volume] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100% (Default)**)

    Default music volume if the game doesn't set it.

#### Emulation Settings

- **Emulation Speed** [xenia_time_scalar] (0.25x|0.5x|**1.0x (Normal)**|2.0x|4.0x)

    Control emulation speed. 1.0x is normal speed.

- **Apply Title Updates** [xenia_title_updates] (**ON**|OFF)

    Apply title update patches if available in the content directory.

- **Apply Game Patches** [xenia_apply_patches] (**ON**|OFF)

    Enable custom game patching functionality.

- **Dialog Notifications** [xenia_dialog_notifications] (**ON**|OFF)

    A system dialog a game opens (a message box with buttons) has no window in the core, so the core answers it and shows the dialog's title and the answer given as a notification. Disabled hides those notifications; the dialogs are answered the same, and Xenia's log still records them.

- **License Mask** [xenia_license_mask] (**None**|Full|All)

    Set license mask for activated content (DLC, full version). None: no licenses. Full: first license. All: all licenses.

- **User Language** [xenia_user_language] (**English**|Japanese|German|French|Spanish|Italian|Korean|Traditional Chinese|Portuguese|Simplified Chinese|Polish|Russian)

    Set the emulated console language.

- **User Country** [xenia_user_country] (**United States**|Great Britain|Japan|Germany|France|Spain|Italy|Australia|Canada|Brazil|Korea|China|Mexico|Netherlands|Russia|Sweden|Poland|Portugal|Taiwan|Hong Kong)

    Set the emulated console country/region.

#### Compatibility Settings

- **Protect Zero Page** [xenia_protect_zero] (**ON**|OFF)

    Protect the zero page from reads and writes. Disable if a game crashes on startup.

- **Clear GPU Memory Page State** [xenia_clear_memory_page_state] (**OFF**|ON)

    Refresh state of memory pages for GPU written data. Off by default, as on standalone; some games need it on to render right (Ridge Racer 6, and the others xenia-manager's optimized settings list).

- **Disable Context Promotion** [xenia_disable_context_promotion] (**Disabled (Normal)**|Enabled (Sports Fix))

    Disable context promotion CPU optimization. May be needed for some sports games, but reduces performance.

- **Mount Cache Partition** [xenia_mount_cache] (**ON**|OFF)

    Enable cache partition mount. Required by some games.

- **Mount Scratch Partition** [xenia_mount_scratch] (**OFF**|ON)

    Enable scratch partition mount. Required by some games.

- **Occlusion Query** [xenia_occlusion_query] (**Fast**|Fake|Fast-alt|Strict)

    How occlusion queries (lens flares, culling, auto-exposure) are answered. Fast (default) asks the GPU without waiting; Fake writes a made-up result; Fast-alt keeps cached zero results; Strict waits for the GPU, most accurate.

- **Occlusion Query Full Counters** [xenia_occlusion_query_full_counters] (**OFF**|ON)

    Emulate the ZFail, StencilFail and Total occlusion counters in shaders. Some games need them; costs performance.

- **Fake Occlusion Lower Threshold** [xenia_occlusion_query_fake_lower_threshold] (**80**|-1|0|1)

    Lower end of the fake sample count written when occlusion queries are faked. -1 writes nothing (some games then wait forever).

- **Fake Occlusion Upper Threshold** [xenia_occlusion_query_fake_upper_threshold] (**100**|0)

    Upper end of the fake sample count written when occlusion queries are faked.

- **Depth Bias Through Shader** [xenia_depth_bias_shader_offset] (**OFF**|ON)

    Route decal draws with polygon offset through the shader instead of host depth bias. Fixes z-fighting decals in some games.

- **Resolution Scale Threshold** [xenia_draw_resolution_scale_threshold] (**0 (scale all)**|256|360|512)

    Render targets at or below this pitch in pixels are not upscaled by the resolution scale. Fixes some effects that break when scaled.

- **Allow Invalid Upload Range** [xenia_gpu_allow_invalid_upload_range] (**ON**|OFF)

    Allow games to read data from pages marked as no access.

- **Gamma Render Target as UNORM16** [xenia_gamma_render_target_as_unorm16] (**ON**|OFF)

    Emulate gamma render targets with 16 bits per component where the host cannot do 8-bit piecewise gamma. Turn off if colors look wrong in a game.

- **Force Depth Clamp** [xenia_force_depth_clamp] (**OFF**|ON)

    Use host depth clamping instead of near and far plane clipping.

- **Ignore Offset for Ranged Allocations** [xenia_ignore_offset_for_ranged_allocations] (**OFF**|ON)

    Ignore the 4 KB offset for physical allocations with a provided range. Needed by a few games.

- **Break on Unimplemented Instructions** [xenia_break_on_unimplemented_instructions] (**ON**|OFF)

    Stop when a game runs a CPU instruction Xenia does not implement. In a core that ends RetroArch; turn off to let such games go on.

- **Scribble Heap** [xenia_scribble_heap] (**OFF**|ON)

    Fill newly allocated heap memory with a value, for games that rely on what is left there.

- **Scribble Heap Value** [xenia_scribble_heap_value] (**0 (random)**|255)

    The value Scribble Heap fills memory with. 0 is random.

#### Debug Settings

- **Log Level** [xenia_log_level] (Error Only|Warning|**Info**|Debug)

    Set the verbosity of logging output.

## Controllers

Up to four Xbox 360 controllers, one per RetroArch port. Rumble goes through the frontend's rumble interface.

## Joypad

| RetroPad Inputs                                | Xbox 360 controller |
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
| ![](../image/retropad/retro_l1.png)            | LB                 |
| ![](../image/retropad/retro_r1.png)            | RB                 |
| ![](../image/retropad/retro_l2.png)            | LT                 |
| ![](../image/retropad/retro_r2.png)            | RT                 |
| ![](../image/retropad/retro_l3.png)            | Left Stick click   |
| ![](../image/retropad/retro_r3.png)            | Right Stick click  |
| ![](../image/retropad/retro_left_stick.png)    | Left stick         |
| ![](../image/retropad/retro_right_stick.png)   | Right stick        |

## External Links

- [Xenia Edge Core info file](https://github.com/WizzardSK/xenia-libretro/blob/libretro/libretro/xenia_edge_libretro.info)
- [Xenia Edge libretro GitHub Repository](https://github.com/WizzardSK/xenia-libretro)
- [Report Xenia Edge Core Issues Here](https://github.com/WizzardSK/xenia-libretro/issues)
- [Upstream Xenia Edge](https://github.com/has207/xenia-edge)
