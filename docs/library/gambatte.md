# Nintendo - Game Boy / Color (Gambatte)

## Background

Gambatte is an accuracy-focused, open-source, cross-platform Game Boy Color emulator written in C++. It is based on hundreds of corner case hardware tests, as well as previous documentation and reverse engineering efforts.

The Gambatte core has been authored by

- Sinamas

The Gambatte core is licensed under

- [GPLv2](https://github.com/libretro/gambatte-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	The ['Use official bootloader' core option](https://docs.libretro.com/library/gambatte#core-options) must be set to On in order for these BIOS files to be used.

| Filename     | Description                    | md5sum                           |
|:------------:|:------------------------------:|:--------------------------------:|
| gb_bios.bin  | Game Boy BIOS - Optional       | 32fbbd84168d3482956eb3c5051637f5 |
| gbc_bios.bin | Game Boy Color BIOS - Optional | dbfce9db9deaa2567f6a84fde55f9680 |

## Extensions

Content that can be loaded by the Gambatte core have the following file extensions:

- .gb
- .gbc
- .dmg

RetroArch database(s) that are associated with the Gambatte core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

## Features

Frontend-level settings or features that the Gambatte core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
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

## Directories

The Gambatte core's library name is 'Gambatte'

The Gambatte core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

***Frontend's System directory**

| File                        | Description             |
|:---------------------------:|:-----------------------:|
| palettes/Default.pal        | Global custom palette   |
| palettes/'content-name'.pal | Per-game custom palette |

## Geometry and timing

- The Gambatte core's core provided FPS is 59.7275005696
- The Gambatte core's core provided sample rate is [Sample rate]
- The Gambatte core's base width is [Base width]
- The Gambatte core's base height is [Base height]
- The Gambatte core's max width is [Max width]
- The Gambatte core's max height is [Max height]
- The Gambatte core's core provided aspect ratio is [Aspect ratio]

## Custom palettes for Game Boy games

The 'GB Colorization' core option must be set to custom.

Create a folder called "palettes" in RetroArch's system directory. Then, you can place custom palette files (.pal) inside the "palettes" folder

You can define different palettes for specific games by creating a .pal file in the "palettes" folder with 'INTERNALROMNAME.pal' or "rom-name.pal". If no specific palette is found for a ROM then the default palette is used.

You can also define a palette to be used for all Game Boy games by creating a .pal file in the "palettes" folder named "Default.pal"

??? note "*Custom palettes can be created from the GUI in standalone Gambatte*"
    ![](..\image\core\gambatte\tool.png)

## Core options

The Gambatte core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Allow Opposing Directions** [gambatte_up_down_allowed] (**disabled**/enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time. 
	
	This may cause movement based glitches to occur in certain games.
	
	It's best to keep this core option disabled.

- **GB Colorization** [gambatte_gb_colorization] (**disabled**|auto|GBC|SGB|internal|custom)

	Enables colorization of Game Boy games, using pre-defined or user-selected color palettes.
	
	'auto': Selects automatically the 'best' (most colorful/appropriate) palette for each individual game, using the following order of preference:
	
	   1. Game-specific Super Game Boy palette, if defined and more colorful than game-specific Game Boy Color palette.
	   
	   2. Game-specific Game Boy Color palette, if defined.
	   
	   3. Game-specific Super Game Boy palette, if defined.
	   
	   4. Palette specified by 'Internal Palette' core option.
	   
	'GBC': Selects game-specific Game Boy Color palette, if defined. If not, falls back to the Game Boy Color hardware default palette of 'GBC - Dark Green'.
	
	'SGB': Selects game-specific Super Game Boy palette, if defined. If not, falls back to the Super Game Boy hardware default palette of 'SGB - 1A'.
	
	'internal': Selects palette specified by 'Internal Palette' core option.
	
	'custom': Loads user-created palettes from RetroArch's system directory, as described in the 'Custom palettes for Game Boy games' section.

??? note "*GB Colorization: Off*"
    ![](..\image\core\gambatte\color_off.png)

??? note "*GB Colorization: auto (in this case, a game-specific SGB palette is auto-selected)*"
    ![](..\image\core\gambatte\color_auto.png)

??? note "*GB Colorization: GBC*"
    ![](..\image\core\gambatte\color_gbc.png)

- **Internal Palette** [gambatte_gb_internal_palette] (**GB - DMG**|GB - Pocket|GB - Light|GBC - Blue|GBC - Brown|GBC - Dark Blue|GBC - Dark Brown|GBC - Dark Green|GBC - Grayscale|GBC - Green|GBC - Inverted|GBC - Orange|GBC - Pastel Mix|GBC - Red|GBC - Yellow|SGB - 1A|SGB - 1B|SGB - 1C|SGB - 1D|SGB - 1E|SGB - 1F|SGB - 1G|SGB - 1H|SGB - 2A|SGB - 2B|SGB - 2C|SGB - 2D|SGB - 2E|SGB - 2F|SGB - 2G|SGB - 2H|SGB - 3A|SGB - 3B|SGB - 3C|SGB - 3D|SGB - 3E|SGB - 3F|SGB - 3G|SGB - 3H|SGB - 4A|SGB - 4B|SGB - 4C|SGB - 4D|SGB - 4E|SGB - 4F|SGB - 4G|SGB - 4H|Special 1|Special 2|Special 3)

	Selects the internal color palette to use for colorizing Game Boy games when the 'GB Colorization' core option is set to 'internal', or when the 'GB Colorization' core option is set to 'auto' and a game has no pre-defined Super Game Boy/Game Boy Color palette.
	
	'GB' palettes mimic the display characteristics of original Game Boy hardware.
	
	'GBC' palettes are identical to those used by original Game Boy Color hardware when colorizing Game Boy games.
	
	'SGB' palettes are identical to those used by original Super Game Boy hardware when colorizing Game Boy games.

??? note "*Internal Palette: GB - DMG*"
    ![](..\image\core\gambatte\gb_dmg.png)

??? note "*Internal Palette: GB - Pocket*"
    ![](..\image\core\gambatte\gb_pocket.png)

??? note "*Internal Palette: GB - Light*"
    ![](..\image\core\gambatte\gb_light.png)

??? note "*Internal Palette: GBC - Blue*"
    ![](..\image\core\gambatte\gbc_blue.png)

??? note "*Internal Palette: GBC - Brown*"
    ![](..\image\core\gambatte\gbc_brown.png)

??? note "*Internal Palette: GBC - Dark Blue*"
    ![](..\image\core\gambatte\gbc_dark_blue.png)

??? note "*Internal Palette: GBC - Dark Brown*"
    ![](..\image\core\gambatte\gbc_dark_brown.png)

??? note "*Internal Palette: GBC - Dark Green*"
    ![](..\image\core\gambatte\gbc_dark_green.png)

??? note "*Internal Palette: GBC - Grayscale*"
    ![](..\image\core\gambatte\gbc_grayscale.png)

??? note "*Internal Palette: GBC - Green*"
    ![](..\image\core\gambatte\gbc_green.png)

??? note "*Internal Palette: GBC - Inverted*"
    ![](..\image\core\gambatte\gbc_inverted.png)

??? note "*Internal Palette: GBC - Orange*"
    ![](..\image\core\gambatte\gbc_orange.png)

??? note "*Internal Palette: GBC - Pastel Mix*"
    ![](..\image\core\gambatte\gbc_pastel.png)

??? note "*Internal Palette: GBC - Red*"
    ![](..\image\core\gambatte\gbc_red.png)

??? note "*Internal Palette: GBC - Yellow*"
    ![](..\image\core\gambatte\gbc_yellow.png)

??? note "*Internal Palette: SGB - 1A*"
    ![](..\image\core\gambatte\sgb_1a.png)

??? note "*Internal Palette: SGB - 1B*"
    ![](..\image\core\gambatte\sgb_1b.png)

??? note "*Internal Palette: SGB - 1C*"
    ![](..\image\core\gambatte\sgb_1c.png)

??? note "*Internal Palette: SGB - 1D*"
    ![](..\image\core\gambatte\sgb_1d.png)

??? note "*Internal Palette: SGB - 1E*"
    ![](..\image\core\gambatte\sgb_1e.png)

??? note "*Internal Palette: SGB - 1F*"
    ![](..\image\core\gambatte\sgb_1f.png)

??? note "*Internal Palette: SGB - 1G*"
    ![](..\image\core\gambatte\sgb_1g.png)

??? note "*Internal Palette: SGB - 1H*"
    ![](..\image\core\gambatte\sgb_1h.png)

??? note "*Internal Palette: SGB - 2A*"
    ![](..\image\core\gambatte\sgb_2a.png)

??? note "*Internal Palette: SGB - 2B*"
    ![](..\image\core\gambatte\sgb_2b.png)

??? note "*Internal Palette: SGB - 2C*"
    ![](..\image\core\gambatte\sgb_2c.png)

??? note "*Internal Palette: SGB - 2D*"
    ![](..\image\core\gambatte\sgb_2d.png)

??? note "*Internal Palette: SGB - 2E*"
    ![](..\image\core\gambatte\sgb_2e.png)

??? note "*Internal Palette: SGB - 2F*"
    ![](..\image\core\gambatte\sgb_2f.png)

??? note "*Internal Palette: SGB - 2G*"
    ![](..\image\core\gambatte\sgb_2g.png)

??? note "*Internal Palette: SGB - 2H*"
    ![](..\image\core\gambatte\sgb_2h.png)

??? note "*Internal Palette: SGB - 3A*"
    ![](..\image\core\gambatte\sgb_3a.png)

??? note "*Internal Palette: SGB - 3B*"
    ![](..\image\core\gambatte\sgb_3b.png)

??? note "*Internal Palette: SGB - 3C*"
    ![](..\image\core\gambatte\sgb_3c.png)

??? note "*Internal Palette: SGB - 3D*"
    ![](..\image\core\gambatte\sgb_3d.png)

??? note "*Internal Palette: SGB - 3E*"
    ![](..\image\core\gambatte\sgb_3e.png)

??? note "*Internal Palette: SGB - 3F*"
    ![](..\image\core\gambatte\sgb_3f.png)

??? note "*Internal Palette: SGB - 3G*"
    ![](..\image\core\gambatte\sgb_3g.png)

??? note "*Internal Palette: SGB - 3H*"
    ![](..\image\core\gambatte\sgb_3h.png)

??? note "*Internal Palette: SGB - 4A*"
    ![](..\image\core\gambatte\sgb_4a.png)

??? note "*Internal Palette: SGB - 4B*"
    ![](..\image\core\gambatte\sgb_4b.png)

??? note "*Internal Palette: SGB - 4C*"
    ![](..\image\core\gambatte\sgb_4c.png)

??? note "*Internal Palette: SGB - 4D*"
    ![](..\image\core\gambatte\sgb_4d.png)

??? note "*Internal Palette: SGB - 4E*"
    ![](..\image\core\gambatte\sgb_4e.png)

??? note "*Internal Palette: SGB - 4F*"
    ![](..\image\core\gambatte\sgb_4f.png)

??? note "*Internal Palette: SGB - 4G*"
    ![](..\image\core\gambatte\sgb_4g.png)

??? note "*Internal Palette: SGB - 4H*"
    ![](..\image\core\gambatte\sgb_4h.png)

??? note "*Internal Palette: Special 1*"
    ![](..\image\core\gambatte\special1.png)

??? note "*Internal Palette: Special 2*"
    ![](..\image\core\gambatte\special2.png)

??? note "*Internal Palette: Special 3*"
    ![](..\image\core\gambatte\special3.png)
	
- **Color correction** [gambatte_gbc_color_correction] (**GBC only**|always|disabled)

	Enables adjustment of output colors to match the display characteristics of the LCD panel used in original Game Boy Color hardware.
	
	'GBC only': Color correction is only applied when playing Game Boy Color games, or when using a Game Boy Color palette to colorize a Game Boy game.
	
	'always': Color correction is always applied, regardless of which color palette is being used.

!!! attention
	Setting this option to 'always' will result in unexpected/suboptimal output when using 'GB' or 'SGB' internal color palettes, since these are intended for display on a normal TV/monitor rather than a Game Boy Color LCD panel.

- **Color correction mode** [gambatte_gbc_color_correction_mode] (**accurate**|fast)

	Specifies the method to use when performing color correction.
	
	'accurate': Provides a very close approximation of the image displayed on a real Game Boy Color LCD panel.
	
	'fast': Darkens colors in a loose approximation of the image displayed on a real Game Boy Color LCD panel. Has negligible performance impact, and may be used on low-end hardware in cases where the 'accurate' method is too slow.

??? note "*Color correction: Off*"
    ![](..\image\core\gambatte\correct_off.png)

??? note "*Color correction: fast*"
    ![](..\image\core\gambatte\correct_fast.png)

??? note "*Color correction: accurate*"
    ![](..\image\core\gambatte\correct_accurate.png)

- **Emulated hardware (restart)** [gambatte_gb_hwmode] (**Auto**|GB|GBC|GBA)

	Choose which hardware is emulated Game Boy, Game Boy Color, or Game Boy Advance.

- **Use official bootloader (restart)** [gambatte_gb_bootloader] (**enabled**|disabled)

	Enables support for using official Game Boy and Game Boy Color bootloaders with startup logos. Check the [BIOS section](https://docs.libretro.com/library/gambatte#bios) to see what files are needed.

??? note "*Game Boy bootloader*"
    ![](..\image\core\gambatte\gb_bios.png)

??? note "*Game Boy Color bootloader*"
    ![](..\image\core\gambatte\gbc_bios.png)
	
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

## Joypad

![](../image/controller/gb.png)

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | B                        |
| ![](../image/retropad/retro_select.png)        | Select                   |
| ![](../image/retropad/retro_start.png)         | Start                    |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down               |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left               |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right              |
| ![](../image/retropad/retro_a.png)             | A                        |

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

## Nintendo - Game Boy (+ Color)

- [Nintendo - Game Boy / Color (Emux GB)](https://docs.libretro.com/library/emux_gb/)
- [Nintendo - Game Boy / Color (Gearboy)](https://docs.libretro.com/library/gearboy/)
- [Nintendo - Game Boy / Color (SameBoy)](https://docs.libretro.com/library/sameboy/)
- [Nintendo - Game Boy / Color (TGB Dual)](https://docs.libretro.com/library/tgb_dual/)
- [Nintendo - Game Boy Advance (mGBA)](https://docs.libretro.com/library/mgba/)
- [Nintendo - SNES / Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [Nintendo - SNES / Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)
