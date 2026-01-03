
# ScummVM

## Background

ScummVM allows you to play classic graphic point-and-click adventure games, text adventure games, and RPGs, as long as you already have the game data files. ScummVM replaces the executable files shipped with the games, which means you can now play your favorite games on all your favorite devices.

The libretro port is part of the official ScummVM sources.

> **Note:** For general info, settings and workflows **not strictly related to the libretro core** (general ScummVM use, adding games, per-title ScummVM options, MT-32/FluidSynth usage, etc.), refer to the official ScummVM documentation: [docs.scummvm.org](https://docs.scummvm.org/).

The ScummVM core has been authored by

- [ScummVM Team](http://www.scummvm.org/credits/)

The ScummVM core is licensed under

- [GPLv3](https://github.com/libretro/scummvm/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Files extensions

Content that can be loaded by the ScummVM core directly from the libretro frontend have the following file extensions:

- .scummvm

## Features

Frontend-level settings or features that the ScummVM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
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

## Directories

The ScummVM core's library name is 'libretro_scummvm'.

The ScummVM core saves/loads to/from these directories:

- **Core dir** (core folder)
- **System dir** (`scummvm` subfolder, contains `scummvm.ini`)
- **Save dir** (game saves, hook files)
- **Playlist dir** (playlist)

All paths to ScummVM resources can be changed from within the ScummVM GUI.

## Datafile Requirements

A set of datafiles needed to run certain games or to provide resources for additional features (modern themes, extras, virtual keyboard resources) is included in the archive `scummvm.zip`, available via *Online Updater → Core System Files*.

Alternatively, the archive can be downloaded manually, extracted and placed (the entire `scummvm` folder) in the **System dir** in RetroArch (though all ScummVM resource paths can be customized from within the ScummVM GUI).
In this case, note that some assets in the archive **must match** the exact core version.

The *Online Updater* is the suggested way to download the datafiles, as it will guarantee version match and correct paths configuration out of the box.

## Playlists Generation and Game Launching

Playlists used in Libretro frontends (e.g., RetroArch) are plain text lists that allow launching a game with a specific core directly from the user interface. These lists pass to the core the path of a specific content file to be loaded (similar to a ROM file for other cores).

**Important:**  
Playlist generation using the RetroArch Scanner is **NOT recommended** for ScummVM. The scanner relies on a third-party database instead of ScummVM’s own detection system, so results are not guaranteed to work properly.

### How ScummVM Core Handles Playlist Content

- The core supports **dedicated per-game hook files** with the `.scummvm` extension.
  These files can be used as the playlist target instead of a random game file.
  A `.scummvm` file is a plain text file which contains a single string corresponding to one of the following identifiers:

  - **target**
    This is the game identifier of each entry in the internal ScummVM Launcher list, corresponding to entries in the ScummVM configuration file (e.g., `scummvm.ini`).
    In this case:
    - The game must be added from the ScummVM GUI first.
    - Hook files can be placed anywhere, since the game path is already stored in `scummvm.ini`.
    - The game will launch with the options set in `scummvm.ini`.

  - **game ID**  
    This is a unique identifier for any game supported by ScummVM.  
    It is hardcoded in each engine source and may change over time, so it is **not recommended**.  
    A list of current game IDs is available [here](https://scummvm.org/compatibility).  
    In this case:
    - The game will launch even if not added in the ScummVM Launcher.
    - The hook file must be placed in the game folder.
    - The game will launch with **default ScummVM options**, as not included in `scummvm.ini`.

- The ScummVM core can also accept as content **any file inside a valid game folder**.
  The internal detection system will attempt to autodetect the game from the parent folder and run it with **default ScummVM options**.
  Hence manually creating a playlist with any file in a valid game folder as a target will work, though the game will run without any `scummvm.ini` configuration, hence it is **not recommended**.

### Creating a ScummVM Core Playlist and Launching Games

The **recommended way** to generate a ScummVM core playlist is **from within the ScummVM Launcher (internal core GUI)** using the **Playlist Generator** tool.
This tool automatically creates both the required hook files and the playlist, based on the ScummVM Launcher game list.

**Steps:**

1. Load the core from RetroArch and start it to reach the ScummVM GUI (Launcher).
2. Add games to the list as needed using the GUI buttons (a “Mass Add” option is available).
3. Open **Global Options**, then select the **Backend** tab.
4. Check or set the path for frontend playlists. A `ScummVM.lpl` file will be created or overwritten there.
5. Check the **Hooks location** setting: either create one `.scummvm` file in each game folder or store all hook files in a `scummvm_hooks` folder inside the save path (this is the suggested way as the game folder will be untouched).
6. Check the **Playlist version** setting: **JSON format** is the default and recommended for all modern Libretro frontends. The old 6-line format is deprecated and provided only for backward compatibility.
7. (Optional) Select **Clear existing hooks** to remove any existing `.scummvm` files in the working folders.
8. Press the **Generate playlist** button.

The operation status will be shown in the same dialog, and detailed logs will appear in the frontend log output.

Once the playlist has been generated, it will be available in the frontend ready to be used to launch games, and synced with the ScummVM internal Launcher list. The playlist can be re-synced with the internal Launcher list re-generating it as per above steps.

## Core Options

Options are grouped into **Video**, **Cursor**, **Timing**, and **RetroPad** categories. Below is a summary with defaults and operational notes.

### Cursor

- **Exclusive cursor control with RetroPad** (`scummvm_gamepad_cursor_only`, default: `disabled`):
  When enabled, only the RetroPad controls the mouse cursor; physical mouse and touchscreen are ignored.

- **Gamepad Cursor Speed** (`scummvm_gamepad_cursor_speed`, default: `1.0`):
  Sets the speed multiplier for the mouse cursor when using the RetroPad’s left analog stick or D-Pad.
  Recommended: `1.0` for 320x200/240 games, `2.0` for 640x400/480 games.

- **Gamepad Cursor Acceleration** (`scummvm_gamepad_cursor_acceleration_time`, default: `0.2`):
  Sets how long (in seconds) it takes for the cursor to reach full speed when using the RetroPad.
  Options: `off`, `0.1`–`1.0`.

- **Analog Cursor Response** (`scummvm_analog_response`, default: `linear`):
  Sets how the cursor speed responds to analog stick movement.
  `linear` = direct proportionality; `quadratic` = more precise for small movements.

- **Analog Deadzone** (`scummvm_analog_deadzone`, default: `15`):
  Sets the deadzone percentage for analog sticks to prevent unwanted cursor drift.
  Options: `0`, `5`, `10`, `15`, `20`, `25`, `30`.

- **Mouse Speed** (`scummvm_mouse_speed`, default: `1.0`):
  Sets the speed multiplier for the mouse cursor when using RetroMouse.
  Range: `0.05`–`3.0`.

- **Mouse Fine Control Speed Reduction** (`scummvm_mouse_fine_control_speed_reduction`, default: `4`):
  Sets how much the cursor speed is reduced (as a percentage of normal speed) when fine control is active.
  Options: `2` (50%), `4` (20%), `10` (10%).

### Timing / Performance

- **Frame rate cap** (`scummvm_framerate`, default: `disabled`):  
  Sets an upper limit for the core’s frame rate. Options: `disabled`, `60 Hz`, `50 Hz`, `30 Hz`, `25 Hz`. Lower values can help maintain smooth gameplay on lower end devices but may reduce animation smoothness. Changing this resets the core.

- **Sample rate** (`scummvm_samplerate`, default: `48000 Hz`):  
  Sets the audio sample rate for the core. Options: `48000 Hz`, `44100 Hz`. Lower values can slightly improve performance on lower end devices. Changing this resets the core.

### Video

- **Hardware acceleration** (`scummvm_video_hw_acceleration`, default: depends on build):  
  Enables hardware-accelerated video output (OpenGL/OpenGLES2) if supported by the frontend. Requires a core reload to take effect.

- **GUI aspect ratio** (`scummvm_gui_aspect_ratio`, default: `16:9`, only in HIGHRES builds):  
  Sets the aspect ratio for the ScummVM Launcher GUI. Options: `4:3`, `16:9`.

- **GUI resolution** (`scummvm_gui_h_res`, default: `720`, only in HIGHRES builds):  
  Sets the resolution for the ScummVM Launcher GUI. Options: `240`, `480`, `720`, `1080`.


### Default RetroPad Mapping

| RetroPad | Action           | ScummVM Function     |
|----------|------------------|----------------------|
| A        | SPACE            | Space                |
| B        | RETURN           | Enter                |
| X        | F5               | Game menu            |
| Y        | ESCAPE           | Escape               |
| L/R      | Mouse buttons    | Left/Right click     |
| R2       | Fine control     | Cursor fine control  |
| Select   | Virtual Keyboard | Toggle VKBD          |
| Start    | ScummVM GUI      | Open Launcher        |

## External Links

- [Official ScummVM Website](http://scummvm.org/)
- [Official ScummVM Github Repository](https://github.com/scummvm/scummvm)
- [Report Libretro ScummVM Core Issues Here](https://github.com/libretro/scummvm/issues)
