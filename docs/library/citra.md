# Nintendo - 3DS (Citra)

## Background

Citra is an experimental open-source Nintendo 3DS emulator/debugger written in C++. It is written with portability in mind.

The Citra core has been authored by

- Citra Emulation Project

The Citra core is licensed under

- [GPLv2](https://github.com/citra-emu/citra/blob/master/license.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

### Requirements

OpenGL 3.3 or higher

![](../image/core/citra/gl.png)

!!! warning
	There is currently no ‘working’ macOS version available. This is because this core requires OpenGL core 3.3 context, and RetroArch on macOS currently does not support this. We will have to add support for this to a future version of RetroArch on macOS before this core will start to work on it.

## Decryption keys

Citra requires [AES keys](https://citra-emu.org/wiki/aes-keys/) in order to load encrypted games. `aes_keys.txt` needs to be placed in ../saves/Citra/sysdata.

## Extensions

Content that can be loaded by the Citra core have the following file extensions:

- .3ds
- .3dsx
- .elf
- .axf
- .cci
- .cxi
- .app

RetroArch database(s) that are associated with the Citra core:

- [Nintendo - Nintendo 3DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%203DS.rdb)

## Features

Frontend-level settings or features that the Citra core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
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
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Citra core's library name is 'Citra'

The Citra core saves/loads to/from these directories.

The Citra Shaders should be in ../saves/Citra/shaders/opengl/transferable

**Frontend's Save directory**

- [Citra System and Save files](https://citra-emu.org/wiki/user-directory/)

### Geometry and timing

- The Citra core's core provided FPS is 60.0
- The Citra core's core provided sample rate is 32728 Hz
- The Citra core's base width is (Base width)
- The Citra core's base height is (Base height)
- The Citra core's max width is (Max width)
- The Citra core's max height is (Max height)
- The Citra core's core provided aspect ratio is (Ratio)

## Cheats

The Citra core supports internal cheats, but you have to enable them manually:

1. Grab a Citra cheats file for your game, you can find a lot of them here for example: [https://github.com/iSharingan/CTRPF-AR-CHEAT-CODES/tree/master/Cheats](https://github.com/iSharingan/CTRPF-AR-CHEAT-CODES/tree/master/Cheats)
2. Put the file (`[game_id].txt`) in your frontend's `saves/Citra/cheats/` folder.
3. Open the .txt file with a text editor, add `*citra_enabled` below the cheat title and save changes.

As an example, if you want to enable the "All Characters" cheat for Mario Kart 7 you have to edit `[frontend_dir]/saves/Citra/cheats/0004000000030800.txt` and change that part:
```
[All Characters, Game v1.0]
D3000000 14000000
0013C99C 01FF003F
```
to:
```
[All Characters, Game v1.0]
*citra_enabled
D3000000 14000000
0013C99C 01FF003F
```

## Core options

The Citra core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Enable CPU JIT** [citra_use_cpu_jit] (**enabled**|disabled)

	Enable Citra's 'dynarmic' dynamic recomplier. Can improve performance. Instructions that are not implemented by the recompiler fall back into the interpreter CPU core.

	If disabled, Citra will solely use the Interpreter CPU core.

- **Enable hardware renderer** [citra_use_hw_renderer] (**enabled**|disabled)

	Awaiting description.

- **Enable shader JIT** [citra_use_shader_jit] (**enabled**|disabled)

	Awaiting description.

- **Enable hardware shaders** [citra_use_hw_shaders] (**enabled**|disabled)

	Awaiting description.

- **Save hardware shader cache to disk** [citra_use_hw_shader_cache] (**enabled**|disabled)

	Awaiting description.

- **Enable accurate geometry shaders (only for H/W shaders)** [citra_use_acc_geo_shaders] (**enabled**|disabled)

	Awaiting description.

- **Enable accurate shaders multiplication (only for H/W shaders)** [citra_use_acc_mul] (**enabled**|disabled)

	Awaiting description.

- **Texture filter type** [citra_texture_filter] (**none**|Anime4K Ultrafast|Bicubic|ScaleForce|xBRZ freescale)

	Awaiting description.

- **Enable custom textures** [citra_custom_textures] (**disabled**|enabled)

	Awaiting description.

- **Dump textures** [citra_dump_textures] (**disabled**|enabled)

	Awaiting description.

- **Resolution scale factor** [citra_resolution_factor] (**1x (Native)**|2x|3x|4x|5x|6x|7x|8x|9x|10x)

	Self-explanatory.

??? note "Screen layout positioning - Default Top-Bottom Screen"
	![](../image/core/citra/default.png)

??? note "Screen layout positioning - Single Screen Only"
	![](../image/core/citra/single.png)

??? note "Screen layout positioning - Large Screen, Small Screen)"
	![](../image/core/citra/large.png)

- **Screen layout positioning** [citra_layout_option] (**Default Top-Bottom Screen**|Single Screen Only|Large Screen, Small Screen|Side by Side)

	Awaiting description.

- **Prominent 3DS screen** [citra_swap_screen] (**Top**|Bottom)

	Awaiting description.

- **Right analog function** [citra_analog_function] (**C-Stick and Touchscreen Pointer**|Touchscreen Pointer|C-Stick)

	Awaiting description.

- **Emulated pointer deadzone (%)** [citra_deadzone] (**15**|20|25|30|35|0|5|10)

	Awaiting description.

- **Simulate touchscreen interactions with mouse** [citra_mouse_touchscreen] (**enabled**|disabled)

	Awaiting description.

- **Simulate touchscreen interactions with touchscreen** [citra_touch_touchscreen] (**disabled**|enabled)

	Awaiting description.

- **Render simulated touchscreen interactions** [citra_render_touchscreen] (**disabled**|enabled)

	Awaiting description.

- **Enable virtual SD card** [citra_use_virtual_sd] (**enabled**|disabled)

	Awaiting description.

- **Savegame location** [citra_use_libretro_save_path] (**LibRetro Default**|Citra Default)

	Awaiting description.

- **3DS system model** [citra_is_new_3ds] (**Old 3DS**|New 3DS)

	Awaiting description.

- **3DS system region** [citra_region_value] (**Auto**|Japan|USA|Europe|Australia|China|Korea|Taiwan)

	Awaiting description.

- **3DS system language** [citra_language] (**English**|Japanese|French|Spanish|German|Italian|Dutch|Portuguese|Russian|Korean|Traditional Chinese|Simplified Chinese)

	Awaiting description.

- **"Enable GDB stub** [citra_use_gdbstub] (**disabled**|enabled)

	Awaiting description.

## Joypad

| User 1 input descriptors | RetroPad Inputs                                | Citra inputs       |
|--------------------------|------------------------------------------------|--------------------|
| B                        | ![](../image/retropad/retro_b.png)             | B                  |
| Y                        | ![](../image/retropad/retro_y.png)             | Y                  |
| Select                   | ![](../image/retropad/retro_select.png)        | Select             |
| Start                    | ![](../image/retropad/retro_start.png)         | Start              |
| Up                       | ![](../image/retropad/retro_dpad_up.png)       | Up                 |
| Down                     | ![](../image/retropad/retro_dpad_down.png)     | Down               |
| Left                     | ![](../image/retropad/retro_dpad_left.png)     | Left               |
| Right                    | ![](../image/retropad/retro_dpad_right.png)    | Right              |
| A                        | ![](../image/retropad/retro_a.png)             | A                  |
| X                        | ![](../image/retropad/retro_x.png)             | X                  |
| L                        | ![](../image/retropad/retro_l1.png)            | L                  |
| R                        | ![](../image/retropad/retro_r1.png)            | R                  |
| ZL                       | ![](../image/retropad/retro_l2.png)            | ZL                 |
| ZR                       | ![](../image/retropad/retro_r2.png)            | ZR                 |
| Home                     | ![](../image/retropad/retro_l3.png)            | Home               |
| Touch Screen Touch       | ![](../image/retropad/retro_r3.png)            | Touch Screen Touch |
|                          | ![](../image/retropad/retro_left_stick.png) X  | Circle Pad X       |
|                          | ![](../image/retropad/retro_left_stick.png) Y  | Circle Pad Y       |
|                          | ![](../image/retropad/retro_right_stick.png) X | [Right analog function](#core-options) |
|                          | ![](../image/retropad/retro_right_stick.png) Y | [Right analog function](#core-options) |

### Mouse

| RetroMouse Inputs                                     | Citra inputs        |
|-------------------------------------------------------|---------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Touchscreen Pointer |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Touch Screen Touch  |

### Pointer

| RetroPointer Inputs                                                                                                      | Citra inputs        |
|--------------------------------------------------------------------------------------------------------------------------|---------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Touchscreen Pointer |
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | Touch Screen Touch  |

## Compatibility

- [Citra Game Compatibility List](https://citra-emu.org/game/)

## External Links

- [Official Citra Website](https://citra-emu.org/)
- [Official Citra Github Repository](https://github.com/citra-emu/citra)
- [Libretro Citra Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/citra_libretro.info)
- [Libretro Citra Github Repository](https://github.com/libretro/citra)
- [Report Libretro Citra Core Issues Here](https://github.com/libretro/citra/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IdQ7GmDs1jE7DbI18inc73c)

## Nintendo - Nintendo 3DS

- [Nintendo - 3DS (Citra Canary/Experimental)](citra_canary.md)
