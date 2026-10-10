# NEC - PC Engine / SuperGrafx (Geargrafx)

## Background

Geargrafx is an open source, cross-platform PC Engine, TurboGrafx-16, and SuperGrafx emulator written in C++.

- Very accurate emulation supporting the entire HuCard PCE / SGX catalog.
- Support for CD-ROM², Super CD-ROM² and Arcade CD-ROM² systems.
- NEC LaserActive LD-ROM² support through MMI images on 64-bit builds.
- Backup RAM and Memory Base 128 support.
- Multi Tap support (up to 5 players).
- Controllers:
    * Standard Gamepad (2 buttons)
    * Avenue Pad 3 (3 buttons, auto-configured based on game)
    * Avenue Pad 6 (6 buttons)
    * PC Engine Mouse
- Adjustable scanline count (224p, 240p, or manual).
- Standard RGB, Turboxray, and Kitrinx color palettes.
- HES music ROM support.
- Internal database for automatic ROM detection and hardware selection when `Auto` is selected.
- Supported platforms (libretro): Windows, Linux, macOS, Raspberry Pi, Android, iOS, tvOS, webOS, PlayStation Vita, PlayStation 3, Nintendo 3DS, Nintendo GameCube, Nintendo Wii, Nintendo WiiU, Nintendo Switch, Emscripten, Classic Mini systems (NES, SNES, C64, etc.), OpenDingux, RetroFW and QNX.

The Geargrafx core has been authored by:

