# PUAE

## Background

PUAE tries to continue where E-UAE left off. PUAE versioning is based on the merged WinUAE version.

The PUAE core have been authored by

- UAE Team

The PUAE core is licensed under

- [GPLv2](https://github.com/libretro/libretro-uae/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the PUAE core have the following file extensions:

### Floppies

- .adf
- .adz
- .dms
- .fdi
- .ipf
- .raw

### Hard drives

- .hdf
- .hdz
- directory

### WHDLoad

- .lha
- .slave
- .info

### Compact discs

- .cue
- .ccd
- .chd
- .nrg
- .mds
- .iso

### Other

- .uae
- .m3u
- .zip
- .7z

## Databases

RetroArch database(s) that are associated with the PUAE core:

- [Commodore - Amiga](https://github.com/libretro/libretro-database/blob/master/rdb/Commodore%20-%20Amiga.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

The core has a somewhat compatible built-in AROS Kickstart, which is used as a fallback when the proper Kickstart is not found.

Amiga Forever and TOSEC filenames are also accepted.

| Filename           | Amiga Forever             | Description                        | md5sum                           |
|--------------------|---------------------------|------------------------------------|----------------------------------|
| kick33180.A500     | amiga-os-120.rom          | Kickstart v1.2 rev 33.180          | 85ad74194e87c08904327de1a9443b7a |
| kick34005.A500     | amiga-os-130.rom          | Kickstart v1.3 rev 34.005          | 82a21c1890cae844b3df741f2762d48d |
| kick37175.A500     | amiga-os-204.rom          | Kickstart v2.04 rev 37.175         | dc10d7bdd1b6f450773dfb558477c230 |
| kick37350.A600     | amiga-os-205-a600.rom     | Kickstart v2.05 rev 37.350         | 465646c9b6729f77eea5314d1f057951 |
| kick40063.A600     | amiga-os-310-a600.rom     | Kickstart v3.1 rev 40.063          | e40a5dfb3d017ba8779faba30cbd1c8e |
| kick39106.A1200    | amiga-os-300-a1200.rom    | Kickstart v3.0 rev 39.106          | b7cc148386aa631136f510cd29e42fc3 |
| kick40068.A1200    | amiga-os-310-a1200.rom    | Kickstart v3.1 rev 40.068          | 646773759326fbac3b2311fd8c8793ee |
| kick39106.A4000    | amiga-os-300-a4000.rom    | Kickstart v3.0 rev 39.106          | 9b8bdd5a3fd32c2a5a6f5b1aefc799a5 |
| kick40068.A4000    | amiga-os-310-a4000.rom    | Kickstart v3.1 rev 40.068          | 9bdedde6a4f33555b4a270c8ca53297d |
| kick34005.CDTV     | amiga-os-130-cdtv-ext.rom | CDTV extended ROM v1.00            | 89da1838a24460e4b93f4f0c5d92d48d |
| kick40060.CD32     | amiga-os-310-cd32.rom     | CD32 Kickstart v3.1 rev 40.060     | 5f8924d013dd57a89cf349f4cdedc6b1 |
| kick40060.CD32.ext | amiga-os-310-cd32-ext.rom | CD32 extended ROM rev 40.060       | bb72565701b1b6faece07d68ea5da639 |
| kick40060.CD32     |                           | CD32 KS + extended v3.1 rev 40.060 | f2f241bf094168cfb9e7805dc2856433 |

## Features

Frontend-level settings or features that the PUAE core respect.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✔         |
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
| LEDs              | ✔         |

### Directories

The PUAE core's internal core name is 'puae'.

The PUAE core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.nvr (CD32/CDTV NVRAM)
- `BootHD`/`puae_libretro.hdf` (Optional global boot hard drive image directory/file)
- `WHDLoad`/`WHDLoad.hdf` (WHDLoad helper image directory/file)
- `WHDSaves`/`WHDSaves.hdf` (WHDLoad save image directory/file)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The PUAE core's core provided FPS is dynamic, but initially by default 50 for PAL and 59.94 for NTSC
- The PUAE core's core provided sample rate is 44100 Hz
- The PUAE core's base width is 360 in LoRes, 720 in HiRes 1440 in SuperHires
- The PUAE core's base height is 288 for PAL single line, 576 for PAL double line, 240 for NTSC single line, 480 for NTSC double line
- The PUAE core's max width is 1440
- The PUAE core's max height is 576
- The PUAE core's core provided aspect ratio is automatically set based on core options

### M3U and Disk control

When you have a multi disk game, you can use a M3U playlist file to be able to change disks via RetroArch Disc Control interface.

A M3U file is a simple text file with one disk per line ([Wikipedia](https://en.wikipedia.org/wiki/M3U)).

Example:

`Simpsons, The - Bart vs. The Space Mutants.m3u`
```
Simpsons, The - Bart vs. The Space Mutants_Disk1.adf
Simpsons, The - Bart vs. The Space Mutants_Disk2.adf
```
Path can be absolute or relative to the location of the M3U file.

When the game asks for it, you can change the current disk in the RetroArch "Disc Control" menu:

- Eject the current disk with "Eject Disc"
- Select the right disk index with "Current Disc Index"
- Insert the new disk with "Insert Disc"

For games that support multiple disk drives, append "**(MD)**" as in "MultiDrive" to the M3U filename to insert each disk in different drives. Only possible with maximum 4 disks!

***MultiDrive option is enabled by default, so the tag is not necessary, but some games require disabling it, because they can't handle multiple disk drives.***

For games that require a dedicated save disk, one may be generated automatically by entering the following line in an M3U file: `#SAVEDISK:VolumeName`. `VolumeName` is optional and may be omitted. For example, this will create a blank, unlabelled disk image at disk index 5:

`Secret of Monkey Island.m3u`
```
Secret of Monkey Island_Disk 1.adf
Secret of Monkey Island_Disk 2.adf
Secret of Monkey Island_Disk 3.adf
Secret of Monkey Island_Disk 4.adf
#SAVEDISK:
```

Some games require save disks to have a specific label - for example, `It Came from the Desert` will only save to a disk named `DSAVE`:

`It Came from the Desert.m3u`
```
It Came from the Desert_Disk 1.adf
It Came from the Desert_Disk 2.adf
It Came from the Desert_Disk 3.adf
#SAVEDISK:DSAVE
```

Although one save disk is normally sufficient, an arbitrary number of `#SAVEDISK:VolumeName` lines may be included. Save disks are located in the frontend's save directory, with the following name: `[M3U_FILE_NAME].save[DISK_INDEX].adf`.

By default, RetroArch will display the filename (without extension) of each M3U entry when selecting a disk via the `Current Disc Index` drop-down menu. Custom display labels may be set for each disk using the syntax: `DISK_FILE|DISK_LABEL`. For example, the following M3U file:

`Valhalla & the Fortress of Eve.m3u`
```
Valhalla & the Fortress of Eve_Disk1.adf|Game Disk
Valhalla & the Fortress of Eve_Disk2.adf|Data Disk
Valhalla & the Fortress of Eve_Disk3.adf|Level 1 Disk
Valhalla & the Fortress of Eve_Disk4.adf|Level 2 Disk
Valhalla & the Fortress of Eve_Disk5.adf|Level 3 Disk
Valhalla & the Fortress of Eve_Disk6.adf|Level 4 Disk
```

...will be shown in RetroArch's disk selection menu as:

```
1: Game Disk
2: Data Disk
3: Level 1 Disk
4: Level 2 Disk
5: Level 3 Disk
6: Level 4 Disk
```

If `DISK_LABEL` is intentionally left blank (i.e. `DISK_FILE|`) then only the disk index will be displayed.

Save disks generated by the `#SAVEDISK:` keyword are automatically assigned the label: `Save Disk [SAVE_DISK_INDEX]`.

#### Extra M3U features

- `#SAVEDISK:<label>`
    - Create a save disk in `saves`
- `<disk>.adf|<label>`
    - Set a friendly name (shown in "Disc Control")
- `<disks>.zip#<disk>.adf`
    - Specify a disk inside a ZIP with multiple disks (not needed with single file ZIPs)

M3U playlist supports floppy disks, hard drives (all images are mounted at once) and compact discs.

### ZIP support

ZIPs are extracted to a temporary directory in `saves`, bypassing the default frontend extraction.
The temporary directory is emptied but not removed on exit. ZIP is not repacked, which means saves and highscores are lost.

This allows:

- Automatic M3U playlist generation of all files
- The use of zipped images in M3Us
- If no compatible images are found, the ZIP will be treated as a directory

### Floppy drive sounds

The core has embedded internal floppy drive samples. External sound samples have to be copied from [https://github.com/libretro/libretro-uae/tree/master/sources/uae_data](https://github.com/libretro/libretro-uae/tree/master/sources/uae_data) into a directory named `uae_data` or `uae` in RetroArch `system` directory.

### IPF support

Most full-price commercial Amiga games had some form of custom disk format and/or copy protection. For this reason, most commercial Amiga games cannot be stored in ADF files unaltered, but there is an alternative called Interchangeable Preservation Format (IPF) which was specifically designed for this purpose.

IPF support is done through CAPSIMG library. To enable it you have to put the dynamic library called `capsimg.dll` (Windows) or `capsimg.so` (Linux, macOS) in RetroArch `system` or executable directory.

Compatible CAPSIMG libraries for Windows, macOS and Linux can be found at [http://www.softpres.org/download](http://www.softpres.org/download) and [https://fs-uae.net/download#plugins](https://fs-uae.net/download#plugins)

Compatible CAPSIMG libraries for Android can be found at [https://github.com/rsn8887/capsimg/releases/latest](https://github.com/rsn8887/capsimg/releases/latest)

Please be aware that there are 32-bits and 64-bits versions of the library. Choose the one corresponding to your RetroArch executable.

## Usage

### Default controls

| RetroPad button | Action                        |
|-----------------|-------------------------------|
| D-Pad           | Joystick                      |
| Left Analog     | Mouse                         |
| Right Analog    | Mouse                         |
| B               | Fire button 1 / Red           |
| A               | Fire button 2 / Blue          |
| X               | Space                         |
| L2              | Left mouse button             |
| R2              | Right mouse button            |
| Select (Short)  | Toggle virtual keyboard       |
| Select (Long)   | Toggle statusbar              |
| Select (Hold)   | Fast-Forward                  |

| Keyboard key    | Action                        |
|-----------------|-------------------------------|
| F12             | Toggle statusbar              |
| RControl        | Switch between joystick/mouse |

### Virtual keyboard

The PUAE core has a virtual keyboard that can be accessed by default through RetroPad Select.

The virtual keyboard can be controlled with:

- **RetroPad**

    | Button        | Action              |
    |---------------|---------------------|
    | D-Pad         | Move                |
    | B             | Keypress            |
    | A             | Toggle transparency |
    | Y             | Toggle CapsLock     |
    | Y (Long)      | Quick map button    |
    | Y (Very long) | Quick clear button  |
    | X             | Press Space         |
    | Start         | Press Return        |

- **Keyboard**

    | Key      | Action              |
    |----------|---------------------|
    | Cursors  | Move                |
    | Enter    | Keypress            |
    | CapsLock | Toggle CapsLock     |

- **Mouse**
- **Touch screen**

The virtual keyboard has these additional actions:

- `J/M`  = Switch between joystick/mouse
- `TRBF` = Toggle turbo fire

- CapsLock off:
    - `ASPR` = Toggle aspect ratio
    - `STBR` = Toggle statusbar
- CapsLock on:
    - `CROP` = Toggle crop mode
    - `SVDS` = Create/Insert & remove save disk

- Reset (long press = soft reset, shifted = WHDLoad QuitKey)
- Mouse controls (Left+right button, up, down, left, right)
- Numpad key (Toggles numbers, arrows, Return etc. to numpad variants)

Long press for sticky keys. Stickying the third key will replace the second.

### Joyport control

Some games use mouse instead of joystick. D-Pad can be switched between joystick and mouse control in several ways:

- Use the core option: `Quick Menu -> Options -> RetroPad Joystick/Mouse`
- Bring up the virtual keyboard with `Select` button, and press the key labeled `J/M`
- Press the default keyboard shortcut `Right Control`
- Assign `Switch Joystick/Mouse` to any RetroPad button under `Quick Menu -> Options`

### Model overriding

You can force a specific model if a game needs one (AGA games for instance) either by the "Model" core option or by file path tags.

The "Model" core option at "**Automatic**" will default to A500 when booting floppy disks, A1200 when booting hard drives, and CD32 when booting CD images.

The whole path (filename and directory) will be searched for the following tags if the model is "**Automatic**":

| Floppy | HD/LHA | CD    | String                                      | Result                                       |
|--------|--------|-------|---------------------------------------------|----------------------------------------------|
| **x**  | **x**  |       | **(A500OG)**, **(512K)**, **(512KB)**       | Amiga 500 (0.5MB Chip RAM)                   |
| **x**  | **x**  |       | **(A500)**, **OCS**                         | Amiga 500 (0.5MB Chip RAM + 0.5MB Slow RAM)  |
| **x**  | **x**  |       | **(A500+)**, **(A500PLUS)**                 | Amiga 500+ (1MB Chip RAM)                    |
| **x**  | **x**  |       | **(A600)**, **ECS**                         | Amiga 600 (2MB Chip RAM + 8MB Fast RAM)      |
| **x**  | **x**  |       | **(A1200OG)**, **(A1200NF)**                | Amiga 1200 (2MB Chip RAM)                    |
| **x**  | **x**  |       | **(A1200)**, **AGA**, **CD32**, **AmigaCD** | Amiga 1200 (2MB Chip RAM + 8MB Fast RAM)     |
| **x**  | **x**  |       | **(A4030)**, **(030)**                      | Amiga 4000/030 (2MB Chip RAM + 8MB Fast RAM) |
| **x**  | **x**  |       | **(A4040)**, **(040)**                      | Amiga 4000/040 (2MB Chip RAM + 8MB Fast RAM) |
|        |        | **x** | **CDTV**                                    | Amiga CDTV (1MB Chip RAM)                    |
|        |        | **x** | **(CD32)**, **(CD32NF)**                    | Amiga CD32 (2MB Chip RAM)                    |
|        |        | **x** | **(CD32FR)**, **FastRAM**                   | Amiga CD32 (2MB Chip RAM + 8MB Fast RAM)     |
| **x**  | **x**  | **x** | **NTSC**, **(USA)**                         | NTSC 60Hz                                    |
| **x**  | **x**  | **x** | **PAL**, **(Europe)** (!)                   | PAL 50Hz                                     |
| **x**  |        |       | **(MD)** (!!)                               | Insert each disk in different drives         |
| **x**  | **x**  | **x** | **(CE)**                                    | Force CPU Cycle-exact                        |

- (!) Additional tags: **(Denmark)**, **(Finland)**, **(France)**, **(Germany)**, **(Italy)**, **(Spain)**, **(Sweden)**
- (!!) **Maximum 4 disks**

Example: When launching "Alien Breed 2 AGA.hdf" or "AGA/Alien Breed 2.hdf" the model will be Amiga 1200.

Note: **CD32** and **AmigaCD** are a bit misleading, since they have nothing to do with actual CDs. They are for automatically selecting the appropriate model with certain WHDLoad slaves and AmigaCD-to-HDF conversions.

### WHDLoad

Pre-installed WHDLoad LHA archives can be launched directly without any kind of manual preparing and downloading.

- WHDLoad helper files (Directory or HDF) will be generated to `saves`, `WHDLoad.prefs` will be generated to `system`
- `WHDLoad.prefs` & `WHDLoad.key` will be copied from `system` to the helper image
- Kickstarts will be copied automatically to the helper image
- To update `WHDLoad:` simply delete the directory or the HDF

#### Overrides at startup

- **(Red)** Hold fire button for launch selector
    - For alternate `.info` launching
- **(Red+Blue)** Hold fire + 2nd fire for `ReadMe` + `MkCustom`
    - For creating default `CUSTOM` parameters

#### 'WHDLoad Splash Screen' core option overrides

- **(Blue)** Hold 2nd fire for WHDLoad Config
    - Waits for user input if the slave supports splash screen configurations
- **(LMB)** Hold left mouse button for WHDLoad Splash
    - Briefly shows the splash screen while preloading (default WHDLoad behavior)
- **(RMB)** Hold right mouse button for WHDLoad Config+Splash
    - Always waits for user input at the splash screen

For more detailed history of WHDLoad support visit the [Github repository](https://github.com/libretro/libretro-uae#whdload).

### Using configuration files

You can pass `.uae` configuration files and they will be appended to the core option configuration.

If `puae_libretro_[model].uae` exists in RetroArch `saves` it will be appended to the model preset section.

If `puae_libretro_global.uae` exists in RetroArch `saves` it will be appended to the configuration.

If `[content].uae` exists in RetroArch `saves` it will be appended to the configuration.

The final generated configuration output is available in debug level log.

***Note that the use of configuration files is no longer encouraged or necessary. The core has been modified to always use the core options as a base, so that all custom configurations will be appended to the created configuration, effectively overriding the core options. The problem with this is that changing any core option while the core is running will reset all duplicate configurations. Therefore only add configurations which will require a restart or do not exist in the core options, if you must use a custom uae. If there is an option missing that is a must have, please make an issue about it.***

Example 1: You want to mount four non-RDB HDF files. You have one bootable 1000 MB file called `System.hdf` created with `surfaces=1`, and three non-bootable 2000 MB files called `WHDGamesA.hdf`, `WHDGamesB.hdf`, `WHDGamesC.hdf` created with `surfaces=2`. Your HDF files are located in the folder with absolute path `/emuroms/amiga/hdf/`. For that scenario, you should create a .uae text file with the following content:
```
hardfile=read-write,32,1,2,512,/emuroms/amiga/hdf/System.hdf
hardfile=read-write,32,2,2,512,/emuroms/amiga/hdf/WHDGamesA.hdf
hardfile=read-write,32,2,2,512,/emuroms/amiga/hdf/WHDGamesB.hdf
hardfile=read-write,32,2,2,512,/emuroms/amiga/hdf/WHDGamesC.hdf
```

Example 2: You want to mount a directory full of extracted data as a hard drive:
```
filesystem2=rw,DH0:data:/emuroms/amiga/,0
```

Windows tip:

- If paths are enclosed with quotes, Windows needs double backslashes: `filesystem2=rw,DH0:data:"c:\\emuroms\\amiga",0`.

Linux tip:

- Leave the ending slash to the path to make sure UAE sees it as a directory.

If you are using RDB HDF files, please use `0,0,0,512` instead of geometry numbers like `32,1,2,512`. The geometry will then be read from the file. This only works for RDB HDF files.

## Core options

The PUAE core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Model** [puae_model] (**auto**|A500OG|A500|A500PLUS|A600|A1200OG|A1200|A2000OG|A2000|A4030|A4040|CDTV|CD32|CD32FR)

    'Automatic' switches region per file path tags.

    | Value    | Label                               |
    |----------|-------------------------------------|
    | A500OG   | A500 (v1.2, 0.5M Chip)              |
    | A500     | A500 (v1.3, 0.5M Chip + 0.5M Slow)  |
    | A500PLUS | A500+ (v2.04, 1M Chip)              |
    | A600     | A600 (v3.1, 2M Chip + 8M Fast)      |
    | A1200OG  | A1200 (v3.1, 2M Chip)               |
    | A1200    | A1200 (v3.1, 2M Chip + 8M Fast)     |
    | A2000OG  | A2000 (v1.2, 0.5M Chip + 0.5M Slow) |
    | A2000    | A2000 (v3.1, 1M Chip)               |
    | A4030    | A4000/030 (v3.1, 2M Chip + 8M Fast) |
    | A4040    | A4000/040 (v3.1, 2M Chip + 8M Fast) |
    | CDTV     | CDTV (1M Chip)                      |
    | CD32     | CD32 (2M Chip)                      |
    | CD32FR   | CD32 (2M Chip + 8M Fast)            |

- **Show Automatic Model Options** [puae_model_options_display] (**disabled**|enabled)

    Show/hide default model options (Floppy/HD/CD) for 'Automatic' model. Page refresh by menu toggle required!

- **Automatic Floppy** [puae_model_fd] (A500OG|**A500**|A500PLUS|A600|A1200OG|A1200|A2000OG|A2000|A4030|A4040)

    Default model when floppies are launched with 'Automatic' model. Core restart required.

- **Automatic HD** [puae_model_hd] (A600|A1200OG|**A1200**|A2000|A4030|A4040)

    Default model when HD interface is used with 'Automatic' model. Affects WHDLoad installs and other hard drive images. Core restart required.

- **Automatic CD** [puae_model_cd] (CDTV|**CD32**|CD32FR)

    Default model when compact discs are launched with 'Automatic' model. Core restart required.

- **Kickstart ROM** [puae_kickstart] (**auto**|aros|kick33180.A500|kick34005.A500|kick37175.A500|kick37350.A600|kick40063.A600|kick39106.A1200|kick40068.A1200|kick39106.A4000|kick40068.A4000)

    'Automatic' defaults to the most compatible version for the model. 'AROS' is a built-in replacement with fair compatibility. Core restart required.

- **Chip RAM** [puae_chipmem_size] (**auto**|1|2|3|4)

    'Automatic' defaults to the current preset model. Core restart required.

    | Value | Label                 |
    |-------|-----------------------|
    | auto  | Automatic             |
    | 1     | 0.5M                  |
    | 2     | 1M                    |
    | 3     | 1.5M                  |
    | 4     | 2M                    |

- **Slow RAM** [puae_bogomem_size] (**auto**|0|2|4|6|7)

    'Automatic' defaults to the current preset model. Core restart required.

    | Value | Label                 |
    |-------|-----------------------|
    | auto  | Automatic             |
    | 0     | None                  |
    | 2     | 0.5M                  |
    | 4     | 1M                    |
    | 6     | 1.5M                  |
    | 7     | 1.8M                  |

- **Z2 Fast RAM** [puae_fastmem_size] (**auto**|0|1|2|4|8)

    'Automatic' defaults to the current preset model. Core restart required.

    | Value | Label                 |
    |-------|-----------------------|
    | auto  | Automatic             |
    | 0     | None                  |
    | 1     | 1M                    |
    | 2     | 2M                    |
    | 4     | 4M                    |
    | 8     | 8M                    |

- **Z3 Fast RAM** [puae_z3mem_size] (**auto**|0|1|2|4|8|16|32|64|128|256|512)

    'Automatic' defaults to the current preset model. Core restart required.

    | Value | Label                 |
    |-------|-----------------------|
    | auto  | Automatic             |
    | 0     | None                  |
    | 1     | 1M                    |
    | 2     | 2M                    |
    | 4     | 4M                    |
    | 8     | 8M                    |
    | 16    | 16M                   |
    | 32    | 32M                   |
    | 64    | 64M                   |
    | 128   | 128M                  |
    | 256   | 256M                  |
    | 512   | 512M                  |

- **CPU Model** [puae_cpu_model] (**auto**|68000|68010|68020|68030|68040|68060)

    'Automatic' defaults to the current preset model. Core restart required.

- **FPU Model** [puae_fpu_model] (**auto**|0|68881|68882|cpu)

    'Automatic' defaults to the current preset model. Core restart required.

- **CPU Speed** [puae_cpu_throttle] (-900.0|**0.0**|10000.0)

    Ignored with 'Cycle-exact'.

- **CPU Cycle-exact Speed** [puae_cpu_multiplier] (**0**|1|2|4|8|10|12|16)

    Applies only with 'Cycle-exact'.

    | Value | Label                 |
    |-------|-----------------------|
    | 0     | Default               |
    | 1     | 3.546895 MHz          |
    | 2     | 7.093790 MHz (A500)   |
    | 4     | 14.187580 MHz (A1200) |
    | 8     | 28.375160 MHz         |
    | 10    | 35.468950 MHz         |
    | 12    | 42.562740 MHz         |
    | 16    | 56.750320 MHz         |

- **CPU Compatibility** [puae_cpu_compatibility] (**normal**|compatible|**memory**|exact)

    Some games have graphic and/or speed issues without 'Cycle-exact'. 'Cycle-exact' can be forced with '(CE)' file path tag.

    (x86_64 defaults to **memory**, others to **normal**. 2021 core does not have 'memory' option and defaults to 'exact' instead.)

### Media options

- **Automatic Load Fast-Forward** [puae_autoloadfastforward] (**disabled**|enabled|fd|hd|cd)

    Toggle frontend fast-forward during media access if there is no audio output. Mutes 'Floppy Sound Emulation'.

- **Floppy Speed** [puae_floppy_speed] (**100**|200|400|800|0)

    'Turbo' removes disk rotation emulation.

    | Value | Label                 |
    |-------|-----------------------|
    | 100   | Default (300RPM)      |
    | 200   | 2x (600RPM)           |
    | 400   | 4x (1200RPM)          |
    | 800   | 8x (2400RPM)          |
    | 0     | Turbo                 |

- **Floppy MultiDrive** [puae_floppy_multidrive] (disabled|**enabled**)

    Insert each disk in different drives. Can be forced with '(MD)' file path tag. Maximum is 4 disks due to external drive limit! Not all games support external drives! Core restart required.

- **Floppy Write Protection** [puae_floppy_write_protection] (**disabled**|enabled)

    Set all drives read only. Changing this while emulation is running ejects and reinserts all disks. IPF images are always read only!

- **Floppy Write Redirect** [puae_floppy_write_redirect] (**disabled**|enabled)

    Writes to a substitute disk under 'saves' instead of original disks. Works also with IPF images.

- **CD Speed** [puae_cd_speed] (**100**|0)

    Transfer rate in CD32 is 300KB/s (double-speed), CDTV is 150KB/s (single-speed). 'Turbo' removes seek delay emulation."

    | Value | Label                 |
    |-------|-----------------------|
    | 100   | Default               |
    | 0     | Turbo                 |

- **CD Startup Delayed Insert** [puae_cd_startup_delayed_insert] (**disabled**|enabled)

    Some games fail to load if CD32/CDTV is powered on with CD inserted. 'ON' inserts CD during boot animation.

- **CD32/CDTV Shared NVRAM** [puae_shared_nvram] (**disabled**|enabled)

    'OFF' saves separate files per content. Starting without content uses the shared file. CD32 and CDTV use separate shared files. Core restart required.

- **WHDLoad Support** [puae_use_whdload] (disabled|**files**|hdfs)

    Enable launching pre-installed WHDLoad installs. Creates a helper image for loading content and an empty image for saving. Core restart required.
    - 'Files' creates the data in directories
    - 'HDFs' contains the data in images

- **WHDLoad Theme** [puae_use_whdload_theme] (**default**|native)

    AmigaOS 'system-configuration' color prefs in WHDLoad helper image. Available only with 'Files' mode. Core restart required
    - 'Default' = Black/White/DarkGray/LightGray
    - 'Native'  = Gray/Black/White/LightBlue

- **WHDLoad Splash Screen** [puae_use_whdload_prefs] (**disabled**|config|splash|both)

    Space/Enter/Fire work as the WHDLoad Start-button. Core restart required. 

    Override with buttons while booting:
    - 'Config': Hold 2nd fire / Blue
    - 'Splash': Hold LMB
    - 'Config + Splash': Hold RMB
    - ReadMe + MkCustom: Hold Red+Blue

    | Value  | Label                                 |
    |--------|---------------------------------------|
    | config | Config (Show only if available)       |
    | splash | Splash (Show briefly)                 |
    | both   | Config + Splash (Wait for user input) |

- **WHDLoad NoWriteCache** [puae_use_whdload_nowritecache] (**disabled**|enabled)

    Write cache requires running the core a few frames after closing content to trigger WHDLoad quit and flush cache to disk. 
    QuitKey = '$2b' = '#' = 'LCtrl + Backslash'. Core restart required.

- **Global Boot HD** [puae_use_boot_hd] (**disabled**|files|hdf20|hdf40|hdf80|hdf128|hdf256|hdf512)

    Attach a hard disk meant for Workbench usage, not for WHDLoad! Enabling forces a model with HD interface. Changing HDF size will not replace or edit the existing HDF. Core restart required.

- **Cartridge** [puae_cartridge] (**disabled**)

    Cartridge images go in 'system/uae/' or 'system/uae_data/'. Core restart required.

### Video options

- **Show Video Options** [puae_video_options_display] (**disabled**|enabled)

    Page refresh by menu toggle required!

- **Allow PAL/NTSC Hz Change** [puae_video_allow_hz_change] (disabled|enabled|**locked**)

    Let Amiga decide the exact refresh rate when interlace mode or PAL/NTSC changes.

    'Locked' changes only when video standard changes.

- **Standard** [puae_video_standard] (**PAL auto**|NTSC auto|PAL|NTSC)

    'Automatic' switches region per file path tags.

    Output Hz & height:
    - 'PAL': 50Hz - 288px / 576px
    - 'NTSC': 60Hz - 240px / 480px

- **Pixel Aspect Ratio** [puae_video_aspect] (**auto**|PAL|NTSC|1:1)

    Hotkey toggling disables this option until core restart.

    - 'PAL': 26/25 = 1.04
    - 'NTSC': 43/50 = 0.86

- **Resolution** [puae_video_resolution] (**auto**|auto-lores|auto-superhires|lores|hires|superhires)

    'Automatic' uses 'High' at minimum.
    'Automatic (Low)' allows 'Low'.
    'Automatic (Super-High)' sets max size already at startup.

    | Value           | Label                  |
    |-----------------|------------------------|
    | auto            | Automatic              |
    | auto-lores      | Automatic (Low)        |
    | auto-superhires | Automatic (Super-High) |
    | lores           | Low 360px              |
    | hires           | High 720px             |
    | superhires      | Super-High 1440px      |

- **Line Mode** [puae_video_vresolution] (**auto**|single|double)

    'Automatic' defaults to 'Single Line' and switches to 'Double Line' on interlaced screens.

- **Crop** [puae_crop] (**disabled**|minimum|smaller|small|medium|large|larger|maximum|auto)

    Remove borders according to 'Crop Mode'.

- **Crop Mode** [puae_crop_mode] (**both**|horizontal|vertical|16:9|16:10|4:3|5:4)

    'Horizontal + Vertical' & 'Automatic' removes borders completely.

- **Vertical Position** [puae_vertical_pos] (**auto**|0|-20...70)

    'Automatic' keeps only cropped screens centered. Positive values move upward and negative values move downward.

- **Horizontal Position** [puae_horizontal_pos] (**auto**|0|-40...40)

    'Automatic' keeps screen centered. Positive values move right and negative values move left.

- **Immediate/Waiting Blits** [puae_immediate_blits] (false|immediate|**waiting**)

    'Immediate Blitter' is ignored with 'Cycle-exact'.

- **Collision Level** [puae_collision_level] (none|sprites|**playfields**|full)

    'Sprites and Playfields' is recommended.

- **Remove Interlace Artifacts** [puae_gfx_flickerfixer] (**disabled**|enabled)

    Best suited for still screens, Workbench etc.

- **Frameskip** [puae_gfx_framerate] (**disabled**|1|2)

    Not compatible with 'Cycle-exact'.

- **Color Gamma** [puae_gfx_gamma] (-500|**0**|500)

    Adjust color gamma.

- **Color Depth** [puae_gfx_colors] (16bit|**24bit**)

### On-Screen Display options

- **Virtual KBD Theme** [puae_vkbd_theme] (**auto**|auto_outline|beige|beige_outline|cd32|cd32_outline|light|light_outline|dark|dark_outline)

    The keyboard comes up with RetroPad Select by default.

- **Virtual KBD Transparency** [puae_vkbd_transparency] (0%|**25%**|50%|75%|100%)

    Keyboard transparency can be toggled with RetroPad A.

- **Virtual KBD Dimming** [puae_vkbd_dimming] (0%|**25%**|50%|75%|100%)

    Dimming level of the surrounding area.

- **Statusbar Mode** [puae_statusbar] (**bottom**|bottom_minimal|bottom_basic|bottom_basic_minimal|top|top_minimal|top_basic|top_basic_minimal)

    - 'Full': Joyports + Current image + LEDs
    - 'Basic': Current image + LEDs
    - 'Minimal': Track number + FPS hidden

- **Statusbar Startup** [puae_statusbar_startup] (**disabled**|enabled)

    Show statusbar on startup.

- **Statusbar Messages** [puae_statusbar_messages] (**disabled**|enabled)

    Show messages when statusbar is hidden.

- **Light Pen/Gun Pointer Color** [puae_joyport_pointer_color] (disabled|black|white|red|green|**blue**|yellow|purple)

    Crosshair color for light pens and guns.

### Audio options

- **Show Audio Options** [puae_audio_options_display] (**disabled**|enabled)

    Page refresh by menu toggle required!

- **Stereo Separation** [puae_sound_stereo_separation] (0%|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**)

    Paula sound chip channel panning. Does not affect CD audio.

- **Interpolation** [puae_sound_interpol] (none|**anti**|sinc|rh|crux)

    Paula sound chip interpolation type.

- **Filter** [puae_sound_filter] (**emulated**|off|on)

    'Emulated' allows states between ON/OFF.

- **Filter Type** [puae_sound_filter_type] (**auto**|standard|enhanced)

    'Automatic' picks the filter type for the hardware.

    | Value    | Label     |
    |----------|-----------|
    | auto     | Automatic |
    | standard | A500      |
    | enhanced | A1200     |

- **Floppy Sound Emulation** [puae_floppy_sound] (100|95|90|85|**80**|75|70|65|60|55|50|45|40|35|30|25|20|15|10|5|0)

    ***Values are inverted, '80' = '20% volume'***

- **Floppy Sound Mute Ejected** [puae_floppy_sound_empty_mute] (disabled|**enabled**)

    Mute drive head clicking when floppy is not inserted.

- **Floppy Sound Type** [puae_floppy_sound_type] (**internal**|A500|LOUD)

    External files go in `system/uae_data/` or `system/uae/`.

- **CD Audio Volume** [puae_sound_volume_cd] (0%|5%|10%|15%|20%|25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|**100%**)

    CD volume in percent.

### Input options

- **Analog Stick Mouse** [puae_analogmouse] (disabled|left|right|**both**)

    Default mouse control stick when remappings are empty.

- **Analog Stick Mouse Deadzone** [puae_analogmouse_deadzone] (0|5|10|15|**20**|25|30|35|40|45|50)

    Required distance from stick center to register input.

- **Left Analog Stick Mouse Speed** [puae_analogmouse_speed] (0.1|0.2|0.3|0.4|0.5|0.6|0.7|0.8|0.9|**1.0**|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0|2.1|2.2|2.3|2.4|2.5|2.6|2.7|2.8|2.9|3.0)

    Mouse speed for left analog stick.

- **Right Analog Stick Mouse Speed** [puae_analogmouse_speed_right] (0.1|0.2|0.3|0.4|0.5|0.6|0.7|0.8|0.9|**1.0**|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0|2.1|2.2|2.3|2.4|2.5|2.6|2.7|2.8|2.9|3.0)

    Mouse speed for right analog stick.

- **D-Pad Mouse Speed** [puae_dpadmouse_speed] (0|1|2|3|4|5|**6**|7|8|9|10|11|12|13|14|15|16|17|18)

    Mouse speed for directional pad.

- **Mouse Speed** [puae_mouse_speed] (10|20|30|40|50|60|70|80|90|**100**|110|120|130|140|150|160|170|180|190|200|210|220|230|240|250|260|270|280|290|300)

    Global mouse speed.

- **Physical Mouse** [puae_physicalmouse] (disabled|**enabled**|double)

    'Double' requirements: raw/udev input driver and proper mouse index per port. Does not affect RetroPad emulated mice.

- **Keyboard Pass-through** [puae_physical_keyboard_pass_through] (**disabled**|enabled)

    'ON' passes all physical keyboard events to the core. 'OFF' prevents RetroPad keys from generating keyboard events.

- **Keyrah Keypad Mappings** [puae_keyrah_keypad_mappings] (**disabled**|enabled)

    Hardcoded keypad to joyport mappings for Keyrah hardware.

- **Turbo Fire** [puae_turbo_fire] (**disabled**|enabled)

    Hotkey toggling disables this option until core restart.

- **Turbo Button** [puae_turbo_fire_button] (**B**|A|Y|X|L|R|L2|R2)

    Replace the mapped button with turbo fire button.

- **Turbo Pulse** [puae_turbo_pulse] (2|4|**6**|8|10|12)

    Frames in a button cycle.

- **Joystick/Mouse** [puae_joyport] (**joystick**|mouse)

    Change D-Pad control between joyports. Hotkey toggling disables this option until core restart.

- **Joystick Port Order** [puae_joyport_order] (**1234**|2143|3412|4321)

    Plug RetroPads in different ports. Useful for Arcadia system and games that use the 4-player adapter.

- **RetroPad Face Button Options** [puae_retropad_options] (**disabled**|jump|rotate|rotate_jump)

    Rotate face buttons clockwise and/or make 2nd fire press up.

    | Value       | Label                  |
    |-------------|------------------------|
    | disabled    | B = Fire, A = 2nd fire |
    | jump        | B = Fire, A = Up       |
    | rotate      | Y = Fire, B = 2nd fire |
    | rotate_jump | Y = Fire, B = Up       |

- **CD32 Pad Face Button Options** [puae_cd32pad_options] (**disabled**|jump|rotate|rotate_jump)

    Rotate face buttons clockwise and/or make blue button press up.

    | Value       | Label             |
    |-------------|-------------------|
    | disabled    | B = Red, A = Blue |
    | jump        | B = Red, A = Up   |
    | rotate      | Y = Red, B = Blue |
    | rotate_jump | Y = Red, B = Up   |

- **Show Mapping Options** [puae_mapping_options_display] (disabled|**enabled**)

    Page refresh by menu toggle required!

- **Toggle Virtual Keyboard** [puae_mapper_vkbd] (**---**)

- **Toggle Statusbar** [puae_mapper_statusbar] (**RETROK_F12**)

- **Switch Joystick/Mouse** [puae_mapper_mouse_toggle] (**RETROK_RCTRL**)

- **Toggle Turbo Fire** [puae_mapper_turbo_fire_toggle] (**---**)

- **Toggle Save Disk** [puae_mapper_save_disk_toggle] (**---**)

- **Toggle Aspect Ratio** [puae_mapper_aspect_ratio_toggle] (**---**)

- **Toggle Crop** [puae_mapper_crop_toggle] (**---**)

- **Reset** [puae_mapper_reset] (**---**)

- **RetroPad Up** [puae_mapper_up] (**---**)

- **RetroPad Down** [puae_mapper_down] (**---**)

- **RetroPad Left** [puae_mapper_left] (**---**)

- **RetroPad Right** [puae_mapper_right] (**---**)

- **RetroPad A** [puae_mapper_a] (**---**)

- **RetroPad B** [puae_mapper_b] (**---**)

- **RetroPad X** [puae_mapper_x] (**RETROK_SPACE**)

- **RetroPad Y** [puae_mapper_y] (**---**)

- **RetroPad Select** [puae_mapper_select] (**TOGGLE_VKBD**)

- **RetroPad Start** [puae_mapper_start] (**---**)

- **RetroPad L** [puae_mapper_l] (**---**)

- **RetroPad R** [puae_mapper_r] (**---**)

- **RetroPad L2** [puae_mapper_l2] (**MOUSE_LEFT_BUTTON**)

- **RetroPad R2** [puae_mapper_r2] (**MOUSE_RIGHT_BUTTON**)

- **RetroPad L3** [puae_mapper_l3] (**---**)

- **RetroPad R3** [puae_mapper_r3] (**---**)

- **RetroPad Left Analog Up** [puae_mapper_lu] (**---**)

- **RetroPad Left Analog Down** [puae_mapper_ld] (**---**)

- **RetroPad Left Analog Left** [puae_mapper_ll] (**---**)

- **RetroPad Left Analog Right** [puae_mapper_lr] (**---**)

- **RetroPad Right Analog Up** [puae_mapper_ru] (**---**)

- **RetroPad Right Analog Down** [puae_mapper_rd] (**---**)

- **RetroPad Right Analog Left** [puae_mapper_rl] (**---**)

- **RetroPad Right Analog Right** [puae_mapper_rr] (**---**)

## Controllers

The PUAE core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 - 2 device types

- None - Input disabled.
- **Automatic** - Joypad - Uses RetroPad by default and switches to CD32 Pad with CD32 content.
- RetroPad - Joypad - Standard one or two fire button joystick + customizable buttons with keyboard keys and hotkeys.
- CD32 Pad - Joypad - Standard CD32 controller with unused buttons available for RetroPad extra mappings.
- Analog Joystick - Joypad - Standard Analog joystick with unused buttons available for RetroPad extra mappings.
- Arcadia - Joypad - Arcadia cabinet joystick + keyboard arcade controls.
- Trojan Phazer Lightgun - Lightgun - Trojan Phazer Lightgun.
- Lightpen - Lightgun - Standard lightpen.
- Joystick - Joypad - Standard one or two fire button joystick.
- Keyboard - Keyboard - Keyboard input is always active. Has keymapper support.

### User 3 - 4 device types

- None - Input disabled.
- **RetroPad** - Joypad - Standard one or two fire button joystick + customizable buttons with keyboard keys and hotkeys.
- Joystick - Joypad - Standard one or two fire button joystick.
- Keyboard - Keyboard - Keyboard input is always active. Has keymapper support.

### Other controllers

- Mouse - Enabled by default.

### Controller tables

#### Joypad

![](../image/controller/psx.png)

| Input descriptors for Retropad | RetroPad Inputs                                |
|--------------------------------|------------------------------------------------|
| D-Pad Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| D-Pad Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| B / Fire                       | ![](../image/retropad/retro_b.png)             |
| A / 2nd fire                   | ![](../image/retropad/retro_a.png)             |
| Y                              | ![](../image/retropad/retro_y.png)             |
| X                              | ![](../image/retropad/retro_x.png)             |
| Select                         | ![](../image/retropad/retro_select.png)        |
| Start                          | ![](../image/retropad/retro_start.png)         |
| L                              | ![](../image/retropad/retro_l1.png)            |
| R                              | ![](../image/retropad/retro_r1.png)            |
| L2                             | ![](../image/retropad/retro_l2.png)            |
| R2                             | ![](../image/retropad/retro_r2.png)            |
| L3                             | ![](../image/retropad/retro_l3.png)            |
| R3                             | ![](../image/retropad/retro_r3.png)            |
| Left Analog X                  | ![](../image/retropad/retro_left_stick.png) X  |
| Left Analog Y                  | ![](../image/retropad/retro_left_stick.png) Y  |
| Right Analog X                 | ![](../image/retropad/retro_right_stick.png) X |
| Right Analog Y                 | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for CD32 pad | RetroPad Inputs                                |
|--------------------------------|------------------------------------------------|
| D-Pad Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| D-Pad Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| Red                            | ![](../image/retropad/retro_b.png)             |
| Blue                           | ![](../image/retropad/retro_a.png)             |
| Green                          | ![](../image/retropad/retro_y.png)             |
| Yellow                         | ![](../image/retropad/retro_x.png)             |
| (Select)                       | ![](../image/retropad/retro_select.png)        |
| Play                           | ![](../image/retropad/retro_start.png)         |
| Rewind                         | ![](../image/retropad/retro_l1.png)            |
| Forward                        | ![](../image/retropad/retro_r1.png)            |
| (L2)                           | ![](../image/retropad/retro_l2.png)            |
| (R2)                           | ![](../image/retropad/retro_r2.png)            |
| (L3)                           | ![](../image/retropad/retro_l3.png)            |
| (R3)                           | ![](../image/retropad/retro_r3.png)            |
| (Left Analog X)                | ![](../image/retropad/retro_left_stick.png) X  |
| (Left Analog Y)                | ![](../image/retropad/retro_left_stick.png) Y  |
| (Right Analog X)               | ![](../image/retropad/retro_right_stick.png) X |
| (Right Analog Y)               | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for Joystick | RetroPad Inputs                                |
|--------------------------------|------------------------------------------------|
| D-Pad Up                       | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down                     | ![](../image/retropad/retro_dpad_down.png)     |
| D-Pad Left                     | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right                    | ![](../image/retropad/retro_dpad_right.png)    |
| B / Fire                       | ![](../image/retropad/retro_b.png)             |
| A / 2nd Fire                   | ![](../image/retropad/retro_a.png)             |

| Input descriptors for Analog Joystick | RetroPad Inputs                                |
|---------------------------------------|------------------------------------------------|
| Left Analog X                         | ![](../image/retropad/retro_left_stick.png) X  |
| Left Analog Y                         | ![](../image/retropad/retro_left_stick.png) Y  |
| Fire 1                                | ![](../image/retropad/retro_b.png)             |
| Fire 2                                | ![](../image/retropad/retro_a.png)             |
| Fire 3                                | ![](../image/retropad/retro_y.png)             |
| Fire 4                                | ![](../image/retropad/retro_x.png)             |

#### Keyboard

English layout

| RetroKeyboard Special Inputs | Commodore                   |
|------------------------------|-----------------------------|
| Keyboard Left Meta/Super     | Left Amiga                  |
| Keyboard Right Meta/Super    | Right Amiga                 |
| Keyboard Page Up             | Left Amiga                  |
| Keyboard Page Down           | Right Amiga                 |
| Keyboard Right Control       | Right Amiga                 |
| Keyboard Insert              | Help                        |
| Keyboard Home                | [                           |
| Keyboard End                 | ]                           |

## External Links

- [Libretro PUAE Github repository](https://github.com/libretro/libretro-uae)
- [Report Libretro PUAE core issues here](https://github.com/libretro/libretro-uae/issues)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0IeRAk8nYYneBAHZhbPLvHEz)
