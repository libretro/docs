# Nintendo Gamecube/Wii (Dolphin)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/ayv-zf04HsQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

A Nintendo Gamecube/Wii emulator for Android, Windows, Mac and Linux, written in C++.

The Dolphin core supports [OpenGL](#opengl), [Vulkan](#vulkan), and [Direct3D 11](#d3d11) rendering.

The Dolphin core is licensed under

- [GPLv2](https://github.com/libretro/dolphin/blob/master/LICENSE.TXT)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

- OpenGL/Open GL ES 3.0 or higher for the OpenGL renderer.
- Vulkan for the Vulkan renderer.
- Direct3D 11 for the Direct3D 11 renderer.

## Setup

For running properly, the Dolphin core requires to have the Dolphin `Sys` folder
in the proper location.

After downloading the core within RetroArch, execute the following steps:

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

2. After getting the code, enter in the folder containing it.
The `Sys` folder you need is located in *Data/Sys*.
This is the folder we will need to move/copy.
3. *Find RetroArch's system folder path*
Unless you customized your installation, the RetroArch configuration path is
the one listed in the
[RGUI page](../guides/rgui/#config-file).
If you didn't change any value, the system folder is:
`RETROARCH_CONFIG_DIR/system`.
If you changed the default directory configuration, you should check the
*system_directory* option in the RetroArch configuration file (usually
`retroarch.cfg`) to see which folder is used.
4. In the `RETROARCH_SYSTEM_FOLDER`, create the *dolphin-emu* directory and
move/copy the `Sys` folder within it.

Ultimately, the `Sys` folder should be placed at a location similar to:
```
RETROARCH_SYSTEM_FOLDER/dolphin-emu/Sys
```
There is also currently a bug with this core and the GL driver that can be worked around by going to settings > user interface > show advanced settings ON and then going to settings > core > allow cores to change the video driver OFF.

The Dolphin core will now work without issues.

## BIOS

The (optional) BIOS file goes in the directory `retroarch/saves/User/GC/<USA or EUR or JAP>`, with the file name `IPL.bin` for all regions. It is not necessary to provide a BIOS for most games, but certain titles (particularly those which make heavy use of the system fonts, like Star Fox Assault) can be unplayable without it.

## Extensions

Content that can be loaded by the Dolphin core have the following file extensions:

- .elf
- .iso
- .gcm
- .dol
- .tgc
- .wbfs
- .ciso
- .gcz
- .wad

RetroArch database(s) that are associated with the Dolphin core:

- [Nintendo - GameCube](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20GameCube.rdb)
- [Nintendo - Wii](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Wii.rdb)

## Features

Frontend-level settings or features that the Dolphin core respects.

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

The Dolphin core's library name is 'Dolphin'

TODO/FIXME

## Geometry and timing

- The Dolphin core's core provided FPS is 60 (for NTSC) / 50 (for PAL)
- The Dolphin core's core provided sample rate can be either 32000 Hz or 48000 Hz depending on user configuration
- The Dolphin core's base width is dependent on the 'Internal Resolution' core option
- The Dolphin core's base height is dependent on the 'Internal Resolution' core option
- The Dolphin core's max width is dependent on the 'Internal Resolution' core option
- The Dolphin core's max height is dependent on the 'Internal Resolution' core option
- The Dolphin core's core provided aspect ratio is 4/3.

## Language

When the 'Language' core option is set to automatic, the default PPSSPP language setting will be pulled from RetroArch's Language setting.

## Internal Cheats

Disabled by default.

TODO/FIXME

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

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CPU Core** [ppsspp_cpu_core] (**jit**|IR jit|interpreter)

    The jit setting enables the Dynamic Recomplier (Dynarec) for CPU emulation. The Dynarec is much faster than the interpreter setting and is the default, recommended mode for supported architectures.

    The interpreter setting enables the Interpreter for CPU emulation. The Interpreter is a very slow type of emulation and mostly useful for debug, but should work anywhere.

	The IR jit setting might be worth trying against games which are broken in the other two settings.

- **CPU Clock Rate** [ppsspp_locked_cpu_speed] (**off**|222MHz|266MHz|333MHz)

	Allows you to lock the internal CPU clock of the emulator (of the emulated CPU).

	Larger clocks can ensure a more stable performance in certain games that present problems even on a real PSP, but it requires more powerful hardware.

	Lower clocks can help weak hardware have more comfortable gameplay, limiting FPS to a lower rate.

	Changing this option opens the door to several bugs that may compromise some games.

	In case of doubt, keep this on off.

- **Language** [dolphin_language] (**english**|japanese|french|spanish|german|italian|dutch|portuguese|russian|korean|chinese_traditional|chinese_simplified)

    Configure the Dolphin core's system language.

## Joypad

![](../image/controller/psp.png)

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Cross                    |
| ![](../image/retropad/retro_y.png)             | Square                   |
| ![](../image/retropad/retro_select.png)        | Select                   |
| ![](../image/retropad/retro_start.png)         | Start                    |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
| ![](../image/retropad/retro_a.png)             | Circle                   |
| ![](../image/retropad/retro_x.png)             | Triangle                 |
| ![](../image/retropad/retro_l1.png)            | L                        |
| ![](../image/retropad/retro_r1.png)            | R                        |
| ![](../image/retropad/retro_left_stick.png) X  | Analog X                 |
| ![](../image/retropad/retro_left_stick.png) Y  | Analog Y                 |

## Compatibility

[Compatibility Pages](https://dolphin-emu.org/compat/)

## External Links

- [Official Dolphin Website](https://dolphin-emu.org/)
- [Official Dolphin Github Repository](https://github.com/dolphin-emu/dolphin)
- [Libretro Dolphin Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dolphin_libretro.info)
- [Report Libretro Dolphin Core Issues Here](https://github.com/libretro/dolphin/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IcC4j9ggvxzZm2GiuufDMeU)