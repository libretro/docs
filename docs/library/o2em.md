# Odyssey2 / Videopac+ (O2EM)

## Contribute to this documentation

**DOCUMENTATION IS A WORK IN PROGRESS**

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/o2em.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

O2EM is an open source multi-platform Odyssey2 / Videopac+ emulator. The Odyssey2 (Videopac/Jopac in Europe) was a video game console created in the late 70s.

### Why use this core?

Awaiting description.

### How to get and install the O2EM core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](..\image\core\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](..\image\core\all\info.png) </center>

- Browse through the list and select 'Odyssey2 / Videopac+ (O2EM)'.

<center> ![](..\image\core\updater\o2em.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](..\image\core\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

<center> ![](..\image\core\all\screenshot_name.png) </center>

- If you are asked which core to select, choose 'Odyssey2 / Videopac+ (O2EM)'.

The content should now start running!

### Authors

- Daniel Boris|Andre de la Rocha
- Arlindo M. de Oliveira

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The O2EM core is licensed under

- [Artistic License](https://sourceforge.net/projects/o2em/)

## Extensions

Content that can be loaded by the O2EM core have the following file extensions:

- .bin

## Databases

RetroArch database(s) that are associated with the O2EM core:

- [Magnavox - Odyssey2](https://github.com/libretro/libretro-database/blob/master/rdb/Magnavox%20-%20Odyssey2.rdb)
- [Phillips - Videopac+](https://github.com/libretro/libretro-database/blob/master/rdb/Philips%20-%20Videopac%2B.rdb)

## BIOS

Required or optional firmware files go in RetroArch's system directory.

| Filename   | Description                                      |              md5sum              |
|:----------:|:------------------------------------------------:|:--------------------------------:|
| o2rom.bin  | Odyssey2 BIOS - G7000 model - Required           | 562d5ebf9e030a40d6fabfc2f33139fd |
| c52.bin    | Videopac+ French BIOS - G7000 model - Required   | f1071cdb0b6b10dde94d3bc8a6146387 |
| g7400.bin  | Videopac+ European BIOS - G7400 model - Required | c500ff71236068e0dc0d0603d265ae76 |
| jopac.bin  | Videopac+ French BIOS - G7400 model - Required   | 279008e4a0db2dc5f1c048853b033828 |

## Features

RetroArch-level settings or features that the O2EM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |

### Directories

The O2EM core's directory name is 'O2EM'

### Geometry and timing

- The O2EM core's internal FPS is 60 for NTSC games and 50 for PAL games.
- The O2EM core's internal sample rate is 44100 Hz
- The O2EM core's core provided aspect ratio is 4/3

## Controllers

### Device types

The O2EM core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 2 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad - Optional description.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

#### Other controllers

The O2EM core accepts keyboard inputs as well. Look at the Keyboard section below for more information.

### Controller tables

#### Joypad and analog device type table

| User 1 Remap descriptors | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| Fire                     | ![](../image/retropad/retro_a.png)             |

| User 2 Remap descriptors | RetroPad Inputs                                |
|--------------------------|------------------------------------------------|
| Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| Action                   | ![](../image/retropad/retro_a.png)           |

#### Keyboard device type table

| RetroKeyboard Inputs          | Keyboard           |
|-------------------------------|--------------------|
| Keyboard Return               | Enter              |
| Keyboard Space                | Space              |
| Keyboard .                    | .                  |
| Keyboard /                    | /                  |
| Keyboard 0                    | 0                  |
| Keyboard 1                    | 1                  |
| Keyboard 2                    | 2                  |
| Keyboard 3                    | 3                  |
| Keyboard 4                    | 4                  |
| Keyboard 5                    | 5                  |
| Keyboard 6                    | 6                  |
| Keyboard 7                    | 7                  |
| Keyboard 8                    | 8                  |
| Keyboard 9                    | 9                  |
| Keyboard -                    | -                  |
| Keyboard =                    | =                  |
| Keyboard ?                    | ?                  |
| Keyboard a                    | a                  |
| Keyboard b                    | b                  |
| Keyboard c                    | c                  |
| Keyboard d                    | d                  |
| Keyboard e                    | e                  |
| Keyboard f                    | f                  |
| Keyboard g                    | g                  |
| Keyboard h                    | h                  |
| Keyboard i                    | i                  |
| Keyboard j                    | j                  |
| Keyboard k                    | k                  |
| Keyboard l                    | l                  |
| Keyboard m                    | m                  |
| Keyboard n                    | n                  |
| Keyboard o                    | o                  |
| Keyboard p                    | p                  |
| Keyboard q                    | q                  |
| Keyboard r                    | r                  |
| Keyboard s                    | s                  |
| Keyboard t                    | t                  |
| Keyboard u                    | u                  |
| Keyboard v                    | v                  |
| Keyboard w                    | w                  |
| Keyboard x                    | x                  |
| Keyboard y                    | y                  |
| Keyboard z                    | z                  |
| Keyboard End                  | Clear              |

## Compatibility

Awaiting description.

## External Links

- [Libretro O2EM Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/o2em_libretro.info)
- [Libretro O2EM Github Repository](https://github.com/libretro/libretro-o2em)
- [Report Libretro O2EM Core Issues Here](https://github.com/libretro/libretro-o2em/issues)
- [Official O2EM Website](http://o2em.sourceforge.net/)
- [Official O2EM SourceForge Repository](https://sourceforge.net/projects/o2em/)