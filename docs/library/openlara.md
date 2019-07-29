# Tomb Raider (OpenLara)

## Background

A new work-in-progress Tomb Raider game engine ported to libretro.

This game engine recreation seeks to allow you to play the original Tomb Raider engine games, from 1 all the way up to 5.

OpenLara V1 Tomb Raider 1 is fully playable.

The nice thing about OpenLara is that, while staying true to the original look and feel of the original, it also adds some enhancements to it that manages to make the boxy old-school Tomb Raider games look a bit less archaic. Some examples include :

- The framerate is no longer fixed to 30fps, and you can now run it at a smooth 60fps framerate. There are even more framerate options, allowing you to play at 90fps, 120fps or even 144fps.
- You can set the internal resolution of the game.
- New water effects which replaces the simple vertex manipulation of the water surface on the PSX. The Saturn version actually was the only version that tried to do something a bit more sophisticated with the water.
- Self-shadowing on all the player models (although this still has some visual anomalies at places).
- Improved lighting effects, including colored lighting (you can see the save crystals emanating a blue light for instance, something which definitely was not in any of the prior Tomb Raider versions).
- Shading effects – after Lara gets out of the water, her skin has a slightly wet shading effect.
- There is also a brand new local multiplayer mode. You toggle the game into splitscreen mode by pressing Start at any one time. From there, you can see a second Lara character, which is only distinguished from the main character by a slightly jerky animation update routine. Player 2 can now take control of this Lara and you can engage in ‘jolly co-operation’. At all times, Player 1 can beckon Player 2 back to his position by pressing the Start button, which resets player 2’s position back to Player 1’s so that Player 2 can always be brought back in case he/she is running too far astray.
- There is also a first person view that you can toggle into by pressing the Look button (L button) and then pressing the Action button (B button). This gives you a Mirror’s Edge-esque first person view.
- The ability to target two enemies at the same time individually.
- The graphical enhancements can all be toggled on/off inside the game’s inventory settings screen (toggleable by pressing the Select button).

The OpenLara core has been authored by

- XProger

The OpenLara core is licensed under

- [2-clause BSD](https://github.com/XProger/OpenLara/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Requirements

This core requires that you use OpenGL as the video driver. Go to Settings -> Driver. If ‘video driver’ is set to ‘vulkan’, switch it back to ‘gl’, and then restart.

![](/image/core/openlara/gl.png)

!!! attention 
	There is currently no ‘working’ macOS version available due to the OpenGL requirement.

## Extensions

Content that can be loaded by the OpenLara core have the following file extensions:

- .phd
- .psx
- .tr2

RetroArch dat that is associated with the OpenLara core:

- [Tomb Raider](https://raw.githubusercontent.com/libretro/libretro-database/master/dat/Tomb%20Raider.dat)

## Features

Frontend-level settings or features that the OpenLara core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
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

## Directories

The OpenLara core's library name is 'OpenLara'

To achieve a continuous game that loads from one level to the next you can load directly from CD
or preferably setup the content folder like this:

| Folder   | File Type(s)                             | Description                             |
|:--------:|:----------------------------------------:|:---------------------------------------:|
| audio/1/ | track_XX.ogg or XXX.ogg                  | X represents a number                   |
| audio/2/ | track_XX.ogg and MAIN.SFX                | Both tracks and MAIN.SFX are required   |
| audio/3/ | track_XX.ogg and MAIN.SFX                | Both tracks and MAIN.SFX are required   |
| level/1/ | *.PNG and *.PHD or *.PSX or *.SAT        | Load-screens and levels                 |
| level/2/ | *.PNG and *.TR2 or *.PSX                 | Load-screens and levels                 |
| level/3/ | *.PNG and *.TR2 or *.PSX                 | Load-screens and levels                 |
| video/1/ | *.RPL or *.FMV                           | Video cut-scenes                        |
| video/2/ | *.RPL or *.FMV                           | Video cut-scenes                        |
| video/3/ | *.RPL or *.FMV                           | Video cut-scenes                        |

!!! note
    if you load from CD you won't have soundtrack in TR1


The OpenLara core saves/loads to/from these directories.

| File                        | Description  |
|:---------------------------:|:------------:|
| system/openlara/*.xsh       | Shader files |
| saves/openlara/savegame.dat | Savegame     |
| saves/openlara/settings     | Settings     |

## Geometry and timing

- The OpenLara core's core provided FPS is dependent on the ['Framerate' core option](https://docs.libretro.com/library/openlara/#core-options).
- The OpenLara core's core provided sample rate is 44100 Hz
- The OpenLara core's base width is 320
- The OpenLara core's base height is 240
- The OpenLara core's max width is dependent on the ['Internal resolution' core option](https://docs.libretro.com/library/openlara/#core-options)
- The OpenLara core's max height is dependent on the ['Internal resolution' core option](https://docs.libretro.com/library/openlara/#core-options)
- The OpenLara core's core provided aspect ratio is 4/3

## Core options

The OpenLara core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Framerate (restart)** [openlara_framerate] (**60fps**|70fps|72fps|75fps|90fps|100fps|119fps|120fps|
144fps|240fps|244fps|15fps|30fps)

	Modify framerate. Requires a restart.
	
- **Internal resolution (restart)** [openlara_resolution] (**320x240**|360x480|480x272|512x384|512x512|640x240|
640x448|640x480|720x576|800x600|960x720|1024x768|
1024x1024|1280x720|1280x960|1600x1200|1920x1080|
1920x1440|1920x1600|2048x2048|2560x1440|
3840x2160|7680x4320|15360x8640|16000x9000)

	Modify the internal resolution. Requires a restart.
	
??? note "Internal resolution - 320x240"
	![](/image/core/openlara/320x240.png)

??? note "Internal resolution - 1920x1080"
	![](/image/core/openlara/1920x1080.png)	

## Joypad

| RetroPad Inputs                                | User 1 input descriptors |
|------------------------------------------------|--------------------------|
| ![](/image/retropad/retro_b.png)             | Action (Shoot/grab)      |
| ![](/image/retropad/retro_y.png)             | Jump                     |
| ![](/image/retropad/retro_select.png)        | Inventory                |
| ![](/image/retropad/retro_start.png)         | Start                    |
| ![](/image/retropad/retro_dpad_up.png)       | Up                       |
| ![](/image/retropad/retro_dpad_down.png)     | Down                     |
| ![](/image/retropad/retro_dpad_left.png)     | Left                     |
| ![](/image/retropad/retro_dpad_right.png)    | Right                    |
| ![](/image/retropad/retro_a.png)             | Roll                     |
| ![](/image/retropad/retro_x.png)             | Draw weapon              |
| ![](/image/retropad/retro_r1.png)            | Walk (when holding)      |
| ![](/image/retropad/retro_l2.png)            | Duck/Crouch (TR3 and up) |
| ![](/image/retropad/retro_r2.png)            | Dash (TR3 and up)        |

## External Links

- [Official OpenLara Github Repository](https://github.com/XProger/OpenLara)
- [Official OpenLara Website](http://xproger.info/projects/OpenLara/)
- [Libretro OpenLara Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/openlara_libretro.info)
- [Libretro OpenLara Github Repository](https://github.com/libretro/OpenLara)
- [Report Libretro OpenLara Core Issues Here](https://github.com/libretro/libretro-meta/issues)
