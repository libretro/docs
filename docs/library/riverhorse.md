# Sony - PlayStation (Riverhorse)

## Background

Riverhorse is a PlayStation emulator focused on accuracy, by Daniel Weatherall. It has software and hardware renderers (OpenGL, OpenGL ES and Vulkan), PGXP geometry correction, upscaling to 8x and a dynamic recompiler for x86-64, AArch64 and ARMv7. It started from DuckStation while that was still GPLv3, before its September 2024 licence change, and is developed separately from it.

The core is built for Linux (x86_64, aarch64), Windows (x64), Android (arm64-v8a, armeabi-v7a, x86_64) and macOS (x86_64, arm64).

The Riverhorse core has been authored by

- Daniel Weatherall (thenotoriousfox)
- Connor McLaughlin

The Riverhorse core is licensed under

- [GPLv3](https://github.com/thenotoriousfox/riverhorse/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

The hardware renderer needs RetroArch's `vulkan` driver (Vulkan 1.1), or `glcore`/`gl` (OpenGL 3.3, or OpenGL ES 3.0 on GLES builds of RetroArch such as Android and many ARM Linux devices). Without either, the core uses its software renderer.

## BIOS

A BIOS for the game's region is required, in RetroArch's system directory. The file name doesn't matter: the core recognises PS1 and PS2 BIOS images by their contents.

|   Filename    |    Description                 |              md5sum              |
|:-------------:|:------------------------------:|:--------------------------------:|
| scph5500.bin  | PS1 JP BIOS - Required for JP games | 8dd7d5296a650fac7319bce665a6a53c |
| scph5501.bin  | PS1 US BIOS - Required for US games | 490f666e1afb15b7362b406ed1cea246 |
| scph5502.bin  | PS1 EU BIOS - Required for EU games | 32736f17079d0b2b7024407c39bd3050 |

## Extensions

Content that can be loaded by the Riverhorse core have the following file extensions:

- .cue
- .bin
- .img
- .iso
- .chd
- .ecm
- .mds
- .ccd
- .pbp
- .m3u
- .exe
- .psexe
- .psf

Multi-disc games load as an .m3u playlist; discs are swapped with RetroArch's disc control. When a game asks for another disc, Riverhorse inserts the next one of the playlist by itself.

## Databases

RetroArch database(s) that are associated with the Riverhorse core:

- [Sony - PlayStation](https://github.com/libretro/libretro-database/blob/master/rdb/Sony%20-%20PlayStation.rdb)

## Features

Frontend-level settings or features that the Riverhorse core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           |     ✔     |
| Screenshots       |     ✔     |
| Saves             |     ✔     |
| States            |     ✔     |
| Rewind            |     ✔     |
| Netplay           |     ✔     |
| Core Options      |     ✔     |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) |     ✔     |
| RetroArch Cheats  |     ✔     |
| Native Cheats     |     ✔     |
| Controls          |     ✔     |
| Remapping         |     ✔     |
| Multi-Mouse       |     ✔     |
| Rumble            |     ✔     |
| Sensors           |     ✕     |
| Camera            |     ✕     |
| Location          |     ✕     |
| Subsystem         |     ✕     |
| [Softpatching](../guides/softpatching.md) |     ✕     |
| Disk Control      |     ✔     |
| Username          |     ✕     |
| Language          |     ✕     |
| Crop Overscan     |     ✔     |
| LEDs              |     ✔     |

RetroArch cheats take GameShark codes. Native cheats are the codes Riverhorse's cheat database has for the loaded game, switched on in the core options' Cheats category; save them as game options to keep each game's choices. The DualShock's analog light is shown on LED 1 to 8, one per user. RetroArch's softpatching isn't available because the core reads discs from their files; a .ppf patch with the disc image's name is applied by the PPF Patches option instead. RetroArch's Crop Overscan setting is followed while the core's Crop option is on Frontend Setting.

## Directories

The Riverhorse core's library name is 'Riverhorse'.

**Frontend's System directory**

- the BIOS images
- `riverhorse/` (the core's caches, written by the core)

**Frontend's Save directory**

- `<game title>_1.mcd` (memory card 1, one per game)
- `<game title>_2.mcd` (memory card 2, when the Memory Card 2 option is on)
- `shared_card_1.mcd`, `shared_card_2.mcd` (when the Memory Cards option is Shared)

## Core options

The Riverhorse core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. In frontends with option categories they are grouped under Video, PGXP, Patches, Console, CD-ROM, Input, Memory Cards and Cheats.

- **Renderer (restart)** [riverhorse_renderer] (**Hardware**|Software)

    Hardware renders with RetroArch's OpenGL or Vulkan driver and allows upscaling; Software matches the console most closely. Takes effect when content is loaded.

- **Internal Resolution** [riverhorse_resolution_scale] (**1x (Native)**|2x|3x (1080p)|4x|5x (1440p)|6x|8x (4K))

    Renders 3D at a multiple of the console's resolution. Hardware renderer only.

- **Texture Filtering** [riverhorse_texture_filter] (**Nearest-Neighbor**|Bilinear|Bilinear (No Edge Blending)|JINC2|xBR|MMPX (Pixel Art)|Cubic)

    Smooths textures. Hardware renderer only.

- **Frameskip** [riverhorse_frameskip] (Disabled|**Auto**)

    Auto leaves frames out when the device can't keep up, so sound doesn't crackle. Needs the frontend's Audio Buffer Status support.

- **On-Screen Messages** [riverhorse_osd_messages] (**Enabled**|Disabled)

    Shows notices such as disc changes and applied patches through the frontend.

- **True Color (24-Bit)** [riverhorse_true_color] (Enabled|**Disabled**)

    Renders with full colour instead of 16-bit dithering.

- **Scaled Dithering** [riverhorse_scaled_dithering] (**Enabled**|Disabled)

    Scales the dither pattern with the internal resolution.

- **Widescreen Hack** [riverhorse_widescreen_hack] (Enabled|**Disabled**)

    Widens the 3D view of most games. Use with a 16:9 aspect ratio.

- **PGXP Geometry Correction** [riverhorse_pgxp] (Enabled|**Disabled**)

    Reduces polygon wobble. Hardware renderer only.

- **PGXP Texture Correction** [riverhorse_pgxp_texture_correction] (**Enabled**|Disabled)

    Corrects texture warping. Needs PGXP.

- **PGXP Culling Correction** [riverhorse_pgxp_culling] (**Enabled**|Disabled)

    Uses precise positions for back-face culling. Needs PGXP.

- **PGXP Depth Buffer** [riverhorse_pgxp_depth_buffer] (Enabled|**Disabled**)

    Sorts geometry with a depth buffer. Needs PGXP; slower.

- **PGXP CPU Mode** [riverhorse_pgxp_cpu] (Enabled|**Disabled**)

    Tracks precision through all CPU instructions. Needs PGXP; slow.

- **PGXP Vertex Cache** [riverhorse_pgxp_vertex_cache] (Enabled|**Disabled**)

    Finds precise positions for geometry the game copies through memory. Fixes PGXP in some games, breaks it in others. Needs PGXP.

- **PGXP Geometry Tolerance** [riverhorse_pgxp_tolerance] (**Disabled**|0.5 Pixels|1 Pixel|2 Pixels|4 Pixels)

    Falls back to the console's positions when the precise ones are this many pixels away, which removes stretched polygons in some games. Needs PGXP.

- **Aspect Ratio** [riverhorse_aspect_ratio] (**Game Native**|4:3|16:9|Square Pixels)

    Shape of the picture sent to RetroArch.

- **Crop** [riverhorse_crop_mode] (**Frontend Setting**|Overscan Area|None|All Borders)

    Removes the overscan area or all borders. Frontend Setting follows the frontend's Crop Overscan setting.

- **Deinterlacing** [riverhorse_deinterlacing] (**Adaptive**|Weave|Blend|Disabled)

    How interlaced video is shown.

- **Disable Interlacing** [riverhorse_disable_interlacing] (**Enabled**|Disabled)

    Renders interlaced games progressively, without flicker. A few games need interlacing to show correctly.

- **Force NTSC Timings** [riverhorse_force_ntsc_timings] (Enabled|**Disabled**)

    Runs PAL games at 60 Hz. Most games then run faster than intended.

- **Chroma Smoothing (24-Bit)** [riverhorse_chroma_smoothing] (Enabled|**Disabled**)

    Smooths the colour blockiness of full-motion videos.

- **Console Region** [riverhorse_region] (**Auto-Detect**|NTSC-U/C|NTSC-J|PAL)

    Region of the emulated console.

- **Fast Boot** [riverhorse_fast_boot] (Enabled|**Disabled**)

    Skips the BIOS logo.

- **Enable 8 MB RAM (restart)** [riverhorse_8mb_ram] (Enabled|**Disabled**)

    Gives the console the 8 MB of the development units, which some hacks and translations need. Takes effect when content is loaded.

- **Widescreen Patch** [riverhorse_widescreen_patch] (Enabled|**Disabled**)

    Applies the game's 16:9 widescreen patch from Riverhorse's patch database, if it has one, and shows the game at 16:9 while Aspect Ratio is Game Native.

- **60 FPS Patch** [riverhorse_60fps_patch] (Enabled|**Disabled**)

    Applies the game's 60 FPS patch from Riverhorse's patch database, if it has one.

- **PPF Patches** [riverhorse_ppf_patches] (**Enabled**|Disabled)

    Applies a .ppf patch with the same name as the disc image, such as a fan translation. Takes effect when content is loaded.

- **CPU Execution Mode** [riverhorse_cpu_mode] (**Recompiler**|Cached Interpreter|Interpreter)

    The recompiler is fastest; the interpreters help with problem games.

- **CPU Speed** [riverhorse_overclock] (**100%**|150%|200%|300%|400%)

    Runs the CPU faster than the console. Can speed up slow games or break them.

- **CD-ROM Read Speed** [riverhorse_cdrom_read_speedup] (**1x (Console)**|2x|4x|8x|Maximum)

    Reads data faster than the console to shorten loads.

- **CD-ROM Seek Speed** [riverhorse_cdrom_seek_speedup] (**1x (Console)**|2x|4x|8x|Maximum)

    Seeks faster than the console to shorten loads.

- **Preload Disc to RAM** [riverhorse_load_to_ram] (Enabled|**Disabled**)

    Reads the whole disc into memory when it is loaded.

- **Start DualShocks in Analog Mode** [riverhorse_force_analog] (**Enabled**|Disabled)

    Turns analog mode on at reset.

- **DualShock Analog Button** [riverhorse_analog_button] (**Disabled**|L3 + R3|Select + L1 + R1)

    Button combination that presses the DualShock's Analog button, which switches analog mode on and off.

- **Light Gun Crosshair** [riverhorse_crosshair] (**Enabled**|Disabled)

    Draws a crosshair where each GunCon or Justifier is aiming.

- **Memory Cards** [riverhorse_memory_card_mode] (**Per Game**|Shared)

    Per Game gives each game its own cards, named after the game. Shared uses the same cards for every game.

- **Memory Card 2** [riverhorse_memory_card_2] (Enabled|**Disabled**)

    Adds a second memory card.

- **Multitap** [riverhorse_multitap] (**Disabled**|Port 1|Port 2|Both Ports)

    Connects a Multitap for up to four players per port. Users 3 to 5 are port 1's extra controllers, users 6 to 8 port 2's.

- **Cheats** [riverhorse_cheat_...] (Enabled|**Disabled**)

    One option per code in Riverhorse's cheat database for the loaded game, under the Cheats category.

## Controllers

The Riverhorse core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **DualShock** - Analog controller (users 1 to 8)
- Digital Controller - The original pad without sticks
- NeGcon - Namco's twist controller: steering on the left stick, I on R2 or Cross, II on L2 or Square, L on L1
- GunCon - Namco's light gun, aimed with RetroArch's light gun input; a crosshair shows the aim
- Justifier - Konami's light gun, aimed with RetroArch's light gun input; a crosshair shows the aim
- PlayStation Mouse
- None

Users 3 to 8 are only connected while the Multitap option has a Multitap on their port.

| Light gun input | GunCon | Justifier |
|---|---|---|
| Trigger | Trigger | Trigger |
| Reload, or trigger off-screen | Shoot off-screen | Shoot off-screen |
| Aux A | A | Back |
| Aux B | B | - |
| Start | - | Start |

| User 1 - 2 input descriptors | RetroPad Inputs | DualShock |
|---|---|---|
| ![](../image/retropad/retro_b.png) | B | Cross |
| ![](../image/retropad/retro_a.png) | A | Circle |
| ![](../image/retropad/retro_y.png) | Y | Square |
| ![](../image/retropad/retro_x.png) | X | Triangle |
| ![](../image/retropad/retro_select.png) | Select | Select |
| ![](../image/retropad/retro_start.png) | Start | Start |
| ![](../image/retropad/retro_dpad_up.png) | D-Pad | D-Pad |
| ![](../image/retropad/retro_l1.png) | L | L1 |
| ![](../image/retropad/retro_r1.png) | R | R1 |
| ![](../image/retropad/retro_l2.png) | L2 | L2 |
| ![](../image/retropad/retro_r2.png) | R2 | R2 |
| ![](../image/retropad/retro_l3.png) | L3 | L3 |
| ![](../image/retropad/retro_r3.png) | R3 | R3 |
| ![](../image/retropad/retro_left_stick.png) | Left Analog | Left Stick |
| ![](../image/retropad/retro_right_stick.png) | Right Analog | Right Stick |

## Compatibility

Games the core treats specially (known problems, LibCrypt discs and automatic settings) are listed on the [Riverhorse compatibility page](https://riverhorse.app/compatibility).

## External Links

- [Official Riverhorse Website](https://riverhorse.app)
- [Riverhorse Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/riverhorse_libretro.info)
- [Riverhorse GitHub Repository](https://github.com/thenotoriousfox/riverhorse)
- [Report Riverhorse Core Issues Here](https://github.com/thenotoriousfox/riverhorse/issues)

## Libretro PSX cores

- [PlayStation (Beetle PSX)](beetle_psx.md)
- [PlayStation (Beetle PSX HW)](beetle_psx_hw.md)
- [PlayStation (PCSX ReARMed)](pcsx_rearmed.md)
