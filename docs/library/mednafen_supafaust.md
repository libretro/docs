# Nintendo - SNES / SFC (Beetle Supafaust)

## Background

A port of Mednafen's Supafaust SNES emulator to libretro. This core is designed to be very fast and reasonably accurate. It is fastest on ARM hardware but should be quite speedy on typical x86 machines, as well. It is a very complete port, with support for many libretro features, including frontend features that depend on stable, deterministic savestates.

The Beetle Supafaust core has been authored by

- Mednafen team

The Beetle Supafaust core is licensed under

- GPLv2+

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Beetle Supafaust core have the following file extensions:

- .smc
- .swc
- .sfc
- .fig

RetroArch database(s) that are associated with the Beetle Supafaust core:

- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)

## Features

Frontend-level settings or features that the Beetle Supafaust core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
| RetroArch Cheats  | ✔         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The Beetle Supafaust core's library name is 'Beetle Supafaust'

## Core options

The Beetle Supafaust core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Pixel format** [supafaust_pixel_format] (**rgb565**|xrgb8888|0rgb1555)

- **Correct pixel aspect ratio** [supafaust_correct_aspect] (**enabled**|disabled|force_ntsc|force_pal)

- **Horizontal blend/double filter** [supafaust_h_filter] (**phr256blend_auto512**|phr256blend_512|512_blend|512|phr256blend)

- **Deinterlacer** [supafaust_deinterlacer] (**bob_offset**|weave|blend)

- **First displayed scanline in NTSC mode** [supafaust_slstart] (0 to 16 in steps of 1, **0**)

- **Last displayed scanline in NTSC mode** [supafaust_slend] (223 to 207 in steps of -1, **223**)

- **First displayed scanline in PAL mode** [supafaust_slstartp] (0 to 24 in steps of 1, **0**)

- **Last displayed scanline in PAL mode** [supafaust_slendp] (238 to 214 in steps of -1, **238**)

- **Region/Type of SNES to emulate** [supafaust_region] (**auto**|ntsc|pal|ntsc_lie_auto|pal_lie_auto|ntsc_lie_pal|pal_lie_ntsc)

- **Begin frame in SNES VBlank to lower latency** [supafaust_frame_begin_vblank] (**enabled**|disabled)

- **Enable 1-frame run-ahead** [supafaust_run_ahead] (**disabled**|video|video+audio)

- **Enable multitap** [supafaust_multitap] (**disabled**|port1|port2|port1+port2)

- **CX4 clock rate %** [supafaust_cx4_clock_rate] (**100**|125|150|175|200|250|300|400|500)

- **SuperFX clock rate %** [supafaust_superfx_clock_rate] (**100**|125|150|175|200|250|300|400|500|95)

- **Emulate SuperFX instruction cache** [supafaust_superfx_icache] (**disabled**|enabled)

- **Internal resampler(output rate)** [supafaust_audio_rate] (**disabled**|44100|48000|96000)

- **Emulation thread affinity mask** [supafaust_thread_affinity_emu] (**0x2**|0x0|0x1|0x3|0x4|0x5|0x6|0x7|0x8|0x9|0xa|0xb|0xc|0xd|0xe|0xf)

- **PPU render thread affinity mask** [supafaust_thread_affinity_ppu] (**0x1**|0x0|0x2|0x3|0x4|0x5|0x6|0x7|0x8|0x9|0xa|0xb|0xc|0xd|0xe|0xf)

- **PPU renderer** [supafaust_renderer] (**mt**|st)

## External Links

- [Beetle Supafaust Repository](https://github.com/libretro/supafaust)
- [Report Beetle Supafaust Core Issues Here](https://github.com/libretro/supafaust/issues)

