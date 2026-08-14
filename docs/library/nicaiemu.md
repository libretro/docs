# Nicai (NicaiEmu)

## Background

Nicai is a game format developed by MStar for feature phones (circa 2005–2011). Games are packaged as `.cbe` (Cool Bar Engine) container archives and run on ARM/Thumb hardware with a 240x400 (WQVGA) display. The games contain scenes, maps, actors, images, audio, and scripts executed by the XSE (eXecutable Script Engine) virtual machine. NicaiEmu is an emulator for this format written in Rust, with a libretro core front-end.

The NicaiEmu core has been authored by:

- Aloys

The NicaiEmu core is licensed under:

- [BSD-3-Clause](https://github.com/jiangxincode/NicaiEmu/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

No BIOS or firmware files are required.

## Extensions

Content that can be loaded by the NicaiEmu core have the following file extensions:

- .cbe

RetroArch database(s) that are associated with the NicaiEmu core:

- Nicai

## Features

Frontend-level settings or features that the NicaiEmu core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The NicaiEmu core's library name is 'Nicai (NicaiEmu)'

## Usage

The NicaiEmu core requires the full path to content, so content is loaded directly from disk rather than from memory.

Video is output in the XRGB8888 pixel format and audio is output as 44.1 kHz stereo. Save states, core options, and guest memory descriptors (system RAM and video RAM) are implemented. Guest MIDI audio is synthesized, and an auto-BGM compatibility layer can play the first packaged MIDI resource for games that never call the audio manager.

## Core options

The NicaiEmu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Audio Volume (%)** (**100**|90|80|70|60|50|40|30|20|10|0)

	Master playback volume.

- **Key Auto-Repeat Delay (frames)** (**10**|0|2|4|6|8|12|16|20|24|30|45|60)

	Frames a held key waits before repeating (at 30fps).

- **Key Auto-Repeat Period (frames)** (**15**|1|2|3|4|5|6|8|10|12|20|30)

	Frames between repeat pulses once repeating.

- **Touch/Pointer Input** (**enabled**|disabled)

	Whether mouse/touchscreen taps reach the guest.

- **CPU/HLE Debug Logging** (**disabled**|enabled)

	Forward debug-level core logs to the frontend log.

- **Auto BGM (packaged MIDI)** (**disabled**|enabled)

	Play the first packaged MIDI resource when the game never calls the audio manager.

## User 1 device types

The NicaiEmu core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad** - Gamepad
- **Pointer** - Mouse / touchscreen

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Confirm                  |
| ![](../image/retropad/retro_a.png)             | Confirm                  |
| ![](../image/retropad/retro_x.png)             | Left soft key            |
| ![](../image/retropad/retro_y.png)             | Right soft key           |
| ![](../image/retropad/retro_start.png)         | Confirm                  |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |

## Pointer

| RetroPointer Inputs                                                                                    | NicaiEmu Inputs |
|-------------------------------------------------------------------------------------------------------|-----------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Pointer X/Y     |
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | Press           |

## Compatibility

Compatibility is limited to a subset of CBE applications.

## External links

- [NicaiEmu Repository](https://github.com/jiangxincode/NicaiEmu)
- [Libretro NicaiEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/nicaiemu_libretro.info)
- [Report Libretro NicaiEmu Core Issues Here](https://github.com/jiangxincode/NicaiEmu/issues)