- [Nacho Sanchez (drhelius)](https://github.com/drhelius)

The Geargrafx core is licensed under:

- [GPLv3](https://github.com/drhelius/Geargrafx/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Geargrafx requires a BIOS file to run CD-ROM and LaserActive games.

Required or optional firmware files go in RetroArch's system directory.

!!! attention
	System Card 3 is recommended for standard CD-ROM games. Some games require a different System Card or the Game Express BIOS.

!!! attention
	 You can choose the BIOS to use in the core options menu.

|   Filename    |    Description                        |              md5sum              |
|:-------------:|:-------------------------------------:|:--------------------------------:|
| syscard3.pce  | Super CD-ROM2 System V3.xx - Required | 38179df8f4ac870017db21ebcbf53114 |
| syscard2.pce  | CD-ROM System V2.xx - Optional        |                                  |
| syscard1.pce  | CD-ROM System V1.xx - Optional        |                                  |
| gexpress.pce  | Game Express CD Card - Optional       |                                  |
| pac-n1.bin   | Japanese LaserActive PAC-N1 firmware  |                                  |
| pce-lp1.bin  | Japanese LaserActive PCE-LP1 firmware, alternative to PAC-N1 |             |
| pac-n10.bin  | US LaserActive PAC-N10 firmware       |                                  |

The **CD BIOS** option defaults to *System Card 3*. Known Game Express games automatically use `gexpress.pce`; *Force Game Express* is available for unrecognized or modified discs.

LaserActive LD-ROM² games require firmware for the selected **LaserActive Region**: `pac-n1.bin` or `pce-lp1.bin` for Japan, or `pac-n10.bin` for the US. The core tries `pac-n1.bin` first and falls back to `pce-lp1.bin` if it cannot load it. MMI images that specify an external System Card or Game Express card require that BIOS instead.

## Extensions

Content that can be loaded by the Geargrafx core have the following file extensions:

- .pce
- .sgx
- .hes
- .cue
- .chd
- .mmi

Geargrafx supports `chd`, `cue/bin`, `cue/img`, and `cue/iso` CD-ROM images. CUE audio tracks can use raw BIN, WAV (44.1 kHz, 16-bit stereo), or Ogg Vorbis (44.1 kHz stereo) files. MP3 audio tracks are not supported.

MMI images support NEC LaserActive LD-ROM² and compatible CD-ROM media. Loading `.mmi` files requires a 64-bit core. Load the MMI file directly; disc and side selection is available through RetroArch's disk controls.

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
| Run-Ahead         | ✔         |
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
| Disk Control      | ✔ (MMI only) |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✔         |
| LEDs              | ✕         |

## Disk control

Disk controls select the discs or sides contained in the loaded MMI image. Eject the current disc, select another disc index, then insert it again.

External image replacement and M3U playlists are not supported. Disk controls are not available for standalone CUE or CHD images.

## Directories

The Geargrafx core's library name is 'Geargrafx'.

The Geargrafx core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Backup RAM save        |
| geargrafx_mb128.sav | Shared Memory Base 128 save |

Memory Base 128 uses one shared save file across games when the device is enabled.

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Geargrafx core's provided FPS follows the emulated video mode: approximately 59.83 FPS for 263 lines or 60.05 FPS for 262 lines
- The Geargrafx core's provided sample rate is 44100 Hz
- The Geargrafx core's base width depends on the video mode and overscan settings. Standard frames use 256, 341, or 512 pixels without overscan and 280, 373, or 560 pixels with overscan. Mixed-resolution frames use 1024 or 1120 pixels
- The Geargrafx core's base height depends on the ['Scanline Count', 'Scanline Start' and 'Scanline End' core options](#core-options)
- LaserActive uses its own horizontal and vertical overscan settings. Its base width is three times the selected picture width: 1044 pixels for the default 348-pixel crop, or 1176 pixels for the full 392-pixel width. Its default height is 240 lines; the full field includes 263 lines
- The Geargrafx core's max width is 1176
- The Geargrafx core's max height is 263
- The Geargrafx core's provided aspect ratio depends on the ['Aspect Ratio' core option](#core-options) for PC Engine content and **LaserActive Aspect Ratio** for LaserActive content.

## Core options

The Geargrafx core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings marked (restart) require restarting the content for the change to take effect.

- **System (restart)** [geargrafx_console_type] (**Auto**|PC Engine (JAP)|SuperGrafx (JAP)|TurboGrafx-16 (USA))

    Select the console type to emulate. *Auto* detects the appropriate console type based on the loaded content.
    Many US games will not start if a Japanese system is detected.

- **Aspect Ratio** [geargrafx_aspect_ratio] (**1:1 PAR**|4:3 DAR|6:5 DAR|16:9 DAR|16:10 DAR)

    Select which aspect ratio will be presented for PC Engine content. LaserActive content uses its separate **LaserActive Aspect Ratio** option.

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

- **Scanline Start (Manual)** [geargrafx_scanline_start] (**3**|values from 0 to 40)

    This option will set the first scanline to be displayed. Scanline 0 is the first visible scanline.
    This option is only used when 'Scanline Count' is set to 'Manual'.

- **Scanline End (Manual)** [geargrafx_scanline_end] (**241**|values from 208 to 241)

    This option will set the last scanline to be displayed. Scanline 241 is the last visible scanline.
    This option is only used when 'Scanline Count' is set to 'Manual'.

- **LaserActive Aspect Ratio** [geargrafx_laseractive_aspect_ratio] (**4:3 DAR**|1:1 PAR|16:9 DAR|16:10 DAR)

    Select the display aspect ratio for LaserActive images, independently of the PC Engine aspect ratio.

- **LaserActive Vertical Overscan** [geargrafx_laseractive_framing] (**Cropped (240 lines)**|Full Field (263 lines)|Manual)

    *Cropped* displays picture lines 22 through 261. *Full Field* displays all 263 lines, including blanking information. *Manual* uses the first and last line settings below.

- **LaserActive First Line (Manual)** [geargrafx_laseractive_scanline_start] (**22**|values from 0 to 40)

    Set the first field line displayed when **LaserActive Vertical Overscan** is *Manual*. The full field uses lines 0 through 262.

- **LaserActive Last Line (Manual)** [geargrafx_laseractive_scanline_end] (**261**|values from 220 to 262)

    Set the last field line displayed when **LaserActive Vertical Overscan** is *Manual*.

- **LaserActive Horizontal Overscan** [geargrafx_laseractive_horizontal_framing] (**Cropped (348 pixels)**|Full Width (392 pixels)|Manual)

    *Cropped* displays the centered picture from pixels 22 through 369. *Full Width* displays all 392 pixels, including side borders. *Manual* uses the first and last pixel settings below. The crop applies to both disc video and PC Engine graphics.

- **LaserActive First Pixel (Manual)** [geargrafx_laseractive_pixel_start] (**22**|values from 0 to 120)

    Set the left edge when **LaserActive Horizontal Overscan** is *Manual*. The full picture uses pixels 0 through 391.

- **LaserActive Last Pixel (Manual)** [geargrafx_laseractive_pixel_end] (**369**|values from 271 to 391)

    Set the right edge when **LaserActive Horizontal Overscan** is *Manual*, independently of the left edge.

- **Color Palette** [geargrafx_palette] (**Standard RGB**|Turboxray|Kitrinx)

    Select the color palette used by the video encoder.

- **No Sprite Limit** [geargrafx_no_sprite_limit] (**Disabled**|Enabled)

    Remove the per-line sprite limit. This reduces flickering but may cause glitches in certain games. It's best to keep this option disabled.

- **Video Low-Pass Filter** [geargrafx_lowpass_filter] (**Disabled**|Enabled)

    Enable a low-pass video filter to simulate the signal degradation of analog video output on CRT displays.

- **Video LPF Intensity** [geargrafx_lowpass_intensity] (**100**|0-100 in increments of 10)

    Set the intensity of the video low-pass filter as a percentage from 0 to 100.

- **Video LPF Cutoff** [geargrafx_lowpass_cutoff] (**5.0 MHz**|3.0 MHz|3.5 MHz|4.0 MHz|4.5 MHz|5.5 MHz|6.0 MHz|6.5 MHz|7.0 MHz)

    Set the cutoff frequency of the video low-pass filter. Lower values produce a softer image.

- **Video LPF HuC6270 5.36 MHz** [geargrafx_lowpass_speed_536] (**Disabled**|Enabled)

    Apply the video low-pass filter when HuC6270 is running in 5.36 MHz dot clock mode (256px width).

- **Video LPF HuC6270 7.16 MHz** [geargrafx_lowpass_speed_716] (**Enabled**|Disabled)

    Apply the video low-pass filter when HuC6270 is running in 7.16 MHz dot clock mode (341px width).

- **Video LPF HuC6270 10.8 MHz** [geargrafx_lowpass_speed_108] (**Enabled**|Disabled)

    Apply the video low-pass filter when HuC6270 is running in 10.8 MHz dot clock mode (512px width).

- **Backup RAM (restart)** [geargrafx_backup_ram] (**Enabled**|Disabled)

    This option allows you to disable backup RAM (not recommended).

- **Deterministic Netplay** [geargrafx_deterministic_netplay] (**Disabled**|Enabled)

	When enabled, ensures deterministic emulation behavior for netplay by setting consistent reset values for memory and hardware registers. This helps prevent desyncs during netplay sessions.

- **Safe VDC Defaults (Homebrew)** [geargrafx_safe_vdc_defaults] (**Disabled**|Enabled)

	When enabled, sets safe default values for the VDC (Video Display Controller) registers. This can help some homebrew software run correctly.

- **CD-ROM Model (restart)** [geargrafx_cdrom_type] (**Auto**|Standard|Super CD-ROM|Arcade CD-ROM)

    Select the CD-ROM system type. *Auto* enables CD-ROM hardware only for CD media and selects the appropriate system based on the loaded content. An explicit model also enables CD-ROM hardware for HuCards while preserving their ROM and cartridge RAM mapping.

    - *Auto* selects the CD-ROM system based on the content and leaves CD-ROM hardware disabled for HuCards.
    - *Standard* forces standard CD-ROM² system.
    - *Super CD-ROM* forces Super CD-ROM² system.
    - *Arcade CD-ROM* forces Arcade CD-ROM² system.

- **CD BIOS (restart)** [geargrafx_cdrom_bios] (**System Card 3**|System Card 2|System Card 1|Force Game Express)

    Select the System Card BIOS for standard CD-ROM games. *System Card 3* is recommended. Known Game Express games automatically use `gexpress.pce`; select *Force Game Express* only for unrecognized or modified discs.

- **Preload CD-ROM (restart)** [geargrafx_cdrom_preload] (**Disabled**|Enabled)

    Preload CUE/BIN tracks or CHD data into RAM. This increases memory usage but may improve performance. MMI media is streamed and is not affected by this option.

- **LaserActive Region (restart)** [geargrafx_laseractive_region] (**Auto**|Japan|US)

    Select the NEC PAC firmware region for MMI media. *Auto* uses the region recorded in the image, or the available firmware if only one region is installed. Select *Japan* or *US* explicitly when the image's region is unspecified and both firmware regions are installed.

    Japanese firmware is `pac-n1.bin` or `pce-lp1.bin`; US firmware is `pac-n10.bin`.

- **PSG Revision** [geargrafx_psg_huc6280a] (**Auto**|HuC6280|HuC6280A)

    Select the PSG audio chip revision. *Auto* uses HuC6280A for SuperGrafx and HuC6280 for all other systems. Selecting a specific revision overrides automatic detection.

- **ADPCM Clock Speed** [geargrafx_adpcm_clock_mode] (**Auto**|Manual)

    *Auto* uses 32100 Hz unless the game database specifies another clock speed. The original hardware's resonator varies between units; *Auto* is recommended. *Manual* uses **ADPCM Manual Clock Speed**.

- **ADPCM Manual Clock Speed** [geargrafx_adpcm_clock_speed] (**32100 Hz**|32000-32200 Hz in increments of 20)

    Set the ADPCM clock speed when **ADPCM Clock Speed** is *Manual*. This option is hidden in other modes when the frontend supports conditional option visibility. Changing the default is not recommended.

- **PSG Volume** [geargrafx_psg_volume] (**100**|0-200 in increments of 10)

    This option sets the volume of the PSG (Programmable Sound Generator) sound system.
    The value is a percentage from 0 to 200, where 100 is the default volume.

- **CD-ROM Volume** [geargrafx_cdrom_volume] (**100**|0-200 in increments of 10)

    This option sets the volume of the CD-ROM sound system, which is used for music in CD-ROM games.
    The value is a percentage from 0 to 200, where 100 is the default volume.

- **ADPCM Volume** [geargrafx_adpcm_volume] (**100**|0-200 in increments of 10)

    This option sets the volume of the ADPCM sound system, which is typically used for speech in CD-ROM games.
    The value is a percentage from 0 to 200, where 100 is the default volume.

- **Allow Up+Down / Left+Right** [geargrafx_up_down_allowed] (**Disabled**|Enabled)

    Enable this option to press, quickly alternate, or hold both left and right, or up and down, at the same time. This may cause movement-based glitches in some games.

- **Allow Soft Reset** [geargrafx_soft_reset] (**Enabled**|Disabled)

    Pressing RUN and SELECT simultaneously on the PCE gamepad will soft reset the console. This is the default hardware behavior.
    Disable this option if you want the soft reset functionality turned off.

- **TurboTap** [geargrafx_turbotap] (**Disabled**|Enabled)

    This option enables/disables TurboTap support (up to 5 players).

- **MB128 Backup Memory** [geargrafx_mb128] (**Auto**|Enabled|Disabled)

	Enable or disable MB128 backup memory support. MB128 is an external memory card device that can be used to save game data across multiple games.

- **Mouse Sensitivity** [geargrafx_mouse_sensitivity] (**5**|1-15)

    Adjust PC Engine Mouse sensitivity. Higher values move the cursor faster.

- **Avenue Pad 3 Switch** [geargrafx_avenue_pad_3_switch] (**Auto**|SELECT|RUN)

    Configure the button mapping for the Avenue Pad 3 controller's third button (III). RetroPad X (IV) maps to the other action.

    - *Auto* uses the game database to select the mapping, with RUN as the fallback.
    - *SELECT* maps button III to SELECT.
    - *RUN* maps button III to RUN.

- **Turbo Toggle Hotkey (R2/L2)** [geargrafx_turbo_toggle_hotkey] (**Disabled**|Enabled)

    Use R2 to toggle Turbo I and L2 to toggle Turbo II for each player. When disabled, R2 and L2 are ignored.

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
| ![](../image/retropad/retro_x.png)          |                    | IV (opposite Select/Run mapping to III) | IV                      |
| ![](../image/retropad/retro_l1.png)         |                    |                            | V                       |
| ![](../image/retropad/retro_r1.png)         |                    |                            | VI                      |
| ![](../image/retropad/retro_l2.png)         | Toggle Turbo II when enabled | Toggle Turbo II when enabled | Toggle Turbo II when enabled |
| ![](../image/retropad/retro_r2.png)         | Toggle Turbo I when enabled  | Toggle Turbo I when enabled  | Toggle Turbo I when enabled  |

## Mouse

Select *Mouse* as the device type for controller port 1. Only one mouse is active at a time. Adjust movement with **Mouse Sensitivity**.

| RetroMouse Inputs | PC Engine Mouse |
|-------------------|-----------------|
| Mouse movement    | Movement        |
| Left button       | II              |
| Right button      | I               |
| Middle button     | Run             |
| Button 4          | Select          |
| Button 5          | Run             |

## External Links

- [Official Geargrafx Repository](https://github.com/drhelius/Geargrafx)
- [Libretro Geargrafx Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/geargrafx_libretro.info)
- [Report Libretro Geargrafx Core Issues Here](https://github.com/drhelius/Geargrafx/issues)
