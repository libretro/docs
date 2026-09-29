# Watara - Supervision (Potator)

## Background

The Potator core has been authored by

- Normmatt
- Cal2
- infval
- Alekmaul

The Potator core is licensed under

- Public Domain

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Potator core have the following file extensions:

- .bin
- .sv

RetroArch database(s) that are associated with the Potator core:

- [Watara - Supervision](https://github.com/libretro/libretro-database/blob/master/rdb/Watara%20-%20Supervision.rdb)

## Features

Frontend-level settings or features that the Potator core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |

### Directories

The Potator core's library name is 'Potator'

## Core options

The Potator core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Internal Palette** [potator_palette] (**Greyscale**|Potator Amber|Potator Green|Potator Blue|Potator BGB|Potator Wataroo|Game Boy DMG|Game Boy Pocket|Game Boy Light|Blossom Pink|Bubbles Blue|Buttercup Green|Digivice|Game.com|GameKing|Game Master|Golden Wild|Greenscale|Hokage Orange|Labo Fawn|Legendary Super Saiyan|Microvision|Million Live Gold|Odyssey Gold|Shiny Sky Blue|Slime Blue|TI-83|Travel Wood|Virtual Boy|TV-Link|TV-Link Inverted)

	Enables colorization of Supervision games.

- **LCD Ghosting** [potator_lcd_ghosting] (**disabled**|1 Frame|2 Frames|3 Frames|4 Frames|5 Frames|6 Frames|7 Frames|8 Frames)

	Simulates LCD ghosting by blending pixels from multiple successive frames. Can help to alleviate the flickering that is common in Supervision games.

- **Frameskip** [potator_frameskip] (**disabled**|Auto|Manual)

	Skip frames to avoid audio buffer under-run (crackling). Improves performance at the expense of visual smoothness. 'Auto' skips frames when advised by the frontend. 'Manual' utilises the 'Frameskip Threshold (%)' setting.

- **Frameskip Threshold (%)** [potator_frameskip_threshold] (15 to 60 in steps of 3, **33**)

	When 'Frameskip' is set to 'Manual', specifies the audio buffer occupancy threshold (percentage) below which frames will be skipped. Higher values reduce the risk of crackling by causing frames to be dropped more frequently.

## External Links

- [Potator Repository](https://github.com/libretro/potator)
- [Report Potator Core Issues Here](https://github.com/libretro/potator/issues)

