# Thomson - TO8D (Theodore)

## Background

Theodore is a Thomson TO8D system emulator based on the Daniel Coulom's DCTO8D emulator. The Thomson TO8 is a home computer introduced by French company Thomson SA in 1986. The Thomson TO8D is an improved version that includes a built-in 3.5" floppy drive.

The Theodore core has been authored by

- Thomas Lorblanchès

The Theodore core is licensed under

- [GPLv3](https://github.com/Zlika/theodore/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Requirements

None

## BIOS

The Theodore core does not feature BIOS use.

## Extensions

Content that can be loaded by the Theodore core have the following file extensions:

- .fd (floppy disk)
- .sap (floppy disk)
- .k7 (tape)
- .rom (cartridge)
- .m7 (cartridge)

## Features

Frontend-level settings or features that the Theodore core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | -         |
| Core Options      | ✔         |
| RetroAchievements | -         |
| RetroArch Cheats  | -         |
| Native Cheats     | -         |
| Controls          | -         |
| Remapping         | -         |
| Multi-Mouse       | -         |
| Rumble            | -         |
| Sensors           | -         |
| Camera            | -         |
| Location          | -         |
| Subsystem         | -         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | -         |
| Disk Control      | -         |
| Username          | -         |
| Language          | -         |
| Crop Overscan     | -         |
| LEDs              | -         |

### Directories

The Theodore core's internal core name is 'theodore'.

**Frontend's System directory**

| File         | Description |
|:------------:|:-----------:|
| theodore.cfg | Config file |

### Geometry and timing

- The Theodore core's base width is 672 pixels.
- The Theodore core's base height is 432 pixels.

## Usage

Once the content and core are loaded the start screen is displayed as
shown below.

![](../image/core/theodore/to8d_os.jpg)

Pressing the joypad "B" button starts BASIC 512 that automatically runs the
program on the bootable device currently presented.

## Core options

The Theodore core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Floppy write protection** [theodore_floppy_write_protect]  (disabled|**enabled**)

- **Tape write protection** [theodore_tape_write_protect]  (disabled|**enabled**)

- **Dump printer data to file** [theodore_printer_emulation] (**disabled**|enabled)

## User 1 device types

The Theodore core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- None - Input disabled
- **RetroPad** - Joypad
- RetroPad w/ Analog - Joypad

## Other devices

- Light pen - The TO8 light pen inputs are mapped to the mouse.

## Joypad

| RetroPad Inputs                        | User 1 input descriptors       |
|----------------------------------------|--------------------------------|
| ![](../image/retropad/retro_a.png)     | "Fire" button                  |
| ![](../image/retropad/retro_b.png)     | Start screen only: Run content |
| ![](../image/retropad/retro_x.png)     | Virtual keyboard: go up        |
| ![](../image/retropad/retro_y.png)     | Virtual keyboard: go down      |
| ![](../image/retropad/retro_start.png) | Virtual keyboard: keystroke    |

On controllers without Y/X keys, select can also be used to roll the virtual keyboard up. The order of the keys in the virtual keyboard is: digits (0->9) then letters (A->Z) then "Enter".

## Keyboard

![](../image/core/theodore/to8d_keyboard.jpg)

| RetroKeyboard Inputs         | Theodore Inputs           |
|------------------------------|---------------------------|
| Keyboard Tab                 | STOP                      |
| Keyboard Left Control        | CNT                       |
| Keyboard Caps Lock           | CAPSLOCK                  |
| Keyboard Left Alt            | ACC                       |
| Keyboard Home                | HOME                      |
| Keyboard Up                  | UP                        |
| Keyboard Down                | DOWN                      |
| Keyboard Right               | RIGHT                     |
| Keyboard Left                | LEFT                      |
| Keyboard Insert              | INS                       |
| Keyboard Delete              | DEL                       |
| Keyboard F1                  | F1                        |
| Keyboard F2                  | F2                        |
| Keyboard F3                  | F3                        |
| Keyboard F4                  | F4                        |
| Keyboard F5                  | F5                        |
| Keyboard Shift + F1          | F6                        |
| Keyboard Shift + F2          | F7                        |
| Keyboard Shift + F3          | F8                        |
| Keyboard Shift + F4          | F9                        |
| Keyboard Shift + F5          | F10                       |

## Mouse

| RetroMouse Inputs                                     | Theodore Inputs      |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Light pen cursor                         |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Selection                      |

## External Links

- [Libretro Theodore Github Repository](https://github.com/Zlika/theodore)
- [Report Libretro Theodore Core Issues Here](https://github.com/Zlika/theodore/issues)
- [Libretro Theodore Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/theodore_libretro.info)
- [Official DCTO8D Website](http://dcto8.free.fr/)
