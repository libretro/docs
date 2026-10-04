# SNK - Neo Geo CD (NeoCD)

## Background

A rewrite of the original NeoCD emulator for SNK's NeoGeo CD console, ported to libretro. This core is intended to improve the accuracy of the original project, while still maintaining full/usable speed on low-powered hardware, such as the Raspberry Pi. It is easier to load games with than some of the other, more complex cores that support the NeoGeo CD platform, such as MAME and FBNeo.

The NeoCD core has been authored by

- Elta

The NeoCD core is licensed under

- LGPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the NeoCD core have the following file extensions:

- .cue
- .chd

RetroArch database(s) that are associated with the NeoCD core:

- [SNK - Neo Geo CD](https://github.com/libretro/libretro-database/blob/master/rdb/SNK%20-%20Neo%20Geo%20CD.rdb)

## Features

Frontend-level settings or features that the NeoCD core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Core Options      | ✔         |

### Directories

The NeoCD core's library name is 'NeoCD'

## Core options

The NeoCD core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

- **Console Region** [neocd_region] (**Japan**|USA|Europe)

- **Per-Game Saves (Restart)** [neocd_per_content_saves] (On|**Off**)

#### Video

- **Horizontal Overscan Mask** [neocd_overscan_h] (**8**|4|0|12|16)

- **Aspect Ratio** [neocd_aspect_ratio] (**1:1 PAR**|45:44 PAR|4:3 DAR)

#### Advanced

- **CD Speed Hack** [neocd_cdspeedhack] (On|**Off**)

- **Skip CD Loading** [neocd_loadskip] (**On**|Off)

- **CPU Overclock** [neocd_cpu_overclock] (**100%**|110%|125%|150%|200%)

## External Links

- [NeoCD Repository](https://github.com/libretro/neocd_libretro)
- [Report NeoCD Core Issues Here](https://github.com/libretro/neocd_libretro/issues)

