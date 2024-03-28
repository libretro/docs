# Magnavox - Odyssey2 / Philips Videopac+ (O2EM)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/JvxqCJS0hyg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

O2EM is an open source multi-platform Odyssey2 / Videopac+ emulator. The Odyssey2 (Videopac/Jopac in Europe) was a video game console created in the late 70s.

The O2EM core has been authored by

- Daniel Boris
- Andre de la Rocha
- Arlindo M. de Oliveira

The O2EM core is licensed under

- [Artistic License](https://sourceforge.net/projects/o2em/)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename   | Description                                      |              md5sum              |
|:----------:|:------------------------------------------------:|:--------------------------------:|
| o2rom.bin  | Odyssey2 BIOS - G7000 model - Required           | 562d5ebf9e030a40d6fabfc2f33139fd |
| c52.bin    | Videopac+ French BIOS - G7000 model - Required   | f1071cdb0b6b10dde94d3bc8a6146387 |
| g7400.bin  | Videopac+ European BIOS - G7400 model - Required | c500ff71236068e0dc0d0603d265ae76 |
| jopac.bin  | Videopac+ French BIOS - G7400 model - Required   | 279008e4a0db2dc5f1c048853b033828 |

Currently the libretro core only works with the o2rom.bin. As a workaround for playing Videopac+ games, you can rename the g7400.bin firmware file into o2rom.bin, and the core plays it correctly as a Videopac+ game.

## Extensions

Content that can be loaded by the O2EM core have the following file extensions:

- .bin

RetroArch database(s) that are associated with the O2EM core:

- [Magnavox - Odyssey2](https://github.com/libretro/libretro-database/blob/master/rdb/Magnavox%20-%20Odyssey2.rdb)
- [Philips - Videopac+](https://github.com/libretro/libretro-database/blob/master/rdb/Philips%20-%20Videopac%2B.rdb)

## Features

Frontend-level settings or features that the O2EM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
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

The O2EM core's library name is 'O2EM'

The O2EM core saves/loads to/from these directories.

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The O2EM core's core provided FPS is 60 for NTSC games and 50 for PAL games
- The O2EM core's core provided sample rate is 44100 Hz
- The O2EM core's base width is 340
- The O2EM core's base height is 250
- The O2EM core's max width is 340
- The O2EM core's max height is 250
- The O2EM core's core provided aspect ratio is 4/3

## Core options

The O2EM core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Emulated Hardware (Restart)** [o2em_bios]  (**o2rom.bin**|Videopac G7000 (European)|Videopac+ G7400 (European)|Videopac+ G7400 (French))
	
	Specify which console hardware to emulate. Requires the corresponding bios file to be present in the frontend 'system' directory (o2rom.bin, c52.bin, g7400.bin, jopac.bin)

- **Console Region (Restart)** [o2em_region]  (**Auto**|NTSC|PAL)
	
	Specify which region the system is from. 'Auto' chooses the correct region based on emulated hardware. 'NTSC' is 60hz, 'PAL' is 50hz. Games may run abnormally if the wrong region is selected, and the setting my be overridden if the current content is incompatible.

- **Swap Gamepads** [o2em_swap_gamepads]  (**disabled**|enabled)
	
	Swap inputs from the two connected controllers of the emulated console. Required for games such as UFO and P.T. Barnum's Acrobats, which accept player 1 input from the second controller.

- **Virtual keyboard transparency** [o2em_vkb_transparency]  (**0%**|25%|50%|75%)

	Set transparency level of the virtual on-screen keyboard.

??? note "Virtual keyboard transparency - 0%"
	![](../image/core/o2em/0.png)

??? note "Virtual keyboard transparency - 25%"
	![](../image/core/o2em/25.png)

??? note "Virtual keyboard transparency - 50%"
	![](../image/core/o2em/50.png)

??? note "Virtual keyboard transparency - 75%"
	![](../image/core/o2em/0.png)

- **Crop Overscan** [o2em_crop_overscan]  (**disabled**|enabled)
	
	Remove the border around the edges of the screen, typically unused by games and hidden by the bezel of a standard-definition television.

- **Interframe Blending** [o2em_mix_frames]  (**Simple**|Ghosting (65%)|Ghosting (75%)|Ghosting (85%)|Ghosting (95%))
	
	Simulate CRT phosphor ghosting effects. 'Simple' performs a 50:50 mix of the current and previous frames. 'Ghosting' accumulates pixels from multiple successive frames. May be used to alleviate screen flicker.

- **Audio Volume** [o2em_audio_volume]  (**50%**|0%)|5%)|10%)|15%|20%|25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|100%)
	
	Set output audio volume level.

