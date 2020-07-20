# DOS (DOSBox)

## Background

DOSBox is a multiplatform DOS-emulator

The DOSBox core has been authored by

- DOSBox Team

The DOSBox core is licensed under

- [GPLv2](https://github.com/libretro/dosbox-libretro/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the DOSBox core have the following file extensions:

- .exe
- .com
- .bat
- .conf

RetroArch database(s) that are associated with the DOSBox core:

- [DOS](https://github.com/libretro/libretro-database/blob/master/rdb/DOS.rdb)

## Features

Frontend-level settings or features that the DOSBox core respects.

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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The DOSBox core's library name is 'DOSBox'

### Geometry and timing

- The DOSBox core's core provided FPS is 60.0
- The DOSBox core's core provided sample rate is (Rate)
- The DOSBox core's base width is 320
- The DOSBox core's base height is 200
- The DOSBox core's max width is 1024
- The DOSBox core's max height is 768
- The DOSBox core's core provided aspect ratio is 4/3

## Loading content

- To use you can either load an exe/com/bat file or a *.conf file.
- If loading exe/com/bat the system directory will be searched for a 'dosbox.conf' file to load. If one isn't available default values will be used. This mode is equivalent to running a DOSBox binary with the specified file as the command line argument.
- If loading a conf file DOSBox will be loaded with the options in the config file. This mode is useful if you just want to be dumped at a command prompt, but can also be used to load a game by putting commands in the autoexec section.
- To be useful the frontend will need to have keyboard+mouse support, and all keyboard shortcuts need to be remapped.

## Usage

DOSBox can load DOS executables or custom config files. To get started you can generate a config file by creating the DOSbox folder in your libretro SYSTEM directory, and then loading any DOS application, exit back to the command interpreter and then run config -wcd, Configuration files allow you far better control than core options so far. Eventually every single useable option will be exposed but in the meantime combining both is the best alternative.

If you generate a default config it will always be loaded by default, but you can override it by saving your custom settings, preferably in the game folder. You can create a config like this:

```
[autoexec]
@echo off
mount d "/storage/roms/dos/game"
d:
game.exe
```
Then you can store this config in the game folder (or any other directory) and just the config instead of the exe file. Once you change a setting using the config command or via core options, you can always update the config file by using config -wc

## MIDI

- To use MIDI you need MT32_CONTROL.ROM and MT32_PCM.ROM in the system directory of RetroArch.Then set:

```
[midi]
mpu401=intelligent
mididevice=mt32
```

## Core options

The DOSBox core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Machine type** [dosbox_machine_type] (**vgaonly**|svga_s3|svga_et3000|svga_et4000|svga_paradise|hercules|cga|tandy|pcjr|ega)

	Select what machine will be emulated.

- **Gamepad emulated mouse** [dosbox_emulated_mouse] (**enable**|disable)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 100000** [dosbox_cpu_cycles_0] (**0**|1|2|3|4|5|6|7|8|9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **PU cycles x 10000** [dosbox_cpu_cycles_1] (**0**|1|2|3|4|5|6|7|8|9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 1000** [dosbox_cpu_cycles_2] (**1**|2|3|4|5|6|7|8|9|0)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 100** [dosbox_cpu_cycles_3] (**0**|1|2|3|4|5|6|7|8|9")

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

## User 1 - 2 device types

The DOSBox core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Input disabled.
- **Gamepad** - Joypad
- Joystick - Analog
- Keyboard - Keyboard - Keyboard inputs are always active. Has keymapper support.

## Joypad

| Input descriptors for Gamepad 2 Button | RetroPad Inputs                             |
|----------------------------------------|---------------------------------------------|
| Button 2                               | ![](../image/retropad/retro_b.png)          |
| Button 1                               | ![](../image/retropad/retro_y.png)          |
| D-Pad Up                               | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                             | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                             | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                            | ![](../image/retropad/retro_dpad_right.png) |

| Input descriptors for Gamepad 4 Button | RetroPad Inputs                             |
|----------------------------------------|---------------------------------------------|
| Button 3                               | ![](../image/retropad/retro_b.png)          |
| Button 1                               | ![](../image/retropad/retro_y.png)          |
| D-Pad Up                               | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                             | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                             | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                            | ![](../image/retropad/retro_dpad_right.png) |
| Button 4                               | ![](../image/retropad/retro_a.png)          |
| Button 2                               | ![](../image/retropad/retro_x.png)          |

| Input descriptors for Joystick 2 Button | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Button 2                                | ![](../image/retropad/retro_b.png)             |
| Button 1                                | ![](../image/retropad/retro_y.png)             |
| Left Analog X                           | ![](../image/retropad/retro_left_stick.png) X  |
| Left Analog Y                           | ![](../image/retropad/retro_left_stick.png) Y  |

| Input descriptors for Joystick 4 Button | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Button 3                                | ![](../image/retropad/retro_b.png)             |
| Button 1                                | ![](../image/retropad/retro_y.png)             |
| Button 4                                | ![](../image/retropad/retro_a.png)             |
| Button 2                                | ![](../image/retropad/retro_x.png)             |
| Left Analog X                           | ![](../image/retropad/retro_left_stick.png) X  |
| Left Analog Y                           | ![](../image/retropad/retro_left_stick.png) Y  |
| Right Analog X                          | ![](../image/retropad/retro_right_stick.png) X |
| Right Analog Y                          | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for Keyboard | RetroPad Inputs                             |
|--------------------------------|---------------------------------------------|
| Esc                            | ![](../image/retropad/retro_select.png)     |
| Enter                          | ![](../image/retropad/retro_start.png)      |
| Kbd Up                         | ![](../image/retropad/retro_dpad_up.png)    |
| Kbd Down                       | ![](../image/retropad/retro_dpad_down.png)  |
| Kbd Left                       | ![](../image/retropad/retro_dpad_left.png)  |
| Kbd Right                      | ![](../image/retropad/retro_dpad_right.png) |

| Input descriptors for Emulated mouse | RetroPad Inputs                                |
|--------------------------------------|------------------------------------------------|
| Emulated Mouse Right Click           | ![](../image/retropad/retro_l2.png)            |
| Emulated Mouse Left Click            | ![](../image/retropad/retro_r2.png)            |
| Emulated Mouse X Axis                | ![](../image/retropad/retro_right_stick.png) X |
| Emulated Mouse Y Axis                | ![](../image/retropad/retro_right_stick.png) Y |

## Keyboard

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

## External Links

- [Official DOSBox Website](https://www.dosbox.com/)
- [Official/Original DOSBox SourceForge Repository](https://sourceforge.net/projects/dosbox/)
- [Libretro DOSBox Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dosbox_libretro.info)
- [Libretro DOSBox Github Repository](https://github.com/libretro/dosbox-libretro)
- [Report Libretro DOSBox Core Issues Here](https://github.com/libretro/dosbox-libretro/issues)