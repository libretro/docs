# Palm OS (Mu)

## Background

Mu is the first Palm OS emulator capable of actually playing Palm games. It is currently capable of playing most 160×160 Palm OS 4 software perfectly. There are a few hardware abstraction glitches and sound FIFO inaccuracies but other than that the device works and the audio plays normally, with no hacks done to the OS.

The Mu core has been authored by:

- guicrith / meepingsnesroms; Stephanie Gawroriski (Xer Shadow Tail)

The Mu core is licensed under:

- [CC BY-NC 3.0 US (Non-commercial)](http://creativecommons.org/licenses/by-nc/3.0/us/)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

[Required or optional firmware files](https://docs.libretro.com/library/bios/) go in the frontend's system directory:

| Filename          | Description                     | md5sum                           |
|:-----------------:|:-------------------------------:|:--------------------------------:|
| `palmos40-en-m500.rom` | Palm OS 4.0 for m500 | `f50e4d5e4d98dc831f2c34a9107651eb` |
| `palmos41-en-m515.rom` | Palm OS 4.1 for m515 | `83cb1d1c76e568b916dc2e7c0bf669f6` |
| `palmos52-en-t3.rom` | Palm OS 5.2 for Tungsten T3 | `de46ec84d9aabf655eabdf9b00a3845d` |
| `bootloader-dbvz.rom` | | `9da101cd2317830649a31f8fa46debec` |

The BIOS file corresponding to the selected model is required, default is the m515.

## Extensions

Content that can be loaded by the Mu core have the following file extensions:

- `.prc`, `.pqa`, `.pdb`
- `.zip`
- `.img` - image file for the MMC card

RetroArch database(s) that are associated with the Mu core: none yet.

## Features

Frontend-level settings or features that the Mu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | -         |
| Netplay           | -         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | -         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✔         |

## Geometry and timing

- The Mu core's core provided FPS is 60
- The Mu core's core provided sample rate is 48000
- The Mu core's base width is 160
- The Mu core's base height is 220
- The Mu core's max width is 320
- The Mu core's max height is 480
- The Mu core's core provided aspect ratio is 8:11

## Core options

The Mu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Core has to be closed for all settings to be applied on next launch.

- CPU Speed (**1.0**|1.5|2.0|2.5|3.0|0.5)
- Force Match System Clock (**disabled**|enabled)
- Ignore Invalid Behavior (**disabled**|enabled)
- Use Left Joystick As Mouse (**disabled**|enabled)
- Disable Graffiti Area (**disabled**|enabled)
- OS Version (**Palm m515/Palm OS 4.1**|Tungsten T3/Palm OS 5.2.1|Tungsten T3/Palm OS 6.0|Palm m500/Palm OS 4.0)

## Joypad

| RetroPad Inputs                                | Palm OS Inputs |
|------------------------------------------------|----------------|
| ![](../image/retropad/retro_b.png)             | To Do List     |
| ![](../image/retropad/retro_y.png)             | Date Book      |
| ![](../image/retropad/retro_select.png)        | D-Pad Center   |
| ![](../image/retropad/retro_start.png)         | Power          |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up       |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down     |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left (OS5 only)  |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right (OS5 only) |
| ![](../image/retropad/retro_a.png)             | Note Pad       |
| ![](../image/retropad/retro_x.png)             | Address Book   |
| ![](../image/retropad/retro_r1.png)            | Touchscreen click/tap  |
| ![](../image/retropad/retro_left_stick.png)    | Touchscreen movement   |

## Pointer

| RetroPointer Inputs                                                                                                      | Palm OS Inputs      |
|--------------------------------------------------------------------------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Touchscreen movement |
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | Touchscreen click/tap |

## External Links

- [Original Mu Website](https://meepingsnesroms.github.io/)
- [Original Mu Repository](https://github.com/meepingsnesroms/Mu)
- [Libretro Mu Core info file](https://github.com/libretro/Mu/blob/master/libretroBuildSystem/mu_libretro.info)
- [Libretro Mu Repository](https://github.com/libretro/Mu)
- [Report Libretro Mu Core Issues Here](https://github.com/libretro/Mu/issues)
