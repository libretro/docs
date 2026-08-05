# Sega - Model 3 (Supermodel)

## Background

Supermodel is an emulator for the **Sega Model 3** arcade hardware (1996–1998), which powered titles such as Virtua Fighter 3, Scud Race, Daytona USA 2, The House of the Dead 2, Spikeout, and Star Wars Trilogy. The Model 3 is built around a PowerPC 603e CPU paired with Sega's Real3D graphics co-processor.

This libretro core is a port of the [Supermodel](https://supermodel3.com) emulator to the libretro ecosystem, with the following additions:

- PowerPC → ARM64 JIT dynarec (RPi4/5, Android ARM64)
- Full save state support
- NVRAM persistence (high scores, game settings)
- Force feedback / DriveBoard emulation
- Light-gun crosshair overlay
- VFS support for Android scoped storage

The Supermodel core has been authored by

- Supermodel Team (original emulator)
- twinaphex (initial libretro port)
- sgiannop (libretro port)
- beudbeud (contributor)

The Supermodel core is licensed under

- [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

The Supermodel core requires OpenGL 3.3 or higher (desktop) or OpenGL ES 3.0 or higher (mobile/RPi). It will not run on OpenGL 2.x or OpenGL ES 2.0 contexts.

## Extensions

Content that can be loaded by the Supermodel core have the following file extensions:

- .zip

ROMs must be in **MAME-format ZIP archives**. Place all ZIP files for a game in the same directory; the core identifies which game to load by matching ROM checksums against `Games.xml`.

RetroArch database(s) that are associated with the Supermodel core:

- Sega - Model 3

## BIOS

No separate BIOS files are required. All game firmware is contained within the MAME-format ROM ZIP archives.

## Required Configuration Files

The following files are **required** and must be placed in the frontend's system directory under `supermodel/Config/`:

| File                      | Description                                     |
|:-------------------------:|:-----------------------------------------------:|
| supermodel/Config/Games.xml       | ROM database — maps checksums to game names     |
| supermodel/Config/Supermodel.ini  | Emulator configuration                          |

Both files are distributed with the [Supermodel emulator](https://supermodel3.com). The core will fail to initialize if either file is missing.

## Features

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
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The Supermodel core's library name is `Supermodel`.

The Supermodel core saves/loads to/from these directories.

**Frontend's System directory**

| File                              | Description                          |
|:---------------------------------:|:------------------------------------:|
| supermodel/Config/Games.xml       | ROM database (required, read-only)   |
| supermodel/Config/Supermodel.ini  | Emulator configuration (required)    |

**Frontend's Save directory**

| File          | Description                                               |
|:-------------:|:---------------------------------------------------------:|
| `<game>`.srm  | NVRAM — high scores, settings, coin counts (0x22000 bytes)|

**Frontend's State directory**

| File              | Description        |
|:-----------------:|:------------------:|
| `<game>`.state    | Save states        |

## Geometry and timing

- The Supermodel core's core provided FPS is 57.53
- The Supermodel core's core provided sample rate is 44100 Hz
- The Supermodel core's base width is 496
- The Supermodel core's base height is 384
- The Supermodel core's core provided aspect ratio is 4/3

## Core options

The Supermodel core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

### Video

- **Internal Resolution** [supermodel_resolution] (**Native (496x384)**|Half (248x192)|2x (992x768)|3x (1488x1152)|4x (1984x1536))

    Render at higher internal resolution for improved image quality. Lower values reduce GPU load. 'Half' is recommended for low-end mobile.

- **Widescreen Hack** [supermodel_wide_screen] (**disabled**|enabled)

    Expand the 3D camera FOV horizontally to fill a 16:9 display. May cause graphical glitches on some games.

- **VSync** [supermodel_vsync] (**enabled**|disabled)

    Synchronize frame rendering with display refresh rate.

- **Timing Overlay** [supermodel_timing_overlay] (**disabled**|enabled)

    Display an on-screen overlay with real-time frame timing information. For debugging.

- **Frame Skip** [supermodel_frameskip] (**Disabled**|Skip 1|Skip 2|Skip 3)

    Skip rendering every N frames to reduce GPU load on slow hardware.

### Input

- **Show Crosshairs** [supermodel_crosshairs] (**enabled**|disabled)

    Display crosshair overlays for light-gun games.

- **Driving Controls Layout** [supermodel_driving_layout] (**Default (pedals on D-pad, gears on L/R/L2/R2)**|Analog Triggers + 4-gear gate on right stick|Analog Triggers + sequential on right stick) (Restart)

    Pad layout for driving games. **Default**: D-pad Up/Down = accelerate/brake, L/R = shift up/down, L2/R2 = shift 3/4. **Analog Triggers**: L2 = brake (analog), R2 = accelerate (analog); right stick acts as a 4-gear gate or sequential shifter depending on the variant. L/R always shift sequentially in both analog modes.

- **Service Buttons** [supermodel_service_buttons] (**L/R + L2/R2 (Shoulders)**|L3/R3 (Stick Click))

    Choose which buttons act as the arcade Service and Test inputs.

- **Force Feedback** [supermodel_force_feedback] (**disabled**|enabled)

    Enable force feedback output for driving games via the DriveBoard emulation. Requires a controller with rumble support.

- **Analog Sensitivity** [supermodel_analog_sensitivity] (**100%**|50%|75%|125%|150%)

    Scale the analog stick input range.

### Audio

- **Sound Enable** [supermodel_sound_enable] (**enabled**|disabled)

    Enable or disable audio output.

- **Sound Volume** [supermodel_sound_volume] (**100%**|25%|50%|75%)

    Sound effects volume.

- **Music Volume** [supermodel_music_volume] (**100%**|25%|50%|75%)

    DSB music board volume (used by Daytona USA 2, Scud Race, etc.).

### Advanced

- **PowerPC Frequency** [supermodel_ppc_frequency] (**Auto**|33 MHz|50 MHz|66 MHz|70 MHz|100 MHz|133 MHz|166 MHz|200 MHz)

    Emulated PowerPC 603e clock speed. 'Auto' selects the correct frequency per game from `Games.xml`. Manual tuning can trade accuracy for performance.

- **ARM64 JIT Dynarec** [supermodel_jit_enable] (**Enabled**|Disabled) *(ARM64 only)*

    Use the PowerPC→ARM64 JIT compiler for faster emulation on ARM64 devices (Android, Raspberry Pi 4/5). Disable to fall back to the interpreter if a game behaves incorrectly.

## User 1 device types

The Supermodel core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **(Gamepad)** - Joypad - Standard arcade controls. Used by the majority of Model 3 games.
- **Lightgun** - Lightgun - For gun games (The House of the Dead 2, etc.).

## Joypad

| RetroPad Inputs                                   | Supermodel Inputs                                 |
|---------------------------------------------------|---------------------------------------------------|
| ![](../image/retropad/retro_b.png) B              | Button 1                                          |
| ![](../image/retropad/retro_a.png) A              | Button 2                                          |
| ![](../image/retropad/retro_y.png) Y              | Button 3                                          |
| ![](../image/retropad/retro_x.png) X              | Button 4                                          |
| ![](../image/retropad/retro_l1.png) L             | Button 5 / Shift Down (driving)                   |
| ![](../image/retropad/retro_r1.png) R             | Button 6 / Shift Up (driving)                     |
| ![](../image/retropad/retro_l2.png) L2            | Button 7 / Brake (analog, driving layout)         |
| ![](../image/retropad/retro_r2.png) R2            | Button 8 / Accelerate (analog, driving layout)    |
| ![](../image/retropad/retro_start.png) Start      | Start / Coin                                      |
| ![](../image/retropad/retro_select.png) Select    | Coin / Service                                    |
| ![](../image/retropad/retro_dpad_up.png) D-pad Up | Accelerate (default driving layout)               |
| ![](../image/retropad/retro_dpad_down.png) D-pad Down | Brake (default driving layout)                |
| ![](../image/retropad/retro_dpad_left.png) D-pad Left | D-pad Left                                   |
| ![](../image/retropad/retro_dpad_right.png) D-pad Right | D-pad Right                                |
| ![](../image/retropad/retro_left_stick.png) Left Stick X | Steering / Analog X                       |
| ![](../image/retropad/retro_left_stick.png) Left Stick Y | Analog Y                                  |
| ![](../image/retropad/retro_right_stick.png) Right Stick | Gear gate / Sequential shifter (driving)  |
| ![](../image/retropad/retro_l3.png) L3            | Service (sticks mode)                             |
| ![](../image/retropad/retro_r3.png) R3            | Test (sticks mode)                                |

## Lightgun

| RetroLightgun Inputs                                   | Supermodel Inputs |
|--------------------------------------------------------|-------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | Aim               |
| Gun Trigger                                            | Fire              |
| Gun Reload / Offscreen                                 | Reload            |
| Gun Aux A                                              | Action button     |
| Gun Start                                              | Start             |
| Gun Select                                             | Coin              |

## Rumble

Rumble only works in the Supermodel core when

- The **Force Feedback** core option is set to `enabled`.
- The content being run is a driving game with DriveBoard support (e.g. Scud Race, Daytona USA 2, Sega Rally 2).
- The frontend being used has rumble support.
- The controller device being used has rumble support.

## Compatibility

Model 3 emulation is not perfect. Most Step 1.x and 2.x titles are playable. Some Step 1.0 games (the earliest hardware revision) may have graphical or audio issues.

A compatibility list is maintained in the [Supermodel forums](https://supermodel3.com/Forum.html).

## External Links

- [Original Supermodel Website](https://supermodel3.com)
- [Libretro Supermodel Repository](https://github.com/sgiannop/Libretro-Supermodel)
- [Report Libretro Supermodel Core Issues Here](https://github.com/sgiannop/Libretro-Supermodel/issues)
