# 3D Engine

## Contribute to this documentation

In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/3d_engine.md). Changes are proposed using "Pull Requests."

## Background

A tech demo for libretro GL with additional features (camera/location/etc).

### Why use this core?

Awaiting description.

### How to get and install the 3D Engine core:

1. Start up RetroArch. Inside the main menu, go to 'Online Updater'.

2. Just to make sure we have the latest info files, select 'Update Core Info Files'. Wait until this is done. Then, select 'Core Downloader'.

3. Browse through the list and select '3D Engine'.

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

1. Go back to RetroArch's main menu screen. Select 'Load Content'.

2. Browse to the folder that contains the content you want to run.

3. Select the content that you want to run.

4. If you are asked which core to select, choose '3D Engine'.

The content should now start running!

### Authors

- [Team Libretro](https://www.libretro.com/)

## License

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

- [GPLv3](https://github.com/libretro/libretro-3dengine/blob/master/license)

## Extensions

Content that can be loaded by the 3D Engine core have the following file extensions:

- .png
- .jpg
- .mtl
- .obj

## Features

RetroArch features that the 3D Engine core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✕         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✔         |
| Camera            | ✔         |
| Location          | ✔         |
| Subsystem         | ✕         |
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |

### Directories

The 3D Engine core's directory name is 'Libretro 3DEngine'

### Geometry and timing

The 3D Engine core's internal FPS is 60.0.

The 3D Engine core's internal sample rate is 30000.0 Hz.

The 3D Engine core's core provided aspect ratio is (Ratio).

## Core options

The 3D Engine core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Internal resolution** (**320x240**/360x480/480x272/512x384/512x512/640x240/640x448/640x480/720x576/800x600/960x720/1024x768/1024x1024/1280x720/1280x960/1600x1200/1920x1080/1920x1440/1920x1600/2048x1152/2048x1536/2048x2048/320x240)

<center> Self explanatory. </center>

- **Cube size** (**0**/1/2/4/8/16/32/64/128)

<center> Awaiting description. </center>

- **Cube stride** (2.0 to 8.0 in increments of 1.0. **2.0 is default**)

<center> Awaiting description. </center>

- **Camera enable** (**Off**/On)

<center> Awaiting description. </center>

- **Camera FB Type** (**texture/**/raw framebuffer)

<center> Awaiting description. </center>

- **Sensor enable** (**Off**/On)

<center> Awaiting description. </center>

- **Location enable** (**Off**/On)

<center> Awaiting description. </center>

- **Location camera control** (**Off**/On)

<center> Awaiting description. </center>

- **Discard hack enable** (**Off**/On)

<center> Awaiting description. </center>

- **Location position OSD** (**Off**/On)

<center> Awaiting description. </center>

## Controllers

### Device types

The 3D Engine core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - **There is no reason to switch to this.**

### Controller tables

#### Joypad and analog device type table

| User 1 Remap descriptors | RetroPad Inputs                                | 3D Engine core inputs                    |
|--------------------------|------------------------------------------------|------------------------------------------|
|                          | ![](../image/retropad/retro_b.png)             | Jump/Zoom-in                             |
|                          | ![](../image/retropad/retro_dpad_up.png)       | Move forwards                            |
|                          | ![](../image/retropad/retro_dpad_down.png)     | Move backwards                           |
|                          | ![](../image/retropad/retro_dpad_left.png)     | Turn left                                |
|                          | ![](../image/retropad/retro_dpad_right.png)    | Turn right                               |
|                          | ![](../image/retropad/retro_a.png)             | Zoom-out                                 |
|                          | ![](../image/retropad/retro_l1.png)            | Move left                                |
|                          | ![](../image/retropad/retro_r1.png)            | Move right                               |
|                          | ![](../image/retropad/retro_l2.png)            | Adjust lighting                          |
|                          | ![](../image/retropad/retro_r2.png)            | Adjust lighting                          |
|                          | ![](../image/retropad/retro_r3.png)            | Adjust lighting                          |
|                          | ![](../image/retropad/retro_left_stick.png) X  | Move right or left/Rotate model          |
|                          | ![](../image/retropad/retro_left_stick.png) Y  | Move forwards and backwards/Rotate model |
|                          | ![](../image/retropad/retro_right_stick.png) X | Look right and left                      |
|                          | ![](../image/retropad/retro_right_stick.png) Y | Look up and down/Zoom-in or Zoom-out     |

## External Links

- [Libretro 3D Engine Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/3dengine_libretro.info)
- [Libretro 3D Engine Github Repository](https://github.com/libretro/libretro-3dengine)
- [Report Libretro 3D Engine Core Issues Here](https://github.com/libretro/libretro-3dengine/issues)