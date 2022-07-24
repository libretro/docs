# Sega - Saturn (Yabause)

## Background

Yabause is a Sega Saturn emulator that is both open-source and written with portability in mind. It is software rendered. Without any update for years it seems upstream is now dead.

### Author/License

The Yabause core has been authored by

- Guillaume Duhammel
- Theo Berkau
- Anders Montonen

The Yabause core is licensed under

- [GPLv2](https://github.com/libretro/yabause/blob/master/yabause/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Yabause core have the following file extensions:

- .cue
- .iso
- .ccd
- .mds
- .chd
- .zip
- .m3u

## Databases

RetroArch database(s) that are associated with the Yabause core:

- [Sega - Saturn](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Saturn.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename          | Description                     | md5sum                           |
|:-----------------:|:-------------------------------:|:--------------------------------:|
| saturn_bios.bin   | Saturn BIOS - Optional          | af5828fdff51384f99b3c4926be27762 |

This md5sum is just a hint, it is not required, any valid saturn bios should work.

!!! Question "Is the bios really optional ?"
    It's highly recommended to install a real bios, the emulated bios is not perfect and has lesser compatibility. Furthermore, due to the nature of "multi-disc" games on Sega Saturn (they are independent game discs that will send you back to the bios screen when switching), the bios is **required** if you intend to load m3u files.

## Features

Frontend-level settings or features that the Yabause core respects.

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

### Directories

The Yabause core's library name is 'Yabause'

The Yabause core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Yabause core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The Yabause core's core provided sample rate is 44100 Hz
- The Yabause core's core provided aspect ratio is 4/3

## Loading Sega Saturn content

- Yabause is not compatible with cue sheets containing references to audio files with wav/mp3/ogg/flac/ape extensions.
- Zip files containing cue+bin files can be loaded directly, however the dump will be loaded in RAM (meaning it will use around 700MB of RAM depending on the size of the dump).

## Core options

The Yabause core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Frameskip** [yabause_frameskip] (**disabled**|enabled)

	Frames are skipped when the CPU is unable to keep up a stable rate.

- **Force HLE BIOS (restart)** [yabause_force_hle_bios] (**disabled**|enabled)

	HLE BIOS will be used even when a real BIOS file is present.

- **Addon Cartridge (restart)** [yabause_addon_cart] (**none**|1M_ram|4M_ram)

	Allows switching between the various RAM cartridges released for the system.

	A list of games that require a cartridge can be found [here](https://www.satakore.com/cartridge.php).

- **6Player Adaptor on Port 1** [yabause_multitap_port1] (**disabled**|enabled)

	Enable multitap in port 1.

- **6Player Adaptor on Port 2** [yabause_multitap_port2] (**disabled**|enabled)

	Enable multitap in port 2.

- **Number of Threads (restart)** [yabause_numthreads] (1|2|**4**|8|16|32)

	Adjust the number of threads to an appropriate level for your CPU.

## Controllers

The Yabause core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User device types

- None - Doesn't disable input. There's no reason to switch to this.
- **Saturn Pad** - Joypad
- Saturn 3D Pad - Analog

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

- [Official Yabause Compatibility List](https://wiki.yabause.org/index.php5?title=Compatibility_list)

## Known issues

- Savestates work but can freeze a game
- Enabling both multitaps at the same time causes some sort of "autofire" bug

## External Links

- [Official Yabause Website](https://yabause.org/)
- [Official Yabause Documentation](https://wiki.yabause.org/index.php5?title=Documentations)
- [Official Yabause Repository](https://github.com/Yabause/yabause)
- [Libretro Yabause Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/yabause_libretro.info)
- [Libretro Yabause Github Repository](https://github.com/libretro/yabause)
- [Report Libretro Yabause Core Issues Here](https://github.com/libretro/yabause/issues)

## Saturn

- [Sega - Saturn (Beetle Saturn)](beetle_saturn.md)
- [Sega - Saturn/ST-V (Kronos)](kronos.md)
- [Sega - Saturn (Yabause)](yabause.md)
- [Sega - Saturn (YabaSanshiro)](yabasanshiro.md)
