# Sega - Lindbergh (linuxloader)

## Background

A libretro core for Sega Lindbergh arcade games, built on [Linux Loader](https://github.com/lindbergh-loader/linuxloader) (formerly Lindbergh Loader). The games are 32-bit Linux programs: the core starts the loader as a process of its own and exchanges the frames, the audio and the input with it through shared memory. On Linux aarch64 the loader and the game run through FEX-Emu, which comes with the core, and are drawn in software.

The core is built for Linux (x86_64, aarch64) and Windows (x64).

The linuxloader core has been authored by

- Linux Loader Development Team
- WizzardSK

The linuxloader core is licensed under

- [CC BY-NC-SA 4.0](https://github.com/WizzardSK/linuxloader-libretro#license)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

A GPU with OpenGL support; on Linux aarch64 the games are drawn in software. The core carries the loader and writes it to `system/linuxloader/` at load, when that folder is missing or holds another build's, so the first load after an update takes a moment longer.

## BIOS

None: the games' dumps hold everything they need.

## Extensions

Content that can be loaded by the linuxloader core have the following file extensions:

- .elf
- .exe
- .lindbergh
- a game's program without an extension

Content is the game's program from its dump (for example `disk0/elf/` or the game's program folder), or a `.lindbergh` text file holding the program's path, absolute or relative to the text file. Most games' programs have no extension, so RetroArch's file browser lists them only with Settings > User Interface > File Browser > Filter Unknown Extensions turned off. The game's folders stay as the dump has them. Which games run, and which program each one starts from, is in the loader's [Linux](https://github.com/WizzardSK/linuxloader-libretro/blob/libretro/docs/guide-linux.md) and [Windows](https://github.com/WizzardSK/linuxloader-libretro/blob/libretro/docs/guide-windows.md) guides.

## Features

Frontend-level settings or features that the linuxloader core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           |     ✔     |
| Screenshots       |     ✔     |
| Saves             |     ✔     |
| States            |     ✕     |
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

The games' EEPROM and SRAM are kept in RetroArch's save directory by the game's DVP (`saves/linuxloader/DVP-0015.eeprom.bin` and `.sram.bin`), so a game's test program and the game share them. Restart starts the game again; Test (R3) during play opens its test menu, as on a cabinet.

## Directories

The linuxloader core's library name is 'linuxloader'.

**Frontend's System directory**

- `linuxloader/` (the loader, written by the core)

**Frontend's Save directory**

- `linuxloader/` (the games' EEPROM and SRAM)

## Core options

The linuxloader core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### Video

The resolution the games render at, and widescreen.

- **Resolution (Restart)** [linuxloader_resolution] (**Native**|1280x720|1920x1080|2560x1440|3840x2160|5120x2880)

    The width and height the games the loader can patch render at. Native keeps the linuxloader.ini's. Every frame goes through system memory to RetroArch, so the highest ones cost speed. Warning: setting this option above your display's resolution will break some games or make them unable to launch.

- **Force 16:9 (Restart)** [linuxloader_force_widescreen] (**Disabled**|Enabled)

    Makes every game run in widescreen. May break or stretch some games.

#### Input

The guns, steering and force feedback.

- **Service and Test Buttons** [linuxloader_test_buttons] (**Enabled**|Disabled)

    L3 as the cabinet's Service button and R3 as its Test button, on both pads. Disabled keeps them from being pressed by accident; the keyboard's S and T stay.

- **Gun Aim** [linuxloader_gun_aim] (**Analog Stick**|Mouse)

    What aims in the gun games, for both players. Analog Stick: each player's left stick (or D-pad) moves the aim, R2 fires, R reloads, L2 is the gun's button, L shakes the gun in The House of the Dead 4. Too Spicy: L2 reloads, L and R are the pedals. Ghost Squad Evolution: L2 is Action, L is Change. Primeval Hunt: L2 pumps. Mouse: RetroArch's light gun on each player's port, which follows the mouse; left button fires, right reloads, middle is the gun's button, aiming off the picture reloads too. Ghost Squad Evolution: right is Action, middle is Change. The House of the Dead 4: right is the gun's button, middle shakes. Too Spicy: middle is the left pedal, right the right one. Primeval Hunt: middle pumps, and the touch screen takes the mouse's clicks.

- **Gun Pointer Sensitivity** [linuxloader_gun_sensitivity] (50% to 200%, **100%**)

    How fast the sticks move the aim with Gun Aim on Analog Stick, as fast across as up and down; at 100% a full tilt crosses the picture's height in about a second. The mouse aims where it points.

- **Crosshair** [linuxloader_crosshair] (**Enabled**|Disabled)

    The gun games' crosshairs drawn over the picture: blue for player 1, red for player 2, which shows once that player aims.

- **Force Feedback to Rumble** [linuxloader_ffb_rumble] (**Enabled**|Disabled)

    The drive board's force feedback as rumble on player 1's pad, in the driving games: OutRun 2 SP SDX, Initial D 4 and 5, Hummer. Needs the drive board emulated, which Debug > EMULATE_DRIVEBOARD's Per Game does for those games.

- **Steering Response** [linuxloader_steering] (**Linear**|Logarithmic)

    Linear: the left stick's X as it is. Logarithmic: on a curve with less of the turn around the centre and steeper towards the ends, as the Sega System 32 racers' dip switch has it, so a stick steers less twitchily. Its shape is set by Steering Inner Zone and Steering Effect.

- **Steering Inner Zone** [linuxloader_steering_inner] (5%|10%|15%|20%|**25%**|30%|35%|40%|45%|50%)

    With logarithmic steering: the share of the turn at the centre. Lower is calmer around the centre. OutRun 2 plays well at 20 with Square, Initial D at 50 with Cubic.

- **Steering Effect** [linuxloader_steering_effect] (**Cubic (Strong)**|Square (Weak))

    With logarithmic steering: how the rest of the turn rises towards full lock. Cubic is strong, Square weak.

#### Audio

How the sound reaches RetroArch.

- **Audio Thread (Restart)** [linuxloader_audio_thread] (**Enabled**|Disabled)

    Hands the sound to RetroArch's audio thread as the loader mixes it, which keeps its pace where a game drops frames. OutRun 2 SP's announcer is lost with it.

#### Debug (Restart)

linuxloader.ini's settings, set over the game's linuxloader.ini. Per Game, Unchanged and Detected leave the loader's own.

- **FREEPLAY** [linuxloader_debug_freeplay] (**Unchanged**|Off|On)

- **TEST_MODE** [linuxloader_debug_test_mode] (**Off**|On)

- **EMULATE_DRIVEBOARD** [linuxloader_debug_emulate_driveboard] (**Per Game**|Off|On)

- **EMULATE_MOTIONBOARD** [linuxloader_debug_emulate_motionboard] (**Per Game**|Off|On)

- **EMULATE_RIDEBOARD** [linuxloader_debug_emulate_rideboard] (**Per Game**|Off|On)

- **EMULATE_HW210_CARDREADER** [linuxloader_debug_emulate_hw210_cardreader] (**Per Game**|Off|On)

- **EMULATE_ID_CARDREADER** [linuxloader_debug_emulate_id_cardreader] (**Per Game**|Off|On)

- **EMULATE_TOUCHSCREEN** [linuxloader_debug_emulate_touchscreen] (**Per Game**|Off|On)

- **REGION** [linuxloader_debug_region] (Japan|US|**Export**)

- **LINDBERGH_COLOUR** [linuxloader_debug_lindbergh_colour] (**Yellow**|Red|Blue|Silver|RedEX)

- **DEBUG_MSGS** [linuxloader_debug_debug_msgs] (**Off**|On)

- **BOOST_RENDER_RES** [linuxloader_debug_boost_render_res] (Off|**On**)

- **HUMMER_FLICKER_FIX** [linuxloader_debug_hummer_flicker_fix] (Off|**On**)

- **LGJ_RENDER_WITH_MESA** [linuxloader_debug_lgj_render_with_mesa] (Off|**On**)

- **DISABLE_BUILTIN_FONT** [linuxloader_debug_disable_builtin_font] (**Off**|On)

- **DISABLE_BUILTIN_LOGOS** [linuxloader_debug_disable_builtin_logos] (**Off**|On)

- **CPU_FREQ_GHZ** [linuxloader_debug_cpu_freq_ghz] (**Detected**|1.0 GHz|1.5 GHz|2.0 GHz|2.5 GHz|3.0 GHz|3.5 GHz|4.0 GHz|4.5 GHz|5.0 GHz)

- **SKIP_OUTRUN_CABINET_CHECK** [linuxloader_debug_skip_outrun_cabinet_check] (**Off**|On)

- **ID_STEERING_REDUCTION_PERCENTAGE** [linuxloader_debug_id_steering_reduction_percentage] (**0%**|5%|10%|15%|20%|25%|30%|35%|40%|45%|50%)

- **ID5_CHINESE_LANGUAGE** [linuxloader_debug_id5_chinese_language] (**Off**|On)

- **HARLEY_ANALOG_REMAP** [linuxloader_debug_harley_analog_remap] (**Off**|On)

- **MJ4_ENABLED_ALL_THE_TIME** [linuxloader_debug_mj4_enabled_all_the_time] (**Off**|On)

- **RAMBO_GUNS_SWITCH** [linuxloader_debug_rambo_guns_switch] (**Off**|On)

- **PRIMEVAL_HUNT_SCREEN_MODE** [linuxloader_debug_primeval_hunt_screen_mode] (0|**1**|2)

## Controllers

Without a `controls.ini` in the game's folder, the loader's defaults:

- Pads: RetroArch's ports 1 and 2 are players 1 and 2. Start is start, Select a coin, L3 service and R3 test (unless Service and Test Buttons is off). RetroArch's controls list (Quick Menu > Controls) names each pad's buttons by what they do in the game.
- Keyboard: RetroArch's keyboard is the game's: 5 and 6 coin, 1 and 2 start, T test, S service, the arrows.
- Guns: both players, by the Gun Aim option (the left sticks by default, or RetroArch's light gun on Mouse). Every gun game needs its guns calibrated in the test menu before it plays right.
- Touch screens: RetroArch's light gun, which follows the mouse, or its pointer while touched.
- Rumble: the drive board's force feedback reaches player 1's pad in the driving games (OutRun 2 SP SDX, Initial D 4 and 5, Hummer).

A `controls.ini` maps them as the standalone loader does; see its [Controls Guide](https://github.com/WizzardSK/linuxloader-libretro/blob/libretro/docs/Controls-Guide.md).

## External Links

- [linuxloader Core info file](https://github.com/WizzardSK/linuxloader-libretro/blob/libretro/linuxloader_libretro.info)
- [linuxloader libretro GitHub Repository](https://github.com/WizzardSK/linuxloader-libretro)
- [Report linuxloader Core Issues Here](https://github.com/WizzardSK/linuxloader-libretro/issues)
- [Upstream Linux Loader](https://github.com/lindbergh-loader/linuxloader)
