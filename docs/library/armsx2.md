# Sony - PlayStation 2 (ARMSX2)

## Background

A libretro port of ARMSX2, a PlayStation 2 emulator forked from PCSX2 and aimed at ARM64 platforms. The core renders through a hardware context it shares with the frontend: Vulkan by default, taking the VkInstance and VkPhysicalDevice from the context-negotiation interface and handing finished frames back through set_image, or an OpenGL core 3.3 context (OpenGL ES 3.2 on Android) when the renderer core option asks for it. A software GS renderer is selectable as well, and presents through that same context. Place a PS2 BIOS dump in 'system/pcsx2/bios' and a copy of the emulator's 'resources' directory in 'system/pcsx2/resources'. Save states, .m3u disc swapping and the usual renderer, upscale and speedhack core options are implemented.

The ARMSX2 core has been authored by

- PCSX2 Team
- ARMSX2 Team
- bmdhacks
- WizzardSK

The ARMSX2 core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the ARMSX2 core have the following file extensions:

- .elf
- .iso
- .ciso
- .chd
- .cso
- .zso
- .bin
- .mdf
- .nrg
- .dump
- .gz
- .img
- .irx
- .m3u

RetroArch database(s) that are associated with the ARMSX2 core:

- [Sony - PlayStation 2](https://github.com/libretro/libretro-database/blob/master/rdb/Sony%20-%20PlayStation%202.rdb)

## Features

Frontend-level settings or features that the ARMSX2 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✕         |
| Subsystem         | ✕         |
| Disk Control      | ✔         |

### Directories

The ARMSX2 core's library name is 'ARMSX2'

## Core options

The ARMSX2 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### Video

Rendering, scaling and display options.

- **GS Renderer (restart)** [armsx2_renderer] (**Vulkan**|OpenGL|Software)

	Vulkan renders the GS on the GPU. OpenGL does the same through the frontend's GL context, for devices with no usable Vulkan driver. Software renders on the CPU and presents through the same shared context.

- **Internal Resolution** [armsx2_upscale] (**1x (native)**|2x|3x|4x)

	Renders the PS2 output at a multiple of native resolution. The output canvas follows this size.

- **Aspect Ratio** [armsx2_aspect_ratio] (**Auto (4:3 / 3:2 progressive)**|4:3|16:9|Stretch)

	Display aspect ratio. 16:9 is intended for games with widescreen patches or native widescreen modes.

- **Deinterlacing** [armsx2_deinterlacing] (**Automatic**|Off|Weave TFF|Weave BFF|Bob TFF|Bob BFF|Blend TFF|Blend BFF|Adaptive TFF|Adaptive BFF)

	How interlaced (480i/576i) output is turned into a full frame. Automatic picks per game; Bob is fast, Adaptive is highest quality; Off shows the raw field.

- **No-Interlacing Patches (restart)** [armsx2_no_interlacing_patches] (**disabled**|enabled)

	Patches supported games to render progressive instead of interlaced — sharper than any deinterlacer.

- **Widescreen Patches (restart)** [armsx2_widescreen_patches] (**disabled**|enabled)

	Patches supported games to render 16:9. Set Aspect Ratio to 16:9 alongside this.

- **Blending Accuracy** [armsx2_blending_accuracy] (Minimum|**Basic**|Medium|High|Full|Maximum)

	How accurately PS2 framebuffer blending is emulated on the GPU. Lower levels are faster; raise it only for games with visible blending artifacts.

- **Dithering** [armsx2_dithering] (**Unscaled**|Off|Scaled)

	Unscaled replicates PS2 dithering; Off can reduce banding artifacts at higher internal resolutions.

- **Trilinear Filtering** [armsx2_trilinear_filtering] (**Automatic**|Off|Trilinear (PS2)|Trilinear (Forced))

- **Hardware Mipmapping** [armsx2_mipmapping] (**enabled**|disabled)

- **FXAA** [armsx2_fxaa] (**disabled**|enabled)

	Cheap post-process anti-aliasing.

- **Texture Filtering** [armsx2_texture_filtering] (Nearest|Bilinear (Forced)|**Bilinear (PS2)**|Bilinear (Forced excluding sprites))

	Bilinear (PS2) filters as the game requests. Forced filters everything, which smooths textures but can blur 2D elements; the sprite-excluding variant protects UI sprites.

- **Anisotropic Filtering** [armsx2_anisotropic_filtering] (**disabled**|2x|4x|8x|16x)

	Sharpens textures viewed at an angle. Cheap on the GPU, but can cause artifacts in games that rely on point sampling.

- **Software Renderer Threads** [armsx2_sw_threads] (0|1|**2**|3|4)

	Worker threads for the Software renderer (in addition to the GS thread). No effect on Vulkan.

- **Show FPS** [armsx2_show_fps] (**disabled**|enabled)

	Draws the internal framerate on screen.

#### Performance

Speed hacks trading accuracy for framerate.

- **EE Cycle Rate** [armsx2_ee_cycle_rate] (50%|60%|75%|**100% (default)**|130%|180%|300%)

	Underclocks or overclocks the emulated Emotion Engine. Below 100% speeds up emulation but can cause stutter or breakage; above 100% can smooth out games with internal slowdown.

- **EE Cycle Skip** [armsx2_ee_cycle_skip] (**disabled**|mild|moderate|maximum)

	Makes the emulated EE skip cycles. Helps games with obvious VU-driven slowdown; can cause false FPS readings and breakage.

- **Hardware Download Mode** [armsx2_hw_download_mode] (**Accurate**|Disable Readbacks|Unsynchronized|Disabled)

	How GS-to-EE readbacks are handled. Accurate is correct but expensive on mobile GPUs; Disable Readbacks skips the data copy, Unsynchronized doesn't wait for the GPU, Disabled ignores the transfer entirely. Anything but Accurate can break effects that read the framebuffer.

- **MTVU (Multi-Threaded VU1)** [armsx2_mtvu] (**enabled**|disabled)

	Runs VU1 on its own thread. Large speedup on multi-core CPUs; a small number of games hang with it.

- **Instant VU1** [armsx2_instant_vu1] (**enabled**|disabled)

	Runs VU1 programs to completion instantly instead of interleaving with the EE. Fast and safe for most games.

#### System

Boot behaviour.

- **BIOS (restart)** [armsx2_bios] (**Auto (first valid image)**)

	Which BIOS image from <system>/pcsx2/bios to boot. Auto picks the first valid image.

- **Fast Boot** [armsx2_fast_boot] (**enabled**|disabled)

	Skips the BIOS boot animation.

- **Enable Cheats** [armsx2_cheats] (**disabled**|enabled)

	Loads .pnach cheat files from <system>/pcsx2/cheats for the running game.

## External Links

- [ARMSX2 Repository](https://github.com/ARMSX2/ARMSX2)
- [Report ARMSX2 Core Issues Here](https://github.com/ARMSX2/ARMSX2/issues)

