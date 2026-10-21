# Arcade (Daphne HypseusHW)

## Background

HypseusHW plays laserdisc arcade games such as Dragon's Lair, Space Ace and Cliff Hanger. It is built on [Hypseus Singe](https://github.com/DirtBagXon/hypseus-singe), the maintained fork of Matt Ownby's Daphne, and plays the same data as `daphne.exe`: the game ROMs, plus the laserdisc video (`.m2v`) and audio (`.ogg`) with a framefile. It also plays Singe games, both Singe 1 and Singe 2 (whose video is an MP4 file, played as it is).

The core is 64-bit, has sound, renders with Vulkan or OpenGL (or on the CPU), and decodes the laserdisc video with the platform's hardware decoder where there is one (MediaCodec on Android, Media Foundation on Windows), with libmpeg2 and FFmpeg on the CPU otherwise.

The Arcade (Daphne HypseusHW) core has been authored by

- Matt Ownby
- DirtBagXon
- HypseusHW contributors Reznnate and Claude AI

The Arcade (Daphne HypseusHW) core is licensed under

- [GPLv3](https://github.com/Reznnate/hypseushw/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

- A 64-bit device: Windows x64, Linux x64 or Android arm64.
- The game data, in Daphne's folder layout (see [Usage](#usage)).
- Full-HD Singe 2 video decoded on the CPU (*CPU Fallback*, or Linux) needs a desktop-class CPU; TV boxes play it with their hardware decoder.

## BIOS

No BIOS or system files are needed. The images and sounds the engine draws on (`pics/`, `sound/`) are built into the core.

## Extensions

Content that can be loaded by the Arcade (Daphne HypseusHW) core have the following file extensions:

- .txt (a framefile: `framefile/<game>.txt`)
- .zip (a game's ROMs: `roms/<game>.zip`)
- .bat (a RocketLauncher *Daphne Batch* file that runs `daphne.exe` or `Singe.exe`)

## Features

Frontend-level settings or features that the Arcade (Daphne HypseusHW) core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
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

*Saves* are the games' own NVRAM and the files Singe games write (high scores, settings), kept in the save directory.

## Directories

The Arcade (Daphne HypseusHW) core's library name is 'Daphne (HypseusHW)'

The Arcade (Daphne HypseusHW) core saves/loads to/from these directories. It never writes into the games folder.

**Frontend's Save directory**

| File                | Description |
|:-------------------:|:-----------:|
| daphne/ram/         | NVRAM of the Daphne games (`<game>.gz`) and the files Singe games write |
| daphne/cache/       | Frame indexes the core builds for video files without a usable `.dat`, and the framefiles it writes for Singe 2 games |
| daphne/assets/      | The engine's images and sounds, unpacked on first use |

**Frontend's System directory**

| File                | Description |
|:-------------------:|:-----------:|
| daphne/pics/, daphne/sound/ | Optional: replacements for the built-in images and sounds |

## Geometry and timing

- The Arcade (Daphne HypseusHW) core's core provided FPS is 59.94
- The Arcade (Daphne HypseusHW) core's core provided sample rate is 44100 Hz
- The Arcade (Daphne HypseusHW) core's base width is the game's (640 before a game starts)
- The Arcade (Daphne HypseusHW) core's base height is the game's (480 before a game starts)
- The Arcade (Daphne HypseusHW) core's max width is 1920
- The Arcade (Daphne HypseusHW) core's max height is 1080
- The Arcade (Daphne HypseusHW) core's core provided aspect ratio is the game's video aspect (4:3 or 16:9)

## Usage

Keep the usual Daphne folder layout:

```
Daphne/
  framefile/   <game>.txt (and Singe games' framefiles)
  roms/        <game>.zip
  vldp/        <game>/  the .m2v video, .ogg audio and .dat frame index
```

Load `framefile/<game>.txt` (what HyperSpin passes), `roms/<game>.zip`, or a RocketLauncher `<game>.bat`. The core finds the rest from there.

Singe games are usually set up through RocketLauncher's *Daphne Batch* emulator, which runs `<game>.bat`. The core does the same: for `framefile/<game>.txt` it looks for `<game>.bat` in the folders beside `framefile/` (such as `Daphne2`) and runs that file's `daphne.exe` or `Singe.exe` command. Singe 2's own menu (`Menu.bat`) and zip-packed Singe games (`-zlua`) are not supported.

Each game gets the settings the stock RocketLauncher Daphne module gives it (DIP switches, laserdisc seek timing, scoreboard style), built into the core.

A game that cannot start (a missing ROM or video file) shows the reason on screen for a few seconds, then closes the content.

## Core options

The Arcade (Daphne HypseusHW) core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CPU Fallback (Restart)** [daphne_cpu_fallback] (**disabled**|enabled)

	Render on the CPU instead of the GPU, and decode the laserdisc video on the CPU: MPEG-2 with libmpeg2, Singe 2's MP4 with FFmpeg. For comparison and troubleshooting; much slower on most devices.

- **Blank Video During Searches (Restart)** [daphne_blank_searches] (disabled|**enabled**)

	Show black while the laserdisc player seeks, as most players did.

- **Fast Boot (Restart)** [daphne_fastboot] (disabled|**enabled**)

	Skip ROM and RAM tests at startup where the game supports it.

- **Prefer Sound Samples (Restart)** [daphne_prefer_samples] (disabled|**enabled**)

	Use recorded sound samples instead of emulated sound hardware where a game has both.

- **Service and Test on L3/R3 (Restart)** [daphne_service_buttons] (**disabled**|enabled)

	Map the operator's Service and Test switches to the stick clicks. Off by default: on many setups the stick clicks also carry Coin or Start, and Test reboots most games into their diagnostics.

## User 1 device types

The Arcade (Daphne HypseusHW) core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Joypad
- Lightgun - Lightgun - For Singe gun games.
- Mouse - Mouse - For Singe gun games.

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Button 1 (Action/Sword)  |
| ![](../image/retropad/retro_y.png)             | Button 3                 |
| ![](../image/retropad/retro_select.png)        | Coin 1                   |
| ![](../image/retropad/retro_start.png)         | Start 1                  |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_a.png)             | Button 2                 |
| ![](../image/retropad/retro_x.png)             | Skill 1                  |
| ![](../image/retropad/retro_l1.png)            | Skill 2                  |
| ![](../image/retropad/retro_r1.png)            | Skill 3                  |
| ![](../image/retropad/retro_l2.png)            | Coin 2                   |
| ![](../image/retropad/retro_r2.png)            | Start 2                  |
| ![](../image/retropad/retro_l3.png)            | Service (with *Service and Test on L3/R3*) |
| ![](../image/retropad/retro_r3.png)            | Test (with *Service and Test on L3/R3*)    |

## Mouse

| RetroMouse Inputs                                     | Singe input  |
|-------------------------------------------------------|--------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Aim          |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Button 1     |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Button 2     |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Button 3     |

## Lightgun

| RetroLightgun Inputs                                   | Singe input  |
|--------------------------------------------------------|--------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | Aim          |
| Gun Trigger                                            | Button 1     |
| Gun Aux A                                              | Button 2     |
| Gun Aux B                                              | Button 3     |

## Compatibility

The Daphne games Hypseus Singe supports play, among them Dragon's Lair, Space Ace, Cliff Hanger, Thayer's Quest, Super Don Quix-ote, Astron Belt, Galaxy Ranger, Badlands, Bega's Battle, Cobra Command, Road Blaster, Esh's Aurunmilla, GP World, Interstellar, MACH 3 and Us vs Them. Singe 1 and Singe 2 games play from their RocketLauncher batch files.

## External links

- [Libretro Arcade (Daphne HypseusHW) Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/hypseushw_libretro.info)
- [Arcade (Daphne HypseusHW) GitHub Repository](https://github.com/Reznnate/hypseushw)
- [Report Arcade (Daphne HypseusHW) Core Issues Here](https://github.com/Reznnate/hypseushw/issues)
- [Hypseus Singe GitHub Repository](https://github.com/DirtBagXon/hypseus-singe)
