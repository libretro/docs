# NEC PC-8000 / PC-8800 series (QUASI88)

## Background

QUASI88 is an emulator by Showzoh Fukunaga licensed under the BSD 3-Clause license. This libretro port is distributed in the same way.

The sound processing portion of QUASI88 uses source code from MAME and XMAME. The copyright to this source code belongs to its corresponding authors.

The sound processing portion of QUASI88 also uses source code from the FM audio generator "fmgen". The copyright to this source code belongs to cisc.

The QUASI88 core is licensed under

- BSD 3-Clause

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

### Real BIOS (recommended)

Required or optional firmware files go in the frontend's system directory. They can also be placed in a "quasi88" subfolder.

|   Filename   | Description                                           |              md5sum              |
|:------------:|:-----------------------------------------------------:|:--------------------------------:|
| n88.rom      | Required.                                             | 4f984e04a99d56c4cfe36115415d6eb8 |
| n88n.rom     | Required for PC-8000 series emulation. (N BASIC mode) | 2ff07b8769367321128e03924af668a0 |
| disk.rom     | Required for loading disk images.                     | 793f86784e5608352a5d7f03f03e0858 |
| n88knj1.rom  | Required for viewing kanji.                           | d81c6d5d7ad1a4bbbd6ae22a01257603 |
| n88_0.rom    | Required.                                             | d675a2ca186c6efcd6277b835de4c7e5 |
| n88_1.rom    |                                                       | e844534dfe5744b381444dbe61ef1b66 |
| n88_2.rom    |                                                       | 6548fa45061274dee1ea8ae1e9e93910 |
| n88_3.rom    |                                                       | fc4b76a402ba501e6ba6de4b3e8b4273 |

### Pseudo BIOS

The core will fall back on pseudo BIOS if required files are missing. In this mode, only PC-8800 series software will be playable and there may be compatibility issues, so providing real BIOS is recommended.

### Font

The files **font.rom**, **font2.rom**, and **font3.rom** can also be loaded from the system directory to specify a font. If these are not found, the core will fall back on a built-in recreation.

## Loading Content

QUASI88 can start using between 0 and 6 disks as content. To start software that requires only one disk, you can load content in any fashion.

### No disks

![](https://media.discordapp.net/attachments/190711783894417410/629547214603026442/unknown.png)

First, load the QUASI88 core. The option "Start Core" will appear on the main menu, which you can use to start the core with no disks inserted.

### Multiple disks (subsystem interface)

![](https://media.discordapp.net/attachments/190711783894417410/629547618644525056/unknown.png)

First, load the QUASI88 core. Options for starting software with between 2 to 6 disks will appear on the main menu.

![](https://cdn.discordapp.com/attachments/190711783894417410/629547869183016971/unknown.png)

Choose the appropriate option and then select the disks you wish to load. Once all the disks have been selected, choose the option labelled "Start X-Disk Game"

### Multiple disks (M3U playlist)

You can create an M3U playlist to easily start the core with multiple disks preloaded instead of using the subsystem interface. Create a text file with the extension ".m3u" and write the filename of each disk on a new line like in the example below.

```
# Ys II (Falcom)
Ys II (Program disk).d88
Ys II (Disk A).d88
Ys II (Disk B).d88
Ys II (User disk).d88
```

### Cycling between disks

If you've loaded multiple disks, you can hold one of the trigger buttons and use the D-Pad to change the disk that's loaded in each drive. Use L for Drive 1 and R for Drive 2. When the shoulder button is released, the chosen disk will be inserted.

## Extensions

Content that can be loaded by the QUASI88 core have the following file extensions:

- **.d88** (PC-8000 / PC-8800 series disk image)
- **.u88** (User disk, same functionality as .d88)
- **.m3u** (Playlist file)

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
| [Softpatching](../guides/softpatching.md) | ✕         |
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

- **Sound board** [q88_sound_board] (**OPN**|OPNA)

    This option changes the Yamaha sound board on the emulated PC. [OPN](https://en.wikipedia.org/wiki/Yamaha_YM2203) is the default option. [OPNA](https://en.wikipedia.org/wiki/Yamaha_YM2608) sound supports more FM channels and PCM samples.

- **Use FDC-Wait** [q88_use_fdc_wait] (**enabled**|disabled)

	This option enables more accurate IO timing for the floppy disk controller. Some software will not work properly with this disabled.

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

| User 1 input descriptors      | RetroPad Inputs                           |
|-------------------------------|-------------------------------------------|
| Z Key                         | ![](../image/retropad/retro_b.png)          |
| Space Key                     | ![](../image/retropad/retro_y.png)          |
| I Key                         | ![](../image/retropad/retro_select.png)     |
| Return Key                    | ![](../image/retropad/retro_start.png)      |
| Keypad 8 (Up)                 | ![](../image/retropad/retro_dpad_up.png)    |
| Keypad 2 (Down)               | ![](../image/retropad/retro_dpad_down.png)  |
| Keypad 4 (Left)               | ![](../image/retropad/retro_dpad_left.png)  |
| Keypad 6 (Right)              | ![](../image/retropad/retro_dpad_right.png) |
| X Key                         | ![](../image/retropad/retro_a.png)          |
| Change loaded disk in drive 1 | ![](../image/retropad/retro_l1.png)         |
| Change loaded disk in drive 2 | ![](../image/retropad/retro_r1.png)         |

### Player 2

| User 2 input descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| Q Key                    | ![](../image/retropad/retro_b.png)          |
| R Key                    | ![](../image/retropad/retro_dpad_up.png)    |
| F Key                    | ![](../image/retropad/retro_dpad_down.png)  |
| D Key                    | ![](../image/retropad/retro_dpad_left.png)  |
| G Key                    | ![](../image/retropad/retro_dpad_right.png) |
| Tab Key                  | ![](../image/retropad/retro_a.png)          |

## External Links

- [Libretro core Github Repository](https://github.com/libretro/quasi88-libretro)
- [Pseudo BIOS, provided by cisc](http://www.retropc.net/cisc/m88/download.html)
