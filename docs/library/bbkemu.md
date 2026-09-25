# BBKEmu (BBK Electronic Dictionary)

## Background

BBKEmu is an emulator for BBK electronic dictionary game platform. Games run on the 6502 CPU with the BBK OS ROM providing system calls for LCD, keyboard, audio and timer hardware. Requires font ROM (8.BIN) and OS ROM (E.BIN) from a physical BBK device in system/BBKEmu/<model>/ directory.

The BBKEmu core has been authored by

- jiangxincode

The BBKEmu core is licensed under

- GPL-3.0-or-later

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the BBKEmu core have the following file extensions:

- .gam

RetroArch database(s) that are associated with the BBKEmu core:

- [BBK](https://github.com/libretro/libretro-database/blob/master/rdb/BBK.rdb)

## Features

Frontend-level settings or features that the BBKEmu core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✔         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The BBKEmu core's library name is 'BBKEmu'

## Core options

The BBKEmu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **bbkemu_swap_lcd** [bbkemu_lcd_color] (****)

- **bbkemu_timer_rate** [bbkemu_cpu_rate] (****)

## External Links

- [BBKEmu Repository](https://github.com/AloysHF/BBKEmu)
- [Report BBKEmu Core Issues Here](https://github.com/AloysHF/BBKEmu/issues)

