# FinalBurn Neo

## Background

FinalBurn Neo (also referred to as FBNeo or FBN) is a multi-system emulator (Arcade, consoles and computers) under active development, unlike MAME it's more focused on playability and advanced features than accuracy.
It is the follow-up of FinalBurn and FinalBurn Alpha emulators.
The libretro core provide wide compatibility with platforms and features supported by libretro.

## License and changelog

It's distributed under non-commercial license, see [LICENSE.md](https://github.com/finalburnneo/FBNeo/blob/master/LICENSE.md) and [whatsnew.html](https://github.com/finalburnneo/FBNeo/blob/master/whatsnew.html)

## Extensions

zip, 7z

## Building romsets for FBNeo

Arcade emulation won't work properly without the romsets matching the emulator. FBNeo being an emulator under active development, they change regularily and are mostly based on the latest dumps available for a given game.

### Step 1: Obtaining an XML DAT

You can download them from the [dats](https://github.com/libretro/FBNeo/tree/master/dats/) directory.

### Step 2: Gathering the ingredients

It mostly consists of latest dumps available for MAME.
The other romsets are usually a mix of hacks and homebrews, most of them can be found in HBMAME dumps.

### Step 3: Building the romsets

Refer to a [clrmamepro tutorial](https://docs.libretro.com/guides/arcade-getting-started/#optional--clrmamepro-tutorial) for details on how to configure ClrMamePro to use your sources as "rebuild" folders.

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

We don't have a convenient tool like the MAME OSD, instead we use the retroarch api to customize mappings, you can do that by going into `Quick menu > Controls`.
For those who don't want to fully customize their mapping, there are 2 convenient presets you can apply by changing the "device type" for a player in this menu :
* **Classic** : it will apply the original neogeo layout from neogeo cd gamepads for neogeo games, and use L/R as 5th and 6th button for 6 buttons games like Street Fighter II.
* **Modern** : it will apply the modern neogeo layout from neogeo arcade stick pro and mini pad for neogeo games, and use R1/R2 as 5th and 6th button for 6 buttons games like Street Fighter II (because it's also their modern layout), this is really convenient with most arcade sticks.

The following "device type" also exist, but they won't be compatible with every games :
* **Mouse (ball only)** : it will use mouse/trackball for analog movements, buttons will stay on retropad
* **Mouse (full)** : same as above, but the buttons will be on the mouse
* **Pointer** : it will use "pointer" device (can be a mouse/trackball) to determine coordinates on screen, buttons will stay on retropad
* **Lightgun** : it will use lightgun to determine coordinates on screen, buttons will be on the lightgun too.

## Emulating consoles and computers

You can use specific folder's name for detection, it's the recommended method if you are using RetroArch playlists or device not compatible with subsystems (android and consoles) :
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

You can emulate consoles by prefixing the name of the roms with `XXX_` and removing the `zip|7z` extension, or using the `--subsystem XXX` argument in the command line, here is the list of available prefixes :
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
* channelf.zip (Fairchild Channel F BIOS)

## Samples

Samples should be put under `SYSTEM_DIRECTORY/fbneo/samples`

## Hiscores

Copy [hiscore.dat](https://github.com/libretro/FBNeo/tree/master/metadata/hiscore.dat) to `SYSTEM_DIRECTORY/fbneo/`.

## Run Ahead input lag reduction

This core widely supports the RetroArch "Run Ahead" input latency reduction feature, with or without `Second Instance` enabled.

## RetroAchievements

This core provide support for RetroAchievements, and some were added for popular games.

## Dipswitches

They are either directly available from `Quick Menu > Core Options`, or from the service menu after setting its shortcut in the `Diagnostic Input` core option.

## Cheats

You can either use the RetroArch cheat feature, or download a pack of FBNeo native cheats from [here](https://github.com/finalburnneo/FBNeo-cheats/archive/master.zip) and uncompress them into the `SYSTEM_DIRECTORY/fbneo/cheats/` folder, then they'll become available through core options, using a MAME `cheat.dat` file should also work.

## F.A.Q

There is a F.A.Q available from [the FBNeo libretro readme](https://github.com/libretro/FBNeo/blob/master/src/burner/libretro/README.md)

## External Links

* [Official FBNeo forum](https://neo-source.com/)
* [Official FBNeo github repository](https://github.com/finalburnneo/FBNeo)
* [Libretro FBNeo github repository](https://github.com/libretro/FBNeo)
* [[GUIDE] Setting up RetroArch playlists with FBNeo](https://neo-source.com/index.php?topic=3725.0)
