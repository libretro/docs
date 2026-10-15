# NEC - PC-98 (Neko Project II)

## Background

An emulator for NEC's PC-9801 (aka PC-98) personal computer platform, ported to libretro. This core has been completely superseded by the Neko Project II Kai core.

The Neko Project II core has been authored by

- Neko Project II Team

The Neko Project II core is licensed under

- MIT

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Neko Project II core have the following file extensions:

- .d98
- .zip
- .98d
- .fdi
- .fdd
- .2hd
- .tfd
- .d88
- .88d
- .hdm
- .xdf
- .dup
- .cmd
- .hdi
- .thd
- .nhd
- .hdd

RetroArch database(s) that are associated with the Neko Project II core:

- [NEC - PC-98](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC-98.rdb)

## Features

Frontend-level settings or features that the Neko Project II core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✕         |
| Subsystem         | ✕         |
| Disk Control      | ✔         |

### Directories

The Neko Project II core's library name is 'Neko Project II'

## Core options

The Neko Project II core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **PC Model (Restart)** [np2_model] (**VX**|EPSON|VM)

- **CPU Base Clock (Restart)** [np2_clk_base] (**2.4576 MHz**|1.9968 MHz)

- **CPU Clock Multiplier (Restart)** [np2_clk_mult] (**4**|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|1|2|3)

- **RAM Size (Restart)** [np2_ExMemory] (**2**|3|4|5|6|7|8|9|10|11|12|13|14|15|16|24|32|48|64|1)

- **Skipline Revisions** [np2_skipline] (**Full 255 lines**|ON|OFF)

- **Sound Board (Restart)** [np2_SNDboard] (**PC9801-86**|PC9801-26K + 86|PC9801-86 + Chibi-Oto|PC9801-118|Speak Board|Spark Board|Sound Orchestra|Sound Orchestra-V|AMD-98|None|PC9801-14|PC9801-26K)

- **JastSound** [np2_jast_snd] (**OFF**|ON)

- **Volume FM** [np2_volume_F] (**64**|68|72|76|80|84|88|92|96|100|104|108|112|116|120|124|128|0|4|8|12|16|20|24|28|32|36|40|44|48|52|56|60)

- **Volume SSG** [np2_volume_S] (**64**|68|72|76|80|84|88|92|96|100|104|108|112|116|120|124|128|0|4|8|12|16|20|24|28|32|36|40|44|48|52|56|60)

- **Volume ADPCM** [np2_volume_A] (**64**|68|72|76|80|84|88|92|96|100|104|108|112|116|120|124|128|0|4|8|12|16|20|24|28|32|36|40|44|48|52|56|60)

- **Volume PCM** [np2_volume_P] (**64**|68|72|76|80|84|88|92|96|100|104|108|112|116|120|124|128|0|4|8|12|16|20|24|28|32|36|40|44|48|52|56|60)

- **Volume RHYTHM** [np2_volume_R] (**64**|68|72|76|80|84|88|92|96|100|104|108|112|116|120|124|128|0|4|8|12|16|20|24|28|32|36|40|44|48|52|56|60)

- **Floppy Seek Sound (Restart)** [np2_Seek_Snd] (**OFF**|ON)

- **Volume Floppy Seek (Restart)** [np2_Seek_Vol] (**80**|84|88|92|96|100|104|108|112|116|120|124|128|0|4|8|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76)

- **Volume Beep** [np2_BEEP_vol] (**3**|0|1|2)

- **Gui Controller** [np2_GUI_controller] (**MOUSE**|JOY0)

- **Gui Joy0 PAS** [np2_GUIJOY_PAS] (**3**|4|5|1|2)

## External Links

- [Neko Project II Repository](https://github.com/libretro/libretro-meowPC98)
- [Report Neko Project II Core Issues Here](https://github.com/libretro/libretro-meowPC98/issues)

