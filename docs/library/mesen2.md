# Nintendo - NES / FC / FDS / SNES / SFC / GB / GBC / GBA / NEC - PCE / PCE-CD / Sega - SMS / GG / Bandai - Wswan (MesenCE)

## Background

A port of MesenCE to the libretro API. This emulator is a combined effort of the original author, Sour, and the NESdev community. It is extremely accurate and covers a ton of great home gaming consoles. It even handles Super Game Boy through the libretro 'subsystem' mechanic.

The Mesen2 core has been authored by

- M. Bibaud (aka Sour) and NESdev community

The Mesen2 core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Mesen2 core have the following file extensions:

- .nes
- .fds
- .unf
- .unif
- .sfc
- .smc
- .gb
- .gbc
- .gba
- .pce
- .sgx
- .cue
- .sms
- .gg
- .ws
- .wsc

RetroArch database(s) that are associated with the Mesen2 core:

- [Nintendo - Super Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Super%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Satellaview](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Satellaview.rdb)
- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)
- [Nintendo - Game Boy Advance](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Advance.rdb)
- [Bandai - WonderSwan](https://github.com/libretro/libretro-database/blob/master/rdb/Bandai%20-%20WonderSwan.rdb)
- [Bandai - WonderSwan Color](https://github.com/libretro/libretro-database/blob/master/rdb/Bandai%20-%20WonderSwan%20Color.rdb)
- [NEC - PC Engine SuperGrafx](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20SuperGrafx.rdb)
- [NEC - PC Engine - TurboGrafx 16](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20-%20TurboGrafx%2016.rdb)
- [NEC - PC Engine CD - TurboGrafx-CD](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20CD%20-%20TurboGrafx-CD.rdb)
- [Nintendo - Nintendo Entertainment System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20Entertainment%20System.rdb)
- [Nintendo - Family Computer Disk System](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Family%20Computer%20Disk%20System.rdb)

## Features

Frontend-level settings or features that the Mesen2 core respects.

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
| Subsystem         | ✔         |
| Disk Control      | ✕         |

### Directories

The Mesen2 core's library name is 'Mesen2'

## Core options

The Mesen2 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

System settings (region, RAM, overclock)

- **Region** [mesen_region] (**Auto**|NTSC|PAL|Dendy)

	Select NES region

- **RAM Power-On State** [mesen_ramstate] (**All 0s**|All 1s|Random)

	Default power-on state for RAM

- **Overclock** [mesen_overclock] (**None**|Low|Medium|High|Very High)

	Overclock the NES CPU

- **Overclock Type** [mesen_overclock_type] (**Before NMI**|After NMI)

	When to apply overclock

- **FDS Auto Insert** [mesen_fdsautoinsertdisk] (**Off**|On)

	Automatically insert disks on FDS games

- **FDS Fast Forward** [mesen_fdsfastforwardload] (**Off**|On)

	Fast forward while FDS is loading

- **Allow Invalid Input** [mesen_allow_invalid_input] (**Off**|On)

	Allow invalid input combinations

- **Randomize Mapper Power-On** [mesen_randomize_mapper_power_on_state] (**Off**|On)

	Randomize mapper power-on state (for testing)

- **Randomize CPU/PPU Alignment** [mesen_randomize_cpu_ppu_alignment] (**Off**|On)

	Randomize CPU/PPU alignment (for testing)

- **Disable Frame Skipping** [mesen_snes_disable_frame_skipping] (**Off**|On)

	Disable SNES frame skipping

- **Strict Board Mappings** [mesen_snes_enable_strict_board_mappings] (**Off**|On)

	Use strict SNES board mappings

- **Randomize Power-On** [mesen_snes_randomize_power_on_state] (**Off**|On)

	Randomize the SNES power-on state

- **Game Boy Model** [mesen_gameboy_model] (Auto (Best)|**Auto (GBC)**|Auto (SGB)|Auto (GB)|Game Boy|Game Boy Color|Super Game Boy)

	Select the Game Boy model to emulate

- **Skip Boot Screen** [mesen_gba_skip_boot_screen] (**Off**|On)

	Skip the GBA boot screen

- **Disable Frame Skipping** [mesen_gba_disable_frame_skipping] (**Off**|On)

	Disable GBA frame skipping

- **Save Type** [mesen_gba_save_type] (**Auto Detect**|None|SRAM|EEPROM 512|EEPROM 8192|Flash 64|Flash 128)

	Select the GBA save type

- **RTC Type** [mesen_gba_rtc_type] (**Auto Detect**|Enabled|Disabled)

	Select the GBA RTC emulation mode

- **Console Type** [mesen_pce_console_type] (**Auto**|PC Engine|SuperGrafx|TurboGrafx)

	Select the PC Engine console model

- **CD-ROM Type** [mesen_pce_cdrom_type] (CD-ROM|Super CD-ROM|**Arcade**)

	Select the PCE CD-ROM emulation type

- **Disable Frame Skipping** [mesen_pce_disable_frame_skipping] (**Off**|On)

	Disable PCE frame skipping

- **Model** [mesen_ws_model] (**Auto**|Monochrome|Color|SwanCrystal|PocketChallenge)

	Select the WonderSwan model

#### Video

Video settings (palette, filters, overscan)

- **Palette** [mesen_palette] (**Default**|Composite Direct (by FirebrandX)|NES Classic|Nestopia RGB|Original Hardware|PVM Style|Sony CXA2025AS|Unsaturated v6|YUV v3|Wavebeam|Custom)

	Select color palette

- **NTSC Filter** [mesen_ntsc_filter] (**Disabled**|Composite (Blargg))

	NTSC video filter

- **PAL Borders** [mesen_enable_pal_borders] (**Off**|On)

	Show borders in PAL mode

- **Color Correction** [mesen_snes_color_correction] (**None**|NTSC Black Level|Deep Black Boost)

	Select SNES color correction mode

- **High-Res Blend Mode** [mesen_snes_high_res_blend_mode] (**None**|Blend All|Blend Even/Odd)

	Select the SNES high-resolution blend mode

- **Deinterlace Mode** [mesen_snes_deinterlace_mode] (**Weave**|Bob Blend|Bob|Current Field)

	Select the SNES deinterlace mode

- **Force Fixed Resolution** [mesen_snes_force_fixed_resolution] (**Off**|On)

	Force a fixed SNES resolution

- **Blend Frames** [mesen_gameboy_blend_frames] (**On**|Off)

	Blend Game Boy frames for a smoother image

- **Adjust Colors** [mesen_gameboy_adjust_colors] (**On**|Off)

	Enable Game Boy color correction

- **Hide SGB Borders** [mesen_gameboy_hide_sgb_borders] (**Off**|On)

	Hide Super Game Boy borders

- **Blend Frames** [mesen_gba_blend_frames] (**On**|Off)

	Blend GBA frames

- **Adjust Colors** [mesen_gba_adjust_colors] (**On**|Off)

	Enable GBA color correction

- **Force Fixed Resolution** [mesen_pce_force_fixed_resolution] (**Off**|On)

	Force a fixed pixel resolution

- **Use SG Palette** [mesen_sms_use_sg_palette] (**Off**|On)

	Use the Sega Game Gear palette

- **GG Blend Frames** [mesen_sms_gg_blend_frames] (**On**|Off)

	Blend frames on the Game Gear display

- **Auto Rotate** [mesen_ws_auto_rotate] (**Off**|On)

	Rotate the WonderSwan display automatically

- **Blend Frames** [mesen_ws_blend_frames] (**Off**|On)

	Blend WonderSwan frames

- **Adjust Colors** [mesen_ws_lcd_adjust_colors] (**Off**|On)

	Adjust colors for the WonderSwan LCD

- **Show Icons** [mesen_ws_lcd_show_icons] (**Off**|On)

	Show the WonderSwan status icons

#### Audio

Audio settings (filters, channels, sample rate)

- **Fake Stereo** [mesen_fake_stereo] (**Off**|On)

	Enable fake stereo effect

- **Reduce Triangle Popping** [mesen_mute_triangle_ultrasonic] (**On**|Off)

	Mute Triangle channel ultrasonic frequencies

- **Reduce DMC Popping** [mesen_reduce_dmc_popping] (**On**|Off)

	Reduce popping on DMC channel

- **Swap Duty Cycles** [mesen_swap_duty_cycle] (**Off**|On)

	Swap Square channel duty cycles

- **Disable Noise Mode** [mesen_disable_noise_mode_flag] (**Off**|On)

	Disable Noise channel mode flag

- **Sample Rate** [mesen_audio_sample_rate] (48000 Hz|96000 Hz|11025 Hz|22050 Hz|**44100 Hz**)

	Audio output sample rate

- **Use HuC6280 Audio** [mesen_pce_use_huc6280_audio] (**On**|Off)

	Use the HuC6280 audio engine

- **FM Audio** [mesen_sms_fm_audio] (**On**|Off)

	Enable FM audio on SMS systems

- **Audio Mode** [mesen_ws_audio_mode] (**Headphones**|Speakers)

	Select the WonderSwan audio output mode

#### Enhancements

Enhancement options (HD packs, sprite limit)

- **Hide BG Layer 1** [mesen_snes_hide_bg_layer_1] (**Off**|On)

	Hide SNES background layer 1

- **Hide BG Layer 2** [mesen_snes_hide_bg_layer_2] (**Off**|On)

	Hide SNES background layer 2

- **Hide BG Layer 3** [mesen_snes_hide_bg_layer_3] (**Off**|On)

	Hide SNES background layer 3

- **Hide BG Layer 4** [mesen_snes_hide_bg_layer_4] (**Off**|On)

	Hide SNES background layer 4

- **Hide Sprites** [mesen_snes_hide_sprites] (**Off**|On)

	Hide SNES sprite rendering

- **Remove Sprite Limit** [mesen_snes_remove_sprite_limit] (**Off**|On)

	Remove the SNES sprite limit

- **Disable Background** [mesen_gameboy_disable_background] (**Off**|On)

	Disable Game Boy background rendering

- **Disable Sprites** [mesen_gameboy_disable_sprites] (**Off**|On)

	Disable Game Boy sprite rendering

- **Remove Sprite Limit** [mesen_gameboy_remove_sprite_limit] (**Off**|On)

	Remove the Game Boy sprite limit

- **Disable Sprites** [mesen_gba_disable_sprites] (**Off**|On)

	Disable GBA sprite rendering

- **Disable Background** [mesen_gba_disable_background] (**Off**|On)

	Disable GBA background rendering

- **Hide BG Layer 1** [mesen_gba_hide_bg_layer_1] (**Off**|On)

	Hide GBA background layer 1

- **Hide BG Layer 2** [mesen_gba_hide_bg_layer_2] (**Off**|On)

	Hide GBA background layer 2

- **Hide BG Layer 3** [mesen_gba_hide_bg_layer_3] (**Off**|On)

	Hide GBA background layer 3

- **Hide BG Layer 4** [mesen_gba_hide_bg_layer_4] (**Off**|On)

	Hide GBA background layer 4

- **Disable Sprites** [mesen_pce_disable_sprites] (**Off**|On)

	Disable sprite rendering on PCE

- **Disable VDC2 Sprites** [mesen_pce_disable_sprites_vdc2] (**Off**|On)

	Disable VDC2 sprite rendering

- **Disable Background** [mesen_pce_disable_background] (**Off**|On)

	Disable background rendering on PCE

- **Disable VDC2 Background** [mesen_pce_disable_background_vdc2] (**Off**|On)

	Disable VDC2 background rendering

- **Remove Sprite Limit** [mesen_pce_remove_sprite_limit] (**Off**|On)

	Remove the PCE sprite limit

- **Disable Sprites** [mesen_sms_disable_sprites] (**Off**|On)

	Disable sprite rendering on SMS

- **Disable Background** [mesen_sms_disable_background] (**Off**|On)

	Disable background rendering on SMS

- **Remove Sprite Limit** [mesen_sms_remove_sprite_limit] (**Off**|On)

	Remove the SMS sprite limit

- **Disable Sprites** [mesen_ws_disable_sprites] (**Off**|On)

	Disable WonderSwan sprite rendering

- **Sprites Enabled** [mesen_sprites_enabled] (**On**|Off)

	Enable sprite rendering

- **Background Enabled** [mesen_background_enabled] (**On**|Off)

	Enable background rendering

- **Game Genie Bus Conflicts** [mesen_disable_game_genie_bus_conflicts] (**Off**|On)

	Disable Game Genie bus conflicts

- **Sprite Limit** [mesen_sprite_limit] (**Normal**|Adaptive|Off)

	8-sprite scanline limit

#### Input

Input controller settings

- **Turbo Speed** [mesen_controllerturbospeed] (Fast|Very Fast|Disabled|Slow|**Normal**)

	Turbo button speed

## Controllers

### Port 1

- Auto
- Standard Controller
- Zapper
- Power Pad
- Arkanoid
- SNES Controller
- SNES Mouse

### Port 2

- Auto
- Standard Controller
- Zapper
- Power Pad
- Arkanoid
- SNES Controller
- SNES Mouse

### Port 3

- Auto
- Standard Controller

### Port 4

- Auto
- Standard Controller

### Port 5

- Auto
- Arkanoid
- Ascii Turbo File
- Bandai Hypershot
- Battle Box
- Exciting Boxing
- Family Trainer
- Four Player Adapter
- Hori Track
- Konami Hypershot
- Pachinko
- Partytap
- Oeka Kids Tablet

## External Links

- [Mesen2 Repository](https://github.com/libretro/MesenCE)
- [Report Mesen2 Core Issues Here](https://github.com/libretro/MesenCE/issues)

