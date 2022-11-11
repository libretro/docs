# Doom (PrBoom)
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/4qNr0DZWrQo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Port of prboom to libretro - plays Doom, Doom II, Final Doom and other Doom IWAD mods.

The PrBoom core has been authored by

- Florian Schulze

The PrBoom core is licensed under

- [GPLv2](https://github.com/libretro/libretro-prboom/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename                                                                         | Description           |
|:--------------------------------------------------------------------------------:|:---------------------:|
| [prboom.wad](https://github.com/libretro/libretro-prboom/blob/master/prboom.wad) | PrBoom requires data ROM 'prboom.wad' inside the SYSTEM directory. |

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
| [Softpatching](../guides/softpatching.md) | ✕         |
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

PrBoom can load wad, iwad, and pwad files. The PrBoom core requires data ROM ['prboom.wad'](https://github.com/libretro/libretro-prboom/blob/master/prboom.wad) inside the loaded content's or system directory.

!!! TIP
	If you start the games by loading prboom.wad they will all share the same content name ("prboom" in this case), so the core will put the saves for every game in a single retroarch/saves/prboom/ folder and when playing Doom 2 for example you'll see Doom 1 saves, etc. which will cause confusion for the user. The games will also share the same game overrides/options files/remaps/etc. History tab will also lists each game as "prboom".	

An example folder structure would be like so:

```
└── contents/
    └── dooms/
        ├── doom/
        │   ├── doom.wad
        │   └── [music_files].mp3
        └── doom2/
            ├── doom2.wad
            └── [music_files].mp3
```

```
└── retroarch/
    └── system
	 └── prboom.wad
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

## SIGIL

Sigil (stylized as SIGIL) is the unofficial fifth episode of the 1993 video game Doom. Published by Romero Games on May 31, 2019, the Megawad was created by an original co-creator of Doom, John Romero, independently of the main game's then-current owner, Bethesda Softworks. It has nine missions, each with a deathmatch version, and a new soundtrack created by James Paddock and Buckethead.

You can get SIGIL [here](https://romero.com/)

Turn off 'Look on parent folders for IWADs' inside Quick Menu - Options. This is usually enabled by default, so disable it.

Make sure that you place the SIGIL wad files inside the same directory as your Doom/Ultimate Doom WAD file. You can name this either doomu.wad or doom.wad. Make sure there are NO doom2.wad files inside this same directory, or Sigil might not work properly.

An example folder structure would be like so:

```
└── contents/
    └── dooms/
        └── doom/
            ├── doom.wad
            ├── SIGIL.WAD
            └── [music_files].mp3
```

```
└── retroarch/
    └── system/
	 └── prboom.wad
```

## Music

If mp3 files are detected in the game folder, PrBoom will play these tracks instead of the internal MIDI musics, see below for the required filenames for each game.

### Doom

!!! Note
	Episode 4 doesn't have exclusive musics, it uses tracks from the previous episodes.

| Filename   | Description        |
|------------|--------------------|
| bunny.mp3  | Endgame Music      |
| e1m1.mp3   | E1M1               |
| e1m2.mp3   | E1M2               |
| e1m3.mp3   | E1M3               |
| e1m4.mp3   | E1M4               |
| e1m5.mp3   | E1M5               |
| e1m6.mp3   | E1M6               |
| e1m7.mp3   | E1M7               |
| e1m8.mp3   | E1M8               |
| e1m9.mp3   | E1M9               |
| e2m1.mp3   | E2M1               |
| e2m2.mp3   | E2M2               |
| e2m3.mp3   | E2M3               |
| e2m4.mp3   | E2M4               |
| e2m5.mp3   | E2M5               |
| e2m6.mp3   | E2M6               |
| e2m7.mp3   | E2M7               |
| e2m8.mp3   | E2M8               |
| e2m9.mp3   | E2M9               |
| e3m1.mp3   | E3M1               |
| e3m2.mp3   | E3M2               |
| e3m3.mp3   | E3M3               |
| e3m4.mp3   | E3M4               |
| e3m5.mp3   | E3M5               |
| e3m6.mp3   | E3M6               |
| e3m7.mp3   | E3M7               |
| e3m8.mp3   | E3M8               |
| e3m9.mp3   | E3M9               |
| inter.mp3  | Intermission Music |
| intro.mp3  | Title Music        |
| victor.mp3 | Victory Music      |

### Doom II, Plutonia, TNT

!!! Note
	These 3 games share the same music filenames but the musics are actually different, for this reason it is recommended to have the games in separated folders.

| Filename   | Description        |
|------------|--------------------|
| adrian.mp3 | MAP25              |
| ampie.mp3  | MAP23              |
| betwee.mp3 | MAP04              |
| count2.mp3 | MAP21              |
| countd.mp3 | MAP03              |
| ddtbl2.mp3 | MAP14              |
| ddtbl3.mp3 | MAP22              |
| ddtblu.mp3 | MAP08              |
| dead.mp3   | MAP10              |
| dead2.mp3  | MAP16              |
| dm2int.mp3 | Intermission Music |
| dm2ttl.mp3 | Title Music        |
| doom.mp3   | MAP05              |
| doom2.mp3  | MAP13              |
| evil.mp3   | MAP31              |
| in_cit.mp3 | MAP09              |
| messag.mp3 | MAP20              |
| messg2.mp3 | MAP26              |
| openin.mp3 | MAP30              |
| read_m.mp3 | Endgame Music      |
| romer2.mp3 | MAP27              |
| romero.mp3 | MAP18              |
| runni2.mp3 | MAP15              |
| runnin.mp3 | MAP01              |
| shawn.mp3  | MAP07              |
| shawn2.mp3 | MAP19              |
| shawn3.mp3 | MAP29              |
| stalks.mp3 | MAP02              |
| stlks2.mp3 | MAP11              |
| stlks3.mp3 | MAP17              |
| tense.mp3  | MAP28              |
| theda2.mp3 | MAP12              |
| theda3.mp3 | MAP24              |
| the_da.mp3 | MAP06              |
| ultima.mp3 | MAP32              |

### SIGIL

| Filename   | Description        |
|------------|--------------------|
| e5m1.mp3   | E5M1               |
| e5m2.mp3   | E5M2               |
| e5m3.mp3   | E5M3               |
| e5m4.mp3   | E5M4               |
| e5m5.mp3   | E5M5               |
| e5m6.mp3   | E5M6               |
| e5m7.mp3   | E5M7               |
| e5m8.mp3   | E5M8               |
| e5m9.mp3   | E5M9               |
| inter.mp3  | Intermission Music |
| intro.mp3  | Title Music        |

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

	Configure the resolution. Requires a restart.

??? note "Internal resolution - 320x200"
	![](../image/core/prboom/320x200.png)

??? note "Internal resolution - 1920x1200"
	![](../image/core/prboom/1920x1200.png)

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
| Use                                                        | ![](../image/retropad/retro_b.png)          | Use             |
| Run                                                        | ![](../image/retropad/retro_y.png)          | Run             |
| Show/Hide Map                                              | ![](../image/retropad/retro_select.png)     | Show/Hide Map   |
| Show/Hide Menu                                             | ![](../image/retropad/retro_start.png)      | Show/Hide Menu  |
| D-Pad Up                                                   | ![](../image/retropad/retro_dpad_up.png)    | D-Pad Up        |
| D-Pad Down                                                 | ![](../image/retropad/retro_dpad_down.png)  | D-Pad Down      |
| D-Pad Left                                                 | ![](../image/retropad/retro_dpad_left.png)  | D-Pad Left      |
| D-Pad Right                                                | ![](../image/retropad/retro_dpad_right.png) | D-Pad Right     |
| Fire                                                       | ![](../image/retropad/retro_a.png)          | Fire            |
| Strafe                                                     | ![](../image/retropad/retro_x.png)          | Strafe          |
| Strafe Left                                                | ![](../image/retropad/retro_l1.png)         | Strafe Left     |
| Strafe Right                                               | ![](../image/retropad/retro_r1.png)         | Strafe Right    |
| Previous Weapon                                            | ![](../image/retropad/retro_l2.png)         | Previous Weapon |
| Next Weapon                                                | ![](../image/retropad/retro_r2.png)         | Next Weapon     |

| User 1 input descriptors for 'Gamepad Modern' device type | RetroPad Inputs                                | PrBoom inputs           |
|-----------------------------------------------------------|------------------------------------------------|-------------------------|
| Menu Cancel                                               | ![](../image/retropad/retro_b.png)             | Menu Cancel             |
| Quick Save                                                | ![](../image/retropad/retro_y.png)             | Quick Save              |
| Show/Hide Map                                             | ![](../image/retropad/retro_select.png)        | Show/Hide Map           |
| Show/Hide Menu                                            | ![](../image/retropad/retro_start.png)         | Show/Hide Menu          |
| D-Pad Up                                                  | ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                |
| D-Pad Down                                                | ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down              |
| D-Pad Left                                                | ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left              |
| D-Pad Right                                               | ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right             |
| Menu Select                                               | ![](../image/retropad/retro_a.png)             | Menu Select             |
| Quick Load                                                | ![](../image/retropad/retro_x.png)             | Quick Load              |
| Previous Weapon                                           | ![](../image/retropad/retro_l1.png)            | Previous Weapon         |
| Next Weapon                                               | ![](../image/retropad/retro_r1.png)            | Next Weapon             |
| Use                                                       | ![](../image/retropad/retro_l2.png)            | Use                     |
| Fire                                                      | ![](../image/retropad/retro_r2.png)            | Fire                    |
| Toggle Run                                                | ![](../image/retropad/retro_l3.png)            | Toggle Run              |
| 180 Turn                                                  | ![](../image/retropad/retro_r3.png)            | 180 Turn                |
|                                                           | ![](../image/retropad/retro_left_stick.png) X  | Strafe Left/Right       |
|                                                           | ![](../image/retropad/retro_left_stick.png) Y  | Move Forwards/Backwards |
|                                                           | ![](../image/retropad/retro_right_stick.png) X | Look Left/Right         |

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
| ![](../image/retromouse/retro_left.png) Mouse 1 | Fire            |

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
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Turn Left/Right |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Strafe          |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Use             |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Forward         |

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

- [Quake 1 (TyrQuake)](tyrquake.md)
