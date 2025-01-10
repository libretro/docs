# Sega - MS/GG (Gearsystem)

## Background

Gearsystem is an open source, cross-platform, Sega Master System / Game Gear / SG-1000 / Othello Multivision emulator written in C++.

- Accurate Z80 core, including undocumented opcodes and behavior like R and MEMPTR registers.
- Supported cartridges: ROM, ROM + RAM, SEGA, Codemasters, Korean, MSX + Nemesis, Janggun, SG-1000 and many Korean multi-carts.
- Automatic region detection: NTSC-JAP, NTSC-USA, PAL-EUR.
- Accurate VDP emulation, including timing and VDP specifics for SMS, SMS2, GG and TMS9918 modes.
- Support for YM2413 (OPLL) FM sound chip.
- Light Phaser and Paddle Control
- Internal database for rom detection.
- Battery powered RAM save support.
- Save states.
- Game Genie and Pro Action Replay cheat support.
- Supported platforms (libretro): Windows, Linux, macOS, Raspberry Pi, Android, iOS, tvOS, PlayStation Vita, PlayStation 3, Nintendo 3DS, Nintendo GameCube, Nintendo Wii, Nintendo WiiU, Nintendo Switch, Emscripten, Classic Mini systems (NES, SNES, C64, ...), OpenDingux, RetroFW and QNX.

The Gearsystem core has been authored by

