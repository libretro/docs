# Nintendo - Nintendo 64 (ParaLLEl N64)

## Background

An N64 emulator based originally on Mupen64Plus, but with extensive changes that have caused the codebases to diverge significantly. This core was the first N64 emulator core available for libretro and has served as an experimental testbed for many features that were later included in the Mupen64plus-Next core, including the advanced Vulkan-based ParaLLEl-RDP and ParaLLEl-RSP plugins (hence the name). However, Mupen64plus-Next is a better choice for most users/usecases, and ParaLLEl-N64 mostly exists for further experimentation and for users that cannot run Mupen64plus-Next's GLideN64 plugin at full speed, as this core includes legacy Glide64, glN64 and Rice plugins, which have lower hardware/driver requirements.

The ParaLLEl N64 core has been authored by

- Hacktarux
- Mupen64Plus Team
- TinyTiger
- Libretro

The ParaLLEl N64 core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the ParaLLEl N64 core have the following file extensions:

- .n64
- .v64
- .z64
- .bin
- .u1
- .ndd
- .zip

RetroArch database(s) that are associated with the ParaLLEl N64 core:

- [Nintendo - Nintendo 64](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%2064.rdb)
- [Nintendo - Nintendo 64DD](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%2064DD.rdb)

## Features

Frontend-level settings or features that the ParaLLEl N64 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |
| Core Options      | ✔         |

### Directories

The ParaLLEl N64 core's library name is 'ParaLLEl N64'

## Core options

The ParaLLEl N64 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Upscaling factor (restart)** [parallel-n64-upscaling] (**1x**|2x|4x|8x)

	Render at a multiple of the console's resolution. ParaLLEl-RDP honours every factor; Angrylion renders at up to 4x and treats 8x as 4x.

- **Use native texture LOD when upscaling** [parallel-n64-parallel-rdp-native-texture-lod] (enabled|**disabled**)

	Pick texture mip levels as the console would, from a console pixel's footprint rather than an upscaled pixel's. Without it an upscaled render selects sharper levels, and games that use the level as a switch show the wrong image (the painting at the end of the castle corridor in Super Mario 64). Honoured by ParaLLEl-RDP and Angrylion.

- **CPU Core** [parallel-n64-cpucore] (Cached Interpreter|Pure Interpreter|**Dynamic Recompiler (Ari64)**)

	Select CPU Core

