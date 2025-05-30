# Sony - PlayStation (LRPS2)

<iframe width="845" height="475" src="https://www.youtube.com/embed/f-DxgSIGNlg" title="RetroArch - LRPS2 - How to get into the PS2 startup screen" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

LRPS2 is a heavily modified hard fork of the excellent and mature PCSX2 emulator ported to libretro. It runs on Windows, macOS and Linux on the x86_64 architecture. MacOS computers running on Apple's ARM chipsets can still run it through the Rosetta x86 compatibility mode. This core does not work natively on ARM hardware, so it is not available on iOS/tvOS, Android, ARM Linux or Windows on ARM.

It supports hardware rendering via OpenGL (Windows and Linux), Vulkan (natively on Windows and Linux and via MoltenVk on macOS) and D3D11/12 (Windows-only), as well as software rendering for games that require its additional accuracy. Note: the D3D11 renderer produces a black screen with working audio on some GPUs (toggling fast-forward should show a flickering picture), so if you encounter this, switch to another renderer, if possible.

LRPS2 also includes a brand new, high-accuracy Vulkan compute renderer known as ParaLLEl-GS (from the same author and tech behind the ParaLLEl-RDP renderer now used by almost every major N64 emulator).

The ParaLLEl-GS renderer is essentially a software renderer that relies on the parallel-processing power of a modern gaming GPU to accurately reproduce console behavior at or beyond full speed. As a result, this renderer is recommended, if your hardware is able to run it at full speed (should be fine on any discrete GPU and possibly on AMD integrated graphics; Intel integrated graphics do not appear to be fast enough at the time of this writing).

LRPS2 core has been authored by

- [Libretro]()
- based on the PCSX2 emulator by the PCSX2 Dev Team

LRPS2 core is licensed under

