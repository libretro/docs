# Nintendo - NES / Famicom (QuickNES)

## Background

Nes_Emu, the core NES emulator library used by QuickNES, began as a very simple NES emulator sometime in 2004. It was based on the 6502 CPU core and APU sound core used in the Game_Music_Emu sound engine.

The QuickNES core has been authored by

- blargg
- kode54

The QuickNES core is licensed under

- [LGPLv2.1+](https://github.com/kode54/QuickNES/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the QuickNES core have the following file extensions:

- .nes

RetroArch database(s) that are associated with the QuickNES core:

- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)

## Features

Frontend-level settings or features that the QuickNES core respects.

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The QuickNES core's library name is 'QuickNES'

The QuickNES core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The QuickNES core's core provided FPS is 60
- The QuickNES core's core provided sample rate is 44100 Hz
- The QuickNES core's base width is 256
- The QuickNES core's base height is 240
- The QuickNES core's max width is 256
- The QuickNES core's max height is 240
- The QuickNES core's core provided aspect ratio is 4/3 when the 'Aspect Ratio' core option is set to 4/3
- The QuickNES core's core provided aspect ratio is 8/7 when the 'Aspect Ratio' core option is set to 8/7

## Core options

The QuickNES core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Aspect ratio** [quicknes_aspect_ratio_par] (**PAR**|4:3)

	Configure QuickNES's core provided aspect ratio.
	
- **Show horizontal overscan** [quicknes_use_overscan_h] (**enabled**|disabled)

	Set this to disabled to crop out (horizontally) the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.
	
- **Show vertical overscan** [quicknes_use_overscan_v] (**disabled**|enabled)

	Set this to disabled to crop out (vertically) the potentially random glitchy video output that would have been hidden by the bezel around the edge of a standard-definition television screen.
	
- **No sprite limit** [quicknes_no_sprite_limit] (**enabled**|disabled)

	Reduce sprite flickering when enabled.
	
## Joypad

![](../image/Controller/nes.png)

| User 1 - 2 input descriptors | RetroPad Inputs                             |
|------------------------------|---------------------------------------------|
| B                            | ![](../image/retropad/retro_b.png)          |
| Select                       | ![](../image/retropad/retro_select.png)     |
| Start                        | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png) |
| A                            | ![](../image/retropad/retro_a.png)          |

## Compatibility

| Game                          | Issue                                                                    |
|-------------------------------|--------------------------------------------------------------------------|
| Burai Fighter                 | Softlocks when entering a level.                                         |
| Crisis Force                  | Crashes on start.                                                        |
| Family Circuit '91            | Crashes on start.                                                        |
| Gradius II                    | Crashes on start.                                                        |
| Huge Insect                   | No enemies spawn.                                                        |
| Lagrange Point                | Crashes on start.                                                        |
| Mickey's Safari in Letterland | Graphical glitches on the sides of the screen and on the status bar. (1) |
| Ms. Pac-Man (Tengen version)  | Graphical glitches on the sides of the screen.                           |
| Skull & Crossbones            | Crashes on start.                                                        |

??? note "(1)"
    ![](../image/core/quicknes/mickey.png)

## External Links

- [Official QuickNES Github Repository](https://github.com/kode54/QuickNES)
- [Libretro QuickNES Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/quicknes_libretro.info)
- [Libretro QuickNES Github Repository](https://github.com/libretro/QuickNES_Core)
- [Report Libretro QuickNES Core Issues Here](https://github.com/libretro/QuickNES_Core/issues)

### See also

#### Nintendo - Nintendo Entertainment System

- [Nintendo - NES / Famicom (bnes)](https://docs.libretro.com/library/bnes/)
- [Nintendo - NES / Famicom (Emux NES)](https://docs.libretro.com/library/emux_nes/)
- [Nintendo - NES / Famicom (FCEUmm)](https://docs.libretro.com/library/fceumm/)
- [Nintendo - NES / Famicom (Mesen)](https://docs.libretro.com/library/mesen/)
- [Nintendo - NES / Famicom (Nestopia UE)](https://docs.libretro.com/library/nestopia_ue/)