- **Enable Expansion Pak RAM** [parallel-n64-disable_expmem] (**enabled**|disabled)

	Give the console 8MB of RAM instead of 4MB, as the Expansion Pak does. Games that require the Pak (Donkey Kong 64, Majora's Mask) will not boot with this disabled. Applied when content starts.

- **GFX Accuracy** [parallel-n64-gfxplugin-accuracy] (low|medium|high|**veryhigh**)

	GFX Accuracy, required restart

- **Audio Processing** [parallel-n64-send_allist_to_hle_rsp] (**Same as RSP Plugin**|Fast (HLE)|Accurate (LLE))

	Which RSP runs the audio microcode, independently of the one running graphics. 'Same as RSP Plugin' follows the RSP Plugin setting. 'Fast (HLE)' emulates audio lists at a high level instead of cycle-by-cycle, which is faster but glitches in some games. 'Accurate (LLE)' keeps audio cycle-accurate even when graphics run on the HLE RSP, which is the pairing to use if you want HLE speed for graphics without HLE audio glitches.

- **Enhanced RSP HLE Audio** [parallel-n64-enhanced-hle-audio] (**disabled**|enabled)

	Replace the audio microcode's four-tap voice interpolator with a windowed-sinc resampler. The microcode's kernel cannot band-limit a sample that is played back faster than it was recorded, so its image folds back into the audible range - the grain and grit on high-pitched sounds. This removes most of that and is slightly less muffled besides. Only affects the HLE RSP audio path. Deliberately not bit-accurate to the hardware, so leave it off if you want the exact output the console produced.

- **Enhanced RSP HLE Audio Quality** [parallel-n64-enhanced-hle-audio-quality] (16 taps|**32 taps**|64 taps)

	How many taps the enhanced resampler uses. More taps reject more of the folded-back image and cost a little more CPU and memory: 16 taps is already a large improvement over the microcode's four, 32 and 64 taps tighten the filter further. Has no effect unless Enhanced RSP HLE Audio is enabled.

- **GFX Plugin** [parallel-n64-gfxplugin] (**gliden64**|glide64|gln64|rice|angrylion|parallel)

	Graphics plugin

- **RSP Plugin** [parallel-n64-rspplugin] (**auto**|hle|cxd4|parallel)

	RSP Plugin

- **Resolution** [parallel-n64-screensize] (320x240|**640x480**|960x720|1280x960|1440x1080|1600x1200|1920x1440|2240x1680|2880x2160|5760x4320)

	Resolution (restart)

- **Aspect ratio hint** [parallel-n64-aspectratiohint] (**normal**|widescreen)

	Aspect ratio hint (reinit)

- **VI Refresh (Overclock)** [parallel-n64-virefresh] (**auto**|1500|2200)

	VI Refresh

- **Boot Device** [parallel-n64-boot-device] (**Default**|64DD IPL)

	Boot Device

- **64DD Hardware** [parallel-n64-64dd-hardware] (**disabled**|enabled)

	Treat content without a recognised cartridge or disk header as a 64DD disk. Development disks and MAME/SDK dumps carry no header marker; regular cartridges and retail D64 images are identified by their header and unaffected by this setting.

- **GoldenEye TLB Mapping Hack (Restart)** [parallel-n64-goldeneye-tlb-hack] (**enabled**|disabled)

	Map GoldenEye's demand-paged 0x7F000000 code segment directly onto the ROM, bypassing the game's own TLB pager (ari64 dynarec only). Historically required for GoldenEye to run at all; on desktop-class hosts the accurate path now measures just as fast. Disable for hardware-faithful TLB behaviour or for modified ROMs that relocate the game segment, which the mapping would corrupt.

- **Unaligned DMA Behaviour** [parallel-n64-allow-unaligned-dma] (**Allow Unaligned**|Force Alignment)

	'Allow Unaligned' causes minor issues on Taz Express; 'Force Alignment' is accurate to N64, but breaks some romhacks.

- **Allow Large Roms** [parallel-n64-allow-large-roms] (**Yes**|No)

	Enable support for roms that are larger than 64 MiB.

- **Save type for unknown ROMs** [parallel-n64-OverrideSaveType] (Do not force savetype|EEPROM (4kB)|EEPROM (16kB)|SRAM|FlashRAM|MemPak|**Guess**)

	Sets the save type used by unknown ROMs

- **Emulate flashcart SD drive** [parallel-n64-sdcard] (**Disabled**|SummerCart64)

- **Rollback N64 system clock on savestate load** [parallel-n64-rtc-savestate] (Yes|**No**)

#### Aleck64

Aleck64 arcade dipswitches (only used by Aleck64 MAME romsets).

- **Test Mode** [parallel-n64-aleck64-testmode] (**disabled**|enabled)

	Boot the arcade board's test menu instead of the game.

- **Coinage** [parallel-n64-aleck64-coinage] (**1 Coin 1 Credit**|1 Coin 2 Credits|1 Coin 3 Credits|1 Coin 4 Credits|2 Coins 1 Credit|3 Coins 1 Credit|4 Coins 1 Credit|5 Coins 1 Credit)

	Coins needed per credit (Star Soldier, Vivid Dolls, Hi Pai Paradise 1/2).

- **Difficulty** [parallel-n64-aleck64-difficulty] (**Normal**|Easy|Hard|Hardest)

	Game difficulty (Star Soldier, Vivid Dolls, Hi Pai Paradise 1/2).

- **Demo Sounds** [parallel-n64-aleck64-demosound] (**enabled**|disabled)

	Play sound in attract mode (Star Soldier, Hi Pai Paradise 1/2).

- **Language (Star Soldier)** [parallel-n64-aleck64-language] (**English**|Japanese)

	In-game language for Star Soldier: Vanishing Earth.

- **Players (Star Soldier)** [parallel-n64-aleck64-players] (**3**|4|2|1)

	Number of players supported by the cabinet.

- **Joystick Type (Star Soldier)** [parallel-n64-aleck64-joystick] (**2D**|3D)

	Cabinet joystick type.

- **Auto Level (Star Soldier)** [parallel-n64-aleck64-autolevel] (**Normal**|Slow|Fast1|Fast2)

	Auto level speed.

- **Rapid Fire (Star Soldier)** [parallel-n64-aleck64-rapid] (**disabled**|enabled)

	Enable rapid fire.

- **Extend (Star Soldier)** [parallel-n64-aleck64-extend] (**30,000,000**|50,000,000|70,000,000|None)

	Score for an extra life.

- **Lives (Vivid Dolls)** [parallel-n64-aleck64-lives] (**4**|3|2|1)

	Number of lives.

- **Free Play (Hi Pai Paradise)** [parallel-n64-aleck64-freeplay] (**disabled**|enabled)

	Play without credits.

- **Allow Continue (Hi Pai Paradise)** [parallel-n64-aleck64-continue] (**disabled**|enabled)

	Allow continuing after a loss.

- **Kuitan (Hi Pai Paradise)** [parallel-n64-aleck64-kuitan] (**disabled**|enabled)

	Mahjong kuitan rule.

#### Pak/Controller Options

Configure Core Pak/Controller Options.

- **Analog Deadzone** [parallel-n64-astick-deadzone] (0|5|10|**15**|20|25|30)

	Analog Deadzone (percent)

- **Analog Sensitivity** [parallel-n64-astick-sensitivity] (50|55|60|65|70|75|80|85|90|95|**100**|105|110|115|120|125|130|135|140|145|150|200)

	Analog Sensitivity (percent)

- **Mouse to Analog Stick** [parallel-n64-mouse-mode] (**Disabled**|Enabled)

	Use mouse input to control the N64 analog stick with player 1. The mouse takes over whenever the real stick is neutral. Useful for FPS games.

- **Mouse Sensitivity X (percent)** [parallel-n64-mouse-sensitivity-x] (-500|-400|-300|-250|-200|-175|-150|-125|-100|-75|-50|0|50|75|**100**|125|150|175|200|250|300|400|500)

	Horizontal mouse sensitivity. Negative values invert the axis. Set to 0 to disable horizontal movement.

- **Mouse Sensitivity Y (percent)** [parallel-n64-mouse-sensitivity-y] (-500|-400|-300|-250|-200|-175|-150|-125|**-100**|-75|-50|0|50|75|100|125|150|175|200|250|300|400|500)

	Vertical mouse sensitivity. Negative values invert the axis; the default is negative because positive mouse Y points down. Set to 0 for Doom-like horizontal-only control.

- **Mouse Left Click** [parallel-n64-mouse-left] (**Z Trigger**|A Button|B Button|L Trigger|R Trigger|Start|C-Up|C-Down|C-Left|C-Right|Disabled)

	Map mouse left click to an N64 button.

- **Mouse Right Click** [parallel-n64-mouse-right] (**A Button**|B Button|Z Trigger|L Trigger|R Trigger|Start|C-Up|C-Down|C-Left|C-Right|Disabled)

	Map mouse right click to an N64 button.

- **Mouse Middle Click** [parallel-n64-mouse-middle] (**Disabled**|A Button|B Button|Z Trigger|L Trigger|R Trigger|Start|C-Up|C-Down|C-Left|C-Right)

	Map mouse middle click to an N64 button.

- **Mouse Wheel Up** [parallel-n64-mouse-wheel-up] (**L Trigger**|R Trigger|A Button|B Button|Z Trigger|Start|C-Up|C-Down|C-Left|C-Right|Disabled)

	Map mouse wheel up to an N64 button.

- **Mouse Wheel Down** [parallel-n64-mouse-wheel-down] (**R Trigger**|L Trigger|A Button|B Button|Z Trigger|Start|C-Up|C-Down|C-Left|C-Right|Disabled)

	Map mouse wheel down to an N64 button.

- **Snap Controller Angle** [parallel-n64-astick-snap-angle-active] (**disabled**|enabled)

	Snap analog stick angle to multiples of 45 degrees, to better support circular design controllers that should behave like classic N64 controllers.

- **Maximum Snap Angle** [parallel-n64-astick-snap-max-angle] (1 to 21 in steps of 1, **15**)

	Maximum deviation from a 45-degree multiple at which snapping is applied (e.g. value of 5 means 85 to 95 degrees are snapped to 90).

- **Snap Minimum Displacement (%)** [parallel-n64-astick-snap-min-displacement-percent] (0|10|20|30|40|50|60|65|**70**|75|80|85|90|95)

	Percentage of stick displacement from the center required before snapping activates (0 means always).

- **Player 1 Pak** [parallel-n64-pak1] (**none**|memory|rumble|biosensor)

	Player 1 Pak

- **Player 2 Pak** [parallel-n64-pak2] (**none**|memory|rumble|biosensor)

	Player 2 Pak

- **Player 3 Pak** [parallel-n64-pak3] (**none**|memory|rumble|biosensor)

	Player 3 Pak

- **Player 4 Pak** [parallel-n64-pak4] (**none**|memory|rumble|biosensor)

	Player 4 Pak

- **Independent C-button Controls** [parallel-n64-alt-map] (**disabled**|enabled)

	Independent C-button Controls

#### ParaLLEl

Configure ParaLLEl Options.

- **ParaLLEl Synchronous RDP** [parallel-n64-parallel-rdp-synchronous] (**enabled**|disabled)

	Make the CPU wait for the GPU to finish rendering at RDP full sync. Disabling can improve performance but breaks games that read rendered frames back from memory (e.g. Resident Evil 2 never starts its intro FMV); such games force this on automatically.

- **Crop pixel border pixels** [parallel-n64-parallel-rdp-overscan] (0 to 64 in steps of 2, **0**)

	Crop pixel border pixels

- **VI divot filter** [parallel-n64-parallel-rdp-divot-filter] (**enabled**|disabled)

	VI divot filter

- **VI gamma dither** [parallel-n64-parallel-rdp-gamma-dither] (**enabled**|disabled)

	VI gamma dither

- **VI AA** [parallel-n64-parallel-rdp-vi-aa] (**enabled**|disabled)

	VI AntiAliasing

- **VI bilinear** [parallel-n64-parallel-rdp-vi-bilinear] (**enabled**|disabled)

	VI bilinear filtering

- **VI dither filter** [parallel-n64-parallel-rdp-dither-filter] (**enabled**|disabled)

	VI dither filter

- **Downsampling** [parallel-n64-parallel-rdp-downscaling] (**disable**|1/2|1/4|1/8)

	Downsampling

- **Use native resolution for TEX_RECT** [parallel-n64-parallel-rdp-native-tex-rect] (**enabled**|disabled)

	Use native resolution for TEX_RECT

#### Glide64

Configure Glide64 Options.

- **Texture Filtering** [parallel-n64-filtering] (**automatic**|N64 3-point|bilinear|nearest)

	Texture Filtering

- **Polygon Offset Factor** [parallel-n64-polyoffset-factor] (-5.0 to 5.0 in steps of 0.5, **-3.0**)

	Polygon Offset Factor

- **Polygon Offset Units** [parallel-n64-polyoffset-units] (-5.0 to 5.0 in steps of 0.5, **-3.0**)

	Polygon Offset Units

- **Vertex cache VBO** [parallel-n64-vcache-vbo] (**disabled**|enabled)

	Vertex cache VBO (restart)

#### Angrylion

Configure Angrylion Options.

- **Dithering** [parallel-n64-dithering] (**enabled**|disabled)

	Dithering

- **VI Overlay** [parallel-n64-angrylion-vioverlay] (**Filtered**|AA+Blur|AA+Dedither|AA only|Unfiltered|Depth|Coverage)

	VI Overlay

- **Deinterlacing** [parallel-n64-angrylion-deinterlace] (**weave**|bob)

	How interlaced (480i) content is displayed. 'weave' merges both fields (sharp but combs on motion), 'bob' line-doubles the current field (no combing, slight shimmer). Affects 480i games like Kuru Kuru Fever or Hanabi de Doon and hi-res title screens.

- **Thread sync level** [parallel-n64-angrylion-sync] (**Low**|Medium|High)

	Thread sync level

- **Multi-threading** [parallel-n64-angrylion-multithread] (off|**all threads**|1|2|3|4|5|6|7|8)

	'off' renders synchronously on the emulator thread: no worker pool, no command buffering, no thread synchronization. Numeric values use the threaded renderer with that many worker threads ('1' keeps the threaded pipeline with a single worker). 'all threads' uses the host's physical cores, at most 8. Every worker replays the whole command stream, so past 8 the duplicated work outweighs what more workers take off the spans, and a second thread on the same core only adds contention; that is where the list stops.

- **Hide overscan** [parallel-n64-angrylion-overscan] (**disabled**|enabled)

	Hide overscan

#### GLideN64

Configure GLideN64 Options.

- **Widescreen Hack** [parallel-n64-gliden64-viewport-hack] (enabled|**disabled**|Steam Deck (16:10))

	Hack that adjusts the viewport to allow unstretched 16:9

- **Native Resolution Factor** [parallel-n64-gliden64-EnableNativeResFactor] (**Disabled**|1x|2x|3x|4x|5x|6x|7x|8x)

	Render at N times the native resolution.

- **Bilinear filtering mode** [parallel-n64-gliden64-BilinearMode] (3point|**standard**)

	Select a Bilinear filtering method, 3point is the original system specific way.

- **MSAA level** [parallel-n64-gliden64-MultiSampling] (**0**|2|4|8|16)

	Anti-Aliasing level (0 = disabled).

- **FXAA** [parallel-n64-gliden64-FXAA] (**0**|1)

	Fast Approximate Anti-Aliasing shader, moderately blur textures (0 = disabled).

- **LOD Emulation** [parallel-n64-gliden64-EnableLODEmulation] (False|**True**)

	Calculate per-pixel Level Of Details to select texture mip levels and blend them with each other using LOD fraction.

- **Framebuffer Emulation** [parallel-n64-gliden64-EnableFBEmulation] (False|**True**)

	Frame/depth buffer emulation. Disabling it can shorten input lag for particular games, but also break some special effects.

- **Copy auxiliary buffers to RDRAM** [parallel-n64-gliden64-EnableCopyAuxToRDRAM] (**False**|True)

	Copy auxiliary buffers to RDRAM (fixes some Game artifacts like Paper Mario Intro).

- **Color buffer to RDRAM** [parallel-n64-gliden64-EnableCopyColorToRDRAM] (Off|Sync|**DoubleBuffer**|TripleBuffer)

	Color buffer copy to RDRAM (Off will trade compatibility for Performance).

- **Color buffer from RDRAM** [parallel-n64-gliden64-EnableCopyColorFromRDRAM] (**False**|True)

	Always copy the color buffer from RDRAM, for the titles GLideN64's own CPU-write detection misses. Needs Framebuffer Emulation on. Default off for the performance cost.

- **Depth buffer to RDRAM** [parallel-n64-gliden64-EnableCopyDepthToRDRAM] (Off|**Software**|FromMem)

	Depth buffer copy to RDRAM (Off will trade compatibility for Performance).

- **Per-game settings** [parallel-n64-gliden64-GLideN64IniBehaviour] (**late**|early|disabled)

	When to apply GLideN64's built-in per-game settings. 'late' lets them override your choices below, 'early' lets your choices win, 'disabled' ignores them entirely.

- **Background Mode** [parallel-n64-gliden64-BackgroundMode] (Stripped|**OnePiece**)

	Render backgrounds mode (HLE only). One piece (fast), Stripped (precise).

- **Hardware per-pixel lighting** [parallel-n64-gliden64-EnableHWLighting] (**False**|True)

	Standard per-vertex lighting when disabled. Slightly different rendering.

- **Continuous texrect coords** [parallel-n64-gliden64-CorrectTexrectCoords] (**Off**|Auto|Force)

	Make texrect coordinates continuous to avoid black lines between them.

- **Enable inaccurate texture coordinates** [parallel-n64-gliden64-EnableInaccurateTextureCoordinates] (**False**|True)

	Enables inaccurate texture coordinate calculations. This can improve performance and texture pack compatibility at the cost of accuracy.

- **Native res. 2D texrects** [parallel-n64-gliden64-EnableNativeResTexrects] (**Disabled**|Unoptimized|Optimized)

	Render 2D texrects in native resolution to fix misalignment between parts of 2D image (example: Mario Kart driver selection portraits).

- **Less accurate blending mode** [parallel-n64-gliden64-EnableLegacyBlending] (**False**|True)

	Do not use shaders to emulate N64 blending modes. Works faster on slow GPU. Can cause glitches.

- **GPU shader depth write** [parallel-n64-gliden64-EnableFragmentDepthWrite] (False|**True**)

	Enable writing of fragment depth. Some mobile GPUs do not support it, thus it's optional. Leave enabled.

- **N64 Depth Compare** [parallel-n64-gliden64-EnableN64DepthCompare] (**Off**|Fast|Compatible)

	Enable N64 depth compare instead of OpenGL standard one. Experimental, Fast mode will have more glitches.

- **Cache GPU Shaders** [parallel-n64-gliden64-EnableShadersStorage] (False|**True**)

	Use persistent storage for compiled shaders.

- **Cache Textures** [parallel-n64-gliden64-EnableTextureCache] (False|**True**)

	Save texture cache to hard disk.

- **Overscan** [parallel-n64-gliden64-EnableOverscan] (**Disabled**|Enabled)

	Crop black borders from the overscan region around the screen.

- **Overscan Offset (Top)** [parallel-n64-gliden64-OverscanTop] (0 to 50 in steps of 1, **0**)

	Overscan Top Offset.

- **Overscan Offset (Left)** [parallel-n64-gliden64-OverscanLeft] (0 to 50 in steps of 1, **0**)

	Overscan Left Offset.

- **Overscan Offset (Right)** [parallel-n64-gliden64-OverscanRight] (0 to 50 in steps of 1, **0**)

	Overscan Right Offset.

- **Overscan Offset (Bottom)** [parallel-n64-gliden64-OverscanBottom] (0 to 50 in steps of 1, **0**)

	Overscan Bottom Offset.

- **Texture filter** [parallel-n64-gliden64-txFilterMode] (**None**|Smooth filtering 1|Smooth filtering 2|Smooth filtering 3|Smooth filtering 4|Sharp filtering 1|Sharp filtering 2)

	Select Texture Filtering mode.

- **Texture Enhancement** [parallel-n64-gliden64-txEnhancementMode] (**None**|As Is|X2|X2SAI|HQ2X|HQ2XS|LQ2X|LQ2XS|HQ4X|2xBRZ|3xBRZ|4xBRZ|5xBRZ|6xBRZ)

	Various Texture Filters ('As-Is' will just cache).

- **Don't filter background textures** [parallel-n64-gliden64-txFilterIgnoreBG] (False|**True**)

	Ignore filtering for Background Textures.

- **Use High-Res textures** [parallel-n64-gliden64-txHiresEnable] (**False**|True)

	Enable High-Res Texture packs if available.

- **Use High-Res Texture Cache Compression** [parallel-n64-gliden64-txCacheCompression] (False|**True**)

	Compress created texture caches.

- **Use High-Res Full Alpha Channel** [parallel-n64-gliden64-txHiresFullAlphaChannel] (**False**|True)

	This should be enabled unless it's a old RICE Texture pack.

- **Use alternative method for High-Res Checksums** [parallel-n64-gliden64-EnableHiResAltCRC] (**False**|True)

	Use an alternative method for High-Res paletted textures CRC calculations.

- **INI Behaviour** [parallel-n64-gliden64-IniBehaviour] (**Prioritize INI over Core Options**|Prioritize Core Options over INI|Disable INI)

	Specifies INI Settings behaviour. This should really only contain essential options. Changing this can and will break ROM's, if the correct options aren't set manually. Some options may only be set via INI (fbInfoDisabled).

- **Patch SM64 Hacks made with SM64 Editor** [parallel-n64-gliden64-LegacySm64ToolsHacks] (**enabled**|disabled)

	Make plugin behave like Jabo in certain case to fix compatibility with legacy SM64 hacks. It adds undocumented behavior that may interfere with real N64 games (unlikely).

- **Fix VI Resolution** [parallel-n64-gliden64-RemoveFBBlackBars] (**enabled**|disabled)

	Remove the black bars added by VI emulation of the FrameBuffer.

## Controllers

The ParaLLEl N64 core supports 4 port(s). Each can be set to one of the following device types:

- Controller
- Mouse
- RetroPad
- Analog

## External Links

- [ParaLLEl N64 Repository](https://github.com/libretro/parallel-n64)
- [Report ParaLLEl N64 Core Issues Here](https://github.com/libretro/parallel-n64/issues)

