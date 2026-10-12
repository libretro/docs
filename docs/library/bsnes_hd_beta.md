# Nintendo - SNES / SFC (bsnes-hd beta)

## Background

bsnes HD Beta is based on the latest code from the bsnes emulator, but it serves as a test-bed for some additional features that are not considered stable enough for inclusion in the standard bsnes core. These features include true widescreen support and increased color depth (i.e., without dithering), among others. Aside from these additional experimental features, this core is identical to the standard bsnes core in both accuracy and performance (and libretro features/limitations).

The bsnes-hd beta core has been authored by

- Near
- DerKoun

The bsnes-hd beta core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the bsnes-hd beta core have the following file extensions:

- .smc
- .sfc
- .swc
- .fig
- .gb
- .gbc
- .bs

RetroArch database(s) that are associated with the bsnes-hd beta core:

- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Sufami Turbo](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Sufami%20Turbo.rdb)
- [Nintendo - Satellaview](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Satellaview.rdb)

## Features

Frontend-level settings or features that the bsnes-hd beta core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✔         |
| Subsystem         | ✔         |
| Disk Control      | ✕         |

## Core options

The bsnes-hd beta core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **HD Mode 7 Scale** [bsnes_mode7_scale] (**2x**|3x|4x|5x|6x|7x|8x|9x|10x|disable|1x)

- **HD Mode 7 Perspective Correction** [bsnes_mode7_perspective] (**auto (wide)**|auto (medium)|auto (narrow)|on (wide)|on (medium)|on (narrow)|off)

- **HD Mode 7 Supersampling** [bsnes_mode7_supersample] (**none**|2x|3x|4x|5x|6x|7x|8x|9x|10x)

- **HD Mode 7 HD->SD Mosaic** [bsnes_mode7_mosaic] (**1x scale**|non-HD|ignore)

- **WideScreen Mode** [bsnes_mode7_wsMode] (**Mode 7**|all|none)

- **WideScreen Aspect Ratio** [bsnes_mode7_widescreen] (**16:9**|2:1|21:9|16:10|4:3|none)

- **WideScreen Background 1** [bsnes_mode7_wsbg1] (**auto horz and vert**|off|on|above line 40|below line 40|above line 80|below line 80|above line 120|below line 120|above line 160|below line 160|above line 200|below line 200|crop edges|auto crop edges|disable entirely|auto horizontal)

- **WideScreen Background 2** [bsnes_mode7_wsbg2] (**auto horz and vert**|off|on|above line 40|below line 40|above line 80|below line 80|above line 120|below line 120|above line 160|below line 160|above line 200|below line 200|crop edges|auto crop edges|disable entirely|auto horizontal)

- **WideScreen Background 3** [bsnes_mode7_wsbg3] (**auto horz and vert**|off|on|above line 40|below line 40|above line 80|below line 80|above line 120|below line 120|above line 160|below line 160|above line 200|below line 200|crop edges|auto crop edges|disable entirely|auto horizontal)

- **WideScreen Background 4** [bsnes_mode7_wsbg4] (**auto horz and vert**|off|on|above line 40|below line 40|above line 80|below line 80|above line 120|below line 120|above line 160|below line 160|above line 200|below line 200|crop edges|auto crop edges|disable entirely|auto horizontal)

- **WideScreen Sprites** [bsnes_mode7_wsobj] (**safe**|unsafe|disable entirely|clip)

- **WideScreen Area Background Color** [bsnes_mode7_wsBgCol] (**auto**|color|black)

- **WideScreen Ignore Window** [bsnes_mode7_igwin] (**outside**|outside and always|all|none)

- **WideScreen Ig Win Coordinate** [bsnes_mode7_igwinx] (**128**|168|216|40|88)

- **WideScreen Marker** [bsnes_mode7_wsMarker] (**none**|lines|darken)

- **WideScreen Marker Alpha** [bsnes_mode7_wsMarkerAlpha] (**1/1**|1/2|1/3|1/4|1/5|1/6|1/7|1/8|1/9|1/10)

- **HD Background Color Radius** [bsnes_mode7_bgGrad] (**4**|5|6|7|8|0|1|2|3)

- **HD Windowing (experimental)** [bsnes_mode7_windRad] (**0**|1|2|3|4|5|6|7|8)

- **Show Overscan** [bsnes_ppu_show_overscan] (**OFF**|ON)

- **Pixel Aspect Correction** [bsnes_video_aspectcorrection] (**OFF**|ON)

- **Blur emulation** [bsnes_blur_emulation] (**OFF**|ON)

- **Entropy (randomization)** [bsnes_entropy] (**Low**|High|None)

- **Hotfixes** [bsnes_hotfixes] (**OFF**|ON)

- **CPU Fast Math** [bsnes_cpu_fastmath] (**OFF**|ON)

- **CPU Overclocking** [bsnes_cpu_overclock] (100 to 400 in steps of 10, **100**)

- **SA1 Coprocessor Overclocking** [bsnes_sa1_overclock] (100 to 400 in steps of 10, **100**)

- **SuperFX Coprocessor Overclocking** [bsnes_sfx_overclock] (100 to 800 in steps of 10, **100**)

- **PPU Fast mode** [bsnes_ppu_fast] (**ON**|OFF)

- **PPU Deinterlace** [bsnes_ppu_deinterlace] (**ON**|OFF)

- **PPU No sprite limit** [bsnes_ppu_no_sprite_limit] (**ON**|OFF)

- **PPU No VRAM blocking** [bsnes_ppu_no_vram_blocking] (**OFF**|ON)

- **DSP Fast mode** [bsnes_dsp_fast] (**ON**|OFF)

- **DSP Cubic interpolation** [bsnes_dsp_cubic] (**OFF**|ON)

- **DSP Echo shadow RAM** [bsnes_dsp_echo_shadow] (**OFF**|ON)

- **Coprocessor Delayed Sync** [bsnes_coprocessor_delayed_sync] (**ON**|OFF)

- **Coprocessor Prefer HLE** [bsnes_coprocessor_prefer_hle] (**ON**|OFF)

- **Preferred Super GameBoy BIOS (restart)** [bsnes_sgb_bios] (**SGB1.sfc**|SGB2.sfc)

- **Amount of frames for run-ahead** [bsnes_run_ahead_frames] (**OFF**|1|2|3|4)

- **Luminance** [bsnes_video_luminance] (**100**|90|80|70|60|50|40|30|20|10|0)

- **Saturation** [bsnes_video_saturation] (**100**|90|80|70|60|50|40|30|20|10|0|200|190|180|170|160|150|140|130|120|110)

- **Gamma** [bsnes_video_gamma] (**100**|110|120|130|140|150|160|170|180|190|200)

## External Links

- [bsnes-hd beta Repository](https://github.com/libretro/bsnes-hd)
- [Report bsnes-hd beta Core Issues Here](https://github.com/libretro/bsnes-hd/issues)

