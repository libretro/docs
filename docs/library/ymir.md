# Sega - Saturn (Emir)

## Background

A port of the Ymir Sega Saturn emulator to libretro. Ymir is a work-in-progress Saturn emulator focused on accuracy and compatibility. It features software rendering, SH2 emulation with optional cache emulation, and a modern codebase. A young but rapidly maturing alternative to Beetle Saturn.

The Emir core has been authored by

- StrikerX3

The Emir core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Emir core have the following file extensions:

- .cue
- .chd
- .mds
- .ccd
- .iso
- .m3u

RetroArch database(s) that are associated with the Emir core:

- [Sega - Saturn](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Saturn.rdb)

## Features

Frontend-level settings or features that the Emir core respects.

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
| Disk Control      | ✔         |

## Core options

The Emir core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

System-level emulation settings.

- **Region** [ymir_region] (**Auto**|Japan|North America|Europe)

	Set the Saturn region. 'Auto' detects from the disc.

- **SH-2 Cache** [ymir_sh2_cache] (**Disabled**|Enabled)

	Improves accuracy for specific games at a small performance cost.

- **SH-2 Clock** [ymir_sh2_clock] (25%|50%|75%|**100% (Recommended)**|125%|150%|200%|300%|400%|500%)

	Adjusts the SH-2 CPU clock speed. Lower values improve performance but may cause slowdowns; higher values may reduce lag in CPU-heavy games. Values other than 100% may lower compatibility with some games.

- **RTC** [ymir_rtc_mode] (**Virtual (Recommended)**|Host)

	Virtual: clock advances with emulation (correct for fast-forward/save states). Host: syncs to real time.

- **Cartridge** [ymir_cartridge] (**Auto (Recommended)**|None|1 MB DRAM Expansion|4 MB DRAM Expansion|ROM: King of Fighters '95|ROM: Ultraman)

	Select the cartridge to insert. 'Auto' uses the game database to pick the correct one. DRAM carts are required by many fighting games.

#### Video

Graphics rendering settings.

- **Threaded VDP1** [ymir_threaded_vdp1] (**Enabled**|Disabled)

	Run the VDP1 renderer in a dedicated thread for improved performance.

- **Threaded VDP2** [ymir_threaded_vdp2] (**Enabled**|Disabled)

	Run the VDP2 renderer in a dedicated thread. Highly recommended for performance.

- **Deinterlace** [ymir_deinterlace] (**Disabled**|Enabled)

	Render interlaced high-res modes in progressive mode. May cause artifacts in some games.

- **Threaded Deinterlace** [ymir_threaded_deinterlacer] (**Enabled**|Disabled)

	Run the deinterlacer in a dedicated thread. Requires threaded VDP2 and deinterlace enabled.

- **Transparent Meshes** [ymir_transparent_meshes] (**Disabled**|Enabled)

	Render mesh patterns as semi-transparent instead of checkerboard.

#### Audio

Audio emulation settings.

- **Interpolation** [ymir_audio_interpolation] (**Linear (Accurate)**|Nearest Neighbor)

	Linear interpolation matches real hardware. Nearest neighbor is harsher.

- **Threaded SCSP** [ymir_threaded_scsp] (**Disabled**|Enabled)

	Run the SCSP and its MC68EC000 sound CPU in a dedicated thread for improved performance.

- **SCSP Granularity** [ymir_audio_step_granularity] (**0 - Fastest**|1|2|3|4|5 - Most Accurate)

	Controls SCSP emulation accuracy. Higher values are more accurate but slower.

#### CD Drive

CD Block emulation settings.

- **CD Speed** [ymir_cd_speed] (**2x (Accurate)**|4x|8x)

	Higher values reduce loading times.

- **CD Block LLE** [ymir_cdblock_lle] (**Disabled**|Enabled)

	Use low-level CD block emulation for improved accuracy. Requires CD block ROM in system directory.

## External Links

- [Emir Repository](https://git.libretro.com/libretro/emir)
- [Ymir Repository](https://github.com/ymir-emu/Ymir)

