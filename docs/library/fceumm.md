# Nintendo - NES / Famicom (FCEUmm)

## Background

FCEU "mappers modified" is an unofficial build of FCEU Ultra by CaH4e3, which supports a lot of new mappers including some obscure mappers such as one for unlicensed NES ROM's.

### Author/License

The FCEUmm core has been authored by

- FCEU Team
- CaH4e3

The FCEUmm core is licensed under

- [GPLv2](https://github.com/libretro/libretro-fceumm/blob/master/Copying)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FCEUmm core have the following file extensions:

- .fds
- .nes
- .unif
- .unf

## Databases

RetroArch database(s) that are associated with the FCEUmm core:

- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Family Computer Disk System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Family%20Computer%20Disk%20System.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename    |    Description                                                                                                               | md5sum                           |
|:-------------:|:----------------------------------------------------------------------------------------------------------------------------:|:--------------------------------:|
| disksys.rom   | Family Computer Disk System BIOS - Required for Famicom Disk System emulation                                                | ca30b50f880eb660a320674ed365ef7a | 
|gamegenie.nes  | Game Genie add-on cartridge - Required for Game Genei Add-on emulation                                                       | 7f98d77d7a094ad7d069b74bd553ec98 |

## Features

Frontend-level settings or features that the FCEUmm core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
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
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The FCEUmm core's internal core name is 'FCEUmm'

The FCEUmm core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

**Frontend's System directory**

| File     | Description                  |
|:--------:|:----------------------------:|
| nes.pal  | Custom palette (64 triplets) |

### Geometry and timing

- The FCEUmm core's core provided FPS is NTSC 60.10, PAL/Dendy 50.0
- The FCEUmm core's core provided sample rate is 48000 Hz
- The FCEUmm core's base width is 256 (602 when using NTSC Filters)
- The FCEUmm core's base height is 240
- The FCEUmm core's max width is 256 (602 when using NTSC Filters)
- The FCEUmm core's max height is 240
- The FCEUmm core's core provided aspect ratio is 4:3 DAR or 8:7 PAR

### Custom color palettes

To use custom color palettes in the FCEUmm core, the ['Color Palette' core option](#core-options) must be set to custom and the custom color palette file you want to use must be in RetroArch's system directory.

Make sure the custom palette file is named 'nes.pal'

Custom color palettes for the NES can be generated with either of these tools.

- [Bisqwit's NTSC NES palette generator](http://bisqwit.iki.fi/utils/nespalette.php)
- [Drag's NTSC NES palette generator](http://drag.wootest.net/misc/palgen.html)

## Core options

The FCEUmm core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Region** [fceumm_region] (**Auto**|NTSC|PAL|Dendy)

	Force core to use NTSC, PAL or Dendy system audio / video timings.

- **Preferred aspect ratio** [fceumm_aspect] (**8:7 PAR**|4:3)

	Choose the preferred aspect ratio. RetroArch's aspect ratio must be set to Core provided in the Video settings.

??? note "Preferred aspect ratio - 8:7 PAR"
	![](../image/core/fceumm/8by7_PAR.png)

??? note "Preferred aspect ratio - 4:3"
	![](../image/core/fceumm/4by3.png)

- **Color Palette** [fceumm_palette] (**default**|asqrealc|nintendo-vc|rgb|yuv-v3|unsaturated-final|sony-cxa2025as-us|pal|bmf-final2|bmf-final3|smooth-fbx|composite-direct-fbx|pvm-style-d93-fbx|ntsc-hardware-fbx|nes-classic-fbx-fs|nescap|wavebeam|raw|custom)

	Choose which color palette is going to be used. The raw palette can used in combination with the nes-decoder shader to give colors based off on Bisqwit's NES palette generator and applies either an FCC color conversion matrix or specific Sony US matrix.

!!! attention "Disclaimer"
	These 'Color Palette core option screenshots have been taken with the 'Use NTSC Palette' core option set to Off.

??? note "Color Palette - default"
	![](../image/core/fceumm/default.png)

??? note "Color Palette - asqrealc"
	![](../image/core/fceumm/asqrealc.png)

??? note "Color Palette - nintendo-vc"
	![](../image/core/fceumm/nintendo_vc.png)

??? note "Color Palette - rgb"
	![](../image/core/fceumm/rgb.png)

??? note "Color Palette - yuv-v3"
	![](../image/core/fceumm/yuv_v3.png)

??? note "Color Palette - unsaturated-final"
	![](../image/core/fceumm/unsaturated_final.png)

??? note "Color Palette - sony-cxa2025as-us"
	![](../image/core/fceumm/sony_cxa2025as_us.png)

??? note "Color Palette - pal"
	![](../image/core/fceumm/pal.png)

??? note "Color Palette - bmf-final2"
	![](../image/core/fceumm/bmf_final2.png)

??? note "Color Palette - bmf-final3"
	![](../image/core/fceumm/bmf_final3.png)

??? note "Color Palette - smooth-fbx"
	![](../image/core/fceumm/smooth_fbx.png)

??? note "Color Palette - composite-direct-fbx"
	![](../image/core/fceumm/direct_fbx.png)

??? note "Color Palette - pvm-style-d93-fbx"
	![](../image/core/fceumm/pvm_style_d93_fbx.png)

??? note "Color Palette - ntsc-hardware-fbx"
	![](../image/core/fceumm/ntsc_hardware_fbx.png)

??? note "Color Palette - nes-classic-fbx-fs"
	![](../image/core/fceumm/nes_classic_fbx_fs.png)

??? note "Color Palette - nescap"
	![](../image/core/fceumm/nescap.png)

??? note "Color Palette - wavebeam"
	![](../image/core/fceumm/wavebeam.png)

??? note "Color Palette - raw"
	![](../image/core/fceumm/raw.png)

- **Allow Opposing Directions** [fceumm_up_down_allowed] (**disabled**|enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time.

	This may cause movement based glitches to occur in certain games.

	It's best to keep this core option disabled.

- **Crop Overscan (Horizontal)** [fceumm_overscan_h] (**disabled**|enabled)

	Crop out (horizontally) the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.

??? note "Crop Overscan (Horiontal) - Off"
	![](../image/core/fceumm/horiz_off.png)

??? note "Crop Overscan (Horizontal) - On"
	![](../image/core/fceumm/horiz_on.png)

- **Crop Overscan (Vertical)** [fceumm_overscan_v] (**enabled**|disabled)

	Crop out (vertically) the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.

??? note "Crop Overscan (Vertical) - On"
	![](../image/core/fceumm/vert_on.png)

??? note "Crop Overscan (Vertical) - Off"
	![](../image/core/fceumm/vert_off.png)

- **No Sprite Limit** [fceumm_nospritelimit] (**disabled**|enabled)

	Removes 8-sprites-per-scanline hardware limit.

- **Sound Volume** [fceumm_sndvolume] (0|1|2|3|4|5|6|**7**|8|9|10)

	Self-explanatory.

- **Sound Quality** [fceumm_sndquality] (**Low**|High|Very High)

	Enables high/higher sound quality for games using expansion audio (MMC5, VRC6, VRC7, Namco, Sunsoft). Use Low for slower devices.

- **Swap Duty Cycles** [fceumm_swapduty] (**disabled**|enabled)

	Replicates the sound of some famiclones that have duty cycles swapped for square channels. A quick sound comparison is in Contra's sound effect when shooting with normal bullets.

- **Turbo Enable** [fceumm_turbo_enable] (**None**|Player 1|Player 2|Both)

	Enable the use of the [Turbo B and Turbo A buttons](#controllers).

- **Turbo Delay (in frames)** [fceumm_turbo_delay] (**3**|5|10|15|30|60|1|2)

	The number of frames between consecutive button presses when the Turbo B or Turbo A buttons are held down.

- **Zapper Mode** [fceumm_zapper_mode] (**lightgun**|touchscreen|mouse)

	Pointer allows the Zapper Device Type to be used for touch-devices, but still can be used with regular mouse. Pointer and Mouse mode movement behaves differently with different input driver so user can choose which movement feels natural to them.

- **Show Crosshair** [fceumm_show_crosshair] (**enabled**|disabled)

	Show the crosshair for the Zapper device type.

??? note "Show Crosshair - On"
	![](../image/core/fceumm/cross_on.png)

??? note "Show Crosshair - Off"
	![](../image/core/fceumm/cross_off.png)

- **Overclocking** [fceumm_overclocking] (**disabled**|2x-Postrender|2x-VBlank)

	Overclocks the NES using PPU method to minimize ingame slowdowns of some games. Contra Force needs VBlank mode (stage 3 slowdowns). Choose which ever minimizes slowdowns without image distortion.

- **RAM power up state (Restart)** [fceumm_ramstate] (**$FF**|$00|random)

	Choose RAM startup during power up. Fill the ram with either $FF, $00 or random. Some games rely on initial ram values for random generator as an example.

	Some unlicensed carts and rom hacks prefers $00 or else rom will not boot up or causes graphics glitches or any other problems.

- **NTSC Filter** [fceumm_ntsc_filter] (**disabled**|composite|svideo|rgb|monochrome)

	Enable blargg NTSC filters.

!!! attention "Disclaimer"
	These 'NTSC Filter' core option screenshots have been taken with the 'Color Palette' core option set to smooth-fbx.

??? note "NTSC Filter - Off"
	![](../image/core/fceumm/blargg_off.png)

??? note "NTSC Filter - composite (color bleeding + artifacts)"
	![](../image/core/fceumm/blargg_composite_normal.png)

??? note "NTSC Filter - svideo (color bleeding only)"
	![](../image/core/fceumm/blargg_svideo_normal.png)

??? note "NTSC Filter - rgb (crisp image)"
	![](../image/core/fceumm/blargg_rgb_normal.png)

??? note "NTSC Filter - monochrome (desaturated + artifacts)"
	![](../image/core/fceumm/blargg_monochrome_normal.png)

- **Show Advanced System Options** [fceumm_show_adv_system_options] (**disabled**|enabled)

	Show advanced system options and tweaks.

- **Show Advanced Sound Options** [fceumm_show_adv_sound_options] (**disabled**|enabled)

	Show advanced sound controls and tweaks.

## Controllers

The FCEUmm core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Input disabled.
- **Auto** - Joypad - Based off the loaded game's crc, the core will automatically select a regular controller (NES or Famicom) for User 1.
- [Gamepad](http://nintendo.wikia.com/wiki/Nintendo_Entertainment_System_controller) - Joypad - Manually selects a regular controller (NES or Famicom) for User 1.
- [Zapper](http://nintendo.wikia.com/wiki/NES_Zapper) - Mouse - Manually selects a Zapper light gun (NES or Famicom) for User 1.

**NOTE 1: Zapper connected to user 1 is only required on VS Unisystem games. You will hear a loud alarm when a game requires one and no zapped device is selected or the game's CRC fails to match existing database for autodetection.**

### User 2 device types

- None - Input disabled.
- **Auto** - Joypad - Based off the loaded game's crc, the core will automatically select a regular controller (NES or Famicom) or a Zapper light gun (NES or Famicom) or a Arkanoid Paddle (NES only) for User 2.
- [Gamepad](http://nintendo.wikia.com/wiki/Nintendo_Entertainment_System_controller) - Joypad - Manually selects a regular controller (NES or Famicom) for User 2.
- [Arkanoid](https://en.wikipedia.org/wiki/Arkanoid_Controller) - Mouse - Manually selects a Arkanoid Paddle (NES only) for User 2.
- [Zapper](http://nintendo.wikia.com/wiki/NES_Zapper) - Mouse - Manually selects a Zapper light gun (NES or Famicom) for User 2.

**NOTE 2: Zapper connected to user 2 is required for most cases. See note 1 above.**

### User 3 and 4 device types - used for multitap

- None - Input disabled.
- **Auto** - Joypad - Based off the loaded game's crc, the core will automatically select a regular controller (NES or Famicom) for User 3 and/or 4 in multitap games.
- [Gamepad](http://nintendo.wikia.com/wiki/Nintendo_Entertainment_System_controller) - Joypad - Manually selects a regular controller (NES or Famicom) for User 3/4.

### Other controllers (User 5 device type)

The FCEUmm core will also auto select the following controllers for the **Famicom** based off the loaded game's crc.

- [Arkanoid Paddle (Famicom)](https://en.wikipedia.org/wiki/Arkanoid_Controller) - Mouse
- Bandai Hyper Shot Gun (Famicom) - Mouse
- Oeka Kids Tablet (Famicom) - Mouse
- 4-Player Adaptor - force enable multitap mode

### Multitap support

The FCEUmm core supports up to 4 players in multitap games for the NES and Famicom, games with multitap usage are detected by their crc. Multitap can be manually enabled if selecting **4-Player Adaptor** in **User 5 Device type**.

### Controller tables

#### Joypad

![](../image/controller/nes.png)

!!! warning
	In order to use the Turbo A and Turbo B buttons, the 'Turbo Enable' core option must be set to On.

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Turbo B                  | ![](../image/retropad/retro_y.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |
| Turbo A                  | ![](../image/retropad/retro_x.png)          |
| (FDS) Disk Side Change   | ![](../image/retropad/retro_l1.png)         |
| (FDS) Insert/Eject Disk  | ![](../image/retropad/retro_r1.png)         |
| (VSSystem) Insert Coin   | ![](../image/retropad/retro_r2.png)         |

| User 2 - 4 Remap descriptors | RetroPad Inputs                         |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Turbo B                  | ![](../image/retropad/retro_y.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |
| Turbo A                  | ![](../image/retropad/retro_x.png)          |

#### Mouse

| RetroMouse Inputs                                                                                       | Zapper           | Arkanoid          | Oeka Kids Tablet        | Bandai Hyper Shot Gun           |
|---------------------------------------------------------------------------------------------------------|------------------|-------------------|-------------------------|---------------------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) | Zapper Crosshair | Arkanoid Movement | Oeka Kids Tablet Cursor | Bandai Hyper Shot Gun Crosshair |
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png)           | Zapper Trigger   | Arkanoid Fire     | Oeka Kids Tablet Touch  | Bandai Hyper Shot Gun Trigger   |

- When the 'Zapper Mode' core option is set to lightgun, the 'Zapper' device type can be controlled with lightgun inputs (such as Wii remote).
- When the 'Zapper Mode' core option is set to touchscreen, the 'Zapper' device type can be controlled with touch inputs.
- When the 'Zapper Mode' core option is set to mouse, the 'Zapper' device type can be controlled with mouse inputs.

## Compatibility

| Game                         | Issue                                                        |
|------------------------------|--------------------------------------------------------------|
| Skull & Crossbones           | Graphical glitches and screen shaking when in 2-player mode. |

## External Links

- [Official FCEUmm Website](http://cah4e3.shedevr.org.ru/fceultra.php)
- [Official FCEUmm Sourceforge Repository](https://sourceforge.net/projects/fceumm/)
- [Libretro FCEUmm Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/fceumm_libretro.info)
- [Libretro FCEUmm Github Repository](https://github.com/libretro/libretro-fceumm)
- [Report Libretro FCEUmm Core Issues Here](https://github.com/libretro/libretro-fceumm/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IfFhmpqSJMJgst6QCsWwxdD)

## Other Links
- [NES Header Database](http://nes.dnsabr.com/) - Verify, remove or add headers for known No-Intro roms.

### See also

#### Nintendo - Family Computer Disk System

- [Nintendo - NES / Famicom (Mesen)](mesen.md)
- [Nintendo - NES / Famicom (Nestopia)](nestopia.md)

#### Nintendo - Nintendo Entertainment System

- [Nintendo - NES / Famicom (bnes)](bnes.md)
- [Nintendo - NES / Famicom (Emux NES)](emux_nes.md)
- [Nintendo - NES / Famicom (Mesen)](mesen.md)
- [Nintendo - NES / Famicom (Nestopia)](nestopia.md)
- [Nintendo - NES / Famicom (QuickNES)](quicknes.md)
