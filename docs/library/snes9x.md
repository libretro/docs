# Nintendo - SNES / Famicom (Snes9x)

## Background

Port of upstream mainline **up-to-date** Snes9x, a portable Super Nintendo Entertainment System emulator to libretro.

- **Most up-to-date libretro Snes9x core available.**
- Highly accurate SNES emulation.
- Simplified and easily accessible MSU-1 expansion chip support.
- Recommended for netplay

The Snes9x core has been authored by

- Snes9x Team

The Snes9x core is licensed under

- [Non-commercial](https://github.com/snes9xgit/snes9x/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Snes9x core have the following file extensions:

- .smc
- .sfc
- .swc
- .fig
- .bs

RetroArch database(s) that are associated with the Snes9x core:

- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Sufami Turbo](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Sufami%20Turbo.rdb)
- [Nintendo - Satellaview](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Satellaview.rdb)

## Features

Frontend-level settings or features that the Snes9x core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✔         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The Snes9x core's library name is 'Snes9x'

The Snes9x core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Snes9x core's core provided FPS is 60.0988118623 for NTSC games and 50.0069789082 for PAL games.
- The Snes9x core's core provided sample rate is 32040 Hz
- The Snes9x core's base width is 256
- The Snes9x core's base height is 224 when the Crop Overscan core option is set to enabled. 239 when it's set to disabled.
- The Snes9x core's max width is 512
- The Snes9x core's max height is 478
- The Snes9x core's core provided aspect ratio is dependent on the ['Preferred aspect ratio' core option](https://docs.libretro.com/library/snes9x#core-options).

## MSU-1 support

MSU-1 support in the Snes9x core follows the SD2SNES/Snes9x naming format, i.e.

```
gamename.sfc
gamename.msu
gamename-#.pcm
```

Loading a manifest.bml file or having a xml file isn't necessary. **Just load gamename.sfc.**

Here's an example of a working MSU-1 setup done with [Secret of Mana MSU-1](https://www.romhacking.net/hacks/2467/). Please note that som_msu1.sfc is being [softpatched](https://docs.libretro.com/guides/softpatching/) in this example.

![](../image/core/snes9x/msu.png)

## Core options

