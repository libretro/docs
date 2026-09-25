# Arcade (HBMAME)

## Background

'HBMAME' is compatible with HBMAME latest ROM sets. HBMAME (HomeBrew MAME) is a derivative of MAME, and contains various hacks and homebrews. For most users and use-cases (that is, anything that's not homebrew/hacks), the normal, up-to-date MAME or FBNeo cores are a better option.

The MAME core has been authored by

- Robbbert,MAMEdev

The MAME core is licensed under

- GPLv2+

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the MAME core have the following file extensions:

- .cmd
- .zip
- .7z

RetroArch database(s) that are associated with the MAME core:

- [HBMAME](https://github.com/libretro/libretro-database/blob/master/rdb/HBMAME.rdb)

## Features

Frontend-level settings or features that the MAME core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Core Options      | ✔         |

### Directories

The MAME core's library name is 'MAME'

## Core options

The MAME core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

Configure general MAME related options.

- **Thread Mode** [mame_thread_mode] (disabled|**enabled**)

- **Cheats** [mame_cheats_enable] (**disabled**|enabled)

- **Throttle** [mame_throttle] (**disabled**|enabled)

- **Boot to BIOS** [mame_boot_to_bios] (**disabled**|enabled)

- **Boot to OSD** [mame_boot_to_osd] (**disabled**|enabled)

- **Read Configuration** [mame_read_config] (**disabled**|enabled)

- **Write Configuration** [mame_write_config] (**disabled**|enabled)

- **MAME INI Paths** [mame_mame_paths_enable] (**disabled**|enabled)

- **Save State Naming** [mame_saves] (**Game**|System)

- **Auto Save/Load States** [mame_auto_save] (**disabled**|enabled)

- **Softlists** [mame_softlists_enable] (disabled|**enabled**)

- **Softlist Automatic Media Type** [mame_softlists_auto_media] (disabled|**enabled**)

- **Media Type** [mame_media_type] (cart|cass|cdrm|flop|hard|prin|**rom**|serl)

- **VFS Enabled** [mame_vfs_enabled] (disabled|**enabled**)

	Enable or disable RetroArch VFS interface. VFS interface v4 or higher is required. Restart core to take effect

#### Input

Configure input options.

- **Joystick Deadzone** [mame_joystick_deadzone] (0.00 to 1.00 in steps of 0.05, **0.15**)

- **Joystick Saturation** [mame_joystick_saturation] (0.05 to 1.00 in steps of 0.05, **0.85**)

- **Joystick Threshold** [mame_joystick_threshold] (0.05 to 1.00 in steps of 0.05, **0.30**)

- **Joystick 4-way Simulation** [mame_mame_4way_enable] (**disabled**|4way|strict|qbert)

- **Profile Buttons Per Game** [mame_buttons_profiles] (**disabled**|enabled)

- **Mouse** [mame_mouse_enable] (disabled|**enabled**)

- **Lightgun Mode** [mame_lightgun_mode] (**None**|Lightgun|Touchscreen)

- **Lightgun Offscreen Position** [mame_lightgun_offscreen_mode] (**Free**|Fixed (Top Left)|Fixed (Bottom Right))

#### Video

Configure video options.

- **Screen Rotation Mode** [mame_rotation_mode] (**Libretro**|Internal|TATE-ROL|TATE-ROR|None)

- **Alternate Renderer** [mame_alternate_renderer] (**disabled**|enabled|Cropped)

- **Alternate Renderer Resolution** [mame_altres] (640x360|**640x480**|800x450|800x600|960x540|960x720|1024x576|1024x768|1280x720|1280x960|1600x900|1600x1200|1440x1080|1920x1080|1920x1440|2560x1440|2880x2160|3840x2160)

#### Emulation Hacks

Configure emulation hack options.

- **Main CPU Overclock %** [mame_cpu_overclock] (**Default (100%)**|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|60|65|70|75|80|85|90|95|100|105|110|115|120|125|130|135|140|145|150|155|160|165|170|175|180|185|190|195|200|205|210|215|220|225|230|235|240|245|250|255|260|265|270|275|280|285|290|295|300|305|310|315|320|325|330|335|340|345|350|355|360|365|370|375|380|385|390|395|400)

- **Sound CPU Overclock %** [mame_cpu_sound_overclock] (**Default (100%)**|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|60|65|70|75|80|85|90|95|100|105|110|115|120|125|130|135|140|145|150|155|160|165|170|175|180|185|190|195|200|205|210|215|220|225|230|235|240|245|250|255|260|265|270|275|280|285|290|295|300|305|310|315|320|325|330|335|340|345|350|355|360|365|370|375|380|385|390|395|400)

- **Automatic Load Fast-Forward** [mame_autoloadfastforward] (**disabled**|enabled)

	Experimental feature to automatically fast-forward during CD access. Works with: - Generic SCSI - Sega CD and Neo Geo CD

- **Coin Limit** [mame_coin_limit] (**disabled**|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)

## Controllers

The MAME core supports the following device type(s):

- RetroPad
- Keyboard
- None
- None

## External Links

- [MAME Repository](https://github.com/libretro/hbmame-libretro)
- [Report MAME Core Issues Here](https://github.com/libretro/hbmame-libretro/issues)

