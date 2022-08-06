# Macintosh (minivmac)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/UQOs0RnQjWs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Minivmac is the build system for Mini vMac, a miniature Macintosh emulator.

Further information may be found at
"https://www.gryphel.com/c/minivmac/".

### Author/License

The minivmac core has been authored by

- phcoder
- rtype

The minivmac core is licensed under

- [](https://github.com/libretro/libretro-minivmac)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the minivmac core have the following file extensions:

- .dsk
- .img
- .zip
- .hvf
- .cmd

## Databases *WIP*

RetroArch database(s) that are associated with the minivmac core:

## BIOS

Required or optional firmware files go in the frontend's system directory.

|   Filename      |      Description       |              md5sum              |
|:---------------:|:----------------------:|:--------------------------------:|
| MacII.rom    |   | 66223BE1497460F1E60885EEB35E03CC |

## Features

Frontend-level settings or features that the minivmac core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕        |
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

The minivmac core's library name is 'minivmac'

The minivmac core saves/loads to/from these directories.

### Geometry and timing

- The minivmac core's core provided FPS is 13.63.
- The minivmac core's core provided sample rate is 22255 Hz.
- The minivmac core's base width is 1440.
- The minivmac core's base height is 1080.
- The minivmac core's core provided aspect ratio is 4/3.

## Core options

The minivmac core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Status Bar** [minivmac_Statusbar] (**ON**|OFF)

- **Keyboard Type** [minivmac_kbdtype] (**Callback**|Poll)

## Controllers

The minivmac core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad
- Minivmac Joystick - Joypad - Awaiting description.
- Minivmac Keyboard - Keyboard inputs are always active. Has keymapper support.

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

- [Official minivmac Website](https://www.gryphel.com/c/minivmac/)
- [minivmac Repository](https://github.com/rickyzhang82/minivmac)
- [Libretro minivmac Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/minivmac_libretro.info)
- [Libretro minivmac Github Repository](https://github.com/libretro/libretro-minivmac)
- [Report Libretro minivmac Core Issues Here](https://github.com/libretro/libretro-minivmac/issues)