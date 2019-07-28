# Doom (PrBoom)

## Background

Port of prboom to libretro - plays Doom, Doom II, Final Doom and other Doom IWAD mods. 

The PrBoom core has been authored by

- Florian Schulze

The PrBoom core is licensed under

- [GPLv2](https://github.com/libretro/libretro-prboom/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename                                                                         | Description           |
|:--------------------------------------------------------------------------------:|:---------------------:|
| [prboom.wad](https://github.com/libretro/libretro-prboom/blob/master/prboom.wad) | PrBoom requires data ROM 'prboom.wad' inside the ROM directory. |

## Extensions

Content that can be loaded by the PrBoom core have the following file extensions:

- .wad
- .iwad
- .pwad

RetroArch database(s) that are associated with the PrBoom core:

- [DOOM](https://github.com/libretro/libretro-database/blob/master/rdb/DOOM.rdb)

## Features

Frontend-level settings or features that the PrBoom core respects.

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
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
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

The PrBoom core's library name is 'PrBoom'

The PrBoom core saves/loads to/from these directories.

**Frontend's Save directory**

| File                      | Description |
|:-------------------------:|:-----------:|
| (content name)/*.dsg      | Save        |
| (content name)/prboom.cfg | DOOM Config |

### Geometry and timing

- The PrBoom core's core provided FPS (by default) is 60
- The PrBoom core's core provided sample rate is 44100 Hz
- The PrBoom core's base width is dependent on the Internal resolution core option.
- The PrBoom core's base height is dependent on the Internal resolution core option.
- The PrBoom core's max width is dependent on the Internal resolution core option.
- The PrBoom core's max height is dependent on the Internal resolution core option.
- The PrBoom core's core provided aspect ratio is 4/3

## Loading DOOM

PrBoom can load wad, iwad, and pwad files. The PrBoom core requires data ROM ['prboom.wad'](https://github.com/libretro/libretro-prboom/blob/master/prboom.wad) inside the loaded content's directory.

You must use a separate folder for each wad to be able to have all Dooms use their correct music

An example folder structure would be like so:

```
└── roms/
    └── ports/
        ├── doom/
        │   ├── doom.wad
        │   ├── prboom.wad
        │   └── doommusic.mp3
        └── doom2/
            ├── doom2.wad
            ├── prboom.wad
            └── doom2music.mp3
```

Game saves and internal configuration files will be created in the frontend-defined save directory, organised in folders matching the filenames of loaded content - for example:

```
└── saves/
    └── PrBoom/
        ├── doom/
        │   ├── prbmsav0.dsg
        │   ├── prbmsav1.dsg
        │   └── prboom.cfg
        └── doom2/
            ├── prbmsav0.dsg
            ├── prbmsav1.dsg
            └── prboom.cfg
```

Game saves are numbered from 'prbmsav0.dsg' to 'prbmsav7.dsg'.

## Music

The PrBoom core is not able to play the music files inside the wad files (they are in a proprietary midi format).

To enable music in your Doom game(s) you need to copy MP3s with specific names into the same folder as your ROMs are located. You can find a list of names [here](https://github.com/libretro/libretro-prboom/blob/master/src/m_misc.c#L605): 

They follow the scheme e1m1.mp3, e1m2.mp3, ..., e2m1.mp, e2m2.mp3, ... . 

Tracks are freely available - find them by searching for "PSX Doom Music".

If you are having trouble with the audio not playing after you have renamed all the MP3s, try clearing all the ID3 tag information for each of the MP3s.

Below are the corresponding tracks if the MP3s are named:

| File Name  | mp3                                 |
|------------|-------------------------------------|
| mus_e1m1   | "level 01 (hangar).mp3"             |
| mus_e1m2   | "level 02 (plant).mp3"              |
| mus_e1m3   | "level 03 (toxin refinery).mp3"     |
| mus_e1m4   | "level 04 (command control).mp3"    |
| mus_e1m5   | "level 05 (phobos lab).mp3"         |
| mus_e1m6   | "level 06 (central processing).mp3" |
| mus_e1m7   | "level 07 (computer station).mp3"   |
| mus_e1m8   | "level 08 (phobos anomaly).mp3"     |
| mus_e1m9   | "level 06 (fistula).mp3"            |
| mus_e2m1   | "level 09 (deimos anomaly).mp3"     |
| mus_e2m2   | "level 10 (containment area).mp3"   |
| mus_e2m3   | "level 11 (refinery).mp3"           |
| mus_e2m4   | "level 12 (deimos lab).mp3"         |
| mus_e2m5   | "level 13 (command center).mp3"     |
| mus_e2m6   | "level 02 (plant).mp3"              |
| mus_e2m7   | "level 01 (hangar).mp3"             |
| mus_e2m8   | "level 03 (toxin refinery).mp3"     |
| mus_e2m9   | "level 02 (virgil).mp3"             |
| mus_e3m1   | "level 17 (hell keep).mp3"          |
| mus_e3m2   | "level 03 (canyon).mp3"             |
| mus_e3m3   | "level 18 (pandemonium).mp3"        |
| mus_e3m4   | "level 06 (central processing).mp3" |
| mus_e3m5   | "level 20 (unholy cathedral).mp3"   |
| mus_e3m6   | "level 21 (mt erebus).mp3"          |
| mus_e3m7   | "level 22 (limbo).mp3"              |
| mus_e3m8   | "level 09 (nessus).mp3"             |
| mus_e3m9   | "level 10 (paradox).mp3"            |
| mus_inter  | "e2m3.mp3"                          |
| mus_intro  | "track 02 title screen.mp3"         |
| mus_bunny  | "track 03 main menu.mp3"            |
| mus_victor | "track 09 endgame.mp3"              |
| mus_introa | "track 02 title screen.mp3"         |
| mus_runnin | "level 01 (hangar).mp3"             |
| mus_stalks | "level 10 (containment area).mp3"   |
| mus_countd | "level 22 (limbo).mp3"              |
| mus_betwee | "level 16 (hell gate).mp3"          |
| mus_doom   | "level 08 (phobos anomaly).mp3"     |
| mus_the_da | "level 21 (mt erebus).mp3"          |
| mus_shawn  | "level 20 (unholy cathedral).mp3"   |
| mus_ddtblu | "level 24 (hell beneath).mp3"       |
| mus_in_cit | "level 11 (refinery).mp3"           |
| mus_dead   | "level 13 (command center).mp3"     |
| mus_stlks2 | "level 09 (deimos anomaly).mp3"     |
| mus_theda2 | "level 17 (hell keep).mp3"          |
| mus_doom2  | "level 08 (minos).mp3"              |
| mus_ddtbl2 | "level 16 (hell gate).mp3"          |
| mus_runni2 | "level 04 (combine).mp3"            |
| mus_dead2  | "level 18 (pandemonium).mp3"        |
| mus_stlks3 | "level 06 (central processing).mp3" |
| mus_romero | "level 05 (phobos lab).mp3"         |
| mus_shawn2 | "level 10 (containment area).mp3"   |
| mus_messag | "level 01 (attack).mp3"             |
| mus_count2 | "level 02 (plant).mp3"              |
| mus_ddtbl3 | "level 03 (toxin refinery).mp3"     |
| mus_ampie  | "level 01 (hangar).mp3"             |
| mus_theda3 | "level 06 (fistula).mp3"            |
| mus_adrian | "level 07 (computer station).mp3"   |
| mus_messg2 | "level 08 (phobos anomaly).mp3"     |
| mus_romer2 | "level 11 (refinery).mp3"           |
| mus_tense  | "level 07 (geryon).mp3"             |
| mus_shawn3 | "level 05 (catwalk).mp3"            |
| mus_openin | "level 04 (command control).mp3"    |
| mus_evil   | "level 16 (hell gate).mp3"          |
| mus_ultima | "level 03 (toxin refinery).mp3"     |
| mus_read_m | "track 03 main menu.mp3"            |
| mus_dm2ttl | "track 02 title screen.mp3"         |
| mus_dm2int | "track 05 stats screen.mp3"         |

## Config

PrBoom's internal game settings can be found in the 'prboom.cfg' file inside each game's save directory.

Many of these settings may be changed from the in-game menu. A few notable options are as follows:

- Options → General (page 1) → Framerate (35fps|40fps|50fps|**60fps**|70fps|72fps|75fps|90fps|100fps|
119fps|120fps|140fps|144fps|240fps|244fps)
	
	Vanilla Doom has a native framerate of 35fps. This should be considered the 'correct' value, but it can lead to an irregular 'stuttering' effect on 60Hz LCD displays.
	
	All framerates should maintain the proper game speed.

- Options → General (page 1) → Gamma Correction (**Off**|Lv. 1|Lv. 2|Lv. 3|Lv. 4)

	Sets display brightness.

- Options → Screen Size (**Low**|High)

	When set to 'Low', the HUD is shown at the bottom of the screen.
	
	When set to 'High', the gameplay area fills the screen and no HUD is shown.

- Options → Mouse Sensitivity

	The 'horizontal' slider sets the movement speed when looking left/right with either the mouse or the gamepad right analog stick.

## Core options

The PrBoom core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Internal resolution (restart)** [prboom-resolution] (**320x200**|640x400|960x600|1280x800|1600x1000|1920x1200)

	Configure the resolution.
	
??? note "Internal resolution - 320x200"
	![](/image/core/prboom320x200.png)
	
??? note "Internal resolution - 1920x1200"
	![](/image/core/prboom1920x1200.png)	
	
- **Mouse active when using Gamepad** [prboom-mouse_on] (**disabled**|enabled)

	Allows you to use mouse inputs even when User 1's device type isn't set to 'RetroKeyboard/Mouse'.
	
- **Look on parent folders for IWADs** [prboom-find_recursive_on] (**enabled**|disabled)

	Scans parent folders for IWADs. NOTE: You need to disable this if you want to run SIGIL.

- **Analog Deadzone (percent)** [prboom-analog_deadzone] (**15**|20|25|30|0|5|10)

	Sets the deadzone of the Gamepad analog sticks when the input device type is set to 'Gamepad Modern'.
	
## User 1 device types

The PrBoom core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Input disabled.
- **Gamepad Classic** - Joypad
- **Gamepad Modern** - Joypad
- **RetroKeyboard/Mouse** - Keyboard and Mouse - Switch to this for keyboard and mouse input. Has keymapper support.

## Joypad

| User 1 input descriptors for 'Gamepad Classic' device type | RetroPad Inputs                             | PrBoom inputs   |
|------------------------------------------------------------|---------------------------------------------|-----------------|
| Use                                                        | ![](/image/retropad/retro_b.png)          | Use             |
| Run                                                        | ![](/image/retropad/retro_y.png)          | Run             |
| Show/Hide Map                                              | ![](/image/retropad/retro_select.png)     | Show/Hide Map   |
| Show/Hide Menu                                             | ![](/image/retropad/retro_start.png)      | Show/Hide Menu  |
| D-Pad Up                                                   | ![](/image/retropad/retro_dpad_up.png)    | D-Pad Up        |
| D-Pad Down                                                 | ![](/image/retropad/retro_dpad_down.png)  | D-Pad Down      |
| D-Pad Left                                                 | ![](/image/retropad/retro_dpad_left.png)  | D-Pad Left      |
| D-Pad Right                                                | ![](/image/retropad/retro_dpad_right.png) | D-Pad Right     |
| Fire                                                       | ![](/image/retropad/retro_a.png)          | Fire            |
| Strafe                                                     | ![](/image/retropad/retro_x.png)          | Strafe          |
| Strafe Left                                                | ![](/image/retropad/retro_l1.png)         | Strafe Left     |
| Strafe Right                                               | ![](/image/retropad/retro_r1.png)         | Strafe Right    |
| Previous Weapon                                            | ![](/image/retropad/retro_l2.png)         | Previous Weapon |
| Next Weapon                                                | ![](/image/retropad/retro_r2.png)         | Next Weapon     |

| User 1 input descriptors for 'Gamepad Modern' device type | RetroPad Inputs                                | PrBoom inputs           |
|-----------------------------------------------------------|------------------------------------------------|-------------------------|
| Menu Cancel                                               | ![](/image/retropad/retro_b.png)             | Menu Cancel             |
| Quick Save                                                | ![](/image/retropad/retro_y.png)             | Quick Save              |
| Show/Hide Map                                             | ![](/image/retropad/retro_select.png)        | Show/Hide Map           |
| Show/Hide Menu                                            | ![](/image/retropad/retro_start.png)         | Show/Hide Menu          |
| D-Pad Up                                                  | ![](/image/retropad/retro_dpad_up.png)       | D-Pad Up                |
| D-Pad Down                                                | ![](/image/retropad/retro_dpad_down.png)     | D-Pad Down              |
| D-Pad Left                                                | ![](/image/retropad/retro_dpad_left.png)     | D-Pad Left              |
| D-Pad Right                                               | ![](/image/retropad/retro_dpad_right.png)    | D-Pad Right             |
| Menu Select                                               | ![](/image/retropad/retro_a.png)             | Menu Select             |
| Quick Load                                                | ![](/image/retropad/retro_x.png)             | Quick Load              |
| Previous Weapon                                           | ![](/image/retropad/retro_l1.png)            | Previous Weapon         |
| Next Weapon                                               | ![](/image/retropad/retro_r1.png)            | Next Weapon             |
| Use                                                       | ![](/image/retropad/retro_l2.png)            | Use                     |
| Fire                                                      | ![](/image/retropad/retro_r2.png)            | Fire                    |
| Toggle Run                                                | ![](/image/retropad/retro_l3.png)            | Toggle Run              |
| 180 Turn                                                  | ![](/image/retropad/retro_r3.png)            | 180 Turn                |
|                                                           | ![](/image/retropad/retro_left_stick.png) X  | Strafe Left/Right       |
|                                                           | ![](/image/retropad/retro_left_stick.png) Y  | Move Forwards/Backwards |
|                                                           | ![](/image/retropad/retro_right_stick.png) X | Look Left/Right         |

## Keyboard and Mouse

| RetroKeyboard/Mouse inputs                      | Weapons         |
|-------------------------------------------------|-----------------|
| Keyboard 1                                      | Fist            |
| Keyboard 2                                      | Pistol          |
| Keyboard 3                                      | Shotgun         |
| Keyboard 4                                      | Chaingun        |
| Keyboard 5                                      | Rocket          |
| Keyboard 8                                      | Chainsaw        |
| Keyboard 0                                      | Best            |
| Keyboard Left Control                           | Fire            |
| Keyboard Right Control                          | Fire            |
| Wheel Up                                        | Next Weapon     |
| Wheel Down                                      | Previous Weapon |
| ![](/image/retromouse/retro_left.png) Mouse 1 | Fire            |

| RetroKeyboard/Mouse inputs                            | Movement        |
|-------------------------------------------------------|-----------------|
| Keyboard Up                                           | Forward         |
| Keyboard Down                                         | Backward        |
| Keyboard Left                                         | Turn Left       |
| Keyboard Right                                        | Turn Right      |
| Keyboard Left Shift                                   | Run             |
| Keyboard Right Shift                                  | Run             |
| Keyboard Less than <                                  | Strafe Left     |
| Keyboard Greater than >                               | Strafe Right    |
| Keyboard Left Alt                                     | Strafe          |
| Keyboard Right Alt                                    | Strafe          |
| Keyboard Caps Lock                                    | Autorun         |
| Keyboard Slash /                                      | 180 Turn        |
| Keyboard Space                                        | Use             |
| ![](/image/retromouse/retro_mouse.png) Mouse Cursor | Turn Left/Right |
| ![](/image/retromouse/retro_right.png) Mouse 2      | Strafe          |
| ![](/image/retromouse/retro_middle.png) Mouse 3     | Use             |
| ![](/image/retromouse/retro_middle.png) Mouse 3     | Forward         |

| RetroKeyboard/Mouse inputs | Game      |
|----------------------------|-----------|
| Keyboard F2                | Save      |
| Keyboard F3                | Load      |
| Keyboard F6                | Quicksave |
| Keyboard F7                | Endgame   |
| Keyboard F9                | Quickload |
| Keyboard F10               | Quit      |

| RetroKeyboard/Mouse inputs   | Screen       |
|------------------------------|--------------|
| Keyboard F1                  | Help         |
| Keyboard Escape              | Menu         |
| Keyboard Home                | Setup        |
| Keyboard Pause               | Pause        |
| Keyboard Tab                 | Automap      |
| Keyboard F4                  | Sound Volume |
| Keyboard F5                  | HUD          |
| Keyboard F8                  | Messages     |
| Keyboard F11                 | Gamma Fix    |
| Keyboard F12                 | Spy          |
| Keyboard Minus -             | Smaller View |
| Keyboard Plus +              | Larger View  |

| RetroKeyboard/Mouse inputs | Automap     |
|----------------------------|-------------|
| Keyboard f                 | Follow Mode |
| Keyboard Minus -           | Zoom in     |
| Keyboard Plus +            | Zoom out    |
| Keyboard m                 | Mark Place  |
| Keyboard c                 | Clear Marks |
| Keyboard o                 | Full/Zoom   |
| Keyboard g                 | Grid        |

## External Links

- [Official PrBoom Website](http://prboom.sourceforge.net/)
- [Official PrBoom SourceForge Repository](http://sourceforge.net/projects/prboom/)
- [Libretro PrBoom Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/prboom_libretro.info)
- [Libretro PrBoom Github Repository](https://github.com/libretro/libretro-prboom)
- [Report Libretro PrBoom Core Issues Here](https://github.com/libretro/libretro-prboom/issues)

## id Software

- [Quake 1 (TyrQuake)](https://docs.libretro.com/library/tyrquake/)
