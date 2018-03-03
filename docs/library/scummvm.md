# ScummVM

## Background

ScummVM is an interpreter program which allows you to run certain classic graphical point-and-click adventure games, provided you already have their data files. The clever part about this: ScummVM just replaces the executables shipped with the games, allowing you to play them on systems for which they were never designed

### Author/License

The ScummVM core has been authored by

- [ScummVM Team](http://www.scummvm.org/credits/)

The ScummVM core is licensed under

- [GPLv2](https://github.com/libretro/scummvm/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the ScummVM core have the following file extensions:

- .scummvm

## Databases

RetroArch database(s) that are associated with the ScummVM core:

- [ScummVM](https://github.com/libretro/libretro-database/blob/master/rdb/ScummVM.rdb)

## Features

Frontend-level settings or features that the ScummVM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
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
| LEDs              | ✕         |

### Directories

The ScummVM core's directory name is 'scummvm'

The ScummVM core saves/loads to/from these directories.

**Frontend's Save directory**

- Game saves

**Frontend's System directory**

- scummvm.ini (ScummVM Config File)

### Geometry and timing

- The ScummVM core's core provided FPS is 60
- The ScummVM core's core provided sample rate is 44100 Hz
- The ScummVM core's core provided aspect ratio is 4/3

## Scanning Support

To allow launching ScummVM games from the menu, you'll need to do the following:

1. Look up the Game ID of the game you're looking to add to the menu. Game IDs can be found in [ScummVM's compatibility list](http://scummvm.org/compatibility).
    > `monkey` for Monkey Island

2. Inside the game directory, create a `.scummvm` file, named by the Game ID
    > `monkey.scummvm` for Monkey Island

3. Open up the file in a text editor, and enter in the Game ID.
    > `echo monkey > monkey.scummvm`

4. (Optional) Alternatively, you could download a prepared `.scummvm` file from [libretro-database-scummvm](https://github.com/RobLoach/libretro-database-scummvm/tree/master/games).

5. Scan each game directory

This is an example of what the playlist would look like:

```
    /storage/roms/scummvm/monkey/monkey.scummvm
    The Secret of Monkey Island
    /tmp/cores/scummvm_libretro.so
    ScummVM
    b0e2af30|crc
    ScummVM.lpl
```
## Controllers

The ScummVM core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

| User 1 Remap descriptors | RetroPad Inputs                                | ScummVM Core Inputs |
|--------------------------|------------------------------------------------|---------------------|
| Mouse Button 2           | ![](../image/retropad/retro_b.png)             | Mouse Button 2      |
| ScummVM GUI              | ![](../image/retropad/retro_select.png)        | ScummVM GUI         |
| Esc                      | ![](../image/retropad/retro_start.png)         | Esc                 |
| Mouse Up                 | ![](../image/retropad/retro_dpad_up.png)       | Mouse Up            |
| Mouse Down               | ![](../image/retropad/retro_dpad_down.png)     | Mouse Down          |
| Mouse Left               | ![](../image/retropad/retro_dpad_left.png)     | Mouse Left          |
| Mouse Right              | ![](../image/retropad/retro_dpad_right.png)    | Mouse Right         |
| Mouse Button 1           | ![](../image/retropad/retro_a.png)             | Mouse Button 1      |
|                          | ![](../image/retropad/retro_left_stick.png) X  | Mouse Left/Right    |
|                          | ![](../image/retropad/retro_left_stick.png) Y  | Mouse Up/Down       |

#### Mouse

| RetroMouse Inputs                                   | ScummVM Core Inputs      |
|-----------------------------------------------------|--------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Mouse Cursor             |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Mouse Button 1           |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Mouse Button 2           |

#### Pointer

| RetroPointer Inputs                                                                                                  | ScummVM Core Inputs |
|----------------------------------------------------------------------------------------------------------------------|---------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Mouse Cursor        | 
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | Mouse Button 1      |

## Compatibility

- [ScummVM Compatibility List](https://www.scummvm.org/compatibility/)

## External Links

- [Official ScummVM Website](http://scummvm.org/)
- [Official ScummVM Github Repository](https://github.com/scummvm/scummvm)
- [Libretro ScummVM Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/scummvm_libretro.info)
- [Libretro ScummVM Github Repository](https://github.com/libretro/scummvm)
- [Report Libretro ScummVM Core Issues Here](https://github.com/libretro/scummvm/issues)