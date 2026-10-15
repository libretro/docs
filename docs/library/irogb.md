# Nintendo - Game Boy / Color (IroGB)

## Background

A libretro port of the IroGB Game Boy Color emulator. IroGB is a reasonably accurate CGB emulator core that operates on a clock-cycle-stepped model and passes over 95% of the test cases across three of the most widely used GB/GBC emulator test suites (mooneye/blargg/acid), with improved test coverage yet to come. The project was developed as a passion project, aiming to balance emulation accuracy with practical system requirements.

The IroGB core has been authored by

- Alex Sutila/Xuanli Lin

The IroGB core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the IroGB core have the following file extensions:

- .gb
- .gbc
- .zip

RetroArch database(s) that are associated with the IroGB core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

## Features

Frontend-level settings or features that the IroGB core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |

### Directories

The IroGB core's library name is 'IroGB'

## Core options

The IroGB core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Select which BIOS to use (if available).** [irogb_bios] (**Auto**|DMG BIOS|CGB BIOS|Skip BIOS)

- **Disable re-coloring of DMG games (only applicable with CGB BIOS)** [irogb_monochrome_dmg] (enabled|**disabled**)

## Controllers

The IroGB core supports the following device type(s):

- Game Boy Joypad

## External Links

- [IroGB Repository](https://github.com/AlexSutila/IroGB)
- [Report IroGB Core Issues Here](https://github.com/AlexSutila/IroGB/issues)