The Snes9x core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Allow Up+Down / Left+Right** [snes9x_up_down_allowed] (**disabled**|enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time. 
	
	This may cause movement based glitches to occur in certain games.
	
	It's best to keep this core option disabled.

- **SuperFX Frequency** [snes9x_overclock] (**10MHz**|20MHz|40MHz|60MHz|80MHz|100MHz)

	Overclock the [SuperFX chip](https://en.wikipedia.org/wiki/Super_FX). 10Mhz is stock clockspeed.
	
	[Example video here](https://www.youtube.com/watch?v=3gVg8vDhfQk)
	
- **Reduce Slowdown (Hack, Unsafe)** [snes9x_overclock_cycles] (**disabled**|compatible|max)

	Many games for the SNES suffered from slowdown due to the weak main CPU. This option helps allievate that at the cost of possible bugs.
	
	[Example video here](https://www.youtube.com/watch?v=8xA9fosum4Q)
	
	compatible: Reduce slowdown but keep as much game compatibility as much as possible.
	
	max: Reduce slowdown as much as possible but will break more games.
	
- **Reduce Flickering (Hack, Unsafe)** [snes9x_reduce_sprite_flicker] (**disabled**|enabled)

	Raises sprite limit to reduce flickering in games.
	
- **Show layer 1** [snes9x_layer_1] (**enabled**|disabled)

	Show graphical layer 1.
	
	It's best to keep this core option enabled.
	
- **Show layer 2** [snes9x_layer_2] (**enabled**|disabled)

	Show graphical layer 2.
	
	It's best to keep this core option enabled.
	
- **Show layer 3** [snes9x_layer_3] (**enabled**|disabled)

	Show graphical layer 3.
	
	It's best to keep this core option enabled.
	
- **Show layer 4** [snes9x_layer_4] (**enabled**|disabled)

	Show graphical layer 4.
	
	It's best to keep this core option enabled.
	
- **Show sprite layer** [snes9x_layer_5] (**enabled**|disabled)

	Show sprite layer.
	
	It's best to keep this core option enabled.
	
- **Enable graphic clip windows** [snes9x_gfx_clip] (**enabled**|disabled)

	Show graphic clip windows.
	
	It's best to keep this core option enabled.
	
- **Enable transparency effects** [snes9x_gfx_transp] (**enabled**|disabled)

	Show transparency effects.
	
	It's best to keep this core option enabled.
	
- **Enable hires mode** [snes9x_gfx_hires] (**enabled**|disabled)

	Enable hires mode.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 1** [snes9x_sndchan_1] (**enabled**|disabled)

	Enabled sound channel 1.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 2** [snes9x_sndchan_2] (**enabled**|disabled)

	Enabled sound channel 2.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 3** [snes9x_sndchan_3] (**enabled**|disabled)

	Enabled sound channel 3.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 4** [snes9x_sndchan_4] (**enabled**|disabled)

	Enabled sound channel 4.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 5** [snes9x_sndchan_5] (**enabled**|disabled)

	Enabled sound channel 5.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 6** [snes9x_sndchan_6] (**enabled**|disabled)

	Enabled sound channel 6.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 7** [snes9x_sndchan_7] (**enabled**|disabled)

	Enabled sound channel 7.
	
	It's best to keep this core option enabled.
	
- **Enable sound channel 8** [snes9x_sndchan_8] (**enabled**|disabled)

	Enabled sound channel 8.
	
	It's best to keep this core option enabled.
	
- **Crop overscan** [snes9x_overscan] (**auto**|enabled|disabled)

	Crop out the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.
	
??? note "Crop overscan - On"
	![](..\image\core\snes9x\crop_on.png)
	
??? note "Crop overscan - Off"
	![](..\image\core\snes9x\crop_off.png)	
	
- **Preferred aspect ratio** [snes9x_aspect] (**auto**|ntsc|pal|4:3)

	Choose the preferred aspect ratio. RetroArch's aspect ratio must be set to Core provided in the Video seetings.
	
??? note "Preferred aspect ratio - ntsc"
	![](..\image\core\snes9x\ntsc.png)
	
??? note "Preferred aspect ratio - pal"
	![](..\image\core\snes9x\pal.png)

??? note "Preferred aspect ratio - 4:3"
	![](..\image\core\snes9x\4by3.png)	

## User 1 device types

The Snes9x core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Doesn't disable input.
- **[SNES Joypad](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller)** - Joypad
- [SNES Mouse](https://en.wikipedia.org/wiki/Super_NES_Mouse) - Mouse
- [Multitap](http://nintendo.wikia.com/wiki/Super_Multitap) - Joypad - Allows for up to five players to play together in multitap games.

## User 2 device types

- None - Doesn't disable input.
- **[SNES Joypad](http://nintendo.wikia.com/wiki/Super_Nintendo_Entertainment_System_controller)** - Joypad
- [SNES Mouse](https://en.wikipedia.org/wiki/Super_NES_Mouse) - Mouse
- [Multitap](http://nintendo.wikia.com/wiki/Super_Multitap) - Joypad - Allows for up to five players to play together in mulitap games.
- [SuperScope](https://en.wikipedia.org/wiki/Super_Scope) - Lightgun
- [Justifier](https://en.wikipedia.org/wiki/Konami_Justifier) - Lightgun

## Multitap

Activating multitap support in compatible games can be configured by switching to the 'Multitap' device type for the corresponding users.

## Joypad

![](../image/controller/snes.png)

| RetroPad Inputs                                | User 1 - 5 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | B                            |                    
| ![](../image/retropad/retro_y.png)             | Y                            |
| ![](../image/retropad/retro_select.png)        | Select                       |
| ![](../image/retropad/retro_start.png)         | Start                        |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  |
| ![](../image/retropad/retro_a.png)             | A                            |
| ![](../image/retropad/retro_x.png)             | X                            |
| ![](../image/retropad/retro_l1.png)            | L                            |
| ![](../image/retropad/retro_r1.png)            | R                            |

## Mouse

| RetroMouse Inputs                                     | SNES Mouse              |
|-------------------------------------------------------|-------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | SNES Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | SNES Mouse Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | SNES Mouse Right Button |

## Lightgun

| RetroLightgun Inputs                                   | SuperScope           | Justifier           |
|--------------------------------------------------------|----------------------|---------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | SuperScope Crosshair | Justifier Crosshair |
| Gun Trigger                                            | SuperScope Trigger   | Justifier Trigger   |
| Gun Aux A                                              | SuperScope Cursor    |                     |
| Gun Aux B                                              | SuperScope Turbo     | Justifier Offscreen |
| Gun Start                                              | SuperScope Pause     | Justifier Start     |

## Compatibility

!!! attention
	The Snes9x core can launch some Satellaview games with sometimes low compatibility.

| Game                                             | Issue                                                                                |
|--------------------------------------------------|--------------------------------------------------------------------------------------|
| A.S.P. Air Strike Patrol                         | The shadow below the aircraft is missing. Glitched graphics on the briefing screens. |
| BS-Zelda MottZilla Patch                         | Only shows a black screen.                                                           |
| Doom                                             | Colored dots appear during gameplay.                                                 |
| Funaki Masakatsu Hybrid Wrestler – Tougi Denshou | Corrupted graphics on the Pancrase logo screen.                                      |
| Hayazashi Nidan Morita Shougi 2                  | Matches won’t start.                                                                 |
| Mecarobot Golf                                   | The ground "wobbles" during gameplay.                                                |
| Secret of Evermore (PAL versions)                | Randomly freezes when the background music changes.                                  |
| Speedy Gonzales: Los Gatos Bandidos              | Freezes when pressing a switch in the last level.                                    |

## External Links

- [Official Snes9x Website (no longer updated)](http://www.snes9x.com/)
- [Official Snes9x Github Repository](https://github.com/snes9xgit/snes9x)
- [Official Upstream Snes9x Downloads](http://www.s9x-w32.de/dl/)
- [Alternate Official Upstream Snes9x Downloads](https://sites.google.com/site/bearoso/)
- [Libretro Snes9x Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/snes9x_libretro.info)
- [Libretro Snes9x Github Repository](https://github.com/libretro/snes9x)
- [Report Libretro Snes9x Core Issues Here](https://github.com/libretro/snes9x/issues)

## Nintendo - Super Nintendo Entertainment System (+ Hacks)

- [Nintendo - SNES / Famicom (Beetle bsnes)](https://docs.libretro.com/library/beetle_bsnes/)
- [Nintendo - SNES / Famicom (bsnes-mercury Accuracy)](https://docs.libretro.com/library/bsnes_mercury_accuracy/)
- [Nintendo - SNES / Famicom (bsnes-mercury Balanced)](https://docs.libretro.com/library/bsnes_mercury_balanced/)
- [Nintendo - SNES / Famicom (bsnes-mercury Performance)](https://docs.libretro.com/library/bsnes_mercury_performance/)
- [Nintendo - SNES / Famicom (bsnes Accuracy)](https://docs.libretro.com/library/bsnes_accuracy/)
- [Nintendo - SNES / Famicom (bsnes Balanced)](https://docs.libretro.com/library/bsnes_balanced/)
- [Nintendo - SNES / Famicom (bsnes C++98 (v085))](https://docs.libretro.com/library/bsnes_cplusplus98/)
- [Nintendo - SNES / Famicom (bsnes Performance)](https://docs.libretro.com/library/bsnes_performance/)
- [Nintendo - SNES / Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [Nintendo - SNES / Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)
- [Nintendo - SNES / Famicom (Snes9x 2002)](https://docs.libretro.com/library/snes9x_2002/)
- [Nintendo - SNES / Famicom (Snes9x 2005 Plus)](https://docs.libretro.com/library/snes9x_2005_plus/)
- [Nintendo - SNES / Famicom (Snes9x 2005)](https://docs.libretro.com/library/snes9x_2005/)
- [Nintendo - SNES / Famicom (Snes9x 2010)](https://docs.libretro.com/library/snes9x_2010/)