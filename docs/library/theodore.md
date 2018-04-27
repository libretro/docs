# Thomson - TO8D (Theodore)

## Background

Theodore is a Thomson TO8D system emulator based on the Daniel Coulom's DCTO8D emulator. The Thomson TO8 is a home computer introduced by French company Thomson SA in 1986. The Thomson TO8D is an improved version that includes a built-in 3.5" floppy drive.

### Author/License

The Theodore core has been authored by

- Thomas Lorblanchès

The Theodore core is licensed under

- [GPLv3](https://github.com/Zlika/theodore/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Theodore core have the following file extensions:

- .fd (floppy disk)
- .k7 (tape)
- .rom (cartridge)

## Features

Frontend-level settings or features that the Theodore core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ?         |
| Screenshots       | ?         |
| Saves             | ?         |
| States            | ?         |
| Rewind            | ?         |
| Netplay           | ?         |
| Core Options      | ?         |
| RetroAchievements | ?         |
| RetroArch Cheats  | ?         |
| Native Cheats     | ?         |
| Controls          | ?         |
| Remapping         | ?         |
| Multi-Mouse       | ?         |
| Rumble            | ?         |
| Sensors           | ?         |
| Camera            | ?         |
| Location          | ?         |
| Subsystem         | ?         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ?         |
| Disk Control      | ?         |
| Username          | ?         |
| Language          | ?         |
| Crop Overscan     | ?         |
| LEDs              | ?         |

### Directories

The Theodore core's internal core name is 'theodore'

The Theodore core saves/loads to/from these directories.

**Frontend's System directory**

- theodore.cfg (Theodore Config file)

### Geometry and timing

- The Theodore core's base width is 672 pixels
- The Theodore core's base height is 432 pixels

## Core options

The Theodore core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Floppy write protection** [theodore_floppy_write_protect]  (disabled|**enabled**)

- **Tape write protection** [theodore_tape_write_protect]  (disabled|**enabled**)

- **Dump printer data to file** [theodore_printer_emulation] (**disabled**|enabled)

## Controllers

The Theodore core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Input disabled
- **RetroPad** - Joypad

### Other controllers

Mouse - The Theodore core emulates the TO8D light pen.

### Controller tables

#### Gamepad

| User 1 Remap descriptors    | RetroPad Inputs                        |
|-----------------------------|----------------------------------------|
| "Fire" button               | ![](../image/retropad/retro_a.png)     |
| Start button                | ![](../image/retropad/retro_b.png)     |
| Virtual keyboard: go up     | ![](../image/retropad/retro_x.png)     |
| Virtual keyboard: go down   | ![](../image/retropad/retro_y.png)     |
| Virtual keyboard: keystroke | ![](../image/retropad/retro_start.png) |

On controllers without Y/X keys, select can also be used to roll the virtual keyboard up. The order of the keys in the virtual keyboard is: digits (0->9) then letters (A->Z) then "Enter".

#### Keyboard

| Thomson keyboard | PC keyboard |
|------------------|-------------|
|STOP              | TAB         |
|CNT               | CTRL        |
|CAPSLOCK          | CAPSLOCK    |
|ACC               | ALT         |
|HOME              | HOME        |
|Arrows            | Arrows      |
|INS               | INSERT      |
|EFF               | DEL         |
|F1-F5             | F1-F5       |
|F6-F10            | SHIFT+F1-F5 |

## External Links

- [Libretro Theodore Github Repository](https://github.com/Zlika/theodore)
- [Report Libretro Theodore Core Issues Here](https://github.com/Zlika/theodore/issues)
- [Libretro Theodore Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/theodore_libretro.info)
- [Official DCTO8D Website](http://dcto8.free.fr/)
