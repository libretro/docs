# Atari 8-bit computer systems and 5200 (Atari800)

## Background

Atari 8-bit computer systems (400, 800, 600XL, 800XL, 130XE, XE Game System and modern memory-expanded XL/XE machines) and 5200 game console emulator, based on [Atari800](https://atari800.github.io/) 7.0.0.

The Atari800 core has been authored by

- Petr Stehlik

The Atari800 core is licensed under

- [GPLv2](https://github.com/atari800/atari800/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Atari800 core have the following file extensions:

- .xfd
- .atr
- .atx
- .dcm
- .cas
- .bin
- .rom
- .car
- .a52
- .com
- .xex
- .zip
- .m3u

`.m3u` playlists list several disk images for one game; RetroArch's Disk Control menu swaps between them.

## Databases

RetroArch database(s) that are associated with the Atari800 core:

- [Atari - 8-bit Family](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%208-bit%20Family.rdb)
- [Atari - 5200](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%205200.rdb)

## BIOS

The core has AltirraOS and Altirra BASIC built in, so it runs without any BIOS files. The original Atari ROMs are more compatible with some software; the core uses them when they are in RetroArch's system directory, and the **OS ROM** and **BASIC ROM** core options choose between them and the built-in ones.

|   Filename    |    Description                    |              md5sum              |
|:-------------:|:---------------------------------:|:--------------------------------:|
| 5200.rom      | 5200 BIOS - Optional              | 281f20ea4320404ec820fb7ec0693b38 |
| ATARIXL.ROM   | Atari XL/XE OS BIOS - Optional    | 06daac977823773a3eea3422fd26a703 |
| ATARIBAS.ROM  | BASIC interpreter BIOS - Optional | 0bac0c6a50104045d902df4503a4c30b |
| ATARIOSA.ROM  | Atari 400/800 PAL BIOS - Optional | eb1f32f5d9f382db1bbfb8d7f9cb343a |
| ATARIOSB.ROM  | Atari 400/800 NTSC BIOS - Optional| a3e8d617c95d08031fe1b20d541434b2 |

## Features

Frontend-level settings or features that the Atari800 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Atari800 core's internal core name is 'Atari800'.

The core reads its BIOS files from RetroArch's system directory. With the **Uses the Atari800 legacy configuration file** core option on, it also keeps standalone Atari800's `.atari800.cfg`.

### Core provided aspect ratio

Atari800's core provided aspect ratio is 4/3.

## Core options

The Atari800 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. Settings marked (Restart) take effect when the content is restarted.

#### System

- **Atari System** [atari800_system] (Atari 400/800 (OS B)|**Atari 800XL (64K)**|Atari 130XE (128K)|Modern Atari XL/XE(320K Compy Shop)|Modern Atari XL/XE(576K)|Modern Atari XL/XE(1088K)|Atari XE Game System|Atari 5200 Super System)
- **Internal BASIC (hold OPTION on boot) (Restart)** [atari800_internalbasic] (**OFF**|ON)
- **400/800 OS ROM (Restart)** [atari800_os_800] (**Auto**|Rev. A NTSC|Rev. A PAL|Rev. B NTSC|AltirraOS (built-in))
- **XL/XE OS ROM (Restart)** [atari800_os_xl] (**Auto**|AA00 Rev. 10|AA01 Rev. 11|BB00 Rev. 1|BB01 Rev. 2|BB02 Rev. 3|BB02 Rev. 3 Ver. 4|CC01 Rev. 4|BB01 Rev. 3|BB01 Rev. 4|BB01 Rev. 59|BB01 Rev. 59 alt.|AltirraOS (built-in))
- **5200 BIOS ROM (Restart)** [atari800_os_5200] (**Auto**|Original|Rev. A|AltirraOS (built-in))
- **BASIC ROM (Restart)** [atari800_basic_version] (**Auto**|Rev. A|Rev. B|Rev. C|Altirra BASIC (built-in))
- **Mosaic RAM Expansion (Restart)** [atari800_mosaic] (**OFF**|16 KB (1 board)|80 KB (2 boards)|144 KB (3 boards))
- **Axlon RAM Expansion (Restart)** [atari800_axlon] (**OFF**|128 KB|256 KB|512 KB|1 MB|2 MB|4 MB)
- **Axlon $0F Bank Shadow (Restart)** [atari800_axlon_shadow] (**OFF**|ON)
- **MapRAM (Restart)** [atari800_mapram] (**OFF**|ON)
- **XEP80 80-Column Display (Restart)** [atari800_xep80] (**OFF**|Port 1|Port 2)
- **R-Time 8 Clock (Restart)** [atari800_rtime] (OFF|**ON**)
- **Stereo POKEY (Restart)** [atari800_pokey_stereo] (**OFF**|ON)
- **Uses the Atari800 legacy configuration file** [atari800_cfg] (**OFF**|ON)

#### Video

- **Video Standard** [atari800_ntscpal] (**NTSC**|PAL)
- **Hi-Res Artifacting Mode** [atari800_artifacting_mode] (**None**|blue/brown 1|blue/brown 2|GTIA|CTIA)
- **Internal resolution** [atari800_resolution] (**336x240**|320x240|384x240|384x272|384x288|400x300)
- **Color tint/hue** [color_hue] (-1.00 to 1.00, **0.00**)
- **Color saturation** [color_saturation] (-1.00 to 1.00, **0.00**)
- **Color contrast** [color_contrast] (-2.00 to 2.00, **0.00**)
- **Color brightness** [color_brightness] (-2.00 to 2.00, **0.00**)
- **Color gamma** [color_gamma] (1.00 to 3.50, **2.35**)
- **GTIA delay (colorburst phase)** [color_delay] (**Default**|10.00|10.50|11.00|11.50|12.00|12.50|13.00|13.50|14.00|14.50|15.00|15.50|16.00|16.50|17.00|17.50|18.00|18.50|19.00|19.50|20.00|20.50|21.00|21.50|22.00|22.50|23.00|23.50|24.00|24.50|25.00|25.50|26.00|26.50|27.00|27.50|28.00|28.50|29.00|29.50|30.00|30.50|31.00|31.50|32.00|32.50|33.00|33.50|34.00|34.50|35.00|35.50|36.00|36.50|37.00|37.50|38.00|38.50|39.00|39.50|40.00|40.50|41.00|41.50|42.00|42.50|43.00|43.50|44.00|44.50|45.00|45.50|46.00|46.50|47.00|47.50|48.00|48.50|49.00|49.50|50.00)
- **External Palette** [external_palette] (**none**|Default|Gray|Jakub|Real|Xformer)

#### Input

- **Controller Hacks** [atari800_opt2] (**none**|Dual Stick|Swap Ports|Joy 2B+)
- **Activate Paddle Mode** [paddle_active] (**OFF**|ON)
- **Paddle Movement Speed** [paddle_movement_speed] (1|2|**3**|4|5|6|7|8|9)
- **Digital Joystick Sensitivity** [pot_digital_sensitivity] (5%|10%|15%|20%|25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|**100%**)
- **Analog Joystick Sensitivity** [pot_analog_sensitivity] (5%|10%|15%|20%|25%|30%|35%|40%|45%|50%|55%|60%|65%|70%|75%|80%|85%|90%|95%|**100%**)
- **Analog Joystick Deadzone** [pot_analog_deadzone] (0%|3%|5%|7%|10%|13%|**15%**|17%|20%|23%|25%|27%|30%)
- **Retroarch Keyboard type** [atari800_keyboard] (**poll**|callback)
- **Atari XEGS keyboard** [atarixegs_keyboard_detached] (**attached**|detached)
- **Virtual keyboard** [atari800_vkbd_enabled] (**OFF**|ON)
- **Atari Keyboard Defines** [keyboard_defines] (**informational**)
- **Joystick Autofire** [atari800_autofire] (**OFF**|While fire held|Continuous)
- **Analog Joystick/Paddle Center** [pot_analog_center] (80|82|84|86|88|90|92|94|96|98|100|102|104|106|108|110|112|**114**|116|118|120|122|124|126|128|130|132|134|136|130|140|142|144|146|148|150)

#### Media

- **P: Device / Printer (Restart)** [atari800_pdevice] (OFF|**ON**)
- **R: Device / Serial (Restart)** [atari800_rdevice] (**OFF**|ON)
- **Slow DOS Binary Loading** [atari800_slowxex] (**OFF**|ON)
- **SIO Acceleration** [atari800_sioaccel] (OFF|**ON**)
- **Boot from Cassette (Reboot)** [atari800_cassboot] (**OFF**|ON)
- **Autodetect Atari Cartridge Type (Restart)** [atari800_opt1] (**OFF**|ON)

#### On-Screen Display

- **Show Atari Speed %** [atari800_show_speed] (**OFF**|ON)
- **Show Disk/Tape Activity** [atari800_show_diskled] (OFF|**ON**)
- **Show Sector/Block Counter** [atari800_show_sector] (**OFF**|ON)
- **Show 1200XL LEDs** [atari800_show_1200leds] (OFF|**ON**)

## Controllers

### Device types

The Atari800 core supports the following device type(s) in the controls menu:

- **ATARI Joystick** - an 8-bit computer joystick, with the console keys on the RetroPad
- **ATARI 5200 Joystick** - the 5200's analog joystick and keypad
- **ATARI Keyboard** - the computer keyboard

### Controller tables

#### ATARI Joystick

| RetroPad Inputs | ATARI Joystick |
|---|---|
| ![](../image/retropad/retro_dpad_up.png) | Up |
| ![](../image/retropad/retro_dpad_down.png) | Down |
| ![](../image/retropad/retro_dpad_left.png) | Left |
| ![](../image/retropad/retro_dpad_right.png) | Right |
| ![](../image/retropad/retro_b.png) | Fire 1 |
| ![](../image/retropad/retro_a.png) | Fire 2 |
| ![](../image/retropad/retro_y.png) | Space / Fire 3 |
| ![](../image/retropad/retro_x.png) | Return |
| ![](../image/retropad/retro_select.png) | Select (console key) |
| ![](../image/retropad/retro_start.png) | Start (console key) |
| ![](../image/retropad/retro_l1.png) | Option (console key) |
| ![](../image/retropad/retro_l2.png) | Esc |
| ![](../image/retropad/retro_r2.png) | Help |
| ![](../image/retropad/retro_l3.png) | Virtual keyboard |

#### ATARI 5200 Joystick

| RetroPad Inputs | ATARI 5200 Joystick |
|---|---|
| ![](../image/retropad/retro_dpad_up.png) | Joystick up (digital) |
| ![](../image/retropad/retro_dpad_down.png) | Joystick down (digital) |
| ![](../image/retropad/retro_dpad_left.png) | Joystick left (digital) |
| ![](../image/retropad/retro_dpad_right.png) | Joystick right (digital) |
| ![](../image/retropad/retro_b.png) | Fire 1 |
| ![](../image/retropad/retro_a.png) | Fire 2 |
| ![](../image/retropad/retro_y.png) | Keypad # |
| ![](../image/retropad/retro_x.png) | Keypad * |
| ![](../image/retropad/retro_select.png) | Pause |
| ![](../image/retropad/retro_start.png) | Start |
| ![](../image/retropad/retro_l1.png) | Keypad 0 |
| ![](../image/retropad/retro_r1.png) | Keypad 1 |
| ![](../image/retropad/retro_l2.png) | Keypad 2 |
| ![](../image/retropad/retro_r2.png) | Keypad 3 |
| ![](../image/retropad/retro_l3.png) | Keypad 7 |
| ![](../image/retropad/retro_r3.png) | Virtual keyboard |

The left analog stick drives the 5200 joystick; the **Analog Joystick** core options set its sensitivity and deadzone.


#### Keyboard device type table

| User # input descriptors      |                               | ATARI Keyboard             |
|-------------------------------|-------------------------------|----------------------------|
| N/A                           | Keyboard Numpad 2             | Down                       |
| N/A                           | Keyboard Numpad 4             | Left                       |
| N/A                           | Keyboard Numpad 6             | Right                      |
| N/A                           | Keyboard Numpad 8             | Up                         |
| N/A                           | Keyboard Up                   | Up                         |
| N/A                           | Keyboard Down                 | Down                       |
| N/A                           | Keyboard Right                | Right                      |
| N/A                           | Keyboard Left                 | Left                       |
| N/A                           | Keyboard F1                   | Built in UI                |
| N/A                           | Keyboard F2                   | Option key                 |
| N/A                           | Keyboard F3                   | Select key                 |
| N/A                           | Keyboard F4                   | Start key                  |
| N/A                           | Keyboard F5                   | Reset key                  |
| N/A                           | Keyboard F6                   | Help key (XL/XE only)      |
| N/A                           | Keyboard F7                   | Break key                  |
| N/A                           | Keyboard F8                   | Enter monitor              |
| N/A                           | Keyboard F9                   | Exit emulator              |
| N/A                           | Keyboard F10                  | Save screenshot            |
| N/A                           | Keyboard Right Control        | Fire                       |
| N/A                           | Keyboard Shift + F5           | Reboot                     |
| N/A                           | Keyboard Shift + F10          | Save interlaced screenshot |
| N/A                           | Keyboard Alt + R              | Run Atari program          |
| N/A                           | Keyboard Alt + D              | Disk management            |
| N/A                           | Keyboard Alt + C              | Cartridge management       |
| N/A                           | Keyboard Alt + Y              | Select system              |
| N/A                           | Keyboard Alt + O              | Sound settings             |
| N/A                           | Keyboard Alt + W              | Sound recording start/stop |
| N/A                           | Keyboard Alt + S              | Save state file            |
| N/A                           | Keyboard Alt + L              | Load state file            |
| N/A                           | Keyboard Alt + A              | About the emulator         |

## External Links

- [Libretro Atari800 Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/atari800_libretro.info)
- [Libretro Atari800 Github Repository](https://github.com/libretro/libretro-atari800)
- [Report Libretro Atari800 Core Issues Here](https://github.com/libretro/libretro-atari800/issues)
- [Official Atari800 Website](https://atari800.github.io/)
- [Official Atari800 Github Repository](https://github.com/atari800/atari800)

## Other Atari 5200 cores

- [Atari - 5200 (a5200)](a5200.md)
