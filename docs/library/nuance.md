# VM Labs - NUON (Nuance)

## Background

Nuance is a NUON (VM Labs) emulator. NUON was a media-processing architecture embedded in a handful of DVD players (Samsung DVD-N501/N2000, Toshiba SD-2300, RCA DRC-480N) and used to ship a small number of games (Ballistic, Tempest 3000, Merlin Racing, Iron Soldier 3, Freefall 3050 A.D., Space Invaders XL, etc.) on standard DVD discs. The Linux/libretro port adds an OpenGL render path, miniaudio output, FUSE/ISO9660 disc reading, and an asmjit-based 64-bit JIT (x86_64; other architectures run the interpreter) on top of the original Windows codebase. Considered experimental. Games are loaded from raw ISO/BIN/CUE disc images, from CHD, or from individual .run/.cof program files dumped out of the disc filesystem.

The Nuance core has been authored by

- Mike Perry
- Carsten Waechter
- WizzardSK

The Nuance core is licensed under

- Non-commercial

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Nuance core have the following file extensions:

- .run
- .cof
- .nuon
- .cd
- .iso
- .img
- .chd

RetroArch database(s) that are associated with the Nuance core:

- [VM Labs - NUON](https://github.com/libretro/libretro-database/blob/master/rdb/VM%20Labs%20-%20NUON.rdb)

## Features

Frontend-level settings or features that the Nuance core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Core Options      | ✕         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The Nuance core's library name is 'Nuance'

## Core options

The Nuance core has no core options.

## External Links

- [Nuance Repository](https://github.com/andkrau/NuanceResurrection)
- [Report Nuance Core Issues Here](https://github.com/andkrau/NuanceResurrection/issues)

