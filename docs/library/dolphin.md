# Nintendo Gamecube/Wii (Dolphin)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/ayv-zf04HsQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

A Nintendo Gamecube/Wii emulator for Android, Windows, Mac and Linux, written in C++.

The dolphin-libretro core supports [OpenGL](#opengl), [Vulkan](#vulkan), and [Direct3D 11](#d3d11) rendering.

The dolphin-libretro core is licensed under

- [GPLv2](https://github.com/libretro/dolphin/blob/master/LICENSE.TXT)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

- OpenGL/Open GL ES 3.0 or higher for the OpenGL renderer.
- Vulkan for the Vulkan renderer.
- Direct3D 11 for the Direct3D 11 renderer.

## Setup

To function properly, the dolphin-libretro core requires the Dolphin `Sys` folder to be in the proper location. This directory contains Dolphin's database of per-game compatibility settings/hacks, without which many games experience bugs of varying severity.

After downloading the core within RetroArch, do **one** of the following options:

### A. Installing from the 'Core System Files Downloader' (Easy/Automatic)

If your frontend version has `Main Menu > Online Updater > Core System Files Downloader` then that's the easiest solution. Just download 'Dolphin.zip' from that menu and it will place the files where it needs them. You're all done!

### B. Installing from the GitHub repo (Hard/Manual)

1. Get a copy of the Dolphin `Sys` folder. This can be done by downloading the
current source code. We provide two methods: one using *Git* and one without.
    * **If you have *Git* (if not, see the next option)**
    Just clone the most recent version of the code by running:
    ```
    git clone --depth=1 https://github.com/libretro/dolphin.git
    ```
    * **If you don't have *Git* **
    You can download a *zip* file of the source code with the following URL:
    [https://github.com/libretro/dolphin/archive/master.zip](https://github.com/libretro/dolphin/archive/master.zip)
    You can then extract it.

2. After downloading/extracting the code, navigate into the resulting source tree folder.
The `Sys` folder you need is located in *Data/Sys*.
This is the folder we will need to move/copy.
3. *Find RetroArch's system folder path*
If you didn't change its default location, the `system` folder is located at the top level of your RetroArch installation folder. Whether you moved it or not, you can find the location of your `system` folder (along with any other folders RetroArch uses) by going to Settings > Directory or by locating the *system_directory* line in the RetroArch configuration file (usually `retroarch.cfg`).
4. In the `RETROARCH_SYSTEM_FOLDER`, create a new folder named *dolphin-emu* and move/copy the `Sys` folder into it.

When everything is set up properly, the `Sys` folder path should look something like this:
```
RETROARCH_SYSTEM_FOLDER/dolphin-emu/Sys
```

The dolphin-libretro core will now work much more reliably.

## BIOS

The (optional) BIOS file goes in the directory `RETROARCH_SAVES_FOLDER/dolphin-emu/User/GC/<USA or EUR or JAP>`, with the file name `IPL.bin` for all regions. It is not necessary to provide a BIOS for most games, but certain titles (particularly those which make heavy use of the system fonts, like Star Fox Assault) can be unplayable without it.

To play the [Gamecube BIOS animation](https://www.youtube.com/watch?v=CpmYW-gCSy4) at game launch, once you have the aforementioned BIOS file placed and named correctly, open the `Dolphin.ini` file located in `RETROARCH_SAVES_FOLDER/dolphin-emu/User/GameSettings/Config/` with a text editor and change the line `SkipIPL = True` to `SkipIPL = False`.

## Extensions

Content that can be loaded by the dolphin-libretro core have the following file extensions:

- .elf
- .iso
- .gcm
- .dol
- .tgc
- .wbfs
- .ciso
- .gcz
- .wad
- .rvz

RetroArch database(s) that are associated with the dolphin-libretro core:

- [Nintendo - GameCube](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20GameCube.rdb)
- [Nintendo - Wii](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Wii.rdb)

## Features

Frontend-level settings or features that the dolphin-libretro core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✔         |
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
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

In addition to the aforementioned `RETROARCH_SYSTEM_FOLDER/dolphin-emu` directory, the dolphin-libretro core also creates a folder structure similar to that used by the standalone Dolphin emulator in `RETROARCH_SAVES_FOLDER/dolphin-emu/User`. In this structure, you can access/edit most of the same functionality you would find in the standalone Dolphin emulator and can even copy some files--such as `GAME.ini` and save files--back and forth between the dolphin-libretro core and the standalone Dolphin emulator.

## Geometry and timing

- The dolphin-libretro core's core provided FPS is 60 (for NTSC) / 50 (for PAL)
- The dolphin-libretro core's core provided sample rate can be either 32000 Hz or 48000 Hz depending on user configuration
- The dolphin-libretro core's base width is dependent on the 'Internal Resolution' core option
- The dolphin-libretro core's base height is dependent on the 'Internal Resolution' core option
- The dolphin-libretro core's max width is dependent on the 'Internal Resolution' core option
- The dolphin-libretro core's max height is dependent on the 'Internal Resolution' core option
- The dolphin-libretro core's core provided aspect ratio is 4/3.

## Language

When the `Language` core option is set to automatic, the default dolphin-libretro language setting will be pulled from RetroArch's Language setting.

## Internal Cheats

Disabled by default. Internal cheats can be handled via the GAME.ini files, but they will not take effect unless internal cheats are enabled in the core options. While there is no automatic way to add cheats to the dolphin-libretro core, it can use a cheat file generated by the standalone Dolphin emulator using the following process:

1. Open standalone Dolphin emulator and right-click your game > Properties.
2. Look at the title bar and remember the ID of the game (for example `GFZE01` for `F-Zero GX USA`).
3. Go to `Gecko Codes` tab and click `Download Codes`.
4. Check the boxes for the cheats you want to use then you can close Dolphin.
5. Navigate to `My Documents\Dolphin Emulator\GameSettings` by default for Windows (or `~/.local/share/dolphin-emu/GameSettings` for Linux).
6. Copy the .ini file with the ID of the game and paste it in your `RETROARCH_SAVES_FOLDER/dolphin-emu/User/GameSettings` folder.
7. Start the game, go to Quick Menu > Core Options and turn ON "Internal Cheats".
8. And finally Quick Menu > Close Content, restart the game and the cheats should now be active.

If you need to enable another cheat later for that game, you don't need to do the whole process all over again. You can simply edit the .ini file(s) in your `RETROARCH_SAVES_FOLDER/dolphin-emu/User/GameSettings` folder structure with a text editor to add the cheat title under the line [Gecko_Enabled].

## OpenGL

Dolphin's OpenGL renderer can be used by setting RetroArch's video driver to gl.

The common option for all operating systems is OpenGL, requiring hardware that supports OpenGL/Open GL ES 3.0 or higher. It is an older, pre-Vulkan API, slower than Vulkan but with better compatibility. If you encounter problems with other APIs, try this one.

## Vulkan

Dolphin's Vulkan renderer can be used by setting RetroArch's video driver to vulkan.

This is the latest and fastest API currently. It is most recommended for demanding less of your CPU, thus being the fastest.

## D3D11

Dolphin's Direct3D 11 renderer can be used by setting RetroArch's video driver to d3d11.

In some cases Direct3D 11 may offer better performance than OpenGL, especially on integrated Intel graphics.

## Core options

The Dolphin core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Renderer** [dolphin_renderer] (**Hardware**|Software)
- **Internal Resolution** [dolphin_efb_scale] (**x1 (640 x 528)**|x2 (1280 x 1056)|x3 (1920 x 1584)|x4 (2560 x 2112)|x5 (3200 x 2640)|x6 (3840 x 3168))
- **Widescreen (Wii)** [dolphin_widescreen] (**ON**|OFF)
- **WideScreen Hack** [dolphin_widescreen_hack] (**OFF**|ON)
- **Shader Compilation Mode** [dolphin_shader_compilation_mode] (**sync**|a-sync Skip Rendering|sync UberShaders|a-sync UberShaders)
- **Wait for Shaders before Starting** [dolphin_wait_for_shaders] (**OFF**|ON)
- **Progressive Scan** [dolphin_progressive_scan] (**ON**|OFF)
- **PAL60** [dolphin_pal60] (**ON**|OFF)
- **Max Anisotropy** [dolphin_max_anisotropy] (**1x**|2x|4x|8x|16x)
- **Skip Presenting Duplicate Frames** [dolphin_skip_dupe_frames] (**ON**|OFF)
- **Scaled EFB Copy** [dolphin_efb_scaled_copy] (**ON**|OFF)
- **Force Texture Filtering** [dolphin_force_texture_filtering] (**OFF**|ON)
- **Store EFB Copies on GPU** [dolphin_efb_to_texture] (**ON**|OFF)
- **Texture Cache Accuracy** [dolphin_texture_cache_accuracy] (**Fast**|Middle|Safe)
- **GPU Texture Decoding** [dolphin_gpu_texture_decoding] (**OFF**|ON)
- **Fast Depth Calculation** [dolphin_fast_depth_calculation] (**ON**|OFF)
- **Bounding Box Emulation** [dolphin_bbox_enabled] (**OFF**|ON)
- **Disable EFB to VRAM** [dolphin_efb_to_vram] (**OFF**|ON)
- **Load Custom Textures** [dolphin_load_custom_textures] (**OFF**|ON)
- **CPU Core** [dolphin_cpu_core] (**JIT64/JITARM64**|Interpreter|Cached Interpreter)
- **CPU Clock Rate** [dolphin_cpu_clock_rate] (**100%**|from 5% to 300%)
- **Fastmem** [dolphin_fastmem] (**ON**|OFF)
- **Wiimote IR Mode** [dolphin_ir_mode] (**Right Stick controls pointer (relative)**|Right Stick controls pointer (absolute)|Mouse controls pointer)
- **Wiimote IR Vertical Offset** [dolphin_ir_offset] (**10**|from -50 to 50)
- **Wiimote IR Total Yaw** [dolphin_ir_yaw] (**15**|from 0 to 100)
- **Wiimote IR Total Pitch** [dolphin_ir_pitch] (**15**|from 0 to 100)
- **Rumble** [dolphin_enable_rumble] (**ON**|OFF)
- **Sensor Bar Position** [dolphin_sensor_bar_position] (**Bottom**|Top)
- **Wiimote Continuous Scanning** [dolphin_wiimote_continuous_scanning] (**OFF**|ON)
- **Use ports 5-8 for GameCube controllers in Wii mode** [dolphin_alt_gc_ports_on_wii] (**OFF**|ON)
- **Audio Mixer Rate** [dolphin_mixer_rate] (**32000**|48000)
- **DSP HLE** [dolphin_dsp_hle] (**ON**|OFF)
- **DSP Enable JIT** [dolphin_dsp_jit] (**ON**|OFF)
- **Language** [dolphin_language] (**English**|Japanese|German|French|Spanish|Italian|Dutch|Simplified Chinese|Traditional Chinese|Korean)
- **Internal Cheats Enabled** [dolphin_cheats_enabled] (**OFF**|ON)
- **OSD Enabled** [dolphin_osd_enabled] (**ON**|OFF)
- **Log Level** [dolphin_log_level] (**Info**|Notice|Error|Warning)

## Joypad

| RetroPad Inputs                                 | GameCube Controller | Wiimote     | Wiimote (sideways) | Wiimote + Nunchuk | Classic Controller | Classic Controller Pro |
|------------------------------------------------ |---------------------|-------------|--------------------|-------------------|--------------------|------------------------|
| ![](../image/retropad/retro_b.png)              | B                   | B           | 1                  | B                 | B                  | B                      |
| ![](../image/retropad/retro_y.png)              | Y                   | 2           | B                  | Z                 | Y                  | Y                      |
| ![](../image/retropad/retro_select.png)         |                     | -           | -                  | 2                 | -                  | -                      |
| ![](../image/retropad/retro_start.png)          | Start               | +           | +                  | 1                 | +                  | +                      |
| ![](../image/retropad/retro_dpad_up.png)        | D-Pad Up            | D-Pad Up    | D-Pad Up           | D-Pad Up          | D-Pad Up           | D-Pad Up               |
| ![](../image/retropad/retro_dpad_down.png)      | D-Pad Down          | D-Pad Down  | D-Pad Down         | D-Pad Down        | D-Pad Down         | D-Pad Down             |
| ![](../image/retropad/retro_dpad_left.png)      | D-Pad Left          | D-Pad Left  | D-Pad Left         | D-Pad Left        | D-Pad Left         | D-Pad Left             |
| ![](../image/retropad/retro_dpad_right.png)     | D-Pad Right         | D-Pad Right | D-Pad Right        | D-Pad Right       | D-Pad Right        | D-Pad Right            |
| ![](../image/retropad/retro_a.png)              | A                   | A           | 2                  | A                 | A                  | A                      |
| ![](../image/retropad/retro_x.png)              | X                   | 1           | A                  | C                 | X                  | X                      |
| ![](../image/retropad/retro_l1.png)             |                     |             |                    | -                 | ZL                 | L                      |
| ![](../image/retropad/retro_r1.png)             | Z                   |             |                    | +                 | ZR                 | R                      |
| ![](../image/retropad/retro_l2.png)             | L                   |             |                    | Shake Nunchuk     | L                  | ZL                     |
| ![](../image/retropad/retro_r2.png)             | R                   | Shake       | Shake              | Shake Wiimote     | R                  | ZR                     |
| ![](../image/retropad/retro_l3.png)             | L-Analog            |             |                    |                   |                    |                        |
| ![](../image/retropad/retro_r3.png)             | R-Analog            | Home        |  Home              | Home              | Home               | Home                   |
| ![](../image/retropad/retro_left_stick.png) X   | Analog X            | Tilt X      |  Tilt X            | Nunchuk Stick X   | Left Stick X       | Left Stick X           |
| ![](../image/retropad/retro_left_stick.png) Y   | Analog Y            | Tilt Y      |  Tilt Y            | Nunchuk Stick Y   | Left Stick Y       | Left Stick Y           |
| ![](../image/retropad/retro_right_stick.png) X  | C-Stick X           |             |                    | Tilt X            | Right Stick X      | Right Stick X          |
| ![](../image/retropad/retro_right_stick.png) Y  | C-Stick Y           |             |                    | Tilt Y            | Right Stick Y      | Right Stick Y          |
**NOTE:** The 'L-Analog' and 'R-Analog' inputs are half-presses of the analog L and R buttons, respectively. These inputs are required to progress in some games, such as Super Mario Sunshine.

## Compatibility

[Compatibility Pages](https://dolphin-emu.org/compat/)

## External Links

- [Official Dolphin Website](https://dolphin-emu.org/)
- [Official Dolphin Github Repository](https://github.com/dolphin-emu/dolphin)
- [Libretro Dolphin Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dolphin_libretro.info)
- [Report Libretro Dolphin Core Issues Here](https://github.com/libretro/dolphin/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IcC4j9ggvxzZm2GiuufDMeU)
