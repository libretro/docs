# PocketCDG

## Background

A MP3 karaoke music player. 

### Author/License

The PocketCDG core has been authored by

- RedBug

The PocketCDG core is licensed under

- [MIT](https://github.com/libretro/libretro-pocketcdg/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
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

## Usage

The PocketCDG core can load any MP3+CDG file combination. It will then show the lyrics onscreen and on-cue like a true karaoke player, and it will also highlight the text which should be currently sung.

## Core options

The PocketCDG core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Resize** [pocketcdg_resize] (**320x240**|Overscan)

	Doesn't seem to do anything

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
| Pause                    | ![](/image/retropad/retro_select.png)     |
| Start                    | ![](/image/retropad/retro_start.png)      |
| Up                       | ![](/image/retropad/retro_dpad_up.png)    |
| Down                     | ![](/image/retropad/retro_dpad_down.png)  |
| Left                     | ![](/image/retropad/retro_dpad_left.png)  |
| Right                    | ![](/image/retropad/retro_dpad_right.png) |
| Shutdown                 | ![](/image/retropad/retro_r1.png)         |

## External Links

- [Libretro PocketCDG Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/pocketcdg_libretro.info)
- [Libretro PocketCDG Github Repository](https://github.com/libretro/libretro-pocketcdg)
- [Report Libretro PocketCDG Core Issues Here](https://github.com/libretro/libretro-pocketcdg/issues)

### See also

#### Media

- [FFmpeg](https://docs.libretro.com/library/ffmpeg/)
- [Game Music Emu](https://docs.libretro.com/library/game_music_emu/)
- [Imageviewer](https://docs.libretro.com/library/imageviewer/)
- [mpv](https://docs.libretro.com/library/mpv/)