- **Voice Volume** [o2em_voice_volume]  (**70%**|0%)|5%)|10%)|15%|20%|25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|100%)
	
	Set output volume level of 'The Voice' speech samples. The voice sampleset WAV files must be placed in the frontend 'system/voice' directory.

- **Audio Filter** [o2em_low_pass_filter]  (**disabled**|enabled)
	
	Apply a low pass audio filter to soften the 'harsh' sound effects produced by most Odyssey2/Videopac+ games.

- **Audio Filter Level** [o2em_low_pass_range]  (**60%**|0%)|5%)|10%)|15%|20%|25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|100%)
	
	Specify the cut-off frequency of the low pass audio filter. A higher value increases the perceived 'strength' of the filter, since a wider range of the high frequency spectrum is attenuated.

## Joypad

| RetroPad Inputs                              | User 1 input descriptors |
|----------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_b.png)             | Action / Press Key (Virtual Keyboard) |
| ![](../image/retropad/retro_y.png)             | Move Virtual Keyboard Up/Down |
| ![](../image/retropad/retro_select.png)        | Show/Hide Virtual Keyboard    |

| RetroPad Inputs                              | User 2 input descriptors |
|----------------------------------------------|--------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Up                       |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    |
| ![](../image/retropad/retro_b.png)             | Action                   |

In some games, for example UFO/Satellite Attack, the original had the joypads swapped so that Player 1 was on Joypad 2. If you only use one Joypad, a workaround is to provide identical assignments of both Retropads to one joystick and save it as Game Remap or Core Remap.

## Keyboard

| RetroKeyboard Inputs         | O2EM Inputs |
|------------------------------|-------------|
| Keyboard Return              | Enter       |
| Keyboard Space               | Space       |
| Keyboard Minus -             | -           |
| Keyboard Period .            | .           |
| Keyboard Slash /             | /           |
| Keyboard 0                   | 0           |
| Keyboard 1                   | 1           |
| Keyboard 2                   | 2           |
| Keyboard 3                   | 3           |
| Keyboard 4                   | 4           |
| Keyboard 5                   | 5           |
| Keyboard 6                   | 6           |
| Keyboard 7                   | 7           |
| Keyboard 8                   | 8           |
| Keyboard 9                   | 9           |
| Keyboard Equals =            | =           |
| Keyboard Question ?          | ?           |
| Keyboard a                   | a           |
| Keyboard b                   | b           |
| Keyboard c                   | c           |
| Keyboard d                   | d           |
| Keyboard e                   | e           |
| Keyboard f                   | f           |
| Keyboard g                   | g           |
| Keyboard h                   | h           |
| Keyboard i                   | i           |
| Keyboard j                   | j           |
| Keyboard k                   | k           |
| Keyboard l                   | l           |
| Keyboard m                   | m           |
| Keyboard n                   | n           |
| Keyboard o                   | o           |
| Keyboard p                   | p           |
| Keyboard q                   | q           |
| Keyboard r                   | r           |
| Keyboard s                   | s           |
| Keyboard t                   | t           |
| Keyboard u                   | u           |
| Keyboard v                   | v           |
| Keyboard w                   | w           |
| Keyboard x                   | x           |
| Keyboard y                   | y           |
| Keyboard z                   | z           |
| Keyboard End                 | Clear       |

## External Links

- [Official O2EM Website](http://o2em.sourceforge.net/)
- [Official O2EM SourceForge Repository](https://sourceforge.net/projects/o2em/)
- [Libretro O2EM Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/o2em_libretro.info)
- [Libretro O2EM Github Repository](https://github.com/libretro/libretro-o2em)
- [Report Libretro O2EM Core Issues Here](https://github.com/libretro/libretro-o2em/issues)
- [Gameplay Videos](https://youtube.com/playlist?list=PLRbgg4gk_0IdZx5HP3o3h8iNkzOx8l4Dn)
