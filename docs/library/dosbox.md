# DOS (DOSBox)

## Contribute to this documentation

**DOCUMENTATION IS A WORK IN PROGRESS**

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/dosbox.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

DOSBox is a multiplatform DOS-emulator 

### Why use this core?

Awaiting description.

### How to get and install the DOSBox core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](..\image\core\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](..\image\core\all\info.png) </center>

- Browse through the list and select 'DOS (DOSBox)'.

<center> ![](..\image\core\updater\dosbox.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](..\image\core\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

- If you are asked which core to select, choose 'DOS (DOSBox)'.

The content should now start running!

### Authors

- DOSBox Team

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The DOSBox core is licensed under

- [GPLv2](https://github.com/libretro/dosbox-libretro/blob/master/COPYING) 

## Extensions

Content that can be loaded by the DOSBox core have the following file extensions:

- .exe
- .com
- .bat
- .conf

## Databases

RetroArch database(s) that are associated with the DOSBox core:

- [DOS](https://github.com/libretro/libretro-database/blob/master/rdb/DOS.rdb)

## Features

RetroArch-level settings or features that the DOSBox core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | -         |
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

### Directories

The DOSBox core's directory name is 'DOSBox'

### Geometry and timing.

- The DOSBox core's internal FPS is 60
- The DOSBox core's internal sample rate is (Rate)
- The DOSBox core's core provided aspect ratio is 4/3

### Loading content

If loading exe/com/bat, RetroArch's System directory will be searched for a 'dosbox.conf' file to load. If one isn't available default values will be used. This mode is equivalent to running a DOSBox binary with the specified file as the command line argument.

If loading a conf file DOSBox will be loaded with the options in the config file. This mode is useful if you just want to be dumped at a command prompt, but can also be used to load a game by putting commands in the autoexec section.

### Usage

DOSBox can load DOS executables or custom config files. To get started you can generate a config file by creating the DOSbox folder in your libretro SYSTEM directory, and then loading any DOS application, exit back to the command interpreter and then run config -wcd, Configuration files allow you far better control than core options so far. Eventually every single useable option will be exposed but in the meantime combining both is the best alternative.

If you generate a default config it will always be loaded by default, but you can override it by saving your custom settings, preferably in the game folder. You can create a config like this:

```
[cpu]
cycles=50000
[autoexec]
@echo off
mount d c:\games\dos\gamename
d:
gamename
```	

Then you can store this config in the game folder (or any other directory) and just the config instead of the exe file. Once you change a setting using the config command or via core options, you can always update the config file by using config -wc 

## Core options

The DOSBox core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Machine type** (**vgaonly**/svga_s3/svga_et3000/svga_et4000/svga_paradise/hercules/cga/tandy/pcjr/ega)

	Select what machine will be emulated.
	
- **Gamepad** (**enable**/disable)

	Awaiting description.
	
- **CPU cycles x 100000** (**0**/1/2/3/4/5/6/7/8/9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.
	
- **CPU cycles x 10000** (**0**/1/2/3/4/5/6/7/8/9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.
	
- **CPU cycles x 1000** (**1**/2/3/4/5/6/7/8/9/0)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.
	
- **CPU cycles x 100** (**0**/1/2/3/4/5/6/7/8/9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

## Controllers

### Device types

The DOSBox core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 2 device types

- None - Input disabled.
- **Gamepad** - Joypad - Optional description.
- Joystick - Joypad
- Keyboard - Keyboard - Has keymapper support

### Controller tables

#### Joypad and analog device type table

| User 1 Remap descriptors for 'Gamepad' device type | RetroPad Inputs                             |
|----------------------------------------------------|---------------------------------------------|
| Button 2                                           | ![](images/RetroPad/Retro_B_Round.png)      |
| Button 1                                           | ![](images/RetroPad/Retro_Y_Round.png)      |
| D-Pad Up                                           | ![](images/RetroPad/Retro_Dpad_Up.png)      |
| D-Pad Down                                         | ![](images/RetroPad/Retro_Dpad_Down.png)    |
| D-Pad Left                                         | ![](images/RetroPad/Retro_Dpad_Left.png)    |
| D-Pad Right                                        | ![](images/RetroPad/Retro_Dpad_Right.png)   |
| Emulated Mouse Right Click                         | ![](images/RetroPad/Retro_L2.png)           |
| Emulated Mouse Left Click                          | ![](images/RetroPad/Retro_R2.png)           |
| Emulated Mouse X Axis                              | ![](images/RetroPad/Retro_L3.png)           |
| Emulated Mouse Y Axis                              | ![](images/RetroPad/Retro_R3.png)           |

| User 1 Remap descriptors for 'Joystick' device type | RetroPad Inputs                              |
|-----------------------------------------------------|----------------------------------------------|
| Button 2                                            | ![](images/RetroPad/Retro_B_Round.png)       |
| Button 1                                            | ![](images/RetroPad/Retro_Y_Round.png)       |
| Emulated Mouse Right Click                          | ![](images/RetroPad/Retro_L2.png)            |
| Emulated Mouse Left Control                         | ![](images/RetroPad/Retro_R2.png)            |
| Left Analog X                                       | ![](images/RetroPad/Retro_Left_Stick.png) X  |
| Left Analog Y                                       | ![](images/RetroPad/Retro_Left_Stick.png) Y  |
| Emulated Mouse X Axis                               | ![](images/RetroPad/Retro_Right_Stick.png) X |
| Emulated Mouse Y Axis                               | ![](images/RetroPad/Retro_Right_Stick.png) Y |

| User 2 Remap descriptors for 'Gamepad' device type     | RetroPad Inputs                              |
|--------------------------------------------------------|----------------------------------------------|
| Button 2                                               | ![](images/RetroPad/Retro_B_Round.png)       |
| Button 1                                               | ![](images/RetroPad/Retro_Y_Round.png)       |
| D-Pad Up                                               | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| D-Pad Down                                             | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| D-Pad Left                                             | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| D-Pad Right                                            | ![](images/RetroPad/Retro_Dpad_Right.png)    |

| User 2 Remap descriptors for 'Joystick' device type | RetroPad Inputs                              |
|-----------------------------------------------------|----------------------------------------------|
| Button 2                                            | ![](images/RetroPad/Retro_B_Round.png)       |
| Button 1                                            | ![](images/RetroPad/Retro_Y_Round.png)       |
| Left Analog X                                       | ![](images/RetroPad/Retro_Left_Stick.png) X  |
| LEft Analog Y                                       | ![](images/RetroPad/Retro_Left_Stick.png) Y  |

#### Keyboard device type table

| RetroKeyboard Inputs          | Keyboard           |
|-------------------------------|--------------------|
| Keyboard Backspace            | Backspace          |
| Keyboard Tab                  | Tab                |
| Keyboard Return               | Enter              |
| Keyboard Pause                | Pause              |
| Keyboard Escape               | Escape             |
| Keyboard Space                | Space              |
| Keyboard '                    | '                  |
| Keyboard ,                    | ,                  |
| Keyboard .                    | .                  |
| Keyboard /                    | /                  |
| Keyboard 0                    | 0                  |
| Keyboard 1                    | 1                  |
| Keyboard 2                    | 2                  |
| Keyboard 3                    | 3                  |
| Keyboard 4                    | 4                  |
| Keyboard 5                    | 5                  |
| Keyboard 6                    | 6                  |
| Keyboard 7                    | 7                  |
| Keyboard 8                    | 8                  |
| Keyboard 9                    | 9                  |
| Keyboard ;                    | ;                  |
| Keyboard -                    | -                  |
| Keyboard =                    | =                  |
| Keyboard [                    | [                  |
| Keyboard \                    | \                  |
| Keyboard ]                    | ]                  |
| Keyboard `                    | `                  |
| Keyboard a                    | a                  |
| Keyboard b                    | b                  |
| Keyboard c                    | c                  |
| Keyboard d                    | d                  |
| Keyboard e                    | e                  |
| Keyboard f                    | f                  |
| Keyboard g                    | g                  |
| Keyboard h                    | h                  |
| Keyboard i                    | i                  |
| Keyboard j                    | j                  |
| Keyboard k                    | k                  |
| Keyboard l                    | l                  |
| Keyboard m                    | m                  |
| Keyboard n                    | n                  |
| Keyboard o                    | o                  |
| Keyboard p                    | p                  |
| Keyboard q                    | q                  |
| Keyboard r                    | r                  |
| Keyboard s                    | s                  |
| Keyboard t                    | t                  |
| Keyboard u                    | u                  |
| Keyboard v                    | v                  |
| Keyboard w                    | w                  |
| Keyboard x                    | x                  |
| Keyboard y                    | y                  |
| Keyboard z                    | z                  |
| Keyboard Delete               | Delete             |
| Keyboard Numpad 0             | Numpad 0           |
| Keyboard Numpad 1             | Numpad 1           |
| Keyboard Numpad 2             | Numpad 2           |
| Keyboard Numpad 3             | Numpad 3           |
| Keyboard Numpad 4             | Numpad 4           |
| Keyboard Numpad 5             | Numpad 5           |
| Keyboard Numpad 6             | Numpad 6           |
| Keyboard Numpad 7             | Numpad 7           |
| Keyboard Numpad 8             | Numpad 8           |
| Keyboard Numpad 9             | Numpad 9           |
| Keyboard Numpad .             | Numpad .           |
| Keyboard Numpad /             | Numpad /           |
| Keyboard Numpad *             | Numpad *           |
| Keyboard Numpad -             | Numpad -           |
| Keyboard Numpad +             | Numpad +           |
| Keyboard Numpad Enter         | Numpad Enter       |
| Keyboard Up                   | Up                 |
| Keyboard Down                 | Down               |
| Keyboard Right                | Left               |
| Keyboard Left                 | Right              |
| Keyboard Insert               | Insert             |
| Keyboard Home                 | Home               |
| Keyboard End                  | End                |
| Keyboard Page Up              | Page Up            |
| Keyboard Page Down            | Page Down          |
| Keyboard F1                   | F1                 |
| Keyboard F2                   | F2                 |
| Keyboard F3                   | F3                 |
| Keyboard F4                   | F4                 |
| Keyboard F5                   | F5                 |
| Keyboard F6                   | F6                 |
| Keyboard F7                   | F7                 |
| Keyboard F8                   | F8                 |
| Keyboard F9                   | F9                 |
| Keyboard F10                  | F10                |
| Keyboard F11                  | F11                |
| Keyboard F12                  | F12                |
| Keyboard Num Lock             | Num Lock           |
| Keyboard Caps Lock            | Caps Lock          |
| Keyboard Scroll Lock          | Scroll Lock        |
| Keyboard Right Shift          | Right Shift        |
| Keyboard Left Shift           | Left Shift         |
| Keyboard Right Control        | Right Control      |
| Keyboard Left Control         | Left Control       |
| Keyboard Right Alt            | Right Alt          |
| Keyboard Left Alt             | Left Alt           |
| Keyboard Sys Req              | Print Screen       |

## Compatibility

Awaiting description.

## External Links

- [Libretro DOSBox Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dosbox_libretro.info)
- [Libretro DOSBox Github Repository](https://github.com/libretro/dosbox-libretro)
- [Report Libretro DOSBox Core Issues Here](https://github.com/libretro/dosbox-libretro/issues)
- [Official DOSBox Website](https://www.dosbox.com/)
- [Official/Original DOSBox SourceForge Repository](https://sourceforge.net/projects/dosbox/)