- [GPLv3](https://github.com/libretro/ps2/blob/libretroization/COPYING.GPLv3)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

CPU

- Supports SSE2/AVX2
- PassMark Single Thread Performance rating near or greater than 1600/2100
- Two physical cores, with hyperthreading
- Four physical cores, with or without hyperthreading

GPU

- Direct3D10/11 support
- OpenGL 3.x/4.5 support
- Vulkan 1.3+ support
- PassMark G3D Mark rating around 3000 (GeForce GTX 750)
- 2 GB/4 GB Video Memory

RAM

- 4GB/8GB

!!! Attention
	Because of the complex nature of emulation, even if you meet the recommended requirements there will be games that will NOT run at full speed due to emulation imperfection, floating point emulation differences, issues with emulator itself or other problems.

## Setup (Required!!)

For the LRPS2 core to function, it requires a set of real BIOS images dumped from your Playstation 2 console in accordance with your local laws, along with the `GameIndex.yaml` compatibility database.

### GameIndex.yaml

In the past, most PS2 games required setting various hacks/options on a per-game basis to avoid compatibility issues and bugs. More recently, the PCSX2 team has automated this process by including a database of these per-game hacks/options in a file named `GameIndex.yaml`. Having this database in the correct spot is necessary for a good emulation experience.

###$ Core System Files Downloader

The easiest way to get this file and put it where it needs to go is to stop by RetroArch's `Online Updater` and head to the `Core System Files Downloader`. Inside, you'll see a series of entries named for various cores. Look for `LRPS2.zip` and select it. The `Core System Files Downloader` will then download the `GameIndex.yaml` database and place it within the necessary directory structure automatically.

###$ Manually

If you don't have access to the `Core System Files Downloader` for whatever reason (e.g., using the Steam release of RetroArch, or some other libretro frontend), you can still get everything you need manually.

First, you will need to download the `GameIndex.yaml` file from the core's source code repository on [Github](https://github.com/libretro/ps2). [This](https://raw.githubusercontent.com/libretro/ps2/refs/heads/libretroization/bin/resources/GameIndex.yaml) is a direct link to the file, but if that link breaks in the future, the database file is typically housed in the `bin/resources` directory.

Once you have the `GameIndex.yaml` database:
1. Navigate to your 'system'/BIOS directory (the location of which you can find/confirm by going to settings > directory in the RetroArch menu), then create a directory named `pcsx2` (must be in all lower-case).
2. Inside your new `pcsx2` directory, you'll make another directory named `resources` (again, all lower-case)
3. Place the `GameIndex.yaml` inside of it. The final structure should be `system/pcsx2/resources/GameIndex.yaml`.

### BIOS

!!! Attention
	For compatibility reasons, it is recommended to not use a SCPH-10000 BIOS.

!!! Notes
	- No specific filename required, as long as the BIOS was properly dumped the core will be able to find it.
	- The BIOS files must be extracted, the core will not be able to find them if they're zipped.
	- LRPS2 does not implement region locking, so if you have a PAL BIOS you can play NTSC games, and vice versa. However, this only applies with the `Fast Boot` core option enabled.

LRPS2 requires a BIOS to work, the BIOS can be provided as a single 4MB .bin file or with additional files (usually .erom, .nvm, .rom1 and .rom2).

In case you're having additional files with the .bin, make sure they're sharing the same filename or they'll be ignored.
So as an example let's say you have a `SCPH-70004_BIOS_V12_EUR_200.BIN` file with an EROM file, a ROM1 file and a ROM2 file, it should look like this:

```
SCPH-70004_BIOS_V12_EUR_200.BIN
SCPH-70004_BIOS_V12_EUR_200.EROM
SCPH-70004_BIOS_V12_EUR_200.ROM1
SCPH-70004_BIOS_V12_EUR_200.ROM2
```

#### How to set up your BIOS:

1. Go inside your RetroArch "system" folder (usually `retroarch/system/`, but if you're not sure check the path in `Settings > Directory > System/BIOS`).
2. Create a `pcsx2` folder (if you used the Core System Files Downloader to download the `GameIndex.yaml`, this folder structure should already exist).
3. Go inside the `pcsx2` folder and create a `bios` folder.
4. Go inside the `bios` folder and paste your BIOS file(s) here.

For example, the default path would look like this: `system\pcsx2\bios\[bios_file_name].bin`

If you're on a case-sensitive OS, make sure both `pcsx2` and `bios` folders are lowercase.

## Other required files and directories

The file structure should look like this:

```
retroarch/
└── system/
	└── pcsx2/
		├── bios/
		├── cheats/
		├── cheats_ws/
		└── memcards/	(optional)
```

* `bios/` is where the BIOS files are located (see the ['BIOS'](#bios) section above), this should be created by the user.
* `cheats/` is where you can store cheat patches, the folder is created on the first boot automatically.
* `cheats_ws/` is where you can store additional widescreen patches, the folder is created on the first boot automatically.
* `memcards/` is where the "legacy" memory cards are stored. This folder is optional, see the ['Directories'](#directories) section below.

!!! Info
	Although the `cheats_ws` folder is empty when created, a very large number of widescreen patches are already included in the core itself.

## Extensions

Content that can be loaded by the LRPS2 core have the following file extensions:

- .elf
- .iso
- .ciso
- .chd
- .cso
- .bin
- .mdf
- .nrg
- .dump
- .gz
- .img
- .m3u

RetroArch database(s) that are associated with the LRPS2 core:

- [Sony - PlayStation 2](https://github.com/libretro/libretro-database/blob/master/rdb/Sony%20-%20PlayStation%202.rdb)

## Features

Frontend-level settings or features that the LRPS2 core respects.

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
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✔         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan[^2] | ✕         |
| LEDs              | ✕         |

## Directories

LRPS2's library name is 'pcsx2'

LRPS2 core saves/loads to/from these directories.

**Frontend's System directory**

- Legacy memory cards

`retroarch/system/pcsx2/memcards/`

## Rumble support

Rumble only works in the LRPS2 core when

- The content being run has rumble support.
- The frontend being used has rumble support.
- The joypad device being used has rumble support.
- The corresponding user's device type is set to **DualShock 2**

## Joypad

![](../image/controller/psx.png)

| User 1 - 8 input descriptors  | RetroPad Inputs                              | PlayStation Controller Inputs                  | DualShock Inputs                                | Analog Controller Inputs                        | Analog Joystick Inputs                         | neGcon Inputs                   |
|-------------------------------|----------------------------------------------|------------------------------------------------|-------------------------------------------------|-------------------------------------------------|------------------------------------------------|---------------------------------|
| Cross                         | ![](../image/retropad/retro_b.png)             | ![](../image/Button_Pack/PS3/PS3_Cross.png)      | ![](../image/Button_Pack/PS3/PS3_Cross.png)       | ![](../image/Button_Pack/PS3/PS3_Cross.png)       | ![](../image/Button_Pack/PS3/PS3_Cross.png)      | Analog button I                 |
| Square                        | ![](../image/retropad/retro_y.png)             | ![](../image/Button_Pack/PS3/PS3_Square.png)     | ![](../image/Button_Pack/PS3/PS3_Square.png)      | ![](../image/Button_Pack/PS3/PS3_Square.png)      | ![](../image/Button_Pack/PS3/PS3_Square.png)     | Analog button II                |
| Select                        | ![](../image/retropad/retro_select.png)        | ![](../image/Button_Pack/PS3/PS3_Select.png)     | ![](../image/Button_Pack/PS3/PS3_Select.png)      | ![](../image/Button_Pack/PS3/PS3_Select.png)      | ![](../image/Button_Pack/PS3/PS3_Select.png)     |                                 |
| Start                         | ![](../image/retropad/retro_start.png)         | ![](../image/Button_Pack/PS3/PS3_Start.png)      | ![](../image/Button_Pack/PS3/PS3_Start.png)       | ![](../image/Button_Pack/PS3/PS3_Start.png)       | ![](../image/Button_Pack/PS3/PS3_Start.png)      | Start                           |
| D-Pad Up                      | ![](../image/retropad/retro_dpad_up.png)       | ![](../image/Button_Pack/PS3/PS3_Dpad_Up.png)    | ![](../image/Button_Pack/PS3/PS3_Dpad_Up.png)     | ![](../image/Button_Pack/PS3/PS3_Dpad_Up.png)     | ![](../image/Button_Pack/PS3/PS3_Dpad_Up.png)    | D-Pad Up                        |
| D-Pad Down                    | ![](../image/retropad/retro_dpad_down.png)     | ![](../image/Button_Pack/PS3/PS3_Dpad_Down.png)  | ![](../image/Button_Pack/PS3/PS3_Dpad_Down.png)   | ![](../image/Button_Pack/PS3/PS3_Dpad_Down.png)   | ![](../image/Button_Pack/PS3/PS3_Dpad_Down.png)  | D-Pad Down                      |
| D-Pad Left                    | ![](../image/retropad/retro_dpad_left.png)     | ![](../image/Button_Pack/PS3/PS3_Dpad_Left.png)  | ![](../image/Button_Pack/PS3/PS3_Dpad_Left.png)   | ![](../image/Button_Pack/PS3/PS3_Dpad_Left.png)   | ![](../image/Button_Pack/PS3/PS3_Dpad_Left.png)  | D-Pad Left                      |
| D-Pad Right                   | ![](../image/retropad/retro_dpad_right.png)    | ![](../image/Button_Pack/PS3/PS3_Dpad_Right.png) | ![](../image/Button_Pack/PS3/PS3_Dpad_Right.png)  | ![](../image/Button_Pack/PS3/PS3_Dpad_Right.png)  | ![](../image/Button_Pack/PS3/PS3_Dpad_Right.png) | D-Pad Right                     |
| Circle                        | ![](../image/retropad/retro_a.png)             | ![](../image/Button_Pack/PS3/PS3_Circle.png)     | ![](../image/Button_Pack/PS3/PS3_Circle.png)      | ![](../image/Button_Pack/PS3/PS3_Circle.png)      | ![](../image/Button_Pack/PS3/PS3_Circle.png)     | A                               |
| Triangle                      | ![](../image/retropad/retro_x.png)             | ![](../image/Button_Pack/PS3/PS3_Triangle.png)   | ![](../image/Button_Pack/PS3/PS3_Triangle.png)    | ![](../image/Button_Pack/PS3/PS3_Triangle.png)    | ![](../image/Button_Pack/PS3/PS3_Triangle.png)   | B                               |
| L1                            | ![](../image/retropad/retro_l1.png)            | ![](../image/Button_Pack/PS3/PS3_L1.png)         | ![](../image/Button_Pack/PS3/PS3_L1.png)          | ![](../image/Button_Pack/PS3/PS3_L1.png)          | ![](../image/Button_Pack/PS3/PS3_L1.png)         | Left shoulder button (analog)   |
| R1                            | ![](../image/retropad/retro_r1.png)            | ![](../image/Button_Pack/PS3/PS3_R1.png)         | ![](../image/Button_Pack/PS3/PS3_R1.png)          | ![](../image/Button_Pack/PS3/PS3_R1.png)          | ![](../image/Button_Pack/PS3/PS3_R1.png)         | Right shoulder button (digital) |
| L2                            | ![](../image/retropad/retro_l2.png)            | ![](../image/Button_Pack/PS3/PS3_L2.png)         | ![](../image/Button_Pack/PS3/PS3_L2.png)          | ![](../image/Button_Pack/PS3/PS3_L2.png)          | ![](../image/Button_Pack/PS3/PS3_L2.png)         | Analog button II                |
| R2                            | ![](../image/retropad/retro_r2.png)            | ![](../image/Button_Pack/PS3/PS3_R2.png)         | ![](../image/Button_Pack/PS3/PS3_R2.png)          | ![](../image/Button_Pack/PS3/PS3_R2.png)          | ![](../image/Button_Pack/PS3/PS3_R2.png)         | Analog button I                 |
| L3                            | ![](../image/retropad/retro_l3.png)            |                                                  | ![](../image/Button_Pack/PS3/PS3_L3.png)          |                                                   |                                                |                                 |
| R3                            | ![](../image/retropad/retro_r3.png)            |                                                  | ![](../image/Button_Pack/PS3/PS3_R3.png)          |                                                   |                                                |                                 |
| Left Analog X                 | ![](../image/retropad/retro_left_stick.png) X  |                                                  | ![](../image/Button_Pack/PS3/PS3_Left_Stick.png)  | ![](../image/Button_Pack/PS3/PS3_Left_Stick.png)  | Left Joystick X                                | Twist                           |
| Left Analog Y                 | ![](../image/retropad/retro_left_stick.png) Y  |                                                  | ![](../image/Button_Pack/PS3/PS3_Left_Stick.png)  | ![](../image/Button_Pack/PS3/PS3_Left_Stick.png)  | Left Joystick Y                                |                                 |
| Right Analog X                | ![](../image/retropad/retro_right_stick.png) X |                                                  | ![](../image/Button_Pack/PS3/PS3_Right_Stick.png) | ![](../image/Button_Pack/PS3/PS3_Right_Stick.png) | Right Joystick X                               |                                 |
| Right Analog Y                | ![](../image/retropad/retro_right_stick.png) Y |                                                  | ![](../image/Button_Pack/PS3/PS3_Right_Stick.png) | ![](../image/Button_Pack/PS3/PS3_Right_Stick.png) | Right Joystick Y                               |                                 |

## Compatibility

The current standalone development version is reported to be compatible with approximately 97.4% of 2,641 tested games as of August 2020. Compatibility means only that the game will not crash, lock up, or enter a loop; there can still be bugs, missing post-processing effects, textures, and shadows in many compatible games. This is especially the case in hardware mode; a slower software mode is available for bugs without workarounds. You can check compatibilirt list in [here](https://pcsx2.net/compatibility-list.html)

## External Links

- [LRPS2 Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/pcsx2_libretro.info)
- [LRPS2 Github Repository](https://github.com/libretro/ps2)
- [Report LRPS2 Core Issues Here](https://github.com/libretro/ps2/issues)

## Libretro PS2 cores

- [PlayStation 2 (Play!)](play.md)


[^2]: Overscan cropping available via Core Options instead of frontend settings
