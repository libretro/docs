# FinalBurn Neo

## Background

FinalBurn Neo (also referred to as FBNeo or FBN) is a multi-system emulator (Arcade, consoles and computers) under active development, unlike MAME it's more focused on playability and advanced features than accuracy.
It is the follow-up of FinalBurn and FinalBurn Alpha emulators.
The libretro core provides wide compatibility with platforms and features supported by libretro.

!!! Question "Focused on playability ? So FBNeo isn't accurate ?"
    For the most part, it is just as accurate as current MAME, occasionally we even find out a few games are more faithful to the pcb videos. The main difference with MAME is that FBNeo doesn't mind including "quality of life" hacks, while MAME is about absolute preservation. "Quality of life" hacks include things like improving original game's sound, having control alternatives that didn't exist on original cabinet, or dramatically reducing hardware requirements by cutting what we deem as unnecessary corners in the emulation code.

## License and changelog

It's distributed under non-commercial license, see [LICENSE.md](https://github.com/finalburnneo/FBNeo/blob/master/LICENSE.md) and [whatsnew.html](https://github.com/finalburnneo/FBNeo/blob/master/whatsnew.html)

## Extensions

zip, 7z

## Building romsets for FBNeo

Arcade emulation won't work properly without the romsets matching the emulator. FBNeo being an emulator under active development, a given romset might change from time to time to stay in sync with the best dump available for that game. **All of this is to offer you the best gaming experience possible, because older bad dumps can prevent the game from working as it should**.

### Step 1: Obtaining an XML DAT

