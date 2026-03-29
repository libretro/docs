# Sony - PlayStation Portable (PPSSPP)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/KYt6oXA1Bws" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

A fast and portable PSP emulator written in C++. No BIOS file required to play, PPSSPP is an "HLE" emulator. Default settings balance good compatibility and speed.

The PPSSPP core has been authored by

- Henrik Hrydgard

The PPSSPP core is licensed under

- [GPLv2](https://github.com/hrydgard/ppsspp/blob/master/LICENSE.TXT)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Setup (Required!!)

The PPSSPP core requires some helper files to be fully functional, including assets such as fonts and backgrounds that are required for memory card screens, and per-game settings that are loaded automatically for compatibility/bugfixing.

In order to acquire PPSSPP's assets files and install them succcessfully, follow these steps:

!!! info
	Lakka users do not need to follow these steps. Lakka image ships with the assets already included. Those assets are compatible with the version of the core provided in the Lakka image. Using not compatible assets may lead to unexpected results.

### Installing from the 'Core System Files Downloader'

If your frontend version has `Main Menu > Online Updater > Core System Files Downloader` then that's the easiest solution. Just download 'PPSSPP.zip' from that menu and you're all done!

### Installing from the GitHub repo

1 . Create a directory named PPSSPP in RetroArch's System directory.

```
RetroArch/
         └── system/
		           └── PPSSPP/
```

Here's an example of what it should look like.

![](../image/core/ppsspp/directory.png)

2 . Visit [https://github.com/hrydgard/ppsspp](https://github.com/hrydgard/ppsspp) and download the repository.

![](../image/core/ppsspp/download.png)

3 . Extract ppsspp-master.zip

4 . Copy the contents of `ppsspp-master/assets` into 'system/PPSSPP'

The end result should look like this.

![](../image/core/ppsspp/ppsspp_assets.png)

!!! attention
	Don't like PPSSPP's replacement fonts? You can place the original PSP fonts in 'system/PPSSPP/flash0/font'

## Extensions

Content that can be loaded by the PPSSPP core have the following file extensions:

- .elf
- .iso
- .cso
- .prx
- .pbp
- .chd

RetroArch database(s) that are associated with the PPSSPP core:

- [Sony - PlayStation Portable](https://github.com/libretro/libretro-database/blob/master/rdb/Sony%20-%20PlayStation%20Portable.rdb)

## Features

Frontend-level settings or features that the PPSSPP core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
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
| Username          | ✔         |
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

**Texture Replacement Packs**

High-resolution texture packs can be used by extracting any archives and placing the contents into the frontend's 'saves' directory, in a directory under PSP/TEXTURES, named for the [game's ID code](https://www.scribd.com/document/515954071/PSP-Game-IDs).

**Netplay**

PPSSPP-libretro can utilize the same netplay services provided by the standalone PPSSPP application by entering the desired network address in the core options, under the 'network' category. See [the upstream documentation](https://github.com/hrydgard/ppsspp/wiki/How-to-play-multiplayer-games-with-PPSSPP) for further details on setup.

## Directories

The PPSSPP core's library name is 'PPSSPP'

The PPSSPP core saves/loads to/from these directories.

**Frontend's Save directory**

```
.
└── PSP/
       ├── PPSSPP_STATE/ (Used to be the state directory, no longer used)
       ├── SAVEDATA/ (In-game saves)
       ├── flash0/ (Font override for real fonts dumped from PSP system)
       ├── Cheats/ (Internal Cheats directory, disabled by default)
       ├── GAME/ (DLC directory)
       ├── SYSTEM/
                 └── CACHE/ (Shader cache)
       └── TEXTURES/
                 └── [GAME_ID] (Extracted textures; enabled via core option)
```

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The PPSSPP core's core provided FPS is 60
- The PPSSPP core's core provided sample rate is 44100 Hz
- The PPSSPP core's base width is dependent on the 'Internal Resolution' core option
- The PPSSPP core's base height is dependent on the 'Internal Resolution' core option
- The PPSSPP core's max width is dependent on the 'Internal Resolution' core option
- The PPSSPP core's max height is dependent on the 'Internal Resolution' core option
- The PPSSPP core's core provided aspect ratio is 16/9

## Language

When the 'Language' core option is set to automatic, the default PPSSPP language setting will be pulled from RetroArch's Language setting.

## Nickname

PPSSPP's default nickname setting is pulled from RetroArch's nickname setting.

## Internal Cheats

Disabled by default.

**To enable and allow the use of ini cheat files in save\PSP\Cheats, set the 'Internal Cheats Support' core option to enabled.**

Cheats can be used to unlock 60fps in several 30fps games.

Each code can be activated or disabled in the ini directly with _C1 in place of _C0 on the title line.

[PPSSPP forums thread](http://forums.ppsspp.org/showthread.php?tid=3590)

## DLC

DLCs need to be installed in the GAME directory. Create the GAME directory in the PSP directory and it should look like this.

RetroArch\saves\PPSSPP\PSP\GAME\

## Hardware Rendering

- **OpenGL**

    PPSSPP's OpenGL renderer can be used by setting RetroArch's video driver to gl or glcore (where available).

    This renderer requires hardware that supports OpenGL/Open GL ES 2.0 or higher. It is an older, pre-Vulkan API, which is slower but with better compatibility. If you encounter problems with other APIs, try this one.

- **Vulkan**

    PPSSPP's Vulkan renderer can be used by setting RetroArch's video driver to vulkan. This is the latest and fastest API currently. It is most recommended for demanding less of your CPU, thus being the fastest.

- **D3D11**

    PPSSPP's Direct3D 11 renderer can be used by setting RetroArch's video driver to d3d11. In some cases Direct3D 11 may offer better performance than OpenGL, especially on integrated Intel graphics.

## Core options

The PPSSPP core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

### System

- **CPU Core** [ppsspp_cpu_core] (**jit**|IR jit|interpreter)

    The jit setting enables the Dynamic Recomplier (Dynarec) for CPU emulation. The Dynarec is much faster than the interpreter setting and is the default, recommended mode for supported architectures.

    The interpreter setting enables the Interpreter for CPU emulation. The Interpreter is a very slow type of emulation and mostly useful for debug, but should work anywhere.

	The IR jit setting might be worth trying against games which are broken in the other two settings.

- **Fast Memory** [ppsspp_fast_memory] (**enabled**|disabled)

	This option avoids some memory accesses by caching information, however a few games may have problems when this option is enabled, most run with no problem.

- **Ignore Bad Memory Accesses**
  
- **I/O Timing Method**

- **Force Real Clock Sync**

- **Locked CPU Speed** [ppsspp_locked_cpu_speed] (**off**|222MHz|266MHz|333MHz)

	Allows you to lock the internal CPU clock of the emulator (of the emulated CPU).

	Larger clocks can ensure a more stable performance in certain games that present problems even on a real PSP, but it requires more powerful hardware.

	Lower clocks can help weak hardware have more comfortable gameplay, limiting FPS to a lower rate.

	Changing this option opens the door to several bugs that may compromise some games.

	In case of doubt, keep this on off.

- **Memory Stick Inserted**

- **Cache Full ISO in RAM**

- **Internal Cheats Support** [ppsspp_cheats] (**disabled**|enabled)

	Enables internal cheats. Look at the [Internal Cheats section](#internal-cheats) for more information.

- **Game Language** [ppsspp_language] (**automatic**|english|japanese|french|spanish|german|italian|dutch|portuguese|russian|korean|chinese_traditional|chinese_simplified)

    Configure the PPSSPP's system language.

	When set to automatic, the default PPSSPP language setting will be pulled from RetroArch's Language setting.

- **PSP Mode**

### Video

- **Backend** [ppsspp_rendering_mode] (**Automatic**|OpenGL|Vulkan|D3D11|None)

	Sets the hardware rendering API. 'Automatic' uses whichever backend matches the frontend's current video driver.

- **Software Rendering**

- **Rendering Resolution** [ppsspp_internal_resolution] (**480x272**|960x544|1440x816|1920x1088|2400x1360|2880x1632|3360x1904|3840x2176|4320x2448|4800x2720)

	**The 'Software Rendering' core option must be set to OFF for this to have any effect.**

	Controls the internal resolution of the graphics, significant performance impact if your GPU is not powerful enough for certain resolutions.

- **MSAA Antialiasing**

- **Crop to 16x9**

- **Frameskip** [ppsspp_frameskip] (**0**|1|2|3|4|5|6|7|8|9)

	This option skips image frames to increase the emulation speed. They can be skipped between 1 and 8 frames every second. Using this option can give the impression of the game running faster but with stuttering, and this increases the amount of frames to be skipped you select. This option is only effective when your processor is powerful enough.

- **Auto Frameskip** [ppsspp_auto_frameskip] (**disabled**|enabled)

	This option only selects the optimal number of frames to skip to not to compromise both gameplay. The max frames to be skipped can be limited in the Frameskip option.

- **Render Duplicate Frames to 60 Hz**

- **Detect Frame Rate Changes**

- **Buffer Graphics Commands**

- **Software Skinning**

- **Hardware Tesselation**

- **Texture Upscale Type** [ppsspp_texture_scaling_type] (**xbrz**|hybrid|bicubic|hybrid_bicubic)

	Choose the Texture Upscale Type.

	xBRZ is overall the best option while Hybrid is a slower version of xBRZ and doesn't offers much difference, Hybrid + Bicubic is the slowest one using two effects.

- **Texture Upscaling Level** [ppsspp_texture_scaling_level] (**1**|2|3|4|5|0)

	With this option, you can make modifications to the texture scale level, which improves the visual at high resolutions.

	All the scaling is made by CPU and results in a great performance impact. Use carefully.

- **Texture Deposterize** [ppsspp_texture_deposterize] (**disabled**|enabled)

	Deposterize fixes small in-texture glitches that may happen when the texture is upscaled.

- **Texture Shader**

- **Anisotropic Filtering** [ppsspp_texture_anisotropic_filtering] (**off**|1x|2x|4x|8x|16x)

	Modify the Anisotropic Filtering, which fixes the textures on the horizon that are drawn at angles resulting in a better look.

- **Texture Filtering** [ppsspp_texture_filtering] (**auto**|nearest|linear|linear(FMV))

	Apply texture filtering.

	Stick to auto in case of doubt.

- **Smart 2D Texture Filtering**

- **Texture Replacement**

### Input

- **Confirmation Button** [ppsspp_button_preference] (**cross**|circle)

	Select whether the cross input or the circle input is the confirmation button.

- **Analog Circle vs Square Gate Compensation**

- **Analog Deadzone**
  
    Additional deadzone to apply after frontend input.

- **Analog Axis Scale**
  
    Additional sensitivity to apply after frontend input.

### Hacks

- **Skip Buffer Effects**
  
    Faster, but nothing may draw in some games.

- **Disable Culling**

- **Skip GPU Readbacks**
  
    Some games require GPU readbacks, so be careful.

- **Lazy Texture Caching (Speedup)**
  
    Faster, but can cause text problems in a few games.

- **Spline/Bezier Curves Quality**
  
    Only used by some games, controls smoothness of curves.

- **Lower Resolution for Effects**
  
    Reduces artifacts

### Network

- **Enable Networking/WLAN (Beta, may break games)**

- **MAC Address Pt 1: x-:--:--:--:--:--**

- **MAC Address Pt 2: -x:--:--:--:--:--**

- **MAC Address Pt 3: --:x-:--:--:--:--**

- **MAC Address Pt 4: --:-x:--:--:--:--**

- **MAC Address Pt 5: --:--:x-:--:--:--**

- **MAC Address Pt 6: --:--:-x:--:--:--**

- **MAC Address Pt 7: --:--:--:x-:--:--**

- **MAC Address Pt 8: --:--:--:-x:--:--**

- **MAC Address Pt 9: --:--:--:--:x-:--**

- **MAC Address Pt 10: --:--:--:--:-x:--**

- **MAC Address Pt 11: --:--:--:--:--:x-**

- **MAC Address Pt 12: --:--:--:--:--:-x**

- **WLAN Channel**

- **Enable Built-in PRO Ad Hoc Server**

- **Change PRO Ad Hoc Server IP Address ('localhost' = multiple instances)**

- **Enable UPnP (Need a few seconds to detect)**

- **Port Offset ('0' = PSP Compatibility)**

- **Minimum Timeout (Override in ms, '0' = default)**

- **Forced First Connect (Faster connect)**

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

- [PPSSPP Compatibility List](http://report.ppsspp.org/games)

## External Links

- [Official PPSSPP Website](http://www.ppsspp.org/)
- [Official PPSSPP Github Repository](https://github.com/hrydgard/ppsspp)
- [Libretro PPSSPP Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/ppsspp_libretro.info)
- [Report Libretro PPSSPP Core Issues Here](https://github.com/libretro/ppsspp/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IcjmP26m8-3JWNzYUXRjqWT)
