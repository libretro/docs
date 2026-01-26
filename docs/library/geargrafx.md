# NEC - PC Engine / SuperGrafx (Geargrafx)

## Background

Geargrafx is an open source, cross-platform, PC Engine / TurboGrafx-16 / SuperGrafx emulator written in C++.

- Accurate emulation supporting the entire HuCard PCE / SGX catalog.
- Support for CD-ROM², Super CD-ROM² and Arcade CD-ROM² systems.
- Backup RAM and Memory Base 128 support.
- Multi Tap support (up to 5 players).
- Controllers:
    * Standard Gamepad (2 buttons)
    * Avenue Pad 3 (3 buttons, auto-configured based on game)
    * Avenue Pad 6 (6 buttons)
- Adjustable scanline count (224p, 240p, or manual).
- RGB or Composite color output.
- Music rom support: HES.
- Internal database for automatic rom detection and hardware selection if `Auto` options are selected.
- Supported platforms (libretro): Windows, Linux, macOS, Raspberry Pi, Android, iOS, tvOS, PlayStation Vita, PlayStation 3, Nintendo 3DS, Nintendo GameCube, Nintendo Wii, Nintendo WiiU, Nintendo Switch, Emscripten, Classic Mini systems (NES, SNES, C64, etc.), OpenDingux, RetroFW and QNX.

The Geargrafx core has been authored by

