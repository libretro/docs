# Flashback (REminiscence)

==First, make sure these steps are permissible in your locale. RetroArch and LibRetro do not share any copyrighted content.==

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/46S-FDjSjfo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Stuart Carnie has ported REminiscence ,Gregory Montoir’s Flashback emulator, over to libretro! REminiscence is a game engine recreation of the 1992/1993 action adventure game Flashback. It is the spiritual successor of Another World/Out Of This World and it distinguishes itself with rotoscoped graphics, polygonal cutscenes, and a Prince of Persia-style gameplay system.

This port is still a work in progress, however it is in a working state. Currently, it jumps directly into the game, skipping the main menu.

We have also added modplug support to the core for improved music playback.

The REminiscence core has been authored by

- Gregory Montoir
- Stuart Carnie

The REminiscence core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Setup

REminiscence is a rewrite of the engine used in the game Flashback from Delphine Software. This program is designed as a cross-platform replacement for the original executable. The game data files (DOS, PC-CD, Amiga, Macintosh) are required. Apart from that, you can buy it [here on GOG](https://www.gog.com/game/flashback) or [here on Steam](https://store.steampowered.com/app/961620/Flashback/). Create a folder with proper naming. Then follow the `Flashback_Data\StreamingAssets\data` folder to access the data of the Flashback you have. Copy all of the files in the data folder to the folder you just created.

A visual demonstration of setup REminiscence core can be found [here](https://www.youtube.com/watch?v=46S-FDjSjfo).

## Extensions

Content that can be loaded by the REminiscence core have the following file extensions:

- .map (DOS Map Data)
- .aba (DOS (Demo) Map Data)
- .seq (DOS CD Map Data)
- .lev (Amiga Map Data)

RetroArch database(s) that are associated with the REminiscence core:

- [Flashback](https://github.com/libretro/libretro-database/blob/master/rdb/Flashback.rdb)

## Features

Frontend-level settings or features that the REminiscence core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Saves             | -         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | -         |
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

- The REminiscence core's core provided FPS is 50.0
- The REminiscence core's core provided sample rate is 44100 Hz
- The REminiscence core's base width is 256
- The REminiscence core's base height is 224
- The REminiscence core's max width is 1024
- The REminiscence core's max height is 768
- The REminiscence core's core provided aspect ratio is 8/7

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_b.png)             | Draw / Holster           |
| ![](../image/retropad/retro_y.png)             | Inventory / Skip         |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_a.png)             | Use                      |
| ![](../image/retropad/retro_x.png)             | Action                   |

## External Links

- [Official REminiscence Website](http://cyxdown.free.fr/reminiscence/)
- [Libretro REminiscence Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/reminiscence_libretro.info)
- [Libretro REminiscence Github Repository](https://github.com/libretro/REminiscence)
- [Report Libretro REminiscence Core Issues Here](https://github.com/libretro/REminiscence/issues)
- [You can buy a copy of Flashback from GOG](https://www.gog.com/game/flashback)
- [You can buy a copy of Flashback from Steam](https://store.steampowered.com/app/961620/Flashback/)
