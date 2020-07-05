# Nintendo 64 (Mupen64Plus)

## Contribute to this documentation

**DOCUMENTATION IS A WORK IN PROGRESS**

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/mupen64plus.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](../docguide/todo.md)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

Mupen64Plus for libretro is the port of Mupen64Plus, a Nintendo 64 emulator. Mupen64Plus for libretro uses GLideN64 as graphic plugin.
The original Mupen64Plus can use one of the several available graphic plugins (Rice, Glide64, ect.).
By choosing one graphics plugin (GLideN64), it will be possible to keep the code in line with upstream, and maintaining the code will be much simpler.

For Android there are two versions of Mupen64Plus. One is designed to work with GLES 2.0 and another one with GLES 3.0.

How is this different from Parallel-N64?

Parallel-N64 implements multiple Graphics plugins amongst them the new Parallel plugin. There are also code modifications that make it different from the standalone Mupen64Plus.
The graphic plugin GLideN64 is not available in Parallel-N64.

### Why use this core?

The GlideN64 video plugin is very capable. Outstanding support of Hires Textures. Multi-plugin support is in the making.


### Authors

- Hacktarux
- Mupen64Plus Team


## See also

### N64

- [Nintendo 64 (ParaLLEl N64)](parallel.md)

## License

A summary of the licenses behind RetroArch and its cores have found [here](../development/licenses.md).

The Mupen64Plus core is licensed under

