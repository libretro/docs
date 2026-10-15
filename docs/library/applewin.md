# Apple II (AppleWin)

## Background

Apple II - AppleWin emulator.

The AppleWin core has been authored by

- AppleWin Team

The AppleWin core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the AppleWin core have the following file extensions:

- .bin
- .do
- .dsk
- .nib
- .po
- .gz
- .woz
- .zip
- .2mg
- .2img
- .iie
- .apl
- .hdv
- .yaml
- .m3u

The AppleWin core can also be started without content.

RetroArch database(s) that are associated with the AppleWin core:

- [Apple - II](https://github.com/libretro/libretro-database/blob/master/rdb/Apple%20-%20II.rdb)

## Features

Frontend-level settings or features that the AppleWin core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✔         |

### Directories

The AppleWin core's library name is 'AppleWin'

## Core options

The AppleWin core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

Configure system options.

- **Apple II Type** [applewin_machine] (Apple II (original)|Apple II Plus|Apple II J-Plus|Apple //e (original)|**Apple //e (enhanced)**|Pravets 82|Pravets 8M|Pravets 8A|Base64A|TK3000 //e)

- **Card in Slot 3** [applewin_slot3] (**Empty**|Video HD)

- **Card in Slot 4** [applewin_slot4] (Empty|**Mockingboard C**|Mouse Card|Phasor)

- **Card in Slot 5** [applewin_slot5] (**Empty**|Z80 SoftCard|Mockingboard C|Phasor|SAM)

- **Card in Slot 7** [applewin_slot7] (Empty|**Hard Disk Controller**)

- **Video Mode** [applewin_video_mode] (**Color (RGB Card/Monitor)**|Color (Composite Idealized)|Color (Composite Monitor)|Color TV|B&W TV|Monochrome (Amber)|Monochrome (Green)|Monochrome (White))

- **Video Style** [applewin_video_style] (**Half Scanlines**|560 x 192|280 x 192)

- **Video Refresh Rate** [applewin_video_refresh_rate] (**60Hz**|50Hz)

#### Disk Control

Configure disk control options.

- **Disk Control Drive** [applewin_disk_control_drive] (**Drive 1**|Drive 2)

- **Playlist Start Disk** [applewin_playlist_start] (**First**|Previous)

- **Floppy MultiDrive** [applewin_floppy_multidrive] (**disabled**|enabled)

#### Input

Configure input options.

- **Keyboard Type** [applewin_keyboard_type] (**ASCII**|Original)

- **Mouse Speed** [applewin_mouse_speed] (0.25 to 5.00 in steps of 0.25, **1.00**)

#### RetroPad Mapping

Configure RetroPad mapping options.

- **Joypad A [button 0]** [applewin_joypad_a] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad B [button 1]** [applewin_joypad_b] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad X** [applewin_joypad_x] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Y** [applewin_joypad_y] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Select** [applewin_joypad_select] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Start** [applewin_joypad_start] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Down [paddle 1 standard]** [applewin_joypad_down] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Up [paddle 1 standard]** [applewin_joypad_up] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Left [paddle 0 standard]** [applewin_joypad_left] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad Right [paddle 0 standard]** [applewin_joypad_right] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad L** [applewin_joypad_l] (<default>|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|**Space**|ESC|Left|Right|Down|Up)

- **Joypad R** [applewin_joypad_r] (<default>|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|**Enter**|Space|ESC|Left|Right|Down|Up)

- **Joypad L2** [applewin_joypad_l2] (<default>|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|**Left**|Right|Down|Up)

- **Joypad R2** [applewin_joypad_r2] (<default>|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|**Right**|Down|Up)

- **Joypad L3** [applewin_joypad_l3] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

- **Joypad R3** [applewin_joypad_r3] (**<default>**|0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|Enter|Space|ESC|Left|Right|Down|Up)

## Controllers

The AppleWin core supports the following device type(s):

- Standard Joypad
- Analog Joypad
- Mouse

## External Links

- [AppleWin Repository](https://github.com/AppleWin/AppleWin)
- [Report AppleWin Core Issues Here](https://github.com/AppleWin/AppleWin/issues)

