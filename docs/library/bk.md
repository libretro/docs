# Elektronika - BK-0010/BK-0011(M) (bk)

## Background

A port of the PDP11 emulator to libretro. This core emulates the Soviet Electronica BK computers series, including the BK-0010, BK-0010.01 and BK-0011(M), as well as the Terak 8510/a, which is a 1976 American PDP-11/03 platform that the Electronica BK series were designed after. The BK series computers were the first mass-produced, affordable personal computers in Russia in the 1980s and they had a tremendous effect on the development of the Russian-speaking software community, similar to the C64, ZX Spectrum and Atari 2600 communities elsewhere in the world. These computers will accept console commands in English but respond mostly in Russian, so this core is mostly of use to Russian-speaking users.

This is a core for Soviet (russian) Electronica BK series:

- БК-0010
- БК-0010.01
- БК-0011(М)

You may read more about the series at http://en.wikipedia.org/wiki/Electronika_BK

The author's (Leonid A. Broukhis) page can be found at [here](http://www.mailcom.com/bk0010/index_en.shtml).

Additionally, it supports emulation of Terak 8510/a, which is a 1976 american PDP-11/03 platform and of which the Electronica BK series are indeed clones.

The Electronica BK computers were the first mass produced, affordable personal computers in Russia in the eighties of 20th century, and have had tremendous effect on the development of Russian-speaking software community. Every russian computer, hardware or ham radio geek born in seventies or eighties probably had one of those machines during their formational years. They are the C64s, ZX Spectrums and Atari 2600s of the now defunct USSR.

All of the BK machines accept console commands in English, but respond mostly in Russian.

Virtually all of BK schematics, documentation, hardware hacks and software has been preserved and is available on the internet. Unfortunately, most if not all of these things are only available in Russian.

### Author/License

The bk core has been authored by

- Eric A. Edwards
- Leonid A. Broukhis
- emestee
- arcade-mini
- phcoder

The bk core is licensed under

