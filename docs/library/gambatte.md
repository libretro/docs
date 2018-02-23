# Nintendo - Game Boy / Color (Gambatte)

## Background

Gambatte is an accuracy-focused, open-source, cross-platform Game Boy Color emulator written in C++. It is based on hundreds of corner case hardware tests, as well as previous documentation and reverse engineering efforts.

### Author/License

The Gambatte core has been authored by

- Sinamas

The Gambatte core is licensed under

- [GPLv2](https://github.com/libretro/gambatte-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Gambatte core have the following file extensions:

- .gb
- .gbc
- .dmg

## Databases

RetroArch database(s) that are associated with the Gambatte core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	The ['Use official bootloader' core option](https://docs.libretro.com/library/gambatte#core-options) must be set to On in order for these BIOS files to be used.

| Filename     | Description                    | md5sum                           |
|:------------:|:------------------------------:|:--------------------------------:|
| gb_bios.bin  | Game Boy BIOS - Optional       | 32fbbd84168d3482956eb3c5051637f5 |
| gbc_bios.bin | Game Boy Color BIOS - Optional | dbfce9db9deaa2567f6a84fde55f9680 |

## Features

Frontend-level settings or features that the Gambatte core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔ (not link-cable emulation)         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Gambatte core's internal core name is 'Gambatte'

The Gambatte core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

**Frontend's System directory**

- palettes/Default.pal (Global custom palette)
- palettes/'content-name'.pal (Per-game custom palette)

### Geometry and timing

- The Gambatte core's core provided FPS is (FPS)
- The Gambatte core's core provided sample rate is (Rate)
- The Gambatte core's core provided aspect ratio is (Ratio)

## Custom palettes for Game Boy games

The 'GB Colorization' core option must be set to custom.

Create a folder called "palettes" in RetroArch's system directory. Then, you can place custom palette files (.pal) inside the "palettes" folder

You can define different palettes for specific games by creating a .pal file in the "palettes" folder with 'INTERNALROMNAME.pal' or "rom-name.pal". If no specific palette is found for a ROM then the default palette is used.

You can also define a palette to be used for all Game Boy games by creating a .pal file in the "palettes" folder named "Default.pal"

??? note "*Custom palettes can be created from the GUI in standalone Gambatte*"
    ![](images\Cores\gambatte\tool.png)

## Core options

The Gambatte core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **GB Colorization** [gambatte_gb_colorization] (**disabled**|auto|internal|custom)

	Colorizes Game Boy games.

??? note "*GB Colorization - Off*"
    ![](images\Cores\gambatte\color_off.png)

??? note "*GB Colorization - auto*"
    ![](images\Cores\gambatte\color_auto.png)
	
- **Internal Palette** [gambatte_gb_internal_palette] (**GBC - Blue**|GBC - Brown|GBC - Dark Blue|GBC - Dark Brown|GBC - Dark Green|GBC - Grayscale|GBC - Green|GBC - Inverted|GBC - Orange|GBC - Pastel Mix|GBC - Red|GBC - Yellow|Special 1|Special 2|Special 3)

	Select which internal color palette for GB Colorization is going to be used. GB Colorization must be set to internal.

??? note "*Internal Palette - GBC - Blue*"
    ![](images\Cores\gambatte\blue.png)

??? note "*Internal Palette - GBC - Brown*"
    ![](images\Cores\gambatte\brown.png)

??? note "*Internal Palette - GBC - Dark Blue*"
    ![](images\Cores\gambatte\dark_blue.png)

??? note "*Internal Palette - GBC - Dark Brown*"
    ![](images\Cores\gambatte\dark_brown.png)

??? note "*Internal Palette - GBC - Dark Green*"
    ![](images\Cores\gambatte\dark_green.png)

??? note "*Internal Palette - GBC - Grayscale*"
    ![](images\Cores\gambatte\grayscale.png)

??? note "*Internal Palette - GBC - Green*"
    ![](images\Cores\gambatte\green.png)

??? note "*Internal Palette - GBC - Inverted*"
    ![](images\Cores\gambatte\inverted.png)

??? note "*Internal Palette - GBC - Orange*"
    ![](images\Cores\gambatte\orange.png)

??? note "*Internal Palette - GBC - Pastel Mix*"
    ![](images\Cores\gambatte\pastel.png)

??? note "*Internal Palette - GBC - Red*"
    ![](images\Cores\gambatte\red.png)

??? note "*Internal Palette - GBC - Yellow*"
    ![](images\Cores\gambatte\yellow.png)

??? note "*Internal Palette - GBC - Special 1*"
    ![](images\Cores\gambatte\special1.png)

??? note "*Internal Palette - GBC - Special 2*"
    ![](images\Cores\gambatte\special2.png)

??? note "*Internal Palette - GBC - Special 3*"
    ![](images\Cores\gambatte\special3.png)
	
- **Color correction** [gambatte_gbc_color_correction] (**enabled**|disabled)

	Darkens Game Boy Color games to match the original hardware output.

??? note "*Color Correction - On*"
    ![](images\Cores\gambatte\correct_on.png)

??? note "*Color Correction - Off*"
    ![](images\Cores\gambatte\correct_off.png)
	
- **Emulated hardware (restart)** [gambatte_gb_hwmode] (**Auto**|GB|GBC|GBA)

	Choose which hardware is emulated Game Boy, Game Boy Color, or Game Boy Advance.
	
- **Use official bootloader (restart)** [gambatte_gb_bootloader] (**enabled**|disabled)

	Enables support for using official Game Boy and Game Boy Color bootloaders with startup logos. Check the [BIOS section](https://docs.libretro.com/library/gambatte#bios) to see what files are needed.

??? note "*Game Boy bootloader*"
    ![](images\Cores\gambatte\gb_bios.png)

??? note "*Game Boy Color bootloader*"
    ![](images\Cores\gambatte\gbc_bios.png)
	
- **GameBoy Link Mode** [gambatte_gb_link_mode] (**Not Connected**|Network Server|Network Client)

	Awaiting description.
	
- **Network Link Port** [gambatte_gb_link_network_port] (56400 to 56420 in increments of 1. **56400 is default**.)

	Awaiting description.
	
- **Network link server address part 1 (client only)** [gambatte_gb_link_network_server_ip_octet1] (0 to 255 in increments of 1. **0 is default**.)

	Awaiting description.
	
- **Network link server address part 2 (client only)** [gambatte_gb_link_network_server_ip_octet2] (0 to 255 in increments of 1. **0 is default**.)

	Awaiting description.
	
- **Network link server address part 3 (client only)** [gambatte_gb_link_network_server_ip_octet3] (0 to 255 in increments of 1. **0 is default**.)

	Awaiting description.
	
- **Network link server address part 4 (client only)** [gambatte_gb_link_network_server_ip_octet4] (0 to 255 in increments of 1. **0 is default**.)

	Awaiting description.

## Controllers

The Gambatte core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

![](images/Controllers/gb.png)

| User 1 Remap descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| B                        | ![](images/RetroPad/Retro_B_Round.png)    |
| Select                   | ![](images/RetroPad/Retro_Select.png)     |
| Start                    | ![](images/RetroPad/Retro_Start.png)      |
| D-Pad Up                 | ![](images/RetroPad/Retro_Dpad_Up.png)    |
| D-Pad Down               | ![](images/RetroPad/Retro_Dpad_Down.png)  |
| D-Pad Left               | ![](images/RetroPad/Retro_Dpad_Left.png)  |
| D-Pad Right              | ![](images/RetroPad/Retro_Dpad_Right.png) |
| A                        | ![](images/RetroPad/Retro_A_Round.png)    |

## Compatibility

| Game                                              | Issue                                              |
|---------------------------------------------------|----------------------------------------------------|
| Command Master                                    | Crashes on start. Unemulated MBC7 mapper.          |
| Game Boy Camera                                   | Crashes on start. Unemulated Pocket Camera mapper. |
| Game de Hakken!! Tamagotchi - Osutchi to Mesutchi | Crashes on start. Unemulated TAMA5 mapper.         |
| Kirby Tilt 'n' Tumble                             | Crashes on start. Unemulated MBC7 mapper.          |
| Net de Get: Mini-Game @ 100                       | Crashes on start. Unemulated MBC6 mapper.          |
| Pocket Family GB2                                 | Crashes on start. Unemulated HuC3 mapper.          |
| Robopon: Sun/Star/Moon Version                    | Crashes on start. Unemulated HuC3 mapper.          |

## External Links

- [Official Gambatte Github Repository](https://github.com/sinamas/gambatte)
- [Old Standalone Gambatte builds](https://sourceforge.net/projects/gambatte/files/gambatte/)
- [Libretro Gambatte Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gambatte_libretro.info)
- [Libretro Gambatte Github Repository](https://github.com/libretro/gambatte-libretro)
- [Report Libretro Gambatte Core Issues Here](https://github.com/libretro/gambatte-libretro/issues)

### See also

#### Nintendo - Game Boy (+ Color)

- [Nintendo - Game Boy / Color (Emux GB)](https://docs.libretro.com/library/emux_gb/)
- [Nintendo - Game Boy / Color (Gearboy)](https://docs.libretro.com/library/gearboy/)
- [Nintendo - Game Boy / Color (SameBoy)](https://docs.libretro.com/library/sameboy/)
- [Nintendo - Game Boy / Color (TGB Dual)](https://docs.libretro.com/library/tgb_dual/)
- [Nintendo - Game Boy Advance (mGBA)](https://docs.libretro.com/library/mgba/)
- [Nintendo - SNES / Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [Nintendo - SNES / Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)