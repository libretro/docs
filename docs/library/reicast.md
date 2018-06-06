# Sega Dreamcast (Reicast)

## Contribute to this documentation

In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/reicast.md). Changes are proposed using "Pull Requests."

## Background

Reicast is a multi-platform Sega Dreamcast emulator. 

### Why use this core?

Awaiting description.

### How to get and install the Reicast core:

1. Start up RetroArch. Inside the main menu, go to 'Online Updater'.

2. Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

3. Browse through the list and select 'Sega Dreamcast (Reicast)'.

After this has finished downloading, the core should now be ready for use!

#### How to play (after installation):

1. Go back to RetroArch's main menu screen. Select 'Load Content'.

2. Browse to the folder that contains the content you want to run.

3. Select the content that you want to run.

4. If you are asked which core to select, choose 'Sega Dreamcast (Reicast)'.

The game should now start running!

### Authors

- skmp

## See also

- [Sega Dreamcast (Redream)](https://docs.libretro.com/library/redream/) - Shared platforms.

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

- [GPLv2](https://github.com/reicast/reicast-emulator/blob/master/LICENSE)

## Extensions

Content that can be loaded by the Reicast core have the following file extensions:

- .cdi
- .gdi
- .chd
- .cue

## Databases

RetroArch database(s) that are associated with the Reicast core:

- [Sega - Dreamcast](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Dreamcast.rdb)

## BIOS

Required or optional firmware files go in RetroArch's system directory.

|   Filename      |    Description                |              md5sum              |
|:--------------:|:------------------------------:|:--------------------------------:|
| dc/dc_boot.bin  | Dreamcast BIOS - Requried     | e10c53c2f8b90bab96ead2d368858623 |
| dc/dc_flash.bin | Date/Time/Language - Required | 0a93f7940c455905bea6e392dfde92a4 |

!!! attention
	The 'dc_boot.bin' and 'dc_flash.bin' firmware files need to be in a directory named 'dc' in RetroArch's system directory.
	
## Features

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Crop Overscan (in RetroArch's Video settings) | ✕         |

### Directories

The Reicast core's directory name is 'Reicast'

The Reicast core creates these files in RetroArch's system directory.

- dc/vmu_save_A1.bin
- dc/vmu_save_B1.bin
- dc/vmu_save_C1.bin
- dc/vmu_save_D1.bin
- dc/data/dc_nvmem.bin

- dc directory ()
-- vmu_save_A1.bin ()
-- vmu_save_B1.bin ()
-- vmu_save_C1.bin ()
-- vmu_save_D1.bin ()
-- data directory ()
--- dc_nvmem.bin ()

### Core provided aspect ratio

Reicast's core provided aspect ratio is 4/3.

### Rumble

Rumble only works when the Joypad being used has rumble functionality and the Joypad input driver being used has rumble function implementation (e.g. **Xinput**).

## Core options

The Reicast core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CPU Mode (restart)** (**dynamic_recomplier**/generic_recomplier)

<center> Awaiting description. </center>

- **Boot to BIOS (restart)** (**Off**/On)

<center> Boot directly into the Dreamcast BIOS menu. </center>

- **Internal resolution (restart)** (**640x480**/1280x960/1920x1440/2560x1920/3200x2400/3840x2880/4480x3360/5120x3840/5760x4320/6400x4800/7040x5280/7680x5760/8320x6240/8960x6720/9600x7200/10240x7680/10880x8160/11520x8640/12160x9120/12800x9600)

<center> Self explanatory. </center>

<center>

??? note "Internal resolution - 640x480"
	![](..\image\core\reicast\640x480.png)
	
</center>

<center>
	
??? note "Internal resolution - 1920x1440"
	![](..\image\core\reicast\1920x1440.png)
	
</center>

- **Mipmapping** (Off/**On**)

<center> Awaiting description. </center>

- **Volume modifier mode** (**Off**/debug/on/full)

<center> Awaiting description. </center>

- **Widescreen hack** (**Off**/On)

<center> Awaiting description. </center>

- **Audio buffer size** (**1024**/2048)

<center> Awaiting description. </center>

- **Cable type** (**TV (VBS/Y+S/C)**/TV (RGB)/VGA (RGB))

<center> Awaiting description. </center>

- **Broadcast** (**4**/0/1/2/3)

<center> Awaiting description. </center>

- **Framerate** (**normal**/fullspeed)

<center> Awaiting description. </center>

- **Region** (**3**/0/1/2)

<center> Awaiting description. </center>

- **Precompile shaders** (**Off**/On)

<center> Awaiting description. </center>

- **"Enable RTT (Render To Texture)** (Off/**On**)

<center> Awaiting description. </center>

- **Purupuru Pack (restart)** (Off/**On**)

<center> Awaiting description. </center>

## Controllers

### Device types

The Reicast core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 4 device types

- None - Input disabled.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table

![](../image/controller/dc.png)

| User 1 - 4 input descriptors |                                             | RetroPad           |
|------------------------------|---------------------------------------------|--------------------|
| A                            | ![](../image/retropad/retro_b.png)      | A                  |
| X                            | ![](../image/retropad/retro_y.png)      | X                  |
| Start                        | ![](../image/retropad/retro_start.png)        | Start              |
| D-Pad Up                     | ![](../image/retropad/retro_dpad_up.png)      | D-Pad Up           |
| D-Pad Down                   | ![](../image/retropad/retro_dpad_down.png)    | D-Pad Down         |
| D-Pad Left                   | ![](../image/retropad/retro_dpad_left.png)    | D-Pad Left         |
| D-Pad Right                  | ![](../image/retropad/retro_dpad_right.png)   | D-Pad Right        |
| B                            | ![](../image/retropad/retro_a.png)      | B                  |
| Y                            | ![](../image/retropad/retro_x.png)      | Y                  |
| L (fierce)                   | ![](../image/retropad/retro_l1.png)           | L (fierce)         |
| R (fierce)                   | ![](../image/retropad/retro_r1.png)           | R (fierce)         |
| L (weak)                     | ![](../image/retropad/retro_l2.png)           | L (weak)           |
| R (weak)                     | ![](../image/retropad/retro_r2.png)           | R (weak)           |
| Analog X                     | ![](../image/retropad/retro_left_stick.png) X | Analog X           |
| Analog Y                     | ![](../image/retropad/retro_left_stick.png) Y | Analog Y           |

## Compatibility

### General Reicast Issues

- The date and time do not seem to get properly saved, as the system will ask you to set the clock every time you start. 
- Once you save to a VMU slot with any game, that VMU becomes inaccessible the next time you load the emulator. 
- Polygon sorting issues can make objects appear distorted. 
- When using an Xbox 360 Controller, analog triggers don't work properly. Use the bumpers instead. 
- Changing games without closing and reloading RetroArch often leads to RetroArch crashing. 

| Game                                        | Issue                                                                                                                                                                                                                                                                  |
|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Capcom vs. SNK: Millennium Fight 2000 (PAL) | The "KO" text appears distorted.                                                                                                                                                                                                                                       |
| Crazy Taxi (PAL)                            | Player taxis do not emit engine sounds.                                                                                                                                                                                                                                |
| Crazy Taxi (USA)                            | Player taxis do not emit engine sounds.                                                                                                                                                                                                                                |                                                                                                                                                                                                                                |
| Jet Grind Radio (USA)                       | Police reports during levels do not display correctly. |
| Sonic Adventure (PAL)                       | Must be set to use "VGA" output in core options, as "TV" mode will cause all subsequent FMV to make RetroArch become unresponsive.                                                                                                                                     |
| Sonic Adventure 2 (USA)                     | Text during score tally will flicker sometimes (Wild Canyon as Knuckles).                                                                                                       |
| Super Runabout: San Francisco (USA)         | Crash to desktop with no error message.                                                                                                                                                                                                                                |

## External Links

- [Libretro Reicast Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/reicast_libretro.info)
- [Libretro Reicast Github Repository](https://github.com/libretro/reicast-emulator)
- [Report Libretro Reicast Core Issues Here](https://github.com/libretro/reicast-emulator/issues)
- [Official Reicast Website](http://reicast.com/)
- [Official Reicast Github Repository](https://github.com/reicast/reicast-emulator)
