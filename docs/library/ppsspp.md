# PSP (PPSSPP)

## Contribute to this documentation

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/ppsspp.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

PPSSPP is a fast and portable Sony PSP emulator

### Why use this core?

Awaiting description.

### How to get and install the PPSSPP core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](images\Cores\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](images\Cores\all\info.png) </center>

- Browse through the list and select 'PSP (PPSSPP)'.

<center> ![](images\Cores\ppsspp\ppsspp.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](images\Cores\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

- If you are asked which core to select, choose 'PSP (PPSSPP)'.

The content should now start running!

### Authors

- Henrik Hrydgard

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The PPSPP core is licensed under

- [GPLv2](https://github.com/libretro/ppsspp/blob/master/LICENSE.TXT)

## Extensions

Content that can be loaded by the PPSSPP core have the following file extensions:

- .elf
- .iso
- .cso
- .prx
- .pbp

## Databases

RetroArch database(s) that are associated with the PPSSPP core:

- [Sony - PlayStation Portable](https://github.com/libretro/libretro-database/blob/master/rdb/Sony%20-%20PlayStation%20Portable.rdb)

## BIOS

The PPSSPP core requires assets files to be fully functional. 

Assets such as fonts and backgrounds that are required for memory card screens.

In order to acquire PPSSPP's assets files and install them succcessfully, follow these steps.

1 . Create a directory named PPSSPP in RetroArch's System directory.

```
- RetroArch
           - System
		           - PPSSPP
```

Here's an example of what it should look like.

![](../image/core/ppsspp/directory.png)

2 . Visit [https://github.com/libretro/ppsspp](https://github.com/libretro/ppsspp) and download the repository.

![](../image/core/ppsspp/download.png)

3 . Extract ppsspp-master.zip

4 . Copy the contents of `ppsspp-master/assets` into 'system/PPSSPP'

The end result should look like this.

![](../image/core/ppsspp/ppsspp_assets.png)

!!! attention
	Don't like PPSSPP's replacement fonts? You can place the original PSP fonts in 'system/PPSSPP/flash0/font'

## Features

RetroArch-level settings or features that the PPSSPP core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔ (not Ad-Hoc emulation) |
| Core Options      | ✔         |
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
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✔         |
| Language          | ✔         |
| Crop Overscan     | ✕         |

### Directories

The PPSSPP core's directory name is 'PPSSPP'

The PPSSPP core saves/loads to/from these directories.

**RetroArch's Save directory**

```
- PSP
     - PPSSPP_STATE (Used to be the state directory, no longer used)
     - SAVEDATA (Game memory stick directories and files)
     - SYSTEM
             - CACHE (Shader cache)
```

**RetroArch's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The PPSSPP core's internal FPS is 60
- The PPSSPP core's internal sample rate is 44100 Hz
- The PPSSPP core's core provided aspect ratio is 16/9

## Core options

The PPSSPP core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **CPU Core** (**jit**/interpreter)

 The jit setting enables the Dynamic Recomplier (Dynarec) for CPU emulation. The Dynarec is much faster than the interpreter setting and is the default, recommended mode for supported architectures.
 
 The interpreter setting enables the Interpreter for CPU emulation. The Interpreter is a very slow type of emulation and mostly useful for debug, but should work anywhere.

- **Locked CPU Speed** (**off**/222MHz/266MHz/333MHz)

 Awaiting description.

- **Language** (**automatic**/english/japanese/french/spanish/german/italian/dutch/portuguese/russian/korean/chinese_traditional/chinese_simplified)

 Configure the PPSSPP's system language.

- **Rendering Mode** (**buffered**/nonbuffered/read_framebuffers_to_memory_cpu/read_framebuffers_to_memory_gpu)

 Awaiting description.

- **Auto Frameskip** (**Off**/On)

 Awaiting description.

- **Frameskip** (**0**/1/2/3/4/5/6/7/8/9)

 Choose how much frames should be skipped to improve performance at the expense of visual smoothness.

- **Framerate limit** (**0**/15/20/30/45/50/60)

 Awaiting description.

- **Force Max FPS** (**Off**/On)

 Prevents FPS form exceeding 60. Can be useful for games such as God of War which exceeds 60 FPS which can reduce the emulation speed.

- **Audio latency** (**0**/1/2)

 Awaiting description.

- **Internal Resolution** (**480x272**/960x544/1440x816/1920x1088/2400x1360/2880x1632/3360x1904/3840x2176/4320x2448/4800x2720" 

 Configure the internal resolution.

- **Output Resolution (restart)** (**480x272**/960x544/1440x816/1920x1088/2400x1360/2880x1632/3360x1904/3840x2176/4320x2448/4800x2720)

 Configure the output resolution.

- **Confirmation Button** (**cross**/circle)

 Select whether the cross input or the circle input is the confirmation button.

- **Fast Memory (Speedhack)** (Off/**On**)

 Awaiting description.

- **Set Rounding Mode** (Off/**On**)

 Awaiting description.

- **Block Transfer GPU** (Off/**On**)

 Awaiting description.

- **Texture Scaling Level** (**1**/2/3/4/5/0)

 Awaiting description.

- **Texture Scaling Type** (xbrz/hybrid/bicubic/hybrid_bicubic)

 Awaiting description.

- **Anisotropic Filtering** (**off**/1x/2x/4x/8x/16x)

 Awaiting description. **Not available on all platforms.**

- **Texture Deposterize** (**Off**/On)

 Awaiting description.

- **Internal Shader** (**off**/fxaa/crt/natural/vignette/grayscale/bloom/sharpen/inverse/scanlines/cartoon/4xHQ/aa-color/upscale)

 Awaiting description.

- **GPU Hardware T&L** (Off/**On**)

 Awaiting description.

- **Vertex Cache (Speedhack)** (Off/**On)

 An optimization, that makes things faster and in turn might miss some changes in geometry - though PPSSPP does its best to make it reliable there are some edge cases it can miss. Turn this off if you see strange graphical glitches.

- **Prescale UV (Speedhack)** (**Off**/On)

 Awaiting description.

- **IO Threading** (**Off**/On)

 Awaiting description.

- **Unsafe FuncReplacements** (Off/**On**)

 Awaiting description.

- **Sound Speedhack** (**Off**/On)

 Awaiting description.

- **Threaded input hack** (**Off**/On)

 Awaiting description.

## Controllers

### Device types

The PPSSPP core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad and analog device type table

![](../image/controller/psp.png)

| User 1 Remap descriptors      | RetroPad Inputs                              |
|-------------------------------|----------------------------------------------|
| Cross                         | ![](../image/retropad/retro_b.png)       |
| Square                        | ![](../image/retropad/retro_y.png)       |
| Select                        | ![](../image/retropad/retro_select.png)        |
| Start                         | ![](../image/retropad/retro_start.png)         |
| D-Pad Up                      | ![](../image/retropad/retro_dpad_up.png)       |
| D-Pad Down                    | ![](../image/retropad/retro_dpad_down.png)     |
| D-Pad Left                    | ![](../image/retropad/retro_dpad_left.png)     |
| D-Pad Right                   | ![](../image/retropad/retro_dpad_right.png)    |
| Circle                        | ![](../image/retropad/retro_a.png)       |
| Triangle                      | ![](../image/retropad/retro_x.png)       |
| L                             | ![](../image/retropad/retro_l1.png)            |
| R                             | ![](../image/retropad/retro_r1.png)            |
| Analog X                      | ![](../image/retropad/retro_left_stick.png) X  |
| Analog Y                      | ![](../image/retropad/retro_left_stick.png) Y  |

## Compatibility

[PPSSPP Compatibility List](http://forums.ppsspp.org/showthread.php?tid=1473)

## External Links

- [Libretro PPSSPP Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/ppsspp_libretro.info)
- [Libretro PPSSPP Github Repository](https://github.com/libretro/ppsspp)
- [Report Libretro PPSSPP Core Issues Here](https://github.com/libretro/ppsspp/issues)
- [Official PPSSPP Website](http://www.ppsspp.org/)
- [Official PPSSPP Github Repository](https://github.com/hrydgard/ppsspp)