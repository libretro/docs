# Nintendo - 3DS (Azahar)

## Background

A port of the Azahar 3DS emulator to libretro. Azahar is based on Citra, started by merging several prominent Citra forks after Citra was taken down. The core requires decrypted ROMs to function, and some games require Mii data to be dumped from your own 3DS console.

The Azahar core has been authored by

- Azahar Emulator

The Azahar core is licensed under

- GPLv2+

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Azahar core have the following file extensions:

- .3ds
- .3dsx
- .z3dsx
- .elf
- .axf
- .cci
- .zcci
- .cxi
- .zcxi
- .app

RetroArch database(s) that are associated with the Azahar core:

- [Nintendo - Nintendo 3DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%203DS.rdb)

## Features

Frontend-level settings or features that the Azahar core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The Azahar core keeps its user directory in the frontend's save directory:

- `Azahar/` - the 3DS system files (`sysdata/`, `nand/`), save data (`sdmc/`) and the shader cache. System files dumped from a 3DS, and the Mii data some games need, go here.

This is the "LibRetro Default" setting of the **Save Location** core option (`citra_use_libretro_save_path`). When the frontend has no save directory, `Azahar/` is created in the system directory instead. With "Azahar Default" the core uses standalone Azahar's user directory.

## Core options

The Azahar core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. The Vulkan and OpenGL entries of **Graphics API** are only offered by builds that include that renderer.

#### CPU

Settings related to CPU emulation performance and accuracy.

- **CPU JIT** [citra_use_cpu_jit] (**Enabled**|Disabled)

	Enable Just-In-Time compilation for ARM CPU emulation. Significantly improves performance but may reduce accuracy. Restart required.

- **CPU Clock Speed** [citra_cpu_clock_percentage] (25%|50%|75%|**100% (Default)**|125%|150%|175%|200%|225%|250%|275%|300%|325%|350%|375%|400%)

	Adjust the emulated 3DS CPU clock speed as a percentage of normal speed. Higher values may improve performance in some games but can cause issues. Lower values can help with games that run too fast.

#### System

Nintendo 3DS system configuration and region settings.

- **System Model** [citra_is_new_3ds] (**New 3DS**|Original 3DS)

	Select whether to emulate the original 3DS or New 3DS. New 3DS has additional CPU power and memory, required for some games. Restart required.

- **System Region** [citra_region_value] (**Auto**|Japan|USA|Europe|Australia|China|Korea|Taiwan)

	Set the 3DS system region. Auto-select will choose based on the game. Some games are region-locked and require matching regions.

- **System Language** [citra_language_value] (**English**|Japanese|French|Spanish|German|Italian|Dutch|Portuguese|Russian|Korean|Traditional Chinese|Simplified Chinese)

	Set the system language for the emulated 3DS. This affects in-game text language when supported.

#### Audio

Audio emulation and microphone settings.

- **Audio Emulation** [citra_audio_emulation] (**HLE (Fast)**|LLE (Accurate)|LLE Multithreaded)

	Select audio emulation method. HLE is faster, LLE is more accurate.

- **Microphone Input** [citra_input_type] (**Auto**|None|Static Noise|Frontend)

	Select how microphone input is handled for games that support it.

#### Graphics

Graphics API, rendering, and visual enhancement settings.

- **Graphics API** [citra_graphics_api] (**Auto**|Vulkan|OpenGL|Software)

	Select the graphics rendering API. Auto will choose the best available option. Restart required.

- **Hardware Shaders** [citra_use_hw_shader] (**Enabled**|Disabled)

	Use GPU hardware to accelerate shader processing. Significantly improves performance but may reduce accuracy.

- **Shader JIT** [citra_use_shader_jit] (**Enabled**|Disabled)

	Use Just-In-Time compilation for shaders. Improves performance but may cause graphical issues in some games.

- **Accurate Multiplication** [citra_shaders_accurate_mul] (**Enabled**|Disabled)

	Use accurate multiplication in shaders. More accurate but can reduce performance. Only works with hardware shaders.

- **Shader Cache** [citra_use_disk_shader_cache] (**Enabled**|Disabled)

	Save compiled shaders to disk to reduce loading times on subsequent runs.

- **Internal Resolution** [citra_resolution_factor] (**1x (Native 400x240)**|2x (800x480)|3x (1200x720)|4x (1600x960)|5x (2000x1200)|6x (2400x1440)|7x (2800x1680)|8x (3200x1920)|9x (3600x2160)|10x (4000x2400)|11x (4400x2640)|12x (4800x2880)|13x (5200x3120)|14x (5600x3360)|15x (6000x3600)|16x (6400x3840)|17x (6800x4080)|18x (7200x4320))

	Render the 3DS screens at a higher resolution. Higher values improve visual quality but significantly impact performance.

