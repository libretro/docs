# FFmpeg

## Background

Video/music player implemented in libretro.

### Author/License

The FFmpeg core has been authored by

- Fabrice Bellard
- FFmpeg team

The FFmpeg core is licensed under

- [LGPLv2, GPLv2](https://github.com/libretro/FFmpeg/blob/master/LICENSE.md)

A summary of the licenses behind RetroArch and its cores have found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FFmpeg core have the following file extensions:

- .mkv
- .avi
- .f4v
- .f4f
- .3gp
- .ogm
- .flv
- .mp4
- .mp3
- .flac
- .ogg
- .m4a
- .webm
- .3g2
- .mov
- .wmv
- .mpg
- .mpeg
- .vob
- .asf
- .divx
- .m2p
- .m2ts
- .ps
- .ts
- .mxf
- .wma
- .wav

## Features

Frontend-level settings or features that the FFmpeg core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
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

The FFmpeg core's directory name is 'FFmpeg'

### Geometry and timing

- The FFmpeg core's core provided FPS is dependant on the loaded media.
- The FFmpeg core's core provided sample rate is dependant on the loaded media.
- The FFmpeg core's core provided aspect ratio is dependant on the loaded media.

## Core options

The FFmpeg core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Temporal Interpolation** [ffmpeg_temporal_interp] (**Off**/On)

	'Fake’ a higher framerate by using motion blur.
	
- **FFT Resolution** [ffmpeg_fft_resolution] (**1280x720**/1920x1080/2560x1440/3840x2160/640x360/320x180)
	
	Modify the resolution of the music visualizer.
	
??? note "FFT Resolution - 320x180"
	![](../image/core/ffmpeg/320x180.png)
	
??? note "FFT Resolution - 3840x2160"
	![](../image/core/ffmpeg/3840x2160.png)	
	
- **FFT Multisample** [ffmpeg_fft_multisample] (**1x**/2x/4x)

	Modify the antialiasing of the music visualizer.
	
- **Colorspace** [ffmpeg_color_space] (**auto**/BT.70/BT.601/FCC/SMPTE240M)

	Choose [colorspaces](https://trac.ffmpeg.org/wiki/colorspace) from different broadcast regions/standards.

## Controllers

The FFmpeg core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Other controllers

- Mouse - The FFmpeg core allows Wheel Up and Wheel Down mouse inputs for seeking. This is always active, completely separate from the device types in the Controls menu and cannot be manually selected.

### Controller tables

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| Seek +60 seconds         | ![](../image/retropad/retro_dpad_up.png)       |
| Seek -60 seconds         | ![](../image/retropad/retro_dpad_down.png)     |
| Seek -10 seconds         | ![](../image/retropad/retro_dpad_left.png)     |
| Seek +10 seconds         | ![](../image/retropad/retro_dpad_right.png)    |
| Cycle Audio Track        | ![](../image/retropad/retro_l1.png)            |
| Cycle Subtitle Track     | ![](../image/retropad/retro_r1.png)            |

#### Mouse

| RetroMouse Inputs                                   | FFmpeg Core Inputs        |
|-----------------------------------------------------|---------------------------|
| Wheel Up                                            | Seek +60 seconds          |
| Wheel Down                                          | Seek -60 seconds          |

## External Links

- [Official FFmpeg Website](https://www.ffmpeg.org/)
- [Official FFmpeg Repositories](https://www.ffmpeg.org/download.html#repositories)
- [Libretro FFmpeg Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/ffmpeg_libretro.info)
- [Internal Libretro FFmpeg Github Repository](https://github.com/libretro/RetroArch/tree/master/cores/libretro-ffmpeg)
- [Buildbot Libretro FFmpeg Github repository](https://github.com/libretro/FFmpeg)
- [Report Libretro FFmpeg Core Issues Here](https://github.com/libretro/RetroArch/issues)