- [BSD](https://github.com/libretro/bk-emulator/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the bk core have the following file extensions:

- .bin

## Databases *WIP*

RetroArch database(s) that are associated with the bk core:

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename      |      Description       |              md5sum              |
|:---------------:|:----------------------:|:--------------------------------:|
| bk/B11M_BOS.ROM    |   | fe4627d1e3a1535874085050733263e7 |
| bk/B11M_EXT.ROM    |   | dc52f365d56fa1951f5d35b1101b9e3f |
| bk/BAS11M_0.ROM    |   | 946f6f23ded03c0e26187f0b3ca75993 |
| bk/BAS11M_1.ROM    |   | 1e6637f32aa7d1de03510030cac40bcf |
| bk/DISK_327.ROM    |   | 5015228eeeb238e65da8edcd1b6dfac7 |
| bk/BASIC10.ROM     |   | 3fa774326d75410a065659aea80252f0 |
| bk/FOCAL10.ROM     |   | 5737f972e8638831ab71e9139abae052 |
| bk/MONIT10.ROM     |   | 95f8c41c6abf7640e35a6a03cecebd01 |

## Features

Frontend-level settings or features that the bk core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✔         |
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

The bk core's library name is 'bk'

The bk core saves/loads to/from these directories.

### Geometry and timing

- The bk core's core provided FPS is 25.
- The bk core's core provided sample rate is 44100 Hz.
- The bk core's base width is 1080.
- The bk core's base height is 1080.
- The bk core's core provided aspect ratio is 1/1.

## Core options

The bk core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Model (restart)** [bk_model] (**BK-0010**|BK-0010.01|BK-0010.01 + FDD|BK-0011M + FDD|Terak 8510/a|Slow BK-0011M)

- **Peripheral (UP port, restart)** [bk_peripheral] (**none**|covox|ay_3_8910|mouse_high|mouse_low|joystick)

- **Keyboard layout** [bk_layout] (**qwerty**|jcuken)

- **Double CPU speed** [bk_doublespeed] (**disabled**|enabled)

- **Use color display** [bk_color] (**enabled**|disabled)

- **Keyboard type (restart)** [bk_keyboard_type] (**poll**|callback)

- **Aspect ratio** [bk_aspect_ratio] (**1:1**|4:3)

## Controllers

The bk core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **Joystick** - Joypad
- RetroKeyboard - Keyboard - Keyboard inputs are always active. Has keymapper support.
- RetroPad Keyboard Map - Joypad - Awaiting description.

### Controller tables

#### Keyboard

| RetroKeyboard Inputs         | RetroKeyboard         |
|------------------------------|-----------------------|
| Keyboard Backspace           | BACKSPACE             |
| Keyboard Tab                 | TAB                   |
| Keyboard Return              | RETURN                |
| Keyboard Pause               | PAUSE                 |
| Keyboard Escape              | ESCAPE                |
| Keyboard Space               | SPACE                 |
| Keyboard Quote '             | COLON                 |
| Keyboard Comma ,             | COMMA                 |
| Keyboard Minus -             | NEGATIVE              |
| Keyboard Period .            | PERIOD                |
| Keyboard Slash /             | DIVIDE                |
| Keyboard 0                   | 0                     |
| Keyboard 1                   | 1, Player 1 Coleco #0 |
| Keyboard 2                   | 2, Player 1 Coleco #9 |
| Keyboard 3                   | 3, Player 2 Coleco #0 |
| Keyboard 4                   | 4, Player 2 Coleco #9 |
| Keyboard 5                   | 5                     |
| Keyboard 6                   | 6                     |
| Keyboard 7                   | 7                     |
| Keyboard 8                   | 8                     |
| Keyboard 9                   | 9                     |
| Keyboard Semicolon ;         | SEMICOLON             |
| Keyboard Equals =            | CIRCUMFLEX            |
| Keyboard Left Bracket [      | LEFT BRACKET          |
| Keyboard Backslash \         | BACKSLASH (YEN)       |
| Keyboard Right Bracket ]     | RIGHT BRACKET         |
| Keyboard Backquote `         | AT                    |
| Keyboard a                   | A                     |
| Keyboard b                   | B                     |
| Keyboard c                   | C                     |
| Keyboard d                   | D                     |
| Keyboard e                   | E                     |
| Keyboard f                   | F                     |
| Keyboard g                   | G                     |
| Keyboard h                   | H                     |
| Keyboard i                   | I                     |
| Keyboard j                   | J                     |
| Keyboard k                   | K                     |
| Keyboard l                   | L                     |
| Keyboard m                   | M                     |
| Keyboard n                   | N                     |
| Keyboard o                   | O                     |
| Keyboard p                   | P                     |
| Keyboard q                   | Q                     |
| Keyboard r                   | R                     |
| Keyboard s                   | S                     |
| Keyboard t                   | T                     |
| Keyboard u                   | U                     |
| Keyboard v                   | V                     |
| Keyboard w                   | W                     |
| Keyboard x                   | X                     |
| Keyboard y                   | Y                     |
| Keyboard z                   | Z                     |
| Keyboard Delete              | DELETE                |
| Keyboard Keypad 0            | NUMPAD 0              |
| Keyboard Keypad 1            | NUMPAD 1              |
| Keyboard Keypad 2            | NUMPAD 2              |
| Keyboard Keypad 3            | NUMPAD 3              |
| Keyboard Keypad 4            | NUMPAD 4              |
| Keyboard Keypad 5            | NUMPAD 5              |
| Keyboard Keypad 6            | NUMPAD 6              |
| Keyboard Keypad 7            | NUMPAD 7              |
| Keyboard Keypad 8            | NUMPAD 8              |
| Keyboard Keypad 9            | NUMPAD 9              |
| Keyboard Keypad Period .     | NUMPAD COMMA          |
| Keyboard Keypad Divide /     | NUMPAD DIVIDE         |
| Keyboard Keypad Multiply *   | NUMPAD MULTIPLY       |
| Keyboard Keypad Minus -      | NUMPAD SUBTRACTION    |
| Keyboard Keypad Plus +       | NUMPAD ADD            |
| Keyboard Keypad Enter        | NUMPAD PERIOD         |
| Keyboard Up                  | UP                    |
| Keyboard Down                | DOWN                  |
| Keyboard Right               | RIGHT                 |
| Keyboard Left                | LEFT                  |
| Keyboard Insert              | INSERT                |
| Keyboard Home                | CLS                   |
| Keyboard End                 | STOP                  |
| Keyboard Page Up             | SELECT                |
| Keyboard F1                  | F1                    |
| Keyboard F2                  | F2                    |
| Keyboard F3                  | F3                    |
| Keyboard F4                  | F4                    |
| Keyboard F5                  | F5                    |
| Keyboard Caps Lock           | CAPS                  |
| Keyboard Right Shift         | RIGHT SHIFT           |
| Keyboard Left Shift          | LEFT SHIFT            |
| Keyboard Left Control        | CONTROL               |
| Keyboard Left Alt            | GRAPH                 |
| Keyboard Print               | PRINT                 |

Supported combinations

## External Links

- [Official bk Website](http://www.mailcom.com/bk0010/index_en.shtml)
- [bk Repository](https://github.com/emestee/bk-emulator)
- [Libretro bk Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/bk_libretro.info)
- [Libretro bk Github Repository](https://github.com/libretro/bk-emulator)
- [Report Libretro bk Core Issues Here](https://github.com/libretro/bk-emulator/issues)