- [Nacho Sanchez (drhelius)](https://github.com/drhelius)

The Geargrafx core is licensed under

- [GPLv3](https://github.com/drhelius/Geargrafx/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Geargrafx requires a BIOS file to run CD-ROM games.

Required or optional firmware files go in RetroArch's system directory.

!!! attention
	 Any CD-ROM System BIOS will work, but some are known to be incompatible with certain games.

!!! attention
	 You can choose the BIOS to use in the core options menu.

|   Filename    |    Description                        |              md5sum              |
|:-------------:|:-------------------------------------:|:--------------------------------:|
| syscard3.pce  | Super CD-ROM2 System V3.xx - Required | 38179df8f4ac870017db21ebcbf53114 |
| syscard2.pce  | CD-ROM System V2.xx - Optional        |                                  |
| syscard1.pce  | CD-ROM System V1.xx - Optional        |                                  |
| gexpress.pce  | Game Express CD Card - Optional       |                                  |

## Extensions

Content that can be loaded by the Geargrafx core have the following file extensions:

- .pce
- .sgx
- .hes
- .cue
- .chd

Geargrafx supports `chd`, `cue/bin`, `cue/img` and `cue/iso` CD-ROM images. `cue/iso + wav` is also supported when audio track format is 44100Hz, 16 bit, stereo. It does not support MP3 or OGG audio tracks.

RetroArch database(s) that are associated with the Geargrafx core:

- [NEC - PC Engine - TurboGrafx 16](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20-%20TurboGrafx%2016.rdb)
- [NEC - PC Engine SuperGrafx](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20SuperGrafx.rdb)
- [NEC - PC Engine CD - TurboGrafx-CD](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20CD%20-%20TurboGrafx-CD.rdb)

## Features

Frontend-level settings or features that the Geargrafx core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

## Directories

The Geargrafx core's library name is 'Geargrafx'

The Geargrafx core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Geargrafx core's provided FPS is 59.82
- The Geargrafx core's provided sample rate is 44100 Hz
- The Geargrafx core's base width is dependent on the content and overscan settings (Without overscan: 256, 341, 512. With overscan: 280, 373, 560) 
- The Geargrafx core's base height is dependent on the ['Scanline Start' and 'Scanline End' core options](#core-options).
- The Geargrafx core's max width is 560
- The Geargrafx core's max height is 242
- The Geargrafx core's provided aspect ratio is dependent on the ['Aspect Ratio' core option](#core-options).

## Core options

The Geargrafx core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings with (restart) means that core has to be closed for the new setting to be applied on next launch.

- **System (restart)** [geargrafx_console_type] (**Auto**|PC Engine (JAP)|SuperGrafx (JAP)|TurboGrafx-16 (USA))

    Select the console type to emulate. The default setting, Auto, automatically detects the appropriate console type based on the loaded content.
    Many US games will not start if a Japanese system is detected.

- **Aspect Ratio** [geargrafx_aspect_ratio] (**1:1 PAR**|4:3 DAR|6:5 DAR|16:9 DAR|16:10 DAR)

    Select which aspect ratio will be presented by the core.

    - *1:1 PAR* selects an aspect ratio that produces square pixels.
    - *4:3 DAR* forces 4:3 aspect ratio.
    - *6:5 DAR* forces 6:5 aspect ratio.
    - *16:9 DAR* forces 16:9 aspect ratio.
    - *16:10 DAR* forces 16:10 aspect ratio.

- **Overscan** [geargrafx_overscan] (**Disabled**|Enabled)

    This option enables/disables overscan (borders). Overscan width is dependent on the content.

- **Scanline Count** [geargrafx_scanline_count] (**224p**|240p|Manual)

    Select which scanline count will be used in emulation.

    - *224p* forces 224 scanlines.
    - *240p* forces 240 scanlines.
    - *Manual* lets you set the first and last scanline manually.

- **Scanline Start (Manual)** [geargrafx_scanline_start] (**3**|values from 0 to 30)

    This option will set the first scanline to be displayed. Scanline 0 is the first visible scanline.
    This option is only available when 'Scanline Count' is set to 'Manual'.

- **Scanline End (Manual)** [geargrafx_scanline_end] (**241**|values from 220 to 241)

    This option will set the last scanline to be displayed. Scanline 241 is the last visible scanline.
    This option is only available when 'Scanline Count' is set to 'Manual'.

- **Composite Colors** [geargrafx_composite_colors] (**Disabled**|Enabled)

    If enabled, the core will use composite colors instead of RGB colors.

- **No Sprite Limit** [geargrafx_no_sprite_limit] (**Disabled**|Enabled)

    Enabling this option removes the per-line sprite limit, but may cause glitches in certain games.
    It's best to keep this core option disabled.

- **Backup RAM (restart)** [geargrafx_backup_ram] (**Enabled**|Disabled)

    This option allows you to disable backup RAM (not recommended).

- **Deterministic Netplay** [geargrafx_deterministic_netplay] (**Disabled**|Enabled)

	When enabled, ensures deterministic emulation behavior for netplay by setting consistent reset values for memory and hardware registers. This helps prevent desyncs during netplay sessions.

- **CD-ROM (restart)** [geargrafx_cdrom_type] (**Auto**|Standard|Super CD-ROM|Arcade CD-ROM)

    Select the CD-ROM system type. The *Auto* setting automatically selects the appropriate CD-ROM system based on the loaded content.

    - *Auto* selects the best CD-ROM system based on the content.
    - *Standard* forces standard CD-ROM² system.
    - *Super CD-ROM* forces Super CD-ROM² system.
    - *Arcade CD-ROM* forces Arcade CD-ROM² system.

- **CD-ROM Bios (restart)** [geargrafx_cdrom_bios] (**Auto**|System Card 1|System Card 2|System Card 3|Game Express)

    Specify the BIOS file to use for CD-ROM emulation. The *Auto* setting automatically selects the appropriate BIOS based on the loaded content. You can also manually choose one for compatibility with specific games.

- **Preload CD-ROM (restart)** [geargrafx_cdrom_preload] (**Disabled**|Enabled)

    This option will preload all CD-ROM tracks in RAM. It will increase the memory usage of the core, but may improve performance.

- **HuC6280A Audio Chip** [geargrafx_psg_huc6280a] (**Enabled**|Disabled)

	Enable or disable the HuC6280A audio chip emulation. The HuC6280A provides the PSG (Programmable Sound Generator) functionality.

- **PSG Volume** [geargrafx_psg_volume] (**100**|0 - 200)

    This option sets the volume of the PSG (Programmable Sound Generator) sound system.
    The value is a percentage from 0 to 200, where 100 is the default volume.

- **CD-ROM Volume** [geargrafx_cdrom_volume] (**100**|0 - 200)

    This option sets the volume of the CD-ROM sound system, which is used for music in CD-ROM games.
    The value is a percentage from 0 to 200, where 100 is the default volume.

- **ADPCM Volume** [geargrafx_adpcm_volume] (**100**|0 - 200)

    This option sets the volume of the ADPCM sound system, which is typically used for speech in CD-ROM games.
    The value is a percentage from 0 to 200, where 100 is the default volume.

- **Allow Up+Down / Left+Right** [geargrafx_up_down_allowed] (**Disabled**|Enabled)

    Enabling this option allows pressing, quickly alternating, or holding both left and right (or up and down in some games) directions at the same time.
    This may cause movement based glitches to occur in certain games.
    It's best to keep this core option disabled.

- **Allow Soft Reset** [geargrafx_soft_reset] (**Enabled**|Disabled)

    Pressing RUN and SELECT simultaneously on the PCE gamepad will SOFT RESET the console. This is the default hardware behavior.
    Disable this option if you want the soft reset functionality turned off.

- **TurboTap** [geargrafx_turbotap] (**Disabled**|Enabled)

    This option enables/disables TurboTap support (up to 5 players).

- **MB128 Backup Memory** [geargrafx_mb128] (**Auto**|Enabled|Disabled)

	Enable or disable MB128 backup memory support. MB128 is an external memory card device that can be used to save game data across multiple games.

- **Avenue Pad 3 Switch** [geargrafx_avenue_pad_3_switch] (**Auto**|SELECT|RUN)

    Configure the button mapping for the Avenue Pad 3 controller's third button (III).

    - *Auto* automatically selects the appropriate button mapping based on the game.
    - *SELECT* maps button III to SELECT.
    - *RUN* maps button III to RUN.

- **P1 Turbo I** [geargrafx_turbo_p1_i] (**Disabled**|Enabled)

    Enables/disables the Turbo I button for Player 1.

- **P1 Turbo II** [geargrafx_turbo_p1_ii] (**Disabled**|Enabled)

    Enables/disables the Turbo II button for Player 1.

- **P2 Turbo I** [geargrafx_turbo_p2_i] (**Disabled**|Enabled)

    Enables/disables the Turbo I button for Player 2.

- **P2 Turbo II** [geargrafx_turbo_p2_ii] (**Disabled**|Enabled)

    Enables/disables the Turbo II button for Player 2.

- **P3 Turbo I** [geargrafx_turbo_p3_i] (**Disabled**|Enabled)

    Enables/disables the Turbo I button for Player 3.

- **P3 Turbo II** [geargrafx_turbo_p3_ii] (**Disabled**|Enabled)

    Enables/disables the Turbo II button for Player 3.

- **P4 Turbo I** [geargrafx_turbo_p4_i] (**Disabled**|Enabled)

    Enables/disables the Turbo I button for Player 4.

- **P4 Turbo II** [geargrafx_turbo_p4_ii] (**Disabled**|Enabled)

    Enables/disables the Turbo II button for Player 4.

- **P5 Turbo I** [geargrafx_turbo_p5_i] (**Disabled**|Enabled)

    Enables/disables the Turbo I button for Player 5.

- **P5 Turbo II** [geargrafx_turbo_p5_ii] (**Disabled**|Enabled)

    Enables/disables the Turbo II button for Player 5.

- **P1 Turbo I Speed** [geargrafx_turbo_speed_p1_i] (**4**|values from 1 to 15)

    Number of frames between each button I toggle for Player 1.

- **P1 Turbo II Speed** [geargrafx_turbo_speed_p1_ii] (**4**|values from 1 to 15)

    Number of frames between each button II toggle for Player 1.

- **P2 Turbo I Speed** [geargrafx_turbo_speed_p2_i] (**4**|values from 1 to 15)

    Number of frames between each button I toggle for Player 2.

- **P2 Turbo II Speed** [geargrafx_turbo_speed_p2_ii] (**4**|values from 1 to 15)

    Number of frames between each button II toggle for Player 2.

- **P3 Turbo I Speed** [geargrafx_turbo_speed_p3_i] (**4**|values from 1 to 15)

    Number of frames between each button I toggle for Player 3.

- **P3 Turbo II Speed** [geargrafx_turbo_speed_p3_ii] (**4**|values from 1 to 15)

    Number of frames between each button II toggle for Player 3.

- **P4 Turbo I Speed** [geargrafx_turbo_speed_p4_i] (**4**|values from 1 to 15)

    Number of frames between each button I toggle for Player 4.

- **P4 Turbo II Speed** [geargrafx_turbo_speed_p4_ii] (**4**|values from 1 to 15)

    Number of frames between each button II toggle for Player 4.

- **P5 Turbo I Speed** [geargrafx_turbo_speed_p5_i] (**4**|values from 1 to 15)

    Number of frames between each button I toggle for Player 5.

- **P5 Turbo II Speed** [geargrafx_turbo_speed_p5_ii] (**4**|values from 1 to 15)

    Number of frames between each button II toggle for Player 5.

## Joypad

| RetroPad Inputs                             | PCE Pad (2-button) | Avenue Pad 3 (3-button)    | Avenue Pad 6 (6-button) |
|---------------------------------------------|--------------------|----------------------------|-------------------------|
| ![](../image/retropad/retro_dpad_up.png)    | D-Pad Up           | D-Pad Up                   | D-Pad Up                |
| ![](../image/retropad/retro_dpad_down.png)  | D-Pad Down         | D-Pad Down                 | D-Pad Down              |
| ![](../image/retropad/retro_dpad_left.png)  | D-Pad Left         | D-Pad Left                 | D-Pad Left              |
| ![](../image/retropad/retro_dpad_right.png) | D-Pad Right        | D-Pad Right                | D-Pad Right             |
| ![](../image/retropad/retro_select.png)     | Select             | Select                     | Select                  |
| ![](../image/retropad/retro_start.png)      | Run                | Run                        | Run                     |
| ![](../image/retropad/retro_a.png)          | I                  | I                          | I                       |
| ![](../image/retropad/retro_b.png)          | II                 | II                         | II                      |
| ![](../image/retropad/retro_y.png)          |                    | III (mapped to Select/Run) | III                     |
| ![](../image/retropad/retro_x.png)          |                    |                            | IV                      |
| ![](../image/retropad/retro_l1.png)         |                    |                            | V                       |
| ![](../image/retropad/retro_r1.png)         |                    |                            | VI                      |
| ![](../image/retropad/retro_l2.png)         | Toggle Turbo II    | Toggle Turbo II            | Toggle Turbo II         |
| ![](../image/retropad/retro_r2.png)         | Toggle Turbo I     | Toggle Turbo I             | Toggle Turbo I          |

## External Links

- [Official Geargrafx Repository](https://github.com/drhelius/Geargrafx)
- [Libretro Geargrafx Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/geargrafx_libretro.info)
- [Report Libretro Geargrafx Core Issues Here](https://github.com/drhelius/Geargrafx/issues)
