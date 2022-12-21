# Sony - PlayStation (LRPS2)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/-EnWeztB8wI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

LRPS2 is still under development. The content on this page is not the final version. Connecting a remote while any content is running may cause retroarch crashes. If you get a failed to load content warning, respectively; Check your BIOS, video driver(try to switch between drivers, use 'GL') and content. There’s a working OpenGL renderer and a Direct3D11 renderer option. Direct3D 11 renderer can be faster than OpenGL but also has less features. Pick whichever works best for you. On Xbox you will only be able to use Direct3D11 anyways. This core uses the x86_64 dynarec. It is still less compatible than the 32bit x86 dynarec in PCSX2, so keep that in mind. It’s for similar reasons that the software renderer right now won’t work (it’s not compatible yet with x86_64, not in upstream either). There’s a bug that can happen right now upon closing content or exiting RetroArch with the LRPS2 core on Windows – the RetroArch process might not completely cleanly shut itself off and you might still be able to see a 0% CPU process remaining in the Task Manager. We have not been able to figure out how to fix that yet as the PCSX2 codebase is a definite case of ‘here be dragons’, but for now when this happens, you can just bring up the Task Manager and close it manually. It shouldn’t have a real detriment on performance but it is of course far from ideal and hopefully something we can fix soon with the help of some contributors. We have found this happens the most with the Direct3D 11 renderers. Switching resolution at runtime right now can be a bit unstable, so does switching fullscreen resolution. We might just make resolution switching require a restart since this tends to be too unstable for now.

LRPS2 core has been authored by

- [Libretro]()

LRPS2 core is licensed under

- [GPLv2](https://github.com/libretro/pcsx2/blob/main/COPYING.GPLv2)
- [GPLv3](https://github.com/libretro/pcsx2/blob/main/COPYING.GPLv3)
- [LGPLv2.1](https://github.com/libretro/pcsx2/blob/main/COPYING.LGPLv2.1)
- [LGPLv3](https://github.com/libretro/pcsx2/blob/main/COPYING.LGPLv3)

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
- PassMark G3D Mark rating around 3000 (GeForce GTX 750)
- 2 GB/4 GB Video Memory

RAM

- 4GB/8GB

!!! Attention
	Because of the complex nature of emulation, even if you meet the recommended requirements there will be games that will NOT run at full speed due to emulation imperfection, floating point emulation differences, issues with emulator itself or other problems.

## BIOS

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

### How to set up your BIOS:

1. Go inside your RetroArch "system" folder (usually `retroarch/system/`, but if you're not sure check the path in `Settings > Directory > System/BIOS`).
2. Create a `pcsx2` folder.
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
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
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
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan[^2] | ✕         |
| LEDs              | ✕         |

## Directories

LRPS2's library name is 'pcsx2'

LRPS2 core saves/loads to/from these directories.

**Frontend's Save directory**

- Memory card - slot 1

`retroarch/saves/pcsx2/Slot 1/`

- Memory card - slot 2

`retroarch/saves/pcsx2/Slot 2/`

**Frontend's System directory**

- Legacy memory cards

`retroarch/system/pcsx2/memcards/`

The legacy memory cards folder is only used if `Mcd001.ps2` and/or `Mcd002.ps2` is detected in `retroarch/system/pcsx2/memcards/` and the "Memory Card: Slot N" core option is set to "Legacy".
This can be useful if you were using an older version of the core that didn't use the `saves` folder yet, or if you transferred the `memcards` folder directly from standalone.

## Rumble support

Rumble only works in the LRPS2 core when

- The content being ran has rumble support.
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
- [LRPS2 Github Repository](https://github.com/libretro/lrps2)
- [Report LRPS2 Core Issues Here](https://github.com/libretro/lrps2/issues)

## Libretro PS2 cores

- [PlayStation 2 (Play!)](play.md)


[^2]: Overscan cropping available via Core Options instead of frontend settings