- [GPLv3](https://github.com/libretro/mupen64plus-libretro/blob/master/LICENSE)

## Extensions

Content that can be loaded by the Mupen64Plus core have the following file extensions:

- .n64
- .v64
- .z64
- .bin
- .u1
- .ndd

## Databases

RetroArch database(s) that are associated with the Mupen64Plus core:

- [Nintendo - Nintendo 64](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%2064.rdb)
- [Nintendo - Nintendo 64DD](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%2064DD.rdb)

## Features

RetroArch-level settings or features that the Mupen64Plus core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
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
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |

### Directories

The Mupen64Plus core's directory name is 'Mupen64Plus OpenGL'

The Mupen64Plus core saves/loads to/from these directories.

**RetroArch's Save directory**

- 'content-name'.srm (Cartridge backup save)

**RetroArch's State directory**

- 'content-name'.state# (State)

**RetroArch's System directory**

```
- Mupen64plus/
			- mupen64plus.ini
			- shaders/
```

### Geometry and timing

- The Mupen64Plus core's internal FPS is (FPS)
- The Mupen64Plus core's internal sample rate is 44100 Hz
- The Mupen64Plus core's core provided aspect ratio is (Ratio)

###  Hires Textures

You can either use pre-compiled hires texture packs (.htc format, available for download) or compile your own hires texture packs from uncompressed Rice sources.

Pre-compiled hires textures in .htc format have to be put into Mupen64plus/cache. The name of the .htc file must match the system name of the game in the mupen64plus console. Pre-compiled hires packs will only work if the Retroarch core settings regarding textures are identical when compiled. This is why an own compilation of uncompressed textures is recommended. 

Recommended Core Options for pre-compiled very popular .htc texture packs, such as those of Djipi or Mollymutt, are:
- mupen64plus-EnableTextureCache = "True"
- mupen64plus-txHiresEnable = "True"
- mupen64plus-txCacheCompression = "True"
- mupen64plus-txHiresFullAlphaChannel = "False"
- mupen64plus-EnableEnhancedTextureStorage = "False"
- mupen64plus-EnableEnhancedHighResStorage = "False"

For a compilation of your own hires texture pack, you need the high resolution textures in the uncompressed Rice format, and the folder name must match the system name of the game in the mupen64plus console. Put this folder into Mupen64plus/hires_texture. At the first start of the game, the .htc texture pack is created, which can take a while. After successful creation of the .htc file in the cache subdirectory, you can delete the uncompressed texture directory as it is no longer needed. If you want to re-use your newly created texture pack on a different system, you must enable the same core options on the new system that you used when you compiled the pack.
If you compile your own texture pack, you should be sure to enable the further three for Alpha Channel and Enhanced Storage, which will then produce a hires texture pack with the *.hts extension.
Compilation under Windows seems to be more complicated than under Linux or iOS. Rice texture packs must be converted to 32bit PNG.

## Core options

The Mupen64Plus core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

 - **CPU Core** (**dynamic_recompiler**/cached_interpreter/pure_interpreter)

	Choose which kind of CPU emulation is going to be used. Dynamic recompiler is the fastest mode.
	
	**Dynamic recompilier is not available on all platforms.**
	
- **RSP Mode** (**HLE**/LLE)

	How the RSP is emulated, High Level Emulation or Low Level Emulation.
	Low level emulation should be more precise but it requires more computational power.  
	
	**LLE mode is not available on all platforms**

- **4:3 Resolution** (**320x240**/640x480/960x720/1280x960/1600x1200/1920x1440/2240x1680/2560x1920/2880x2160/3200x2400/3520x2640/3840x2880)

	Select the internal rendering resolution for 4:3 Aspect Ratio mode. The 'Aspect Ratio' core option must be set to 4:3 for this to have an effect.
	Higher values require more computational power. 
	
- **16:9 Resolution** (**640x360**/960x540/1280x720/1920x1080/2560x1440/3840x2160/7680x4320)

	Select the internal rendering resolution for 16:9 Aspect Ratio mode. The 'Aspect Ratio' core option must be set to 16:9 or 16:9 adjusted for this to have an effect.
	Higher values require more computational power. 

- **Aspect Ratio** (**4:3**/16:9/16:9 adjusted)

	This setting adjusts the aspect ratio of the video output. All N64 games support 4:3. Some games support 16:9 within game settings. 

- **Bilinear filtering mode** (**standard**/3point)

	Bilinear filtering: Textures will use standard PC-style bilinear filtering.  
	3 point: Textures will be filtered more like the N64. The result is less smooth but more accurate.  

- **MSAA level** (0/2/4/8/16)
	
	Enable/Disable MultiSampling Anti-aliasing (0=off, 2,4,8,16=quality).	
	
	**This core option is not available on all platforms.**

- **Framebuffer Emulation** (**True**/False)

	Enable the framebuffer emulation.
	Frame buffer emulation is a set of techniques used to emulate manipulations with color and depth buffer areas on the real console. 
	Unchecking this option disables many effects including cropping, aspect ratio, N64 resolution factor and more. Do not uncheck this option unless you have performance issues.

- **Color buffer to RDRAM** (**Async**/Sync/Off)

	Used with the framebuffer emulation.
	Frame buffer copy is used for some effects (e.g. TV monitor effect where TV shows part of the displayed picture). 
	In some games GLideN64 cannot detect when the game uses the frame buffer. 
	With these options, you can have GLideN64 copy each frame of your video cards frame buffer to N64 memory.  
	Off: Disable copying buffers from video card.  
	Synchronous: Effects are detected for all games, but it can be slow. Use for games where Asynchronous does not work.  
	Asynchronous: Effects are detected for most games (best choice).
	
	The default setting is dependent on your platform.

- **Depth buffer to RDRAM** (**Software**/FromMem/Off)

	Used with the framebuffer emulation.
	The depth buffer is used to emulate some effects (e.g. coronas).  
	Off: Depth buffer is disabled.  
	FromMem: Your video card’s depth buffer is copied to N64 memory each frame, which can be slow on some games.  
	Software: Generally faster than copying from VRAM, but the result can be imperfect.

- **Hardware per-pixel lighting** (**False**/True)

	In N64 games lighting is calculated per vertex. 
	This option enables hardware per-pixel lighting calculation known as Phong shading, which provides smoother and more realistic lighting. 
	Per-vertex lighting is instead calculated via software. HLE only.
	
- **Continuous texrect coords** (**Off**/Auto/Force)

	In some games the coordinates for parts of 2D elements are not aligned: there is a half-pixel split between adjacent elements. 
	When rendering at the N64’s original resolution it is not visible, but when the image is scaled up it results in black lines. 
	This option attempts to connect these 2D elements.

- **Native res. 2D texrects** (**False**/True)
	When checked, 2D elements are rendered at the N64s resolution before copying them to output. 
	This usually eliminates display issues with 2D elements, but it can be slow. 
	This option uses heuristics to detect adjacent 2D elements that does not work for every game. 

- **Less accurate blending mode** (**True**/False)

	Do not use shaders to emulate N64 blending modes. Works faster on slow GPU. It can cause glitches.
	The default setting is dependent on your platform.

- **GPU shader depth write** (**False**/True)

	Enable writing of fragment depth. Some mobile GPUs do not support it, thus it made optional.
	The default seeting is dependent on your platform.

- **Cache GPU Shaders** (**True**/False)

	When the option is enabled, plugin saves all new created shaders in a file. 
	When user starts that game again, plugin loads all previously compiled shaders from that file and further gameplay goes smooth.

- **Crop Mode** (**Auto**/Off)

	Its purpose is to remove black borders, which many N64 games add around image. In auto mode plugins tries to detect empty space and remove it.
	It works only if frame buffer emulation is enabled, as all other post-processing filters.
	
- **Texture filter** (**None**/Smooth filtering 1/Smooth filtering 2/Smooth filtering 3/Smooth filtering 4/Sharp filtering 1/Sharp filtering 2)

	This filter smooths or sharpens textures. There are four smoothing filters and two sharpening filters. The higher the number, the stronger the effect. 
	Performance may be affected depending on the game and/or your device.

- **Texture Enhancement** (**None**/As Is/X2/X2SAI/HQ2X/HQ2XS/LQ2X/LQ2XS/HQ4X/2xBRZ/3xBRZ/4xBRZ/5xBRZ/6xBRZ)

	Filter applied to textures. Depending on which filter, they may cause performance problems. 
	When AS IS is selected, textures are saved to the cache as-is; this improves performance in games that load many textures; 
	unset Filer background textures for the best performance.

- **Filter background textures** (**True**/False)

	This option skips texture enhancements for long, narrow textures that are usually used for backgrounds. This may save texture memory and improve performance. 
	Set true unless Enhancement mode is set to AS IS.

- **Use High-Res textures** (**False**/True)

	Enable the high resolution textures. Usage of hires textures is explained above.	

- **Use High-Res Full Alpha Channel** (**False**/True)

	When this option is selected, GlideN64 will check how the texture’s alpha channel was designed and will select the most appropriate format. 
	This gives texture pack designers freedom to use semi-transparent textures. 
	Clear this option for older or poorly designed texture packs. 
	Recommended for newer texture packs.

- **Analog Deadzone (percent)** (**15**/20/25/30/0/5/10)

	The minimum absolute value of SDL analog Joystick axis to move the N64 controller axis value

- **Analog Sensitivity (percent)** (**100**/95/90/85/80/105/110)

	The sensitivity of the analog Joystick.

- **Right C Button** (**C1**/C2/C3/C4)

	Awaiting description.

- **Left C Button** (**C2**/C3/C4/C1)

	Awaiting description.

- **Down C Button** (**C3**/C4/C1/C2)

	Awaiting description.

- **Up C Button** (**C4**/C1/C2/C3)

	Awaiting description,

- **Player 1 Pak** (**memory**/rumble/none)

	Choose what Pak has been inserted in the player 1 controller.

- **Player 2 Pak** (**none**/memory/rumble)

	Choose what Pak has been inserted in the player 2 controller.

- **Player 3 Pak** (**none**/memory/rumble)

	Choose what Pak has been inserted in the player 3 controller.

- **Player 4 Pak** (**none**/memory/rumble)

	Choose what Pak has been inserted in the player 4 controller.

- **Count Per Op** (0/1/2/3)

	Force the number of cycle per emulated instructions.

## Controllers

### Device types

The Mupen64Plus core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 4 device types

- None - Input disabled.
- **Controller** - Joypad

### Rumble support

Rumble only works in the Mupen64Plus core when

- The content being ran has rumble support.
- The joypad input driver being used has rumble support. (e.g. Xinput)
- The joypad device being used has rumble support.
- The 'Player # Pak' core options are set to rumble for the respective players.

[List of Nintendo 64 games with Rumble Pak support](http://nintendo.wikia.com/wiki/List_of_Nintendo_64_games_with_Rumble_Pak_support)

### Controller tables

#### Joypad and analog device type table

| User 1 - 4 Remap descriptors  | RetroPad Inputs                              |
|-------------------------------|----------------------------------------------|
| A Button (C3)                 | ![](../image/retropad/retro_b.png)       |
| B Button (C2)                 | ![](../image/retropad/retro_y.png)       |
| START Button                  | ![](../image/retropad/retro_start.png)         |
| Up (digital)                  | ![](../image/retropad/retro_dpad_up.png)       |
| Down (digital)                | ![](../image/retropad/retro_dpad_down.png)     |
| Left (digital)                | ![](../image/retropad/retro_dpad_left.png)     |
| Right (digital)               | ![](../image/retropad/retro_dpad_right.png)    |
| (C1)                          | ![](../image/retropad/retro_a.png)       |
| (C4)                          | ![](../image/retropad/retro_x.png)       |
| L-Trigger                     | ![](../image/retropad/retro_l1.png)            |
| R-Trigger                     | ![](../image/retropad/retro_r1.png)            |
| Z-Trigger                     | ![](../image/retropad/retro_l2.png)            | 
| C Buttons Mode                | ![](../image/retropad/retro_r2.png)            |
| Control Stick X               | ![](../image/retropad/retro_left_stick.png) X  |
| Control Stick Y               | ![](../image/retropad/retro_left_stick.png) Y  |
| C Buttons X                   | ![](../image/retropad/retro_right_stick.png) X |
| C Buttons Y                   | ![](../image/retropad/retro_right_stick.png) Y |

## Compatibility

Awaiting description.

## External Links

- [Libretro Mupen64Plus Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mupen64plus_libretro.info)
- [Libretro Mupen64Plus Github Repository](https://github.com/libretro/mupen64plus-libretro)
- [Report Libretro Mupen64Plus Core Issues Here](https://github.com/libretro/mupen64plus-libretro/issues)
- [Official Mupen64Plus Website](http://www.mupen64plus.org/)
- [Official Mupen64Plus Github Organization](https://github.com/mupen64plus)
