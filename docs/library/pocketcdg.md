# PocketCDG

==You have to provide both .cdg and .mp3 file. RetroArch and LibRetro do not share any copyrighted content.==

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/9YBR0K4ceiY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

A MP3 karaoke music player.

### Author/License

The PocketCDG core has been authored by

- RedBug

The PocketCDG core is licensed under

- [MIT](https://github.com/libretro/libretro-pocketcdg/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the PocketCDG core have the following file extensions:

- .cdg

## Features

Frontend-level settings or features that the PocketCDG core respects.

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

The PocketCDG core's internal core name is 'pocketcdg'

### Geometry and timing

- The PocketCDG core's core provided FPS is 50
- The PocketCDG core's core provided sample rate is 44100 Hz
- The PocketCDG core's core provided aspect ratio is 1

## Setup

Create a folder or put files with both .mp3 and .cdg extensions in the existing folder. The PocketCDG core can load any MP3+CDG file combination. It will then show the lyrics onscreen and on-cue like a true karaoke player, and it will also highlight the text which should be currently sung.

## Controllers

The PocketCDG core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroKeyboard - Keyboard - Has keymapper support but isn't hooked up to any core inputs. There's no reason to switch to this.

### Controller tables

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| Pause                    | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| Shutdown                 | ![](../image/retropad/retro_r1.png)         |

## External Links

- [Libretro PocketCDG Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/pocketcdg_libretro.info)
- [Libretro PocketCDG Github Repository](https://github.com/libretro/libretro-pocketcdg)
- [Report Libretro PocketCDG Core Issues Here](https://github.com/libretro/libretro-pocketcdg/issues)

### See also

#### Media

- [FFmpeg](ffmpeg.md)
- [Game Music Emu](game_music_emu.md)
- [Imageviewer](imageviewer.md)