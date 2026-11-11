# Sega - Hikaru / Gaelco PowerVR (Odin)

## Background

Odin is a low-level emulator of the SEGA Hikaru arcade board and of Gaelco's PowerVR boards, by Réda Chérif-Touil. It runs the programs of the real chips and draws the boards' 3D with OpenGL or Vulkan, at up to six times their resolution. The libretro core is the boards and their renderers without the desktop program's window, menu and SDL.

It plays Air Trix, Brave Firefighters, Planet Harriers, NASCAR Arcade, Star Wars Racer Arcade and Cyber Troopers Virtual-On Force on the Hikaru, and ATV Track, Smashing Drive and Gaelco Football on the Gaelco boards.

The core is built for Linux (x86_64, aarch64) and Windows (x64).

The Odin core has been authored by

- Réda Chérif-Touil
- Stefano Teso
- WizzardSK

The Odin core is licensed under

- [GPLv3](https://github.com/WizzardSK/odin-libretro/blob/libretro/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

RetroArch's video driver has to be `vulkan` (Vulkan 1.3, or 1.1 with dynamic rendering, synchronization2 and the extended dynamic state) or `glcore` (OpenGL 4.3). The Renderer core option chooses between them.

## BIOS

The Hikaru games need MAME's shared sets, beside the game or in RetroArch's system directory. The Gaelco games need none.

|   Filename    |    Description                        |
|:-------------:|:-------------------------------------:|
| odin/hikaru.zip | Hikaru BIOS (MAME set) - Required for the Hikaru games |
| odin/mie.zip  | MIE (MAME set) - Required for the Hikaru games |

The optional sets `jvs13551`, `18wheelr` and `srally2` go there too. A missing file is named in RetroArch's log with the set it belongs to.

## Extensions

Content that can be loaded by the Odin core have the following file extensions:

- .zip
- .7z

Content is a game's MAME set (non-merged, or with its parent beside it): Hikaru `airtrix`, `airtrixo`, `braveff`, `pharrier`, `sgnascar`, `sgnascaro`, `swracer` or `von4`; Gaelco `atvtrack`, `atvtracka`, `gfootbal`, `smashdrv` and their versions.

## Databases

RetroArch database(s) that are associated with the Odin core:

- [MAME](https://github.com/libretro/libretro-database/blob/master/rdb/MAME.rdb)

## Features

Frontend-level settings or features that the Odin core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           |     ✔     |
| Screenshots       |     ✔     |
| Saves             |     ✔     |
| States            |     ✔     |
| Rewind            |     ✕     |
| Netplay           |     ✕     |
| Core Options      |     ✔     |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) |     ✕     |
| RetroArch Cheats  |     ✕     |
| Native Cheats     |     ✕     |
| Controls          |     ✔     |
| Remapping         |     ✔     |
| Multi-Mouse       |     ✕     |
| Rumble            |     ✔     |
| Sensors           |     ✕     |
| Camera            |     ✕     |
| Location          |     ✕     |
| Subsystem         |     ✕     |
| [Softpatching](../guides/softpatching.md) |     ✕     |
| Disk Control      |     ✕     |
| Username          |     ✕     |
| Language          |     ✕     |
| Crop Overscan     |     ✕     |
| LEDs              |     ✕     |

What the board keeps without power (its EEPROMs, backup RAM, Virtual-On's card, a Gaelco board's settings) goes to `saves/odin/<game>/`. A save state (about 116 MB) loads only into the build of the core that made it.

## Directories

The Odin core's library name is 'Odin'.

**Frontend's System directory**

- `odin/` (the shared sets, and the game list `odin-games.json`, written by the core)
- `odin/shaders/` (the mesh programs each game needs, made ready before its first frame)
- `odin/cache/` (the programs kept as the games draw, and the driver's compiled ones)

**Frontend's Save directory**

- `odin/<game>/` (what the board keeps without power)

## Core options

The Odin core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. The Sound Mode, level and woofer options are shown only for their game.

- **Renderer (Restart)** [odin_renderer] (**Automatic**|OpenGL|Vulkan)

    OpenGL or Vulkan. Automatic takes the one of RetroArch's video driver (glcore or vulkan).

- **Internal Resolution** [odin_scale] (**1x (640x480)**|2x (1280x960)|3x (1920x1440)|4x (2560x1920)|5x (3200x2400)|6x (3840x2880))

    The 3D drawn that many times finer than the board's 640x480 screen; the 2D layers stay as they are.

- **HUD at Higher Resolutions** [odin_upscale_mode] (**Snap**|Native|Raw)

    How the meshes flat to the screen (the HUD, its text) are drawn above 1x: Snap, their corners on the board's pixels; Native, over the pixels they cover there; Raw, as fine as the rest.

- **Threaded Board (Restart)** [odin_threaded] (**Enabled**|Disabled)

    The board runs the next frame on a thread of its own while the frame before is drawn, as the desktop Odin does: faster on most machines, one frame more of latency. Disabled: each frame is run and drawn in turn.

- **Rumble** [odin_rumble] (**Enabled**|Large Motor Only|Disabled)

    The pads shake as the cabinet does: its rumble outputs, the vibration device the optional sound board drives (Star Wars Racer Arcade) and the shocks of the steering wheel (NASCAR Arcade). Large Motor Only leaves the small motor still.

- **Sound Mode** [odin_pharrier_sound_mode, odin_swracer_sound_mode, odin_sgnascar_sound_mode] (Main|**Both**|4.0|Optional Only)

    Planet Harriers, Star Wars Racer Arcade and NASCAR Arcade have an optional sound board: Main, the main board alone; Both, the two mixed, the optional one at Optional Board Level; 4.0, four channels, the main board in front and the optional one in the rear (RetroArch folds them for stereo; a RetroArch without multi-channel sound gets Both); Optional Only, the optional board alone.

- **Optional Board Level** [odin_pharrier_option_level, odin_swracer_option_level] (-12 dB to +12 dB, **0 dB**); [odin_sgnascar_option_level] (-24 dB to 0 dB, **-12 dB**)

    The optional sound board against the main one. NASCAR Arcade's has the engines, which are loud.

- **Sound Mode** [odin_atvtrack_sound_mode, odin_gfootbal_sound_mode, odin_smashdrv_sound_mode] (Main|**Both**|4.0|Woofer Only)

    ATV Track, Gaelco Football and Smashing Drive have a woofer, fed by the board's second pair of channels: Main, the speakers alone; Both, the woofer's lows mixed in at Woofer Level; 4.0, the speakers in front and the woofer's channel in the rear; Woofer Only, the woofer alone.

- **Woofer Level** [odin_atvtrack_option_level, odin_gfootbal_option_level, odin_smashdrv_option_level] (-12 dB to +12 dB, **0 dB**)

    The woofer against the speakers.

- **Woofer Cutoff** [odin_atvtrack_woofer_cutoff, odin_gfootbal_woofer_cutoff, odin_smashdrv_woofer_cutoff] (80 Hz|**120 Hz**|160 Hz|200 Hz|Off)

    The lows of the woofer's channel played with Both and Woofer Only: below that many Hz, or all of it (Off).

- **Start Volume** [odin_smashdrv_start_volume] (0|25|50|**75**|96)

    The volume Smashing Drive is set to at each power-on, as an operator would with VOLUME - and VOLUME +.

- **Anisotropic Filtering** [odin_anisotropy] (**Off**|2x|4x|8x|16x)

    Of the texture filter; Off as on the board.

- **Audio Thread (Restart)** [odin_audio_thread] (**Disabled**|Enabled)

    The sound handed to RetroArch's audio thread as the board makes it, instead of in each frame: RetroArch then plays what is buffered while a frame takes long (a shader compiled), where the frames' own sound would stutter.

## Controllers

The Odin core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Joypad
- Light Gun - Brave Firefighters' hose follows RetroArch's light gun; reload off-screen

The controls of each game come from its list, by their roles, and RetroArch's controls list (Quick Menu > Controls) names each input as the game's INPUT TEST does.

| Role | RetroPad |
|---|---|
| Start | Start |
| Coin | Select (players 1 and 2) |
| Service | L3 |
| Test | R3 (player 1) |
| Directions | D-pad |
| Buttons 1-8 | B, A, Y, X, L, R, L2, R2 |
| Stick, stick 2 | Left stick (and D-pad), right stick |
| Steering | Left stick |
| Accelerator, brake | R2, L2 (analog) |
| Gear up, gear down | R, L |
| Sight (Brave Firefighters' hose) | Left stick, or the light gun |

Brave Firefighters' Water is on R2 and Fog on L2. Gaelco Football's kick is the right stick: forward to kick, sideways for the direction, pulled back first to lift the ball.

## External Links

- [Odin Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/odin_libretro.info)
- [Odin libretro GitHub Repository](https://github.com/WizzardSK/odin-libretro)
- [Report Odin Core Issues Here](https://github.com/WizzardSK/odin-libretro/issues)
- [Upstream Odin](https://github.com/Tovarichtch/Odin)
