# Quake 1 (TyrQuake)

## Contribute to this documentation

In order to propose improvements to this document, [visit it's corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/tyrquake.md). Changes are proposed using "Pull Requests."

## Background

Libretro port of Tyrquake (Quake 1 engine) 

### How to get and install the TyrQuake core:

1. Start up RetroArch. Inside the main menu, go to 'Online Updater'.

2. Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

3. Browse through the list and select 'Quake 1 (TyrQuake)'.

After this has finished downloading, the core should now be ready for use!

#### How to play (after installation):

1. Go back to RetroArch's main menu screen. Select 'Load Content'.

2. Browse to the folder that contains the content you want to run.

3. Select the content that you want to run.

4. If you are asked which core to select, choose 'Quake 1 (TyrQuake)'.

The game should now start running!

### Authors

- Kevin Shanahan (Tyrann)

## See also

- [Doom (PrBoom)](https://docs.libretro.com/library/prboom/) - Shared original developers.

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

- [GPLv2](https://github.com/libretro/tyrquake/blob/master/gnu.txt)

## Extensions

Content that can be loaded by the TyrQuake core have the following file extensions:

- .pak

## Databases

RetroArch database(s) that are associated with the TyrQuake core:

- [Quake1](https://github.com/libretro/libretro-database/blob/master/rdb/Quake1.rdb)

## Features

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
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| Softpatching      | ✕         |
| Disk Control      | ✕         |
| Username          | ✔         |
| Crop Overscan     | ✕         |

### Saves/States

The TyrQuake core's directory name is 'TyrQuake'

TyrQuake settings are saved/loaded to and from where the loaded content is.

- config.cfg

Save data is saved/loaded to and from where the loaded content is.

- .sav (Save)

Content directory

- .sav (Save)
- config.cfg (Config)

### Core provided aspect ratio

TyrQuake's core provided aspect ratio is 4/3.

### Libretro specific features

- Runs at fixed frametimes
- Software bilinear filtering
- Software Half-Life/Quake 2-style colored lighting RGBA
- Chasecam / thirdperson view mode
- Interpolated animation applied on the keyframe animation for smooth animation

### Expansion paks

Awaiting description.

### Rumble

Rumble only works when the joypad input driver being used has rumble function implementation (e.g. **Xinput**).

### Username

The TyrQuake core uses RetroArch's username setting for the in-game player name. 

### config.cfg

TyrQuake's internal game settings can be found in config.cfg

## Core options

The TyrQuake core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Colored lightning (restart)** (**Off**/On): Awaiting description.

- **Resolution (restart)** (**320x200**/640x400/960x600/1280x800/1600x1000/1920x1200/320x240/320x480/360x200/360x240/360x400/360x480/400x224/480x272/512x224/512x240/512x384/512x512/640x224/640x240/640x448/640x480/720x576/800x480/800x600/960x720/1024x768/1280x720/1600x900/1920x1080): Configure the resolution.

??? note "Resolution - 320x240"
	![](images\Cores\tyrquake\320x240.png)
	
??? note "Resolution - 1920x1080"
	![](images\Cores\tyrquake\1920x1080.png)	

- **Rumble** (**Off**/On): Enables or disables rumble functionality. Check the [Rumble section](https://docs.libretro.com/library/tyrquake/#rumble) for more information.

- **Change retropad layout** (**1: New layout**/2: Old layout): Configure the 'RetroPad' device type's layout. Look at the [RetroPad tables](https://docs.libretro.com/library/tyrquake/joypad-and-analog-device-type-table) below for more information.
	
## Controllers

### Device types

The TyrQuake core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 device types

- **RetroPad** - Joypad - Can be configured to use the new layout or the old layout by the ['Change retropad layout' core option](https://docs.libretro.com/library/tyrquake/core-options).
- **RetroKeyboard/Mouse** - Keyboard/Mouse - Allows for keyboard and mouse usage.

### Controller tables

#### Joypad and analog device type table

| User 1 input descriptors (RetroPad (1: New layout)) | **                                           | RetroPad (1: New layout)    |
|-----------------------------------------------------|----------------------------------------------|-----------------------------|
| Look right                                          | ![](images/RetroPad/Retro_B_Round.png)       | Cancel/Look right           |
| Look up                                             | ![](images/RetroPad/Retro_Y_Round.png)       | Look up                     |
| Toggle console                                      | ![](images/RetroPad/Retro_Select.png)        | Toggle console              |
| Menu                                                | ![](images/RetroPad/Retro_Start.png)         | Menu                        |
| D-Pad Up                                            | ![](images/RetroPad/Retro_Dpad_Up.png)       | Up/Move forwards            |
| D-Pad Down                                          | ![](images/RetroPad/Retro_Dpad_Down.png)     | Down/Move backwards         |
| D-Pad Left                                          | ![](images/RetroPad/Retro_Dpad_Left.png)     | Left/Move left              |
| D-Pad Right                                         | ![](images/RetroPad/Retro_Dpad_Right.png)    | Right/Move right            |
| Look down                                           | ![](images/RetroPad/Retro_A_Round.png)       | Confirm/Look down           |
| Look left                                           | ![](images/RetroPad/Retro_X_Round.png)       | Look left                   |
| Previous weapon                                     | ![](images/RetroPad/Retro_L1.png)            | Previous weapon             |
| Next weapon                                         | ![](images/RetroPad/Retro_R1.png)            | Next weapon                 |
| Jump                                                | ![](images/RetroPad/Retro_L2.png)            | Jump                        |
| Fire                                                | ![](images/RetroPad/Retro_R2.png)            | Fire                        |
| Toggle run mode                                     | ![](images/RetroPad/Retro_L3.png)            | Toggle run mode (for D-Pad) |
| Swim up                                             | ![](images/RetroPad/Retro_R3.png)            | Swim up                     |
| **                                                  | ![](images/RetroPad/Retro_Left_Stick.png) X  | Move left/right             |
| **                                                  | ![](images/RetroPad/Retro_Left_Stick.png) Y  | Move backwards/forwards     |
| **                                                  | ![](images/RetroPad/Retro_Right_Stick.png) X | Look left/right             |
| **                                                  | ![](images/RetroPad/Retro_Right_Stick.png) Y | Look up/down                |

| User 1 input descriptors (RetroPad (2: Old layout)) | **                        				     | RetroPad (2: Old layout)    |
|-----------------------------------------------------|----------------------------------------------|-----------------------------|
| Jump                                                | ![](images/RetroPad/Retro_B_Round.png)       | Cancel/Jump                 |
| Fire                                                | ![](images/RetroPad/Retro_Y_Round.png)       | Fire                        |
| Toggle Run Mode                                     | ![](images/RetroPad/Retro_Select.png)        | Toggle run mode (for D-Pad) |
| Menu                                                | ![](images/RetroPad/Retro_Start.png)         | Menu                        |
| D-Pad Up                                            | ![](images/RetroPad/Retro_Dpad_Up.png)       | Up/Move forwards            |
| D-Pad Down                                          | ![](images/RetroPad/Retro_Dpad_Down.png)     | Down/Move backwards         |
| D-Pad Left                                          | ![](images/RetroPad/Retro_Dpad_Left.png)     | Left/Look left              |
| D-Pad Right                                         | ![](images/RetroPad/Retro_Dpad_Right.png)    | Right/Look right            |
| Cycle Weapon                                        | ![](images/RetroPad/Retro_A_Round.png)       | Confirm/Look down           |
| Freelook                                            | ![](images/RetroPad/Retro_X_Round.png)       | Freelook (for D-Pad)        |
| Strafe Left                                         | ![](images/RetroPad/Retro_L1.png)            | Strafe Left                 |
| Strafe Right                                        | ![](images/RetroPad/Retro_R1.png)            | Strafe Right                |
| Look Up                                             | ![](images/RetroPad/Retro_L2.png)            | Look Up                     |
| Look Down                                           | ![](images/RetroPad/Retro_R2.png)            | Look Down                   |
| Swim down                                           | ![](images/RetroPad/Retro_L3.png)            | Swim down                   |
| Swim up                                             | ![](images/RetroPad/Retro_R3.png)            | Swim up                     |
| **                           						  | ![](images/RetroPad/Retro_Left_Stick.png) X  | Move left/right             |
| **                           						  | ![](images/RetroPad/Retro_Left_Stick.png) Y  | Move backwards/forwards     |
| **                           						  | ![](images/RetroPad/Retro_Right_Stick.png) X | Look left/right             |
| **                           						  | ![](images/RetroPad/Retro_Right_Stick.png) Y | Look up/down                |

#### Keyboard device type table

| User 1 input descriptors      | **                            | RetroKeyboard/Mouse |
|-------------------------------|-------------------------------|---------------------|
| **                            | Keyboard Tab                  | Show scores         |
| **                            | Keyboard Pause                | Pause               |
| **                            | Keyboard Escape               | Menu                |
| **                            | Keyboard Space                | Jump                |
| **                            | Keyboard +                    | Size up             |
| **                            | Keyboard ,                    | Move left           |
| **                            | Keyboard -                    | Size down           |
| **                            | Keyboard .                    | Move right          |
| **                            | Keyboard /                    | Next weapon         |
| **                            | Keyboard 0                    | Weapon slot 0       |
| **                            | Keyboard 1                    | Weapon slot 1       |
| **                            | Keyboard 2                    | Weapon slot 2       |
| **                            | Keyboard 3                    | Weapon slot 3       |
| **                            | Keyboard 4                    | Weapon slot 4       |
| **                            | Keyboard 5                    | Weapon slot 5       |
| **                            | Keyboard 6                    | Weapon slot 6       |
| **                            | Keyboard 7                    | Weapon slot 7       |
| **                            | Keyboard 8                    | Weapon slot 8       |
| **                            | Keyboard =                    | Size up             |
| **                            | Keyboard \                    | Mouse look          |
| **                            | Keyboard a                    | Look up             |
| **                            | Keyboard c                    | Move down           |
| **                            | Keyboard d                    | Move up             |
| **                            | Keyboard t                    | Say                 |
| **                            | Keyboard z                    | Look down           |
| **                            | Keyboard Delete               | Look down           |
| **                            | Keyboard Numpad Enter         | Jump                |
| **                            | Keyboard Up                   | Move forwards       |
| **                            | Keyboard Down                 | Move backwards      |
| **                            | Keyboard Right                | Look right          |
| **                            | Keyboard Left                 | Look left           |
| **                            | Keyboard Insert               | Keyboard look       |
| **                            | Keyboard End                  | Center view         |
| **                            | Keyboard Page Down            | Look up             |
| **                            | Keyboard F1                   | Help                |
| **                            | Keyboard F2                   | Save menu           |
| **                            | Keyboard F3                   | Load menu           |
| **                            | Keyboard F4                   | Options menu        |
| **                            | Keyboard F5                   | Multiplayer menu    |
| **                            | Keyboard F6                   | Quick save          |
| **                            | Keyboard F9                   | Quick load          |
| **                            | Keyboard F10                  | Quit                |
| **                            | Keyboard F11                  | Zoom in             |
| **                            | Keyboard F12                  | Screenshot          |
| **                            | Keyboard ~                    | Toggle console      |

#### Mouse device type table

| User # input descriptors      | **                                       | RetroKeyboard/Mouse |
|-------------------------------|------------------------------------------|-------------------- |
| **                            | ![](images/RetroMouse/Retro_Mouse.png)   | Look                |
| **                            | ![](images/RetroMouse/Retro_Left.png)    | Fire                |
| **                            | ![](images/RetroMouse/Retro_Right.png)   | Move forwards       |

## External Links

- [Libretro TyrQuake Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/tyrquake_libretro.info)
- [Libretro TyrQuake Github Repository](https://github.com/libretro/tyrquake)
- [Report Libretro TyrQuake Core Issues Here](https://github.com/libretro/tyrquake/issues)
- [Official TyrQuake Website](http://disenchant.net/tyrquake/)
- [Official TyrQuake Git Repository](http://disenchant.net/git/?p=tyrquake)