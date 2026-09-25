# NEC - PC Engine / SuperGrafx / CD (Beetle PCE)

## Background

A PC Engine (PCE) core forked from Mednafen's PCE-Accurate emulator, this core is a bit slower than the Fast core, but it is also more accurate, with support for a few extra games that are broken on the Fast core. In addition to PCE, PCE-CD, TurboGrafx 16 and TurboGrafx 16 CD, this core also differs from the Fast version in its support for the SuperGrafx console.

The Beetle PCE core has been authored by

- Mednafen Team

The Beetle PCE core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Beetle PCE core have the following file extensions:

- .pce
- .sgx
- .cue
- .ccd
- .chd
- .toc
- .m3u

RetroArch database(s) that are associated with the Beetle PCE core:

- [NEC - PC Engine SuperGrafx](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20SuperGrafx.rdb)
- [NEC - PC Engine - TurboGrafx 16](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20-%20TurboGrafx%2016.rdb)
- [NEC - PC Engine CD - TurboGrafx-CD](https://github.com/libretro/libretro-database/blob/master/rdb/NEC%20-%20PC%20Engine%20CD%20-%20TurboGrafx-CD.rdb)

## Features

Frontend-level settings or features that the Beetle PCE core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |

### Directories

The Beetle PCE core's library name is 'Beetle PCE'

## Core options

The Beetle PCE core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### Video

Configure aspect ratio, display cropping and other image output parameters.

- **Color Palette** [pce_palette] (**RGB**|Composite)

	Composite tries to recreate the original console output and can show more details in some games.

- **Aspect Ratio** [pce_aspect_ratio] (**Auto**|6:5|4:3|Uncorrected)

	Choose the preferred content aspect ratio. This will only apply when RetroArch's aspect ratio is set to 'Core provided' in the Video settings.

- **Resolution Scaling** [pce_scaling] (**Auto**|Low Resolution|High Resolution)

	'Auto' will allow the resolution to change. 'Low Resolution' can crush pixels. 'High Resolution' will stay on the maximum width.

- **High Resolution Blending Strength** [pce_hires_blend] (**disabled**|1|2|3|4|5|6|7|8)

	Blend pixels together when in High Resolution mode. Higher values will blur the picture more.

- **Show Horizontal Overscan** [pce_h_overscan] (**Auto**|disabled|enabled)

	'Auto' will try to adapt to games, cropping empty areas.

- **Initial Scanline** [pce_initial_scanline] (0|1|2|**3 (Default)**|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40)

	First rendered scanline. Higher values will crop the top of the image.

- **Last Scanline** [pce_last_scanline] (208|209|210|211|212|213|214|215|216|217|218|219|220|221|222|223|224|225|226|227|228|229|230|231|232|233|234|235|236|237|238|239|240|241|**242 (Default)**)

	Last rendered scanline. Lower values will crop the bottom of the image.

#### Audio

Configure emulated audio devices.

- **PSG Audio Chip (Restart Required)** [pce_psgrevision] (HuC6280|**HuC6280A**|Auto)

	HuC6280 represents the original PC Engine, HuC6280A the SuperGrafx and CoreGrafx I.

- **Owl Resampler Quality** [pce_resamp_quality] (**0**|1|2|3 (Default)|4|5|6)

	Higher values give better signal-to-noise ratio and preservation of higher frequencies but increase the computation cost and may cause higher latency and clipping if the volume is set too high.

- **Show Advanced Input/Turbo Settings** [pce_show_advanced_input_settings] (enabled|**disabled**)

	Show Multitap, Mouse, Turbo Buttons and advanced parameters. NOTE: You may need to go back in game and re-enter the menu to refresh the list.

#### Input

Configure light gun, mouse and controller input.

- **Mouse Sensitivity** [pce_mouse_sensitivity] (0.125|0.250|0.375|0.500|0.625|0.750|0.875|1.000|1.125|**1.25**|1.50|1.75|2.00|2.25|2.50|2.75|3.00|3.25|3.50|3.75|4.00|4.25|4.50|4.75|5.00)

	Higher values will make the mouse cursor move faster.

- **Allow Opposing Directions** [pce_up_down_allowed] (**disabled**|enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down) directions at the same time. This may cause movement-based glitches.

- **Disable Soft Reset (RUN+SELECT)** [pce_disable_softreset] (**disabled**|enabled)

	When RUN and SELECT are pressed simultaneously, disable both buttons temporarily instead of resetting.

- **Multitap 5-port Controller** [pce_multitap] (**enabled**|disabled)

	Enable up to 5-player multitap emulation. Disabling this is only needed in some cases (e.g. Cho Aniki).

- **P1 Default Joypad Type** [pce_default_joypad_type_p1] (**2 Buttons**|6 Buttons)

	Choose if port 1 joypad should be 2 or 6 buttons by default. This option is only applied when the core starts, if you want to switch while content is running, use the 'Mode Switch' button. NOTE: 6 buttons joypad can have weird behaviors in non compatible games.

- **P2 Default Joypad Type** [pce_default_joypad_type_p2] (**2 Buttons**|6 Buttons)

	Choose if port 2 joypad should be 2 or 6 buttons by default. This option is only applied when the core starts, if you want to switch while content is running, use the 'Mode Switch' button. NOTE: 6 buttons joypad can have weird behaviors in non compatible games.

- **P3 Default Joypad Type** [pce_default_joypad_type_p3] (**2 Buttons**|6 Buttons)

	Choose if port 3 joypad should be 2 or 6 buttons by default. This option is only applied when the core starts, if you want to switch while content is running, use the 'Mode Switch' button. NOTE: 6 buttons joypad can have weird behaviors in non compatible games.

- **P4 Default Joypad Type** [pce_default_joypad_type_p4] (**2 Buttons**|6 Buttons)

	Choose if port 4 joypad should be 2 or 6 buttons by default. This option is only applied when the core starts, if you want to switch while content is running, use the 'Mode Switch' button. NOTE: 6 buttons joypad can have weird behaviors in non compatible games.

- **P5 Default Joypad Type** [pce_default_joypad_type_p5] (**2 Buttons**|6 Buttons)

	Choose if port 5 joypad should be 2 or 6 buttons by default. This option is only applied when the core starts, if you want to switch while content is running, use the 'Mode Switch' button. NOTE: 6 buttons joypad can have weird behaviors in non compatible games.

- **Turbo Hotkey Mode** [pce_Turbo_Toggling] (**disabled**|Toggle|Dedicated)

	Enable turbo buttons. Hotkeys (buttons III and IV) can behave as either toggle switches or dedicated (hold to use) turbo buttons.

- **Alternate Turbo Hotkey** [pce_turbo_toggle_hotkey] (**disabled**|enabled)

	Assign RetroPad's L3/R3 buttons as turbo hotkeys instead of buttons III and IV. Works only in 'Toggle' mode and only as long as nothing is assigned to the L3/R3 buttons. You can avoid remapping buttons III and IV when switching to 6-button controller mode with this.

- **Turbo Speed** [pce_Turbo_Delay] (**Fast**|Medium|Slow)

	Choose how fast button presses are repeated.

- **P1 Turbo I** [pce_p0_turbo_I_enable] (**disabled**|enabled)

- **P1 Turbo II** [pce_p0_turbo_II_enable] (**disabled**|enabled)

- **P2 Turbo I** [pce_p1_turbo_I_enable] (**disabled**|enabled)

- **P2 Turbo II** [pce_p1_turbo_II_enable] (**disabled**|enabled)

- **P3 Turbo I** [pce_p2_turbo_I_enable] (**disabled**|enabled)

- **P3 Turbo II** [pce_p2_turbo_II_enable] (**disabled**|enabled)

- **P4 Turbo I** [pce_p3_turbo_I_enable] (**disabled**|enabled)

- **P4 Turbo II** [pce_p3_turbo_II_enable] (**disabled**|enabled)

- **P5 Turbo I** [pce_p4_turbo_I_enable] (**disabled**|enabled)

- **P5 Turbo II** [pce_p4_turbo_II_enable] (**disabled**|enabled)

#### PC Engine CD

Configure settings related to the PC Engine CD emulation.

- **CD Image Cache (Restart Required)** [pce_cdimagecache] (**disabled**|enabled)

	Load the complete image into memory at startup. Can potentially decrease loading times at the cost of an increased startup time.

- **CD Bios (Restart Required)** [pce_cdbios] (Games Express|System Card 1|System Card 2|**System Card 3**|System Card 2 US|System Card 3 US)

	Most games can run on 'System Card 3'. 'Games Express' is needed for several unlicensed games.

- **Arcade Card (Restart Required)** [pce_arcadecard] (**enabled**|disabled)

	Leave this option enabled to allow enhanced modes of ACD-enhanced SCD games.

- **CD Speed** [pce_cdspeed] (**1**|2|4|8)

	Higher values enable faster loading times but can cause issues with a couple of games.

- **ADPCM precision** [pce_adpcmextraprec] (**10-bit**|12-bit)

	Full precision of 12-bits for the MSM5205 ADPCM predictor can reduce whining noise during ADPCM playback.

- **ADPCM Volume %** [pce_adpcmvolume] (0 to 200 in steps of 10, **100**)

	Setting this volume control too high may cause sample clipping.

- **CDDA Volume %** [pce_cddavolume] (0 to 200 in steps of 10, **100**)

	Setting this volume control too high may cause sample clipping.

- **CD PSG Volume %** [pce_cdpsgvolume] (0 to 200 in steps of 10, **100**)

	Setting this volume control too high may cause sample clipping.

#### Emulation Hacks

Configure processor overclocking and emulation accuracy parameters affecting low-level performance and compatibility.

- **No Sprite Limit** [pce_nospritelimit] (**disabled**|enabled)

	Remove 16-sprites-per-scanline hardware limit. WARNING: May cause graphics glitching on some games (such as Bloody Wolf).

- **CPU Overclock Multiplier** [pce_ocmultiplier] (**1**|2|3|4|5|6|7|8|9|10|20|30|40|50)

	Higher values can reduce slowdowns in games. WARNING: Can cause glitches and crashes.

## Controllers

The Beetle PCE core supports 5 port(s). Each can be set to one of the following device types:

- PCE Joypad
- PCE Mouse

## External Links

- [Beetle PCE Repository](https://github.com/libretro/beetle-pce-libretro)
- [Report Beetle PCE Core Issues Here](https://github.com/libretro/beetle-pce-libretro/issues)

