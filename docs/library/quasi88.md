# NEC PC-8000 / PC-8800 series (QUASI88)

## Background

QUASI88 is an emulator by Showzoh Fukunaga licensed under the BSD 3-Clause license. This libretro port is distributed in the same way.

The sound processing portion of QUASI88 uses source code from MAME and XMAME. The copyright to this source code belongs to its corresponding authors.

The sound processing portion of QUASI88 also uses source code from the FM audio generator "fmgen". The copyright to this source code belongs to cisc.

The QUASI88 core is licensed under

- BSD 3-Clause

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## BIOS

### Real BIOS (recommended)

Required or optional firmware files go in the frontend's system directory.

|   Filename   | Description                                           |              md5sum              |
|:------------:|:-----------------------------------------------------:|:--------------------------------:|
| n88.rom      | Required.                                             | 4f984e04a99d56c4cfe36115415d6eb8 |
| n88n.rom     | Required for PC-8000 series emulation. (N BASIC mode) | 2ff07b8769367321128e03924af668a0 |
| disk.rom     | Required for loading disk images.                     | 793f86784e5608352a5d7f03f03e0858 |
| n88_0.rom    | Required.                                             | d675a2ca186c6efcd6277b835de4c7e5 |
| n88_1.rom    |                                                       | e844534dfe5744b381444dbe61ef1b66 |
| n88_2.rom    |                                                       | 6548fa45061274dee1ea8ae1e9e93910 |
| n88_3.rom    |                                                       | fc4b76a402ba501e6ba6de4b3e8b4273 |

### Pseudo BIOS

Optionally, pseudo BIOS are freely available from [this site](http://www.retropc.net/cisc/m88/download.html). Only PC-8800 series software will be playable and there may be compatibility issues.

|   Filename   | Description                                           |              md5sum              |
|:------------:|:-----------------------------------------------------:|:--------------------------------:|
| n88.rom      | Required.                                             | d8a5dcd9a38e6d8268fbb8bdd9469517 |
| disk.rom     | Required for loading disk images.                     | 63967076fc4bd6381cbf85528030ccb4 |

### Font

The files **font.rom**, **font2.rom**, and **font3.rom** can also be loaded from the system directory to specify a font. If these are not found, the core will fall back on a built-in recreation.

## Loading Content

QUASI88 can be started using between 0 to 2 disk images as content. To start the emulated system with no disks inserted, first load the core and then use the "Start Core" option.

To load two disk images at once, first load the core and then use the "Load 2-Disk Game" option. Once two disks have been selected, choose the "Start 2-Disk Game" option.

## Extensions

Content that can be loaded by the QUASI88 core have the following file extensions:

- .d88

## Features

Frontend-level settings or features that the QUASI88 core respects.

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
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✔         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The QUASI88 core's library name is 'QUASI88'

The QUASI88 core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description                                                                       |
|:-----:|:---------------------------------------------------------------------------------:|
| *.srm | Differential of changes to loaded disc image (by default, see Core Options below) |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The QUASI88 core's core provided FPS is 60.
- The QUASI88 core's core provided sample rate is 44100 Hz.
- The QUASI88 core's base width is 640.
- The QUASI88 core's base height is 400.
- The QUASI88 core's max width is 640.
- The QUASI88 core's max height is 400.
- The QUASI88 core's core provided aspect ratio is 8/5.

## Core Options

The QUASI88 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

- **Basic mode** [q88_basic_mode] (**N88 V2**|N88 V1H|N88 V1S|N)

	This option selects the PC model being emulated. Some games may refuse to boot or behave incorrectly if an inappropriate model is chosen (missing colors, fast game speed).

	Using N BASIC mode for PC-8000 series software requires the **n88n.rom** BIOS.
	
- **CPU clock** [q88_cpu_clock] (**4 MHz**|8 MHz|16 MHz (overclock)|32 MHz (overclock)|64 MHz (overclock)|1 MHz (underclock)|2 MHz (underclock))

	This option sets the CPU clock speed of the emulated PC. Overclocking options will make most software run faster than normal, though some will instead load faster and exhibit less slowdown (Ys series).
	
- **Use FDC-Wait** [q88_use_fdc_wait] (**enabled**|disabled)

	This option enables more accurate IO timing for the floppy disk controller. Some software will not work properly with this disabled.
	
- **Sound board** [q88_sound_board] (**OPN**|OPNA)

    This option changes the Yamaha sound board on the emulated PC. [OPN](https://en.wikipedia.org/wiki/Yamaha_YM2203) is the default option. [OPNA](https://en.wikipedia.org/wiki/Yamaha_YM2608) sound supports more FM channels and PCM samples.
	
- **Use PCG-8100** [q88_pcg-8100] (**disabled**|enabled)

	This option selects whether or not to emulate the PCG-8100. This option may be required for some PC-8000 series software.
	
- **Save to disk image** [q88_save_to_disk_image] (**disabled**|enabled)
	
	This option changes the core's saving behavior. By default, if a disk is rewritten to, the differences will be stored to a ".srm" file in the frontend save directory. If this option is enabled, the changes will be written directly to the loaded disk and flushed on exit.
	
- **Rumble on disk access** [q88_rumble] (**enabled**|disabled)
	
	This option allows the controller's rumble feature to imitate the read sounds on the floppy disk controller.
	
## Joypad

The default RetroPad inputs are based on the keys often used for simple games playable via QUASI88. For full remapping, change the input type from "Retro Joypad" to "Retro Keyboard."

When using software that requires full keyboard input, it's recommended to use game focus mode as well.

### Player 1

| User 1 input descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| Z Key                    | ![](/image/retropad/retro_b.png)          |
| Space Key                | ![](/image/retropad/retro_y.png)          |
| I Key                    | ![](/image/retropad/retro_select.png)     |
| Return Key               | ![](/image/retropad/retro_start.png)      |
| Keypad 8 (Up)            | ![](/image/retropad/retro_dpad_up.png)    |
| Keypad 2 (Down)          | ![](/image/retropad/retro_dpad_down.png)  |
| Keypad 4 (Left)          | ![](/image/retropad/retro_dpad_left.png)  |
| Keypad 6 (Right)         | ![](/image/retropad/retro_dpad_right.png) |
| X Key                    | ![](/image/retropad/retro_a.png)          |

### Player 2

| User 2 input descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| Q Key                    | ![](/image/retropad/retro_b.png)          |
| R Key                    | ![](/image/retropad/retro_dpad_up.png)    |
| F Key                    | ![](/image/retropad/retro_dpad_down.png)  |
| D Key                    | ![](/image/retropad/retro_dpad_left.png)  |
| G Key                    | ![](/image/retropad/retro_dpad_right.png) |
| Tab Key                  | ![](/image/retropad/retro_a.png)          |

## External Links

- [Libretro core Github Repository](https://github.com/libretro/quasi88-libretro)
- [Pseudo BIOS, provided by cisc](http://www.retropc.net/cisc/m88/download.html)
