# Sega - Saturn/ST-V (Kronos)

## Background

Kronos is a fork of [Yabause](yabause.md). [It uses compute shaders](https://www.libretro.com/index.php/kronos-2-1-2-progress-report-sega-saturn-emulator/) and as such requires OpenGL 4.3. It emulates both the Sega Saturn and its arcade board version, the Sega Titan Video (ST-V).

It's a fairly active project and the only Sega Saturn libretro core being officially supported by upstream.

### Author/License

The Kronos core has been authored by

- Guillaume Duhammel
- Theo Berkau
- Anders Montonen
- devmiyax
- François Caron

The Kronos core is licensed under

- [GPLv2](https://github.com/libretro/yabause/blob/kronos/yabause/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Kronos core have the following file extensions:

- .cue
- .iso
- .ccd
- .mds
- .chd
- .zip

## Databases

RetroArch database(s) that are associated with the Kronos core:

- [Sega - Saturn](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Saturn.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename               | Description                                                                | md5sum                           |
|:----------------------:|:--------------------------------------------------------------------------:|:--------------------------------:|
| kronos/saturn_bios.bin | Saturn BIOS - Required for Saturn games                                    | af5828fdff51384f99b3c4926be27762 |
| kronos/stvbios.zip     | ST-V BIOS - Required for ST-V games                                        |                                  |
| mpr-18811-mx.ic1       | The King of Fighters '95 ROM Cartridge - Required for this game            | 255113ba943c92a54facd25a10fd780c |
| mpr-19367-mx.ic1       | Ultraman: Hikari no Kyojin Densetsu ROM Cartridge - Required for this game | 1cd19988d1d72a3e7caa0b73234c96b4 |

This md5sum for the Saturn BIOS is just a hint, any valid saturn bios should work.

Kronos will try searching for locations commonly used by other Sega Saturn libretro cores if it can't find a Sega Saturn bios at the expected path.

Note that unlike yabause, Kronos won't automatically switch to HLE bios if a bios file is not present, because the Kronos project doesn't recommend using this HLE bios and actually won't provide support for any issue related to its usage. 
This is the reason for the file to be required.

## Features

Frontend-level settings or features that the Kronos core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Savefiles

Their location depends on the content running and the core options.
By default they'll be stored in a `kronos` subdirectory of your savefiles directory, which will be split further between `saturn` and `stv` directories.
However Kronos also has a core option named "Share saves with beetle", which will try to match Sega Saturn savefiles with Beetle-saturn.

### Geometry and timing

- The Kronos core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The Kronos core's core provided sample rate is 44100 Hz
- The Kronos core's core provided aspect ratio is 4/3
- The Kronos core will ask the frontend to rotate display for (ST-V) vertical games

## Loading Sega Saturn content

- Kronos is not compatible with cue sheets containing references to audio files with wav/mp3/ogg/flac/ape extensions.
- Zip files containing cue+bin files can be loaded directly, however the dump will be loaded in RAM (meaning it will use around 700MB of RAM depending on the size of the dump).
- It is recommended to use [Redump](http://redump.org/) releases because this is the most thoroughly tested format.

## Core options

The Kronos core has the following options that can be tweaked from the core options menu. The default settings are bolded.

- **Force HLE BIOS** [kronos_force_hle_bios] (**disabled**|enabled)

	HLE BIOS will be forced. Use at your own risk, this is mainly for debugging purpose and is neither recommended nor supported. Requires a restart.

- **Video format** [kronos_videoformattype] (**auto**|NTSC|PAL)

	Force video format to PAL or NTSC, default is auto which will try to detect from loaded content.

- **Frameskip** [kronos_skipframe] (**0**|1|2|3|4|5)

	It will skip rendering at a fixed rate, it can improve playability dramatically on lower end devices

- **SH-2 cache support (experimental)** [kronos_sh2coretype] (**kronos**|old)

	Support for SH-2's cache. It is required for some game to work properly. It can kill performance.

- **Share saves with beetle** [kronos_use_beetle_saves] (**disabled**|enabled)

	Details above. Requires a restart.

- **Addon Cartridge** [kronos_addon_cartridge] (**none** | 1M_extended_ram | 4M_extended_ram | 16M_extended_ram | 512K_backup_ram | 1M_backup_ram | 2M_backup_ram | 4M_backup_ram)

	This is the default cartridge you want Kronos to use. Note that your choice will be ignored if Kronos detects that the game requires a specific cartridge. Requires a restart.

- **6Player Adaptor on Port 1** [kronos_multitap_port1] (**disabled**|enabled)

	Enable multitap in port 1.

- **6Player Adaptor on Port 2** [kronos_multitap_port2] (**disabled**|enabled)

	Enable multitap in port 2.

- **Resolution** [kronos_resolution_mode] (**original**|480p|720p|1080p|4k|8k)

	Modify rendering resolution. Requires a restart.

- **Output to original resolution** [kronos_force_downsampling] (**disabled**|enabled)

	Useful when using resolution higher than your screen's, will also replace meshed transparency by real transparency to avoid moiré effect.

- **Improved mesh** [kronos_meshmode] (**disabled**|enabled)

	Replace meshed transparency by real transparency.

- **Improved banding** [kronos_bandingmode] (**disabled**|enabled)

	Apply gouraud shading instead of flat shading, requires OpenGL CS renderer.

- **Wireframe mode** [kronos_wireframe_mode] (**disabled**|enabled)

	Wireframe mode, requires OpenGL CS renderer.

- **ST-V Service/Test Buttons** [kronos_service_enabled] (**disabled**|enabled)

	Enable Service/Test for ST-V, to enter cabinet settings. By default they aren't mapped so that you won't press them by mistake.

- **ST-V Favorite Region** [kronos_stv_favorite_region] (**EU**|US|JP|TW)

	Choose your favorite bios region for ST-V. It will be ignored if not compatible with your game.

- **Bios Language** [kronos_language_id] (**English**|German|French|Spanish|Italian|Japanese)

	Choose your favorite language, will translate some games. Requires a restart.

## Controllers

The Kronos core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User device types

- None
- **Saturn Pad**
- Saturn 3D Pad
- Saturn Wheel
- Saturn Mouse

### Multitap support

Must be enabled in core options.

### Controller tables

#### Joypad

![](../image/controller/saturn.png)

| User 1 - 12 Remap descriptors | RetroPad Inputs                              |
|-------------------------------|----------------------------------------------|
| A                             | ![](../image/retropad/retro_b.png)       |
| X                             | ![](../image/retropad/retro_y.png)       |
| Start                         | ![](../image/retropad/retro_start.png)         |
| D-Pad Up                      | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down                    | ![](../image/retropad/retro_dpad_down.png)     |
| D-Pad Left                    | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right                   | ![](../image/retropad/retro_dpad_right.png)    |
| B                             | ![](../image/retropad/retro_a.png)       |
| Y                             | ![](../image/retropad/retro_x.png)       |
| C                             | ![](../image/retropad/retro_l1.png)            |
| Z                             | ![](../image/retropad/retro_r1.png)            |
| L                             | ![](../image/retropad/retro_l2.png)            |
| R                             | ![](../image/retropad/retro_r2.png)            |
| Analog X                      | ![](../image/retropad/retro_left_stick.png) X  |
| Analog Y                      | ![](../image/retropad/retro_left_stick.png) Y  |

## Compatibility

- [Official Kronos Compatibility List](https://tradu-france.com/wiki-emu-compatibility/index.php?title=Compatibility_list_of_Kronos)

## Known issues

- Savestates work but can sometime be quite unstable
- Enabling both multitaps at the same time causes some kind of "autofire" bug
- Switching between windowed and fullscreen will cause issues, you need to start the core in your prefered mode and stick with it
- It seems there are compatibility issues between RetroArch's "threaded video" setting and this core.

## External Links

- [Official Kronos Repository](https://github.com/FCare/Kronos) (please report issues there)
- [Libretro Kronos Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/kronos_libretro.info)
- [Libretro Kronos Github Repository](https://github.com/libretro/yabause/tree/kronos)
- [Report Issues Here](https://github.com/libretro/yabause/issues) or [Here](https://github.com/FCare/Kronos/issues)

## Saturn

- [Sega - Saturn (Beetle Saturn)](beetle_saturn.md)
- [Sega - Saturn/ST-V (Kronos)](kronos.md)
- [Sega - Saturn (Yabause)](yabause.md)
- [Sega - Saturn (YabaSanshiro)](yabasanshiro.md)