- [Ignacio Sanchez (drhelius)](https://github.com/drhelius)

The Gearsystem core is licensed under

- [GPLv3](https://github.com/drhelius/Gearsystem/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Gearsystem does not require BIOS (bootrom) files to work but they can be used optionally.

When the BIOS is enabled it will execute as in original hardware, causing invalid roms to lock or preventing them to boot, depending on the BIOS file and rom region and system. If you experience issues disable the BIOS.

Required or optional firmware files go in the frontend's system directory.

!!! attention
	 If you’d like to use any BIOS, you can place the following files in RetroArch's system directory. Then, you need to enable [Master System BIOS](#core-options) and/or [Game Gear BIOS](#core-options) core options for these BIOS files to be used.

| Filename     | Description                        | md5sum                           |
|:------------:|:----------------------------------:|:--------------------------------:|
| bios.sms     | Master System BIOS - Optional      | 840481177270d5642a14ca71ee72844c |
| bios.gg      | Game Gear BIOS - Optional          | 672e104c3be3a238301aceffc3b23fd6 |

## Extensions

Content that can be loaded by the Gearsystem core have the following file extensions:

- .sms
- .gg
- .sg
- .mv
- .bin
- .rom

RetroArch database(s) that are associated with the Gearsystem core:

- [Sega - Game Gear](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Game%20Gear.rdb)
- [Sega - Master System - Mark III](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Master%20System%20-%20Mark%20III.rdb)
- [Sega - SG-1000](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20SG-1000.rdb)

## Features

Frontend-level settings or features that the Gearsystem core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats - Game Genie  | ✔         |
| RetroArch Cheats - Pro Acion Replay | ✔         |
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

### Directories

The Gearsystem core's library name is 'Gearsystem'

The Gearsystem core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Gearsystem core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The Gearsystem core's core provided sample rate is 44100 Hz
- The Gearsystem core's base width is 256 for Master System / SG-1000 games and 160 for Game Gear games
- The Gearsystem core's base height is 192 for Master System / SG-1000 games and 144 for Game Gear games
- The Gearsystem core's max width is 256 for Master System games and 160 for Game Gear games
- The Gearsystem core's max height is 224 for Master System games and 144 for Game Gear games
- The Gearsystem core's core provided aspect ratio is 4:3 for Master System / SG-1000 games and 10:9 for Game Gear games

## Core options

The Gearsystem core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **System (restart)** [gearsystem_system] (**Auto**|Master System / Mark III|Game Gear|SG-1000 / Multivision)

	Select which hardware/model is emulated.

    - *Auto* selects the best hardware based in the rom.
    - *Master System / Mark III* forces original Master System / Mark III hardware.
    - *Game Gear* forces Game Gear hardware.
    - *SG-1000 / Multivision* forces SG-1000 / Multivision hardware.

- **Region (restart)** [gearsystem_region] (**Auto**|Master System Japan|Master System Export|Game Gear Japan|Game Gear Export|Game Gear International)

	Select which region is emulated.

    - *Auto* selects the best region based in the rom.
    - *Master System Japan* forces Master System Japan region.
    - *Master System Export* forces Master System Export region.
    - *Game Gear Japan* forces Game Gear Japan region.
    - *Game Gear Export* forces Game Gear Export region.
    - *Game Gear International* forces Game Gear International region.

- **Mapper (restart)** [gearsystem_mapper] (**Auto**|ROM|SEGA|Codemasters|Korean|SG-1000)

	Select which mapper (memory bank controller) is emulated.

    - *Auto* selects the best mapper based in the rom.
    - *ROM* forces no mapper.
    - *SEGA* forces SEGA mapper.
    - *Codemasters* forces Codemasters mapper.
    - *Korean* forces Korean mapper.
    - *SG-1000* forces SG-1000 mapper.

- **Refresh Rate (restart)** [gearsystem_timing] (**Auto**|NTSC (60 Hz)|PAL (50 Hz))

	Select which refresh rate will be used in emulation.

    - *Auto* selects the best refresh rate based in the rom.
    - *NTSC (60 Hz)* forces 60 Hz.
    - *PAL (50 Hz)* forces 50 Hz.

- **Aspect Ratio** [gearsystem_aspect_ratio] (**1:1 PAR**|4:3 DAR|16:9 DAR|16:10 DAR)

    Select which aspect ratio will be presented by the core.

    - *1:1 PAR* selects an aspect ratio that produces square pixels.
    - *4:3 DAR* forces 4:3 aspect ratio.
    - *16:9 DAR* forces 16:9 aspect ratio.
    - *16:10 DAR* forces 16:10 aspect ratio.

- **Overscan** [gearsystem_overscan] (**Disabled**|Top+Bottom|Full (284 width)|Full (320 width))

    Select which overscan (borders) will be used in emulation.

    - *Disabled* disables overscan.
    - *Top+Bottom* enables overscan for top and bottom.
    - *Full (284 width)* enables overscan for top, bottom, left and right (284 width).
    - *Full (320 width)* enables overscan for top, bottom, left and right (320 width).

- **Hide Left Bar (SMS only)** [gearsystem_hide_left_bar] (**No**|Auto|Always)

    Select when to hide the left bar in Master System games.

    - *No* never hides the left bar.
    - *Auto* hides the left bar when the the bar is detected.
    - *Always* always hides the left bar even if no left bar is detected.

- **Master System BIOS (restart)** [gearsystem_bios_sms] (**Disabled**|Enabled)

	This option will enable/disable BIOS for Master System / Mark III models. For this to work, the `bios.sms` file must exist in the Retro Arch's system directory.

- **Game Gear BIOS (restart)** [gearsystem_bios_gg] (**Disabled**|Enabled)

	This option will enable/disable BIOS for Game Gear model. For this to work, the `bios.gg` file must exist in the Retro Arch's system directory.

- **YM2413 (restart)** [gearsystem_ym2413] (**Auto**|Disabled)

	This option will enable/disable YM2413 (OPLL) FM sound chip.

    - *Auto* selects the best option based in the rom.
    - *Disabled* disables YM2413.

- **3D Glasses** [gearsystem_glasses] (**Both Eyes / OFF**|Left Eye|Right Eye)

	For games with 3D glasses support this option will let you choose to display only left or right eye.

    - *Both Eyes / OFF* is required for games with NO 3D support or if you want to display both eyes in 3D games.
    - *Left Eye* displays the left eye only.
    - *Right Eye* displays the right eye only.

- **Allow Up+Down / Left+Right** [gearsystem_up_down_allowed] (**Disabled**|Enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time.

	This may cause movement based glitches to occur in certain games.

	It's best to keep this core option disabled.

- **Light Gun Input** [gearsystem_lightgun_input] (**Light Gun**|Touchscreen)

    Select which input will be used for Light Phaser games.

    - *Light Gun* - Selects mouse-controlled 'Light Gun' input (devices will use [RetroLightgun](#lightgun) inputs).
    - *Touchscreen* - Selects a touchscreen input (devices will use [RetroPointer](#pointer) inputs instead).

- **Light Gun Crosshair** [gearsystem_lightgun_crosshair] (**Disabled**|Enabled)

    Enable or disable the crosshair for Light Phaser games.

- **Light Gun Crosshair Shape** [gearsystem_lightgun_shape] (**Cross**|Square)

    Select the shape of the crosshair for Light Phaser games.

- **ight Gun Crosshair Color** [gearsystem_lightgun_color] (**White**|Black|Red|Green|Blue|Yellow|Magenta|Cyan)

    Select the color of the crosshair for Light Phaser games.

- **Light Gun Crosshair Offset X** [gearsystem_lightgun_crosshair_offset_x] (**0**|-10 - 10)

    Set the horizontal pixel offset of the crosshair for calibration.

- **Light Gun Crosshair Offset Y** [gearsystem_lightgun_crosshair_offset_y] (**0**|-10 - 10)

    Set the vertical pixel offset of the crosshair for calibration.

- **Paddle Sensitivity** [gearsystem_paddle_sensitivity] (**1**|1-15)

    Set the sensitivity of the [Paddle Control](#mouse).

    - *1* is the lowest sensitivity.
    - *15* is the highest sensitivity.

## Joypad

![](../image/controller/gg.png)

![](../image/controller/sms.png)

![](../image/controller/sg1000.png)

| RetroPad Inputs                                | SMS / GG Pad             |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_b.png)             | 1                        |
| ![](../image/retropad/retro_a.png)             | 2                        |
| ![](../image/retropad/retro_start.png)         | Pause / Start            |

## Lightgun

| RetroLightgun Inputs  | [Light Phaser](https://segaretro.org/Light_Phaser)      |
|-----------------------|---------------------------------------------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | Light Phaser Crosshair |
| Gun Trigger                                            | Light Phaser Trigger   |

## Pointer

| RetroPointer Inputs   | [Light Phaser](https://segaretro.org/Light_Phaser)        |
|-----------------------|-----------------------------------------------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Light Phaser Crosshair                 |
| ![](../image/retromouse/retro_left.png) Mouse 1   | Light Phaser Trigger          |

## Mouse

| RetroMouse Inputs                                     | [Paddle Control](https://segaretro.org/Paddle_Control)        |
|-------------------------------------------------------|-----------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Paddle wheel |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Paddle button   |

## Compatibility

- [Gearsystem Accuracy Tests](https://github.com/drhelius/Gearsystem#accuracy-tests)

## External Links

- [Official Gearsystem Repository](https://github.com/drhelius/Gearsystem)
- [Libretro Gearsystem Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gearsystem_libretro.info)
- [Report Libretro Gearsystem Core Issues Here](https://github.com/drhelius/Gearsystem/issues)

### See also

#### Sega - Game Gear

- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)

#### Sega - Master System - Mark III

- [Sega - Master System (Emux SMS)](emux_sms.md)
- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)
- [Sega - MS/MD/CD/32X (PicoDrive)](picodrive.md)

#### Sega - SG-1000

- [MSX/SVI/ColecoVision/SG-1000 (blueMSX)](bluemsx.md)
- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)
