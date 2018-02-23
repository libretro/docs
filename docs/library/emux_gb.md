# Game Boy/Game Boy Color (Emux GB)

## Contribute to this documentation

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/emux_gb.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

Emux is a cross-platform emulator project with a goal of emulating multiple kinds of machines related to gaming, such as consoles or arcades. Its philosophy is very much inspired by the Linux kernel (hence the name), which brilliantly manages to support multiple machines while keeping drivers entirely platform-independent. Emux is designed in the same way, keeping a code base of CPUs and controllers separate from machines.

### Why use this core?

Awaiting description.

### How to get and install the Emux GB core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](images\Cores\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](images\Cores\all\info.png) </center>

- Browse through the list and select 'Game Boy/Game Boy Color (Emux GB)'.

<center> ![](images\Cores\emux\emux_gb.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](images\Cores\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

<center> ![](images\Cores\all\gb.png) </center>

- If you are asked which core to select, choose 'Game Boy/Game Boy Color (Emux GB)'.

The content should now start running!

### Authors

- Sebastien Ronsse

## See also

### GB/GBC

- [Game Boy / Game Boy Color (Gambatte)](https://docs.libretro.com/library/gambatte/)
- [Game Boy / Game Boy Color (SameBoy)](https://docs.libretro.com/library/sameboy/)
- [Game Boy / Game Boy Color (TGB Dual)](https://docs.libretro.com/library/tgb_dual/)
- [Game Boy / Game Boy Color (Gearboy)](https://docs.libretro.com/library/gearboy/)
- [Game Boy Advance (mGBA)](https://docs.libretro.com/library/mgba/)

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The Emux GB core is licensed under

- [GPLv2](https://github.com/libretro/emux/blob/master/COPYING)

## Extensions

Content that can be loaded by the Emux GB core have the following file extensions:

- .gb
- .bin
- .rom

## Databases

RetroArch database(s) that are associated with the Emux GB core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

## BIOS

Required or optional firmware files go in RetroArch's system directory.

|   Filename    |    Description                 |              md5sum              |
|:-------------:|:------------------------------:|:--------------------------------:|
| dmg_boot.bin   | Game Boy Boot ROM - Required   | 32fbbd84168d3482956eb3c5051637f5 |

## Features

RetroArch-level settings or features that the Emux GB core respects.

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
| Remapping         | ✕         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |

### Directories

The Emux GB core's directory name is 'emux (gb)'

### Geometry and timing

- The Emux GB core's internal FPS is (FPS)
- The Emux GB core's internal sample rate is (Rate)
- The Emux GB core's core provided aspect ratio is (Ratio)

## Controllers

### Device types

The Emux GB core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There is no reason to switch to this.

### Controller tables

#### Joypad and analog device type table

| User 1 Input descriptors      | RetroPad Inputs                              | RetroPad           |
|-------------------------------|----------------------------------------------|--------------------|
|                               | ![](images/RetroPad/Retro_B_Round.png)       | B                  |
|                               | ![](images/RetroPad/Retro_Select.png)        | Select             |
|                               | ![](images/RetroPad/Retro_Start.png)         | Start              |
|                               | ![](images/RetroPad/Retro_Dpad_Up.png)       | D-Pad Up           |
|                               | ![](images/RetroPad/Retro_Dpad_Down.png)     | D-Pad Down         |
|                               | ![](images/RetroPad/Retro_Dpad_Left.png)     | D-Pad Left         |
|                               | ![](images/RetroPad/Retro_Dpad_Right.png)    | D-Pad Right        |
|                               | ![](images/RetroPad/Retro_A_Round.png)       | A                  |

## Compatibility

Awaiting description.

## External Links

- [Libretro Emux GB Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/emux_gb_libretro.info)
- [Libretro Emux GB Github Repository](https://github.com/libretro/emux)
- [Report Libretro Emux GB Core Issues Here](https://github.com/libretro/libretro-meta/issues)
- [Official Emux GB Github Repository](https://github.com/sronsse/emux)