- **Texture Filter** [citra_texture_filter] (**None**|Anime4K Ultrafast|Bicubic|ScaleForce|xBRZ|MMPX)

	Apply texture filtering to enhance visual quality. Some filters may significantly impact performance.

- **Texture Sampling** [citra_texture_sampling] (**Game Controlled**|Nearest Neighbor|Linear)

	Control how textures are sampled and filtered.

- **Custom Textures** [citra_custom_textures] (Enabled|**Disabled**)

	Enable loading of custom texture packs to replace original game textures.

- **Dump Textures** [citra_dump_textures] (Enabled|**Disabled**)

	Save original game textures to disk for creating custom texture packs. May impact performance.

#### Layout

Screen layout and display positioning options.

- **Screen Layout** [citra_layout_option] (**Default Top-Bottom**|Single Screen Only|Large Screen, Small Screen|Side by Side)

	Choose how the 3DS screens are arranged in the display.

- **Prominent Screen** [citra_swap_screen] (**Top Screen**|Bottom Screen)

	Choose which screen is displayed prominently in single screen or large screen layouts.

- **Swap Mode** [citra_swap_screen_mode] (**Toggle**|Hold)

	How screen swapping behaves when using the screen swap hotkey.

- **Large Screen Proportion** [citra_large_screen_proportion] (1.00x (Equal Size)|1.25x|1.50x|1.75x|2.00x|2.25x|2.50x|2.75x|3.00x|3.25x|3.50x|3.75x|**4.00x (Default)**|4.25x|4.50x|4.75x|5.00x|5.25x|5.50x|5.75x|6.00x)

	How many times larger the main screen is compared to the small screen in the Large Screen layout.

- **Stereo 3D Mode** [citra_render_3d] (**Off (2D)**|Side by Side|Side by Side (Full)|Anaglyph (Red/Cyan)|Interlaced|Reverse Interlaced|Cardboard VR)

	Stereoscopic 3D output, used when a game is rendering in 3D. 'Off' shows a single 2D image. 'Side by Side' places the left and right eye images beside each other in one frame, each at half width. 'Side by Side (Full)' does the same but keeps each eye at full width. 'Anaglyph' merges both eyes into a single red/cyan image for use with red/cyan glasses. 'Interlaced' alternates the eyes on odd and even scanlines for interlaced 3D displays, and 'Reverse Interlaced' swaps which eye is on which line. 'Cardboard VR' outputs side by side with lens-distortion correction for Cardboard-style viewers.

- **Stereo 3D Depth** [citra_factor_3d] (**0%**|10%|20%|30%|40%|50%|60%|70%|80%|90%|100%)

	Depth intensity of the stereoscopic 3D effect, as a percentage. Only used when a 3D mode is active.

#### Storage

Save data and virtual SD card settings.

- **Virtual SD Card** [citra_use_virtual_sd] (**Enabled**|Disabled)

	Enable virtual SD card support for homebrew and some commercial games.

- **Save Location** [citra_use_libretro_save_path] (**LibRetro Default**|Azahar Default)

	Choose where save data and system files are stored.

#### Input

Controller and touchscreen input configuration.

- **Right Analog Function** [citra_analog_function] (**C-Stick and Touchscreen Pointer**|Touchscreen Pointer|C-Stick)

	Configure what the right analog stick controls.

- **Analog Deadzone** [citra_analog_deadzone] (0%|5%|10%|**15%**|20%|25%|30%|35%)

	Set the deadzone percentage for analog input to reduce drift.

- **Mouse Touchscreen** [citra_enable_mouse_touchscreen] (**Enabled**|Disabled)

	Enable mouse input for touchscreen interactions.

- **Touch Support** [citra_enable_touch_touchscreen] (**Enabled**|Disabled)

	Enable touch device input for touchscreen interactions.

- **Touch Pointer Timeout** [citra_enable_touch_pointer_timeout] (**Enabled**|Disabled)

	Whether or not the touchscreen pointer should disappear during inactivity.

- **Motion Support** [citra_enable_motion] (**Enabled**|Disabled)

	Enable gyroscope and accelerometer input for games that support motion controls.

- **Motion Sensitivity** [citra_motion_sensitivity] (10%|25%|50%|75%|**100%**|125%|150%|200%)

	Adjust sensitivity of motion controls (gyroscope/accelerometer).

## External Links

- [Azahar Repository](https://github.com/azahar-emu/azahar)
- [Report Azahar Core Issues Here](https://github.com/azahar-emu/azahar/issues)

