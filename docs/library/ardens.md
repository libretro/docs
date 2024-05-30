# Ardens

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/jeTeVY7TJ_Y" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

## Background

Ardens is a simulator for the Arduboy FX. 

The Ardens core has been authored by

- [Peter Brown](https://github.com/tiberiusbrown)

The Ardens core is licensed under

- [MIT](https://github.com/tiberiusbrown/Ardens/blob/master/LICENSE.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements¶

None

## BIOS¶

The Ardens core does not feature BIOS use.

## Extensions

Content that can be loaded by the Ardens core have the following file extensions:

- `.hex` or `.arduboy`

RetroArch database(s) that are associated with the Ardens core:

- [`Arduboy Inc - Arduboy.rdb`](https://github.com/libretro/libretro-database/blob/master/rdb/Arduboy%20Inc%20-%20Arduboy.rdb)

## Features

Frontend-level settings or features that the Ardens core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | -         |
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

## Geometry and timing

- The Ardens core's core provided FPS is 60
- The Ardens core's base width is 128
- The Ardens core's base height is 64
- The Ardens core's max width is 128
- The Ardens core's max height is 64


## User 1 device types

The Ardens core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Doesn't disable input.
- **RetroPad**
- RetroPad w/Analog


## Joypad

| RetroPad Inputs                                | User 1 input descriptors | 
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Button B                 |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     | 
| ![](../image/retropad/retro_dpad_right.png)    | Right                    | 
| ![](../image/retropad/retro_a.png)             | Button A                 | 


## External Links

- [Official Ardens Website](https://github.com/tiberiusbrown/Ardens)
- [Libretro Ardens Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/ardens_libretro.info)
- [Report Libretro Ardens Core Issues Here](https://github.com/tiberiusbrown/Ardens/issues)
