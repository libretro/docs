# MAME 2003-Plus

## Background

MAME 2003-Plus (also referred to as MAME 2003+ and mame2003-plus) is a libretro arcade system emulator core with an emphasis on high performance and broad compatibility with mobile devices, single board computers, embedded systems, and similar platforms.

In order to take advantage of the performance and lower hardware requirements of an earlier MAME architecture, MAME 2003-Plus began with the MAME 2003 codebase which is itself derived from xmame 0.78. Upon that base, MAME 2003-Plus contributors have backported support for more than an additional 350 games, as well as other functionality not originally present in the underlying codebase.

Author(s): MAMEdev, MAME 2003-Plus team, et al (see [LICENSE.md](https://raw.githubusercontent.com/libretro/mame2003-plus-libretro/master/LICENSE.md) and [CHANGELOG.md](https://raw.githubusercontent.com/libretro/mame2003-plus-libretro/master/CHANGELOG.md))

## Contribute to this documentation

In order to propose improvements to this document, [visit it's corresponding source page on github](https://github.com/libretro/docs/blob/master/docs/library/mame2003-plus.md). Changes are proposed using "Pull Requests."

## See also

[MAME 2003](https://docs.libretro.com/library/mame_2003/)

## License

[MAME Non-Commercial](https://raw.githubusercontent.com/libretro/mame2003-libretro/master/LICENSE.md)

## Extensions

zip

## Building romsets for MAME 2003-Plus

**MAME 2003-Plus was originally built from the MAME 0.78 codebase, meaning that 95% or more of MAME 0.78 romsets will work as-is in MAME 2003-Plus, where they immediately benefit from its bugfixes and other improvements.** In order to play the new games and games which received ROM updates in MAME 2003-Plus, you will need to find or build the correct romsets.

> **What is a romset?**
> Arcade games are packaged as zip files, most of which are composed of more than one individual 'ROM' files. That is why some resources refer to an individual arcade game as a ROM (like people use to describe a zipped game cartridge ROM) while other resources refer to an individual game as a ROM set, ROMset, or romset.

MAME 2003-Plus has the ability to generate an XML "DAT" file directly from the [MAME menu](#MAME-menu).

### Step 1: Obtaining an XML DAT

DAT files describe the exact ROM contents that the emulator needs including filenames, file sizes, and checksums to verify contents are not incorrect or corrupt. mame2003-plus has the ability to generate an XML "DAT" file from the MAME Menu. When `mame_keyboard` input is enabled, you can enter the MAME menu by pressing the `Tab` key. With any input mode, you can also access the MAME menu by turning it on as a core option.

### Step 2: Finding a source for ROMs
A complete MAME 0.78 romset and CHD collection along with a complete MAME 0.139 romset collection together include nearly all ROMs needed to rebuild a complete collection of MAME 2003-Plus romsets. That being said, there is also support for hack, homebrew, and public domain arcade romsets from HBMAME as well as support for recent NeoGeo UniBIOS releases.

In order to build a complete MAME 2003-Plus collection, the ideal ingredients are:
* The most recent MAME full romset collection
* MAME 0.78 CHD collection
* The most recent HBMAME full romset collection
* The MAME "Rollback" romset collection
* The NeoGeo UniBIOS 3.3, freely available at http://unibios.free.fr/

### Step 3: Building MAME 2003-Plus romsets
Refer to [Validating, Rebuilding, and Filtering ROM Collections](https://github.com/RetroPie/RetroPie-Setup/wiki/Validating,-Rebuilding,-and-Filtering-ROM-Collections) for details on how to configure ClrMamePro to use your sources as "rebuild" folders.

We recommend the "Full Non-Merged" format, where each romset zip files includes all the files needed to run each game, including any ROMs from 'parent' ROM sets and BIOS sets. To configure ClrMamePro to validate or rebuild a Full Non-Merged collection, use "Non-Merged" mode and disable "Separate BIOS Sets" from the "Advanced" menu in both ClrMamePro's Rebuild and Scanner menus.

#### WORD TO THE WISE ABOUT CLRMAMEPRO SETTINGS
ClrMamePro remains the most popular tool for rebuilding MAME romsets, at least for now. That said, ClrMamePro is focused on supporting more recent MAME versions so there are at least two things to know if you are using ClrMamePro to generate a mame2003-plus set:

1. If you are scanning CHDs, go to `Settings` -> `Compressor` -> `CHDMan` tab and change `Req. CHD Version` to `3`.
2. If you are using the suggested setting of `Disable Separate BIOS Sets` then ClrMamePro will report the BIOS romset files as missing even though you told the program you don't want them. mame2003-plus incorporates 15 different kinds of BIOS romsets, so it is normal to see a ClrMamePro message like this after a clean and complete scan: `You are missing 15 of 4831 known mame2003-plus.xml sets (+ BIOS sets)`

### Sourcing CHDs

MAME 2003-Plus uses exactly the same MAME 0.78 CHDs (CHD v3) as MAME 2003. 

### Sourcing Samples

Generally MAME 2003-Plus uses the same samples as mame2003 however there are some exceptions. It should also be mentioned that the new CD soundtrack samples are not circulated as part of any common packs.

Sample sourcing docs are a work in progress.

## BIOS

BIOS romsets are not needed when using "Full Non-Merged" arcade romsets. For "Split" and "Non-Merged" romsets, place the BIOS in the same directory as the game romset.

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | game-dependent |
| Rewind            | ✔         |
| Netplay           | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✔         |
| Controllers       | ✔         |
| Multi-Mouse       | ✔         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |

### Core options

The first value listed for the core option represents the default. "Restart" indicates that the core must be restarted in order for changes to that option to take effect.

* **Frameskip**: `0|1|2|3|4|5`
* **Input interface**: `retropad|mame_keyboard|simultaneous`
* **RetroPad Layout**: `modern|SNES|MAME classic`
* **Mouse Device**: `mouse|pointer|disabled` - Switch between mouse (e.g. hardware mouse, trackball, etc), pointer (touchpad, touchscreen, lightgun, etc), or disabled. Defaults to `pointer` in iOS.
* **Show Lightgun crosshair**: `enabled|disabled`
* **Display MAME menu** `disabled|enabled`
* **Brightness**: `1.0|0.2|0.3|0.4|0.5|0.6|0.7|0.8|0.9|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0`
* **Gamma correction**: `1.2|0.5|0.6|0.7|0.8|0.9|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0`
* **Use Backdrop artwork** (Restart): `disabled|enabled`
* **Specify BIOS region** (Restart): `default|asia|asia-aes|debug|europe|europe_a|japan|japan_a|japan_b|taiwan|us|us_a|uni-bios.10|uni-bios.11|uni-bios.13|uni-bios.20`
* **Share 2 player dial controls across one X/Y device**: `disabled|enabled` - Some dial/spinner hardware are actually one device with one axis for each player. This supports that setup, by invisibly breaking down the normal mouse x/y into two separate inputs.
* **Dual Joystick Mode (Players 1 & 2)**: `disabled|enabled` - Player 1 uses Joysticks 1 & 2, Player 2 uses Joysticks 3 & 4
* **Right Stick to Buttons**: `enabled|disabled` - Invisibly remap the RetroPad's right analog stick to serve as buttons
* **TATE Mode**: `disabled|enabled` - Enable if rotating display for vertically oriented games (Pac-Man, Galaga, etc). Requires `video_allow_rotate = "false"` cfg setting in RetroArch.
* **EXPERIMENTAL: Vector resolution multiplier**: (Restart) `1|2|3|4|5|6`
* **EXPERIMENTAL: Vector antialias**: `disabled|enabled`
* **Vector translucency**: `enabled|disabled`
* **EXPERIMENTAL: Vector beam width**: `1|2|3|4|5`
* **Vector flicker**: `20|0|10|20|30|40|50|60|70|80|90|100`,
* **Vector intensity**: `1.5|0.5|1|2|2.5|3`
* **EXPERIMENTAL: Skip ROM verification**: (Restart) `disabled|enabled`
* **Sample Rate (KHz)**: `48000|8000|11025|22050|44100` - Change this manually only for specific reasons. The audio sample rate has far-reaching consequences.
* **MK2/MK3 DCS Speedhack**: `enabled|disabled` - Speedhack for the Midway sound hardware used in Mortal Kombat 2, 3 and others. Improves performance in these games.
* **Skip Warnings**: `disabled|enabled`

# Input system, controls, and options

mame2003-plus emulates thousands of games, many of which have unique control layouts. These games are emulated on more than a thousand variations of arcade hardware. The purpose of the input system is to communicate input from the user's physical controls through the libretro frontend, the mame2003-plus emulator core, and into the emulated game itself.

No system of default input mappings can address the full range of emulated games and supported controls. Some degree of per-game customization should ways be expected. However, to the extent possible it is also within the purpose of the mame2003-plus input system to attempt to provide predictable and meaningful defaults for input across this wide range.

## Default RetroPad Layouts

### Gamepad
The `gamepad` layout sets mame2003-plus to the same input configration as Final Burn Alpha (FBA). This layout is the fight stick and pad layout popularized by Street Fighter IV and assumes an 8+ button controller. Gamepad can also serve as an alternative Xbox/PSX-style layout for Street Fighter 2. https://github.com/libretro/mame2003-plus-libretro/blob/master/metadata/wipcontrols/modern.png

## 6-Button
6 button is a layout for SNES-type RetroPad controls as well as 6-button arcade panels arcade panels that are mapped like this: https://github.com/libretro/mame2003-plus-libretro/blob/master/metadata/wipcontrols/snesmapping.png

## 8-Button
8 button is a layout for an arcade panel that is configured like this: https://github.com/libretro/mame2003-plus-libretro/blob/master/metadata/wipcontrols/10PANEL.png

### Classic
The `classic` layout has the same mapping as Final Burn Alpha's "classic" mapping -- both of which are based on mainline MAME's default Xbox 360 controller layout. This layout is not a good match for 6-button fighters, but may suit other games.

## Keyboard Input
`mame_keyboard` sets the core to process keyboard input directly through the legacy "MAME" keyboard interface. Use this input mode only if your input device is seen as a keyboard, including some arcade control panel hardware.

## Mouse/Trackball/Analog Controller support

MAME 2003-Plus has support for multiple mice or touch devices in games that support trackballs, etc.

MAME 2003-Plus also supports one or two spinners/dials via the "Share 2 player dial controls across one X/Y device" core option.

By default, mice/trackballs and analog sticks (the left one, for controllers with 2) are supported in games that would have them, or equivalents. For example, Centipede supports the mouse/trackball, and Afterburner supports the stick. Lightgun games are supported by either. The left and right mouse buttons can be bound to fire/etc using the MAME menu.

### Pointer/Trackpad/Touchscreen support

Absolute pointer devices are supported, but need to be turned on via a setting in the retroarch-core-options.cfg file.

mame2003-plus-mouse_device = "pointer"

### 2 player dial/spinner devices

2 player spinner/dial devices can be represented as 1 device with 2 axes. MAME 2003-Plus can be configured to share this device across both players: Player 1 = X axis, Player 2 = Y axis. This can be enabled via a setting in the retroarch-core-options.cfg file, found in:

mame2003--plus-dialsharexy = "enabled"
NOTE: This will disable Mouse support.

-----------

## Directories

* Some games require data from an internal hard drive, CD-ROM, laserdisk, or other media in order to be emulated -- those forms of media are packaged as CHD files. CHD files should be copied to subfolders within the folder where the romset zips have been installed. e.g.:
```
/libretro content dir/blitz/blitz.chd
```
* Some games require an additional zip file with recorded sounds or music in order for audio to work correctly. Audio 'sample' files should be placed in subdirectories within `/libretro system dir/mame2003/` e.g.:
```
/libretro system dir/mame2003-plus/samples/
```
* High score, cheat, and history metadata files should be moved from github's [`/libretro/mame2003-plus-libretro/tree/master/metadata`](https://github.com/libretro/mame2003-plus-libretro/tree/master/metadata) and placed within `/libretro system dir/mame2003-plus/` e.g.:
```
/libretro system dir/mame2003-plus/hiscore.dat
/libretro system dir/mame2003-plus/cheat.dat
/libretro system dir/mame2003-plus/history.dat
```
* User-generated content is placed in sub-directories within `/libretro savefile dir/mame2003-plus/` e.g.:
```
/libretro savefile dir/mame2003-plus/diff/
/libretro savefile dir/mame2003-plus/nvram/
/libretro savefile dir/mame2003-plus/hi/
/libretro savefile dir/mame2003-plus/cfg/
/libretro savefile dir/mame2003-plus/memcard/
```

## MAME 2003-Plus Features

### MAME menu

In MAME 2003-Plus, the MAME menu can be accessed users by enabling it in the core options. If your input mode is set to allow input to the `mame_keyboard` interface, you can also enter the menu by pressing the `Tab` key. Note: If you rebind MAME global inputs ('Input (general)'), it will update a file in  ``` /libretro savefile dir/mame2003-plus/cfg/ ```   **default.cfg**.

### Service menu

MAME 2003 can ability to access games' internal service menus to set permanent game options. This allows you to, for example, configure a game to be 'free play' (no need to insert coins). As with MAME 2003, due to current limitations in the core, the service button by pressing `F2` with a keyboard. You must be in MAME 2003-Plus's `mame_keyboard` or `simultaneous` input mode when you press `F2`. After changing options in the service mode, the game's internal memory will be stored to an .nv file in: ``` /libretro savefile dir/mame2003-plus/nvram/ ```

### Dip-switches

Similarly to the [Service menu](#service-menu), many arcade games had hardware switches for arcade owners to modify certain parameters. These can be adjust by accessing the MAME menu and selecting the '**Dip Switches**' option.

### High scores

When high scores are saved, they are either stored as NVRAM data in ``` libretro system dir/mame2003-plus/nvram/ ```or as hiscore data in: ``` libretro system dir/mame2003-plus/hi/ ```

### Save states

MAME 2003-Plus supports save states for many, but not all games.

### Cheats

MAME 2003-Plus supports the MAME cheat engine, allowing you to use the MAME menu to enable various in-game cheats. To active these, there is a necessary supplementary file called `cheat.dat`. This file can be [downloaded from the MAME 2003-Plus 'metadata' repository](https://github.com/libretro/mame2003-plus-libretro/tree/master/metadata). Place `cheat.dat` in: ``` libretro system dir/mame2003-plus/ ``` 

Additionally, the 'enabled cheats' core option needs to be turned on. This option is is called: ``` mame2003-plus-cheats = "enabled" ```

-----------

## External Links

* [MAME 2003-Plus Github Repository](https://github.com/libretro/mame2003-plus-libretro)