You can download the dat files for the latest version of the core from the [dats](https://github.com/libretro/FBNeo/tree/master/dats/) directory. Note that some devices (Nintendo 3DS) are running a "light" build with fewer supported games due to memory limitation, the dat files for that build are available from the [light](https://github.com/libretro/FBNeo/tree/master/dats/light/) subdirectory.

### Step 2: Gathering the ingredients

It mostly consists of latest dumps available for MAME.
The other romsets are usually a mix of hacks and homebrews, most of them can be found in HBMAME dumps.
Having an older FBAlpha/FBNeo set among your ingredients will also help a lot.

### Step 3: Building the romsets

Refer to a [clrmamepro tutorial](https://docs.libretro.com/guides/arcade-getting-started/#optional-clrmamepro-tutorial) for details on how to configure ClrMamePro to use your sources as "rebuild" folders.

## Features

| Feature           | Supported |
|-------------------|-----------|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
| Controllers       | ✔         |
| Multi-Mouse       | ✔         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✔         |

## Mapping

We don't have a convenient tool like the MAME OSD, instead we use the retroarch api to customize mappings, you can do that by going into `Quick Menu > Controls`.
For those who don't want to fully customize their mapping, there are 2 convenient presets you can apply by changing the "device type" for a player in this menu :
* **Classic** : it will apply the original neogeo layout from neogeo cd gamepads for neogeo games, and use L/R as 5th and 6th button for 6 buttons games like Street Fighter II.
* **Modern** : it will apply the modern neogeo layout from neogeo arcade stick pro and mini pad for neogeo games, and use R1/R2 as 5th and 6th button for 6 buttons games like Street Fighter II (because it's also their modern layout), this is really convenient with most arcade sticks.

The following "device type" also exist, but they won't be compatible with every games :
* **Mouse (ball only)** : it will use mouse/trackball for analog movements, buttons will stay on retropad
* **Mouse (full)** : same as above, but the buttons will be on the mouse
* **Pointer** : it will use "pointer" device (can be a mouse/trackball) to determine coordinates on screen, buttons will stay on retropad
* **Lightgun** : it will use lightgun to determine coordinates on screen, buttons will be on the lightgun too.

## Emulating consoles and computers

It also requires usage of specific romsets, meaning the rom must have the expected crc/size, and be packaged in an archive with a specific name (the instructions to build those romsets don't differ from arcade's).

You can use specific folder's name for detection, it's the easiest and recommended method, especially if you are using RetroArch playlists or if your device is not compatible with subsystems (android and consoles) :
* CBS ColecoVision : `coleco` | `colecovision`
* Fairchild ChannelF : `chf` | `channelf`
* MSX 1 : `msx` | `msx1`
* Nec PC-Engine : `pce` | `pcengine`
* Nec SuperGrafX : `sgx` | `supergrafx`
* Nec TurboGrafx-16 : `tg16`
* Nintendo Entertainment System : `nes`
* Nintendo Family Disk System : `fds`
* Sega GameGear : `gamegear`
* Sega Master System : `sms` | `mastersystem`
* Sega Megadrive : `megadriv` | `megadrive` | `genesis`
* Sega SG-1000 : `sg1000`
* SNK Neo-Geo Pocket : `ngp`
* ZX Spectrum : `spectrum` | `zxspectrum`

You can also emulate consoles by prefixing the name of the roms with `XXX_` and removing the `zip|7z` extension in the command line, or adding the `--subsystem XXX` argument, here is the list of available prefixes :
* CBS ColecoVision : `cv`
* Fairchild ChannelF : `chf`
* MSX 1 : `msx`
* Nec PC-Engine : `pce`
* Nec SuperGrafX : `sgx`
* Nec TurboGrafx-16 : `tg`
* Nintendo Entertainment System : `nes`
* Nintendo Family Disk System : `fds`
* Sega GameGear : `gg`
* Sega Master System : `sms`
* Sega Megadrive : `md`
* Sega SG-1000 : `sg1k`
* SNK Neo-Geo Pocket : `ngp`
* ZX Spectrum : `spec`

## BIOS

Bioses will be searched through 3 folders :
* the folder of the current romset
* the `SYSTEM_DIRECTORY/fbneo/` folder
* the `SYSTEM_DIRECTORY/` folder

The following bioses are required for some of the emulated systems :
* neogeo.zip (Neo Geo BIOS)
* neocdz.zip (Neo Geo CDZ System BIOS)
* decocass.zip (DECO Cassette System BIOS)
* isgsm.zip (ISG Selection Master Type 2006 System BIOS)
* midssio.zip (Midway SSIO Sound Board Internal ROM)
* nmk004.zip (NMK004 Internal ROM)
* pgm.zip (PGM System BIOS)
* skns.zip (Super Kaneko Nova System BIOS)
* ym2608.zip (YM2608 Internal ROM)
* cchip.zip (C-Chip Internal ROM)
* bubsys.zip (Bubble System BIOS)
* namcoc69.zip (Namco C69 BIOS)
* namcoc70.zip (Namco C70 BIOS)
* namcoc75.zip (Namco C75 BIOS)
* coleco.zip (ColecoVision System BIOS)
* fdsbios.zip (FDS System BIOS)
* msx.zip (MSX1 System BIOS)
* ngp.zip (NeoGeo Pocket BIOS)
* spectrum.zip (ZX Spectrum BIOS)
* spec128.zip (ZX Spectrum 128 BIOS)
* spec1282a.zip (ZX Spectrum 128 +2a BIOS)
* channelf.zip (Fairchild Channel F BIOS)

## Samples

Samples should be put under `SYSTEM_DIRECTORY/fbneo/samples`

## Hiscores

Copy [hiscore.dat](https://github.com/libretro/FBNeo/tree/master/metadata/hiscore.dat) to `SYSTEM_DIRECTORY/fbneo/` and have the hiscore core option enabled. It doesn't guarantee hiscores will work for a specific game though, sometimes a driver could just be missing the necessary support code for hiscores (or hiscore.dat might not be listing that romset). You can request support in the issue tracker as long as the request is reasonable (avoid making a list of several dozens/hundreds of games if you don't want to be ignored). Runahead now works with hiscores, it'll require fairly recent version of the core AND RetroArch though (support was added after 1.10.3 and is still only available through nightlies as of 2022-09-05).

## Run Ahead input lag reduction

This core widely supports the RetroArch "Run Ahead" input latency reduction feature, with **single instance** being the recommended method. Support for `Second Instance` won't be guaranteed anymore as of [2022-06-25](https://github.com/libretro/FBNeo/commit/7ea5708565955658eeaf49da2be4a9905409bb35).

## RetroAchievements

This core provides support for RetroAchievements, and some were added for popular games.

## Dipswitches

They are either directly available from `Quick Menu > Core Options`, or from the service menu after setting its shortcut in the `Diagnostic Input` core option.

## Cheats

You can either use the RetroArch cheat feature, or download a pack of FBNeo native cheats from [here](https://github.com/finalburnneo/FBNeo-cheats/archive/master.zip) and uncompress them into the `SYSTEM_DIRECTORY/fbneo/cheats/` folder, then they'll become available through core options (`Quick Menu > Options`, **NOT** `Quick Menu > Cheats`), using a MAME `cheat.dat` file should also work.

## F.A.Q

There is a F.A.Q available from [the FBNeo libretro readme](https://github.com/libretro/FBNeo/blob/master/src/burner/libretro/README.md)

## External Links

- [Official FBNeo forum](https://neo-source.com/)
- [Official FBNeo github repository](https://github.com/finalburnneo/FBNeo)
- [Libretro FBNeo github repository](https://github.com/libretro/FBNeo)
- [[GUIDE] Setting up RetroArch playlists with FBNeo](https://neo-source.com/index.php?topic=3725.0)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IfsAHeGqGD-DkRzI87q7V_Q)
