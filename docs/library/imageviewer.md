# Imageviewer

## Background

View images

### Author/License

The Imageviewer core has been authored by

- The RetroArch Team

The Imageviewer core is licensed under

- [MIT](https://github.com/libretro/RetroArch/blob/master/cores/libretro-imageviewer/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Imageviewer core have the following file extensions:

- .jpg
- .jpeg
- .png
- .bmp
- .psd
- .tga
- .gif
- .hdr
- .pic
- .ppm
- .pgm

## Features

Frontend-level settings or features that the Imageviewer core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✕         |
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

The Imageviewer core's internal core name is 'image display'

### Geometry and timing

- The Imageviewer core's core provided FPS is 60
- The Imageviewer core's core provided sample rate is 44100 Hz
- The Imageviewer core's core provided aspect ratio is dependent on the loaded content.

## Controllers

The Imageviewer core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

| RetroPad Inputs                                | Imageviewer core inputs                                    |
|------------------------------------------------|------------------------------------------------------------|
| ![](../image/retropad/retro_y.png)             | Automatic slideshow - Go to the next image every 2 seconds |
| ![](../image/retropad/retro_dpad_up.png)       | Go forward 5 images                                        |
| ![](../image/retropad/retro_dpad_down.png)     | Go backward 5 images                                       |
| ![](../image/retropad/retro_dpad_left.png)     | Go backward 1 image                                        |
| ![](../image/retropad/retro_dpad_right.png)    | Go forward 1 image                                         |

## External Links

- [Libretro Imageviewer Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/imageviewer_libretro.info)
- [Libretro Imageviewer Github Repository](https://github.com/libretro/RetroArch/tree/master/cores/libretro-imageviewer)
- [Report Libretro Imageviewer Core Issues Here](https://github.com/libretro/RetroArch/issues)

### See also

#### Media

- [FFmpeg](ffmpeg.md)
- [Game Music Emu](game_music_emu.md)
- [PocketCDG](pocketcdg.md)