# DOS (DOSBox-core)

## Background

DOSBox-core is a libretro core of [DOSBox](https://www.dosbox.com) that is kept up to date with DOSBox SVN trunk. It started from the [DOSBox-SVN](dosbox_svn.md) core and adds to it:

- Native MIDI output on Linux and Windows, remembered by port name rather than number
- Cycle-accurate OPL3 (YMF262) emulation through [Nuked OPL3](https://nukeykt.retrohost.net)
- Built-in MT-32, CM-32L and LAPC-I emulation through [Munt](https://github.com/munt/munt)
- Soundfont MIDI synthesis through [FluidSynth](https://www.fluidsynth.org) (SF2/SF3) or BASSMIDI (SF2/SFZ)
- CUE CD images with split audio tracks in WAV, FLAC, Opus, Ogg Vorbis or MP3
- Experimental, software-only 3dfx Voodoo emulation
- An on-screen virtual keyboard
- The pinhack patch, which shows the whole table at once in pinball games such as Pinball Dreams and Pinball Fantasies
- Loading a .conf file without its settings fighting the core options: the options it sets are synced from it and locked

The DOSBox-core core has been authored by

- DOSBox Team
- radius
- Nikos Chantziaras

The DOSBox-core core is licensed under

- [GPLv2](https://github.com/libretro/dosbox-core/blob/libretro/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the DOSBox-core core have the following file extensions:

- .exe
- .com
- .bat
- .conf
- .cue
- .iso
- .img
- a directory

RetroArch database(s) that are associated with the DOSBox-core core:

- [DOS](https://github.com/libretro/libretro-database/blob/master/rdb/DOS.rdb)

## BIOS

None of these files are needed to run the core. They are only used by the features named in the description, and go in RetroArch's system directory.

|   Filename         |    Description                                   |              md5sum              |
|:------------------:|:------------------------------------------------:|:--------------------------------:|
| MT32_CONTROL.ROM   | MT-32 control ROM - Optional                     | 5626206284b22c2734f3e9efefcd2675 |
| MT32_PCM.ROM       | MT-32 PCM ROM - Optional                         | 89e42e386e82e0cacb4a2704a03706ca |
| CM32L_CONTROL.ROM  | CM-32L control ROM - Optional                    | bfff32b6144c1d706109accb6e6b1113 |
| CM32L_PCM.ROM      | CM-32L PCM ROM - Optional                        | 08cdcfa0ed93e9cb16afa76e6ac5f0a4 |
| libbass.so, libbassmidi.so | BASSMIDI on Linux - Optional             |                                  |
| bass.dll, bassmidi.dll     | BASSMIDI on Windows - Optional           |                                  |
| libbass.dylib, libbassmidi.dylib | BASSMIDI on macOS - Optional       |                                  |

The BASS libraries are not included with the core for licensing reasons; download them from [un4seen.com](https://www.un4seen.com), in the 32-bit or 64-bit version that matches RetroArch.

## Features

Frontend-level settings or features that the DOSBox-core core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
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

The DOSBox-core core's library name is 'DOSBox-core'

## Loading content

.exe, .com, .bat, .iso, .cue and .conf files can be loaded directly. The current directory is set to the content's directory, so relative paths work in `mount` and `imgmount` commands.

The recommended way to run DOS games is a .conf file for each game, scanned with RetroArch's manual scanner. For example, `Ultima VII - The Black Gate.conf` for a game installed in `drive_c/ultima71` next to it:

```ini
[dos]
xms = true
ems = false
umb = false

[autoexec]
@echo off
mount c drive_c
c:
cd ultima71
ultima7.com
exit
```

Settings made in the .conf file are optional. Those it does set are synced into the core options and locked there (see "Core option handling" below), so the two never conflict.

With **Always load DOSBox-core.conf** enabled, `DOSBox-core.conf` in the saves directory is loaded as well, like standalone DOSBox's `-userconf`. `config -wcd` writes one from the current settings.

### Hotkeys

- **Ctrl+F4** cycles between CD images mounted to the same drive (`imgmount d cd1.cue cd2.cue cd3.cue -t cdrom`).
- **Ctrl+F11** / **Ctrl+F12** decrease / increase the CPU cycles until the content is closed. The step is set in the core options.

## Core options

The DOSBox-core core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Many options are only shown when **Show all options** is enabled, or when an option they depend on is set - the MT-32 options, for example, appear only with MT-32 as the MIDI driver.

#### Core option behavior

Options relating to the behavior of the core options themselves.

- **Core option handling** [dosbox_core_option_handling] (**lock changed options**|disable changed options)

	When configuring emulation settings using the loaded .conf file's INI properties or with DOSBox commands (like "config -set",) there will be conflicts with the core options. This setting specifies how those conflicts should be handled. Lock changed options: Lock the core option to a single value. No changes will be allowed through the core options UI. The core option becomes purely informational, simply displaying the current value that was set in the .conf file or through DOSBox commands. Disable changed options: Disable and hide the core option. Its current value will not be changed. If the frontend doesn't support option hiding, changing the option will have no effect.

- **Always load DOSBox-core.conf** [dosbox_core_load_default_conf] (true|**false**)

	Always load the DOSBox-core.conf file if it exists in the libretro saves directory. Normally, this is not done when loading a custom conf file as content. This is the equivalent to using the "-userconf" option with stand-alone dosbox. A DOSBox-core.conf file based on the current dosbox settings can be generated with the "config -wcd" command.

- **Show all options** [dosbox_core_adv_options] (true|**false**)

	Show all options, including those that usually do not require changing.

- **Show keyboard mapping options** [dosbox_core_show_kb_map_options] (**true**|false)

#### Timing

Timing and synchronization.

- **Frame timing mode** [dosbox_core_core_timing] (**external**|internal (fixed 60FPS))

	External mode is the recommended setting. It enables the frontend to drive frame pacing. It has no input lag and allows frontend features like DRC and Frame Delay to work correctly. Internal mode runs out of sync with the frontend. This allows for 60FPS output when running 70FPS games, but input lag and stutter/judder are increased. If you have a high refresh rate display (70Hz or better,) then use external mode. It also works great with VRR (g-sync/freesync.) Internal mode is mostly only useful for 60Hz displays in order to get rid of tearing in 70FPS games.

- **Override emulated video refresh rate** [dosbox_core_vga_hz] (**OFF**|50Hz|51Hz|52Hz|53Hz|54Hz|55Hz|56Hz|57Hz|58Hz|59Hz|60Hz|61Hz|62Hz|63Hz|64Hz|65Hz|66Hz|67Hz|68Hz|69Hz|70Hz)

	Forces the emulated refresh rate to a specific value. This can be useful as a method of slowing down game speed without affecting audio speed. Only works in games that use vsync to limit their speed. Keep in mind that this is a hack and might break some games. Using external timing mode is recommended when enabling this. Example use cases for this option are forcing Turrican 2 to run at 50Hz in order to match the speed of the original Amiga version, or forcing a 70Hz game to run at a slower 60Hz if you don't have a high refresh rate display and you don't mind the slower game speed.

- **Frame duping (minor speedup)** [dosbox_core_frame_duping] (true|**false**)

	Can provide a (very) minor performance benefit by instructing the frontend to present the previous frame again without re-uploading it if there is no new frame. Some drivers might not correctly support this however. If you run into issues where you get a black screen that lasts until your next input, you can disable frame duping as a workaround.

- **Thread synchronization method** [dosbox_core_thread_sync] (**wait**|spin)

	"Wait" is the recommended method and should work well on most systems. If for some reason it doesn't and you're seeing stutter, setting this to "spin" might help (or it might make it worse.) However, "spin" will also result in 100% usage on one of your CPU cores. This is "idle load" and doesn't increase CPU temperatures by much, but it will prevent the CPU from clocking down which on laptops will affect battery life.

#### Storage

File and disk options.

- **Mount drive C as** [dosbox_core_mount_c_as] (**content directory**|parent directory of content)

	When directly loading a DOS executable rather than a .conf file, the C drive can be mounted to be either the executable's directory, or its parent directory. For example, when loading DUKE3D.EXE that is located in a directory called DUKE3D, setting this option to "content" will result in DOS finding the file in C:\DUKE3D.EXE. If this option is set to "parent", the file will be found in C:\DUKE3D\DUKE3D.EXE instead.

- **Free space for default-mounted drive C** [dosbox_core_default_mount_freesize] (256MB|384MB|512MB|768MB|**1GB**|1.25GB|1.5GB|1.75GB)

	This is the "-freesize" value to use for drive C when loading a DOS executable instead of a .conf file that contains its own MOUNT command.

- **Enable overlay file system (restart)** [dosbox_core_save_overlay] (true|**false**)

	Enable overlay file system to redirect filesystem changes to the save directory. Disable if you have problems starting some games.

#### Video card

Configuration of the emulated video card.

- **Emulated machine (restart)** [dosbox_core_machine] (Hercules|CGA|Tandy|PCjr|EGA|VGA|**SVGA (S3 Trio64)**|SVGA (S3 Trio64 no-line buffer hack)|SVGA (S3 Trio64 VESA 1.3)|SVGA (Tseng Labs ET3000)|SVGA (Tseng Labs ET4000)|SVGA (Paradise PVGA1A))

	The type of video hardware DOSBox will emulate.

- **Hercules color mode** [dosbox_core_machine_hercules_palette] (**black & white**|black & amber|black & green)

	The color scheme for hercules emulation.

- **CGA composite mode toggle** [dosbox_core_machine_cga_composite_mode] (**auto**|true|false)

	Enable or disable CGA composite mode.

- **CGA model** [dosbox_core_machine_cga_model] (**late**|early)

	The type of CGA model in the emulated system.

- **3dfx Voodoo emulation (restart)** [dosbox_core_voodoo] (software|**none**)

	This emulates the actual 3dfx hardware. This is not a glide emulator and as a result a glide wrapper is neither needed nor supported. Only slow (VERY slow), software-based emulation is supported at the moment. It is probably not possible to get playable speeds in most games.

- **Voodoo memory size (restart)** [dosbox_core_voodoomem] (**4MB**|12MB)

	The amount of memory that the emulated Voodoo card has. 4MB is the standard memory configuration for the original Voodoo. 12MB is a non-standard configuration.

#### Specs

CPU and RAM specifications of the emulated DOS PC.

- **Memory size (restart)** [dosbox_core_memsize] (1MB|2MB|3MB|4MB|5MB|6MB|7MB|8MB|9MB|10MB|11MB|12MB|13MB|14MB|15MB|**16MB**|17MB|18MB|19MB|20MB|21MB|22MB|23MB|24MB|25MB|26MB|27MB|28MB|29MB|30MB|31MB|32MB|33MB|34MB|35MB|36MB|37MB|38MB|39MB|40MB|41MB|42MB|43MB|44MB|45MB|46MB|47MB|48MB|49MB|50MB|51MB|52MB|53MB|54MB|55MB|56MB|57MB|58MB|59MB|60MB|61MB|62MB|63MB)

	The amount of memory that the emulated machine has. This value is best left at its default to avoid problems with some games, though few games might require a higher value.

- **XMS support** [dosbox_core_xms] (**true**|false)

	Extended memory (XMS) is usually required by protected mode games.

- **EMS support** [dosbox_core_ems] (**mixed mode**|map EMS to XMS (EMM386)|emulate physical EMS memory board|false)

	Expanded memory (EMS) is needed or recommended by some older games. However, some games will not run at all with it enabled (Ultima 7, for example,) or will run better with it disabled. Mixed mode is the most compatible setting for most games that use EMS memory.

- **UMB support** [dosbox_core_umb] (**true**|false)

	The upper memory block (UMB) is usually not needed by games, but can be used to load TSR programs into it without using any of the 640KB base memory.

- **CPU core** [dosbox_core_core] (**auto**|dynamic recompiler (generic)|normal|simple)

	CPU core used for emulation. When set to "auto", the "normal" interpreter core will be used for real mode games, while the faster "dynamic" recompiler core will be used for protected mode games. The "simple" interpreter core is optimized for old real mode games.

	Builds without a dynamic recompiler offer only normal and simple, with normal as the default. The dynamic entry names the recompiler the build has: x86-64 optimized, x86 optimized or generic.

- **CPU type** [dosbox_core_cputype] (**auto**|386|386 (slow)|386 (prefetch queue emulation)|486|486 (slow)|pentium (slow))

	Emulated CPU type. "Auto" is the fastest choice.

- **CPU cycles mode** [dosbox_core_cpu_cycles_mode] (auto|**fixed**|max)

	Method to determine the amount of emulated CPU cycles per millisecond. "Fixed" mode emulates the amount of cycles you have set. "Max" mode will emulate as many cycles as possible, depending on the limits you have set. You can configure a maximum CPU load percentage as well as a cycle amount as limits. "Auto" will emulate the fixed cycle amount set in the "real mode" cycles options when running real mode games, while for protected mode games it will switch to "max" mode. "Fixed" mode in combination with an appropriate cycle amount is the most compatible setting, as "auto" and "max" have issues on many systems.

- **Real mode coarse CPU cycles multiplier** [dosbox_core_cpu_cycles_multiplier_realmode] (100|**1000**|10000|100000)

	Multiplier for coarse CPU cycles tuning when running real mode games in "auto" cycles mode.

- **Real mode coarse CPU cycles value** [dosbox_core_cpu_cycles_realmode] (0|1|2|**3**|4|5|6|7|8|9)

	Value for coarse CPU cycles tuning when running real mode games in "auto" cycles mode.

- **Real mode fine CPU cycles multiplier** [dosbox_core_cpu_cycles_multiplier_fine_realmode] (1|10|**100**|1000|10000)

	Multiplier for fine CPU cycles tuning when running real mode games in "auto" cycles mode.

- **Real mode fine CPU cycles value** [dosbox_core_cpu_cycles_fine_realmode] (**0**|1|2|3|4|5|6|7|8|9)

	Value for fine CPU cycles tuning when running real mode games in "auto" cycles mode.

- **Max CPU cycles limit** [dosbox_core_cpu_cycles_limit] (none|10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**|105%)

	Limit the maximum amount of CPU cycles used when using "max" mode.

- **Coarse CPU cycles multiplier** [dosbox_core_cpu_cycles_multiplier] (100|1000|**10000**|100000)

	Multiplier for coarse CPU cycles tuning.

- **Coarse CPU cycles value** [dosbox_core_cpu_cycles] (0|**1**|2|3|4|5|6|7|8|9)

	Value for coarse CPU cycles tuning.

- **Fine CPU cycles multiplier** [dosbox_core_cpu_cycles_multiplier_fine] (1|10|100|**1000**|10000)

	Multiplier for fine CPU cycles tuning.

- **Fine CPU cycles value** [dosbox_core_cpu_cycles_fine] (**0**|1|2|3|4|5|6|7|8|9)

	Value for fine CPU cycles tuning.

- **Cycle increment for Ctrl-F12** [dosbox_core_cycleup] (1%|2%|3%|4%|5%|6%|7%|8%|9%|**10%**|15%|20%|25%|30%|35%|40%|45%|50%|100|150|200|250|300|250|400|450|500|600|700|800|900|1000|1500|2000|2500|3000|3500|4000|4500|5000|6000|7000|8000|9000|10000|15000|20000|25000|30000)

	Values from 100 and up are cycles. Values below 100 are percentages.

- **Cycle decrement for Ctrl-F11** [dosbox_core_cycledown] (1%|2%|3%|4%|5%|6%|7%|8%|9%|10%|15%|**20%**|25%|30%|35%|40%|45%|50%|100|150|200|250|300|250|400|450|500|600|700|800|900|1000|1500|2000|2500|3000|3500|4000|4500|5000|6000|7000|8000|9000|10000|15000|20000|25000|30000)

	Values from 100 and up are cycles. Values below 100 are percentages.

#### Scaling

Image scaling options.

- **Aspect ratio correction** [dosbox_core_aspect] (**true**|false)

	When enabled, the aspect ratio will match that of a CRT monitor. This is required for non-square pixel resolutions to look as intended. Disable this if you want unscaled square pixel aspect ratios (at the cost of a squashed or stretched image), or if the result looks clearly wrong (games that use 640x350 for example will look stretched with this enabled.)

- **DOSBox scaler** [dosbox_core_scaler] (normal2x|normal3x|advmame2x|advmame3x|advinterp2x|advinterp3x|hq2x|hq3x|2xsai|super2xsai|supereagle|tv2x|tv3x|rgb2x|rgb3x|scan2x|scan3x|**none**)

	Built-in, CPU-based DOSBox scalers. These are provided here only as a last resort. You should generally set this to "none" and instead use the scaling options and shaders that are provided by your frontend.

#### Input

Emulated joystick and mouse.

- **Force 2-axis/2-button** [dosbox_core_joystick_force_2axis] (true|**false**)

	Normally, when only one port is assigned a joystick or gamepad, 4 axes and 4 buttons are emulated on that port. Some (usually older) games however do not work correctly without a classic 2-axis/2-button joystick.

- **Enable joystick timed intervals** [dosbox_core_timed] (true|**false**)

	Enable timed intervals for joystick axes. Experiment with this option if your joystick drifts.

- **Gamepad emulated mouse deadzone** [dosbox_core_emulated_mouse_deadzone] (0%|5%|10%|15%|20%|25%|**30%**)

	Deadzone of the gamepad emulated mouse. Experiment with this value if the mouse cursor drifts.

- **Horizontal mouse speed** [dosbox_core_mouse_speed_x] (1 to 127 in steps of 1, **100**)

	Experiment with this value if the mouse is too fast when moving left/right.

- **Vertical mouse speed** [dosbox_core_mouse_speed_y] (1 to 127 in steps of 1, **100**)

	Experiment with this value if the mouse is too fast when moving up/down.

- **Mouse speed multiplier** [dosbox_core_mouse_speed_mult] (**1x**|2x|3x|4x|5x)

	Since the possible mouse speed range is 1 to 127 due to a libretro limitation, this option can be used to increase mouse speed further.

- **Vertical mouse sensitivity correction** [dosbox_core_mouse_speed_hack] (true|**false**)

	A hack that modifies vertical sensitivity depending on the current video mode. Try enabling this for games that switch between different video modes and result in inconsistent vertical mouse speed.

- **Clamp minimum mouse speed** [dosbox_core_mouse_speed_clamp] (true|**false**)

	Forces very slow mouse movements to be registered as slightly faster. This can be useful in games that don't register mouse movements that are slower than a certain threshold. Flight of the Amazon Queen is an example of such a game. Do not enable this option in games that don't have this problem. It makes mouse movement worse.

#### Virtual keyboard

On-screen virtual keyboard.

- **Virtual Keyboard Support** [dosbox_core_vkbd_enabled] (**true**|false)

- **Color theme** [dosbox_core_vkbd_theme] (**Light (shadow)**|Light (outline)|Dark (shadow)|Dark (outline))

- **Transparency** [dosbox_core_vkbd_transparency] (0%|**25%**|50%|75%|100%)

#### Gamepad/Joystick 1 keyboard mappings

It's impossible to map "Gamepad" or "Joystick" port inputs to keyboard keys using the frontend's UI. You need to use these core options instead.

- **(J1) D-Pad Up** [dosbox_core_pad0_map_up] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) D-Pad Down** [dosbox_core_pad0_map_down] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) D-Pad Left** [dosbox_core_pad0_map_left] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) D-Pad Right** [dosbox_core_pad0_map_right] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) B** [dosbox_core_pad0_map_b] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) A** [dosbox_core_pad0_map_a] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Y** [dosbox_core_pad0_map_y] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) X** [dosbox_core_pad0_map_x] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Select** [dosbox_core_pad0_map_select] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Start** [dosbox_core_pad0_map_start] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Bumper** [dosbox_core_pad0_map_lbump] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Bumper** [dosbox_core_pad0_map_rbump] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Trigger** [dosbox_core_pad0_map_ltrig] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Trigger** [dosbox_core_pad0_map_rtrig] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Thumb** [dosbox_core_pad0_map_lthumb] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Thumb** [dosbox_core_pad0_map_rthumb] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Analog Up** [dosbox_core_pad0_map_laup] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Analog Down** [dosbox_core_pad0_map_ladown] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Analog Left** [dosbox_core_pad0_map_laleft] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Left Analog Right** [dosbox_core_pad0_map_laright] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Analog Up** [dosbox_core_pad0_map_raup] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Analog Down** [dosbox_core_pad0_map_radown] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Analog Left** [dosbox_core_pad0_map_raleft] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J1) Right Analog Right** [dosbox_core_pad0_map_raright] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

#### Gamepad/Joystick 2 keyboard mappings

It's impossible to map "Gamepad" or "Joystick" port inputs to keyboard keys using the frontend's UI. You need to use these core options instead.

- **(J2) D-Pad Up** [dosbox_core_pad1_map_up] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) D-Pad Down** [dosbox_core_pad1_map_down] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) D-Pad Left** [dosbox_core_pad1_map_left] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) D-Pad Right** [dosbox_core_pad1_map_right] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) B** [dosbox_core_pad1_map_b] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) A** [dosbox_core_pad1_map_a] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Y** [dosbox_core_pad1_map_y] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) X** [dosbox_core_pad1_map_x] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Select** [dosbox_core_pad1_map_select] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Start** [dosbox_core_pad1_map_start] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Bumper** [dosbox_core_pad1_map_lbump] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Bumper** [dosbox_core_pad1_map_rbump] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Trigger** [dosbox_core_pad1_map_ltrig] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Trigger** [dosbox_core_pad1_map_rtrig] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Thumb** [dosbox_core_pad1_map_lthumb] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Thumb** [dosbox_core_pad1_map_rthumb] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Analog Up** [dosbox_core_pad1_map_laup] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Analog Down** [dosbox_core_pad1_map_ladown] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Analog Left** [dosbox_core_pad1_map_laleft] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Left Analog Right** [dosbox_core_pad1_map_laright] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Analog Up** [dosbox_core_pad1_map_raup] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Analog Down** [dosbox_core_pad1_map_radown] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Analog Left** [dosbox_core_pad1_map_raleft] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

- **(J2) Right Analog Right** [dosbox_core_pad1_map_raright] (**---**|1|2|3|4|5|6|7|8|9|0|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Tab|Backspace|Return/Enter|Space|Left Alt|Right Alt|Left Ctrl|Right Ctrl|Left Shift|Right Shift|Caps Lock|Scroll Lock|Num Lock|-|=|\|[|]|;|'|.|,|/|SysReq/PrintScr|Pause|Insert|Home|Page Up|Page Down|Delete|End|Left|Up|Down|Right|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad 0|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad .|`)

#### Sound

Emulated audio device parameters.

- **SoundBlaster type** [dosbox_core_sbtype] (SoundBlaster 1.0|SoundBlaster 2.0|SoundBlaster Pro|SoundBlaster Pro 2|**SoundBlaster 16**|GameBlaster|none)

	Type of emulated SoundBlaster card.

- **SoundBlaster Base Address** [dosbox_core_sbbase] (**220**|240|260|280|2a0|2c0|2e0|300)

	The I/O address for the emulated SoundBlaster card.

- **SoundBlaster IRQ Number** [dosbox_core_irq] (3|5|**7**|9|10|11|12)

	The IRQ number for the emulated SoundBlaster card.

- **SoundBlaster DMA Number** [dosbox_core_dma] (0|**1**|3|5|6|7)

	The DMA number for the emulated SoundBlaster card.

- **SoundBlaster High DMA Number** [dosbox_core_hdma] (0|1|3|**5**|6|7)

	The High DMA number for the emulated SoundBlaster card.

- **SoundBlaster mixer** [dosbox_core_sbmixer] (**true**|false)

	This exposes the DOSBox mixer to games as a SoundBlaster mixer. Disable this if you don't want games to be able to override your custom mixer volume levels.

- **SoundBlaster OPL mode** [dosbox_core_oplmode] (**auto (select based on the SoundBlaster type)**|CMS (Creative Music System / GameBlaster)|OPL-2 (AdLib / OPL-2 / Yamaha 3812)|Dual OPL-2 (used by SoundBlaster Pro 1.0 for stereo sound)|OPL-3 (AdLib / OPL-3 / Yamaha YMF262)|OPL-3 Gold (AdLib Gold / OPL-3 / Yamaha YMF262)|none)

	The SoundBlaster emulated OPL mode. All modes are Adlib compatible except cms.

- **SoundBlaster OPL provider** [dosbox_core_oplemu] (Nuked OPL3|**compat**|mame|fast)

	"Nuked OPL3" is a cycle-accurate OPL3 (YMF262) emulator. It offers the best quality, but is quite demanding on the CPU. "Compat" is the next best option. It is less accurate, but also less demanding.

- **Gravis Ultrasound support** [dosbox_core_gus] (true|**false**)

	Enables Gravis Ultrasound emulation. The ULTRADIR directory is not configurable. It is always set to C:\ULTRASND.

- **Ultrasound IO address** [dosbox_core_gusbase] (220|**240**|260|280|2a0|2c0|2e0|300)

	The IO base address for the emulated Gravis Ultrasound card.

- **Ultrasound IRQ** [dosbox_core_gusirq] (3|**5**|7|9|10|11|12)

	The IRQ number for the emulated Gravis Ultrasound card.

- **Ultrasound DMA** [dosbox_core_gusdma] (0|1|**3**|5|6|7)

	The DMA channel for the emulated Gravis Ultrasound card.

- **Enable PC speaker** [dosbox_core_pcspeaker] (**true**|false)

	Enable PC speaker emulation.

- **Enable Tandy Sound System** [dosbox_core_tandy] (auto|true|**false**)

	Enable Tandy Sound System Emulation. Auto only works if machine is set to tandy.

- **Enable Disney Sound Source** [dosbox_core_disney] (true|**false**)

	Enable Disney Sound Source Emulation.

#### MIDI

MIDI emulation and output.

- **MPU-401 type** [dosbox_core_mpu401] (**intelligent**|UART|none)

	Type of MPU-401 MIDI interface to emulate. "Intelligent" mode is the best choice.

- **MIDI driver** [dosbox_core_mididevice] (ALSA|BASSMIDI|FluidSynth|MT-32 emulator|libretro|**none**)

	The MT-32 emulation driver uses Munt and needs the correct ROMs in the frontend's system directory. For BASSMIDI, you need to download the BASS and BASSMIDI libraries for your OS from https://www.un4seen.com and place them in the frontend's system directory. The libretro driver forwards MIDI to the frontend, in which case you need to configure MIDI output there.

- **ALSA MIDI port** [dosbox_core_midiconfig] (**Autodetect GS port (use GM if GS is not found)**|Autodetect GM port|Autodetect MT-32 port|Autodetect XG port|Autodetect GM2 port)

	ALSA port to send MIDI to.

- **BASSMIDI soundfont** [dosbox_core_bassmidi.soundfont] (**(no soundfonts found)**)

	Soundfonts are looked for in the "soundfonts" directory inside the frontend's system directory. Supported formats are SF2 and SFZ.

- **BASSMIDI soundfont volume** [dosbox_core_bassmidi.sfvolume] (0.0|0.1|0.2|0.3|0.4|0.5|**0.6**|0.7|0.8|0.9|1.0|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0|2.5|3.0|3.5|4.0|4.5|5.0|6.0|7.0|8.0|9.0|10.0)

- **BASSMIDI voice count** [dosbox_core_bassmidi.voices] (20|30|40|50|60|70|80|90|**100**|120|140|160|180|200|250|300|350|400|450|500|600|700|800|900|1000)

	Maximum number of samples that can play together. This is not the same thing as the maximum number of notes; multiple samples may be played for a single note.

- **FluidSynth soundfont** [dosbox_core_fluid.soundfont] (**(no soundfonts found)**)

	Soundfonts are looked for in the "soundfonts" directory inside the frontend's system directory. Supported formats are SF2, SF3, DLS and GIG. SF2 and SF3 are the recommended formats.

- **FluidSynth sample rate** [dosbox_core_fluid.samplerate] (8kHz|11.025kHz|16kHz|22.05kHz|32kHz|**44.1kHz**|48kHz|96kHz)

	The sample rate of the audio generated by the synthesizer.

- **FluidSynth volume gain** [dosbox_core_fluid.gain] (0.0|0.1|0.2|0.3|**0.4**|0.5|0.6|0.7|0.8|0.9|1.0|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0|2.5|3.0|3.5|4.0|4.5|5.0|6.0|7.0|8.0|9.0|10.0)

	The volume gain is applied to the final output of the synthesizer. Usually this needs to be rather low (0.2-0.5) for most soundfonts to avoid audio clipping and distortion.

- **FluidSynth polyphony** [dosbox_core_fluid.polyphony] (1|2|4|8|16|32|64|128|**256**|384|512|768|1024|1536|2048|3072|4096)

	The polyphony defines how many voices can be played in parallel. Higher values are more CPU intensive.

- **FluidSynth CPU cores** [dosbox_core_fluid.cores] (**1**|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|20|24|32)

	Sets the number of synthesis CPU cores. If set to a value greater than 1, then additional synthesis threads will be created to take advantage of a multi CPU or CPU core system.

- **FluidSynth enable reverb** [dosbox_core_fluid.reverb] (**true**|false)

- **FluidSynth reverb room size** [dosbox_core_fluid.reverb.roomsize] (0.0|0.1|**0.2**|0.3|0.4|0.5|0.6|0.7|0.8|0.9|1.0)

- **FluidSynth reverb damping** [dosbox_core_fluid.reverb.damping] (**0.0**|0.1|0.2|0.3|0.4|0.5|0.6|0.7|0.8|0.9|1.0)

- **FluidSynth reverb width** [dosbox_core_fluid.reverb.width] (0.0|0.1|0.2|0.3|0.4|**0.5**|0.6|0.7|0.8|0.9|1.1|1.2|1.3|1.4|1.5|1.6|1.7|1.8|1.9|2.0|2.5|3.0|3.5|4.0|4.5|5.0|6.0|7.0|8.0|9.0|10.0|12.0|14.0|16.0|18.0|20.0|25.0|30.0|35.0|40.0|45.0|50.0|60.0|70.0|80.0|90.0|100.0)

- **FluidSynth reverb level** [dosbox_core_fluid.reverb.level] (0.0|0.1|0.2|0.3|0.4|0.5|0.6|0.7|0.8|**0.9**|1.0)

- **FluidSynth enable chorus** [dosbox_core_fluid.chorus] (**true**|false)

- **FluidSynth chorus voices** [dosbox_core_fluid.chorus.number] (0|1|2|**3**|4|5|6|7|8|9|10|11|12|14|16|18|20|24|28|32|56|64|96)

- **FluidSynth chorus level** [dosbox_core_fluid.chorus.level] (0.0|0.2|0.4|0.6|0.8|1.0|1.2|1.4|1.6|1.8|**2.0**|2.2|2.4|2.6|2.8|3.0|3.5|4.0|4.5|5.0|5.5|6.0|6.5|7.0|7.5|8.0|8.5|9.0|9.5|10.0)

- **FluidSynth chorus speed** [dosbox_core_fluid.chorus.speed] (0.1 to 5.0 in steps of 0.1, **0.3**)

- **FluidSynth chorus depth** [dosbox_core_fluid.chorus.depth] (0|1|2|3|4|5|6|7|**8**|9|10|11|12|13|14|15|16|18|20|22|24|28|32|48|64|80|96|112|128|160|192|224|256)

- **MT-32 hardware type** [dosbox_core_mt32.type] (MT-32|**CM-32L/LAPC-I**)

	Type of MT-32 module to emulate. MT-32 is the older, original model. The CM-32L and LAPC-I are later models that provide some extra instruments not found on the original MT-32. Some games make use of these extra sounds and won't sound correct on the original MT-32.

- **MT-32 reverse stereo channels** [dosbox_core_mt32.reverse.stereo] (true|**false**)

- **MT-32 threaded emulation** [dosbox_core_mt32.thread] (true|**false**)

	Run MT-32 emulation in its own thread. Improves performance on multi-core CPUs.

- **MT-32 threaded chunk size** [dosbox_core_mt32.chunk] (2ms|3ms|4ms|5ms|7ms|10ms|13ms|**16ms**|20ms|24ms|28ms|32ms|40ms|48ms|56ms|64ms|80ms|96ms)

	Minimum milliseconds of data to render at once. Increasing this value reduces rendering overhead which may improve performance but also increases audio lag.

- **MT-32 threaded prebuffer size** [dosbox_core_mt32.prebuffer] (3ms|4ms|5ms|7ms|10ms|13ms|16ms|20ms|24ms|28ms|**32ms**|40ms|48ms|56ms|64ms|80ms|96ms|112ms|128ms|144ms|160ms|176ms|192ms)

	How many milliseconds of data to render ahead. Increasing this value may help to avoid underruns but also increases audio lag. Cannot be set less than or equal to the chunk size value.

- **MT-32 max partials** [dosbox_core_mt32.partials] (8|9|10|11|12|14|16|20|24|28|**32**|40|48|56|64|72|80|96|112|128|144|160|176|192|224|256)

	The maximum number of partials playing simultaneously. A value of 32 matches real MT-32 hardware. Lowering this value increases performance at the cost of notes getting cut off sooner. Increasing it allows more notes to stay audible compared to real hardware at the cost of performance.

- **MT-32 DAC input emulation mode** [dosbox_core_mt32.dac] (**high quality**|pure|gen 1|gen 2)

	High quality: Produces samples at double the volume, without tricks. Higher quality than the real devices. Pure: Produces samples that exactly match the bits output from the emulated LA32. Nicer overdrive characteristics than the DAC hacks (it simply clips samples within range.) Much less likely to overdrive than any other mode. Half the volume of any of the other modes. Gen 1: Re-orders the LA32 output bits as in the early generation MT-32. Gen 2: Re-orders the LA32 output bits as in the later generations MT-32 and CM-32Ls.

- **MT-32 analog output emulation mode** [dosbox_core_mt32.analog] (digital|coarse|**accurate**|oversampled)

	Digital: Only digital path is emulated. The output samples correspond to the digital output signal appeared at the DAC entrance. Fastest mode. Coarse: Coarse emulation of LPF circuit. High frequencies are boosted, sample rate remains unchanged. A bit better sounding but also a bit slower. Accurate: Finer emulation of LPF circuit. Output signal is upsampled to 48 kHz to allow emulation of audible mirror spectra above 16 kHz, which is passed through the LPF circuit without significant attenuation. Sounding is closer to the analog output from real hardware but also slower than "digital" and "coarse". Oversampled: Same as "accurate" but the output signal is 2x oversampled, i.e. the output sample rate is 96 kHz. Even slower than all the other modes but better retains highest frequencies while further resampled in DOSBox mixer.

- **MT-32 reverb mode** [dosbox_core_mt32.reverb.mode] (**auto**|room|hall|plate|tap delay)

	Reverb emulation mode. "Auto" will automatically adjust reverb parameters to match the loaded control ROM version.

- **MT-32 reverb decay time** [dosbox_core_mt32.reverb.time] (0|1|2|3|4|**5**|6|7)

- **MT-32 reverb level** [dosbox_core_mt32.reverb.level] (0|1|2|**3**|4|5|6|7)

- **MT-32 sample rate** [dosbox_core_mt32.rate] (8kHz|11.025kHz|16kHz|22.05kHz|32kHz|**44.1kHz**|48kHz|49.716kHz)

- **MT-32 resampling quality** [dosbox_core_mt32.src.quality] (fastest|fast|**good**|best)

- **MT-32 nice amp ramp** [dosbox_core_mt32.niceampramp] (**true**|false)

	Improves amplitude ramp for sustaining instruments. Quick changes of volume or expression on a MIDI channel may result in amp jumps on real hardware. Enabling this option prevents this from happening. Disabling this options preserves emulation accuracy.

- **Enable IPX networking** [dosbox_core_ipx] (true|**false**)

	Enable IPX over UDP tunneling.

#### Pinhack

Pinhack configuration options. Pinhack is a no-scroll hack for some pinball games.

- **Pinhack** [dosbox_core_pinhack] (on|**off**)

	A hack that allows some pinball games to display the whole table without scrolling. Do not enable this unless you're playing a game that works with it. It will cause severe issues with other games. See https://github.com/DeXteRrBDN/dosbox-pinhack for more information.

- **Initial mode** [dosbox_core_pinhackactive] (activated|**deactivated**)

	Whether or not to start with pinhack toggled on or off. It can be toggled on and off at any point with the Insert key.

- **Horizontal trigger range** [dosbox_core_pinhacktriggerwidth] (**disabled**|300-310|311-320|321-330|331-340|341-350|351-360|361-370|371-380|381-390|391-400|401-410|411-420|421-430|431-440|441-450|451-460|461-470|471-480|481-490|491-500|501-510|511-520|521-530|531-540|541-550|551-560|561-570|571-580|581-590|591-600|601-610|611-620|621-630|631-640)

	The horizontal resolution range the pinball hack should trigger at. Usually not needed.

- **Vertical trigger range** [dosbox_core_pinhacktriggerheight] (0|200-210|211-220|221-230|**231-240**|241-250|251-260|261-270|271-280|281-290|291-300|301-310|311-320|321-330|331-340|341-350|351-360|361-370|371-380|381-390|391-400|401-410|411-420|421-430|431-440|441-450|451-460|461-470|471-480)

	The vertical resolution range the pinball hack should trigger at.

- **Coarse expand height** [dosbox_core_pinhackexpandheight_coarse] (disabled|300|400|500|**600**|700|800|900)

	The coarse vertical resolution to expand the game to. You need the correct value for each individual game.

- **Fine expand height** [dosbox_core_pinhackexpandheight_fine] (0 to 99 in steps of 1, **9**)

	Combine this with the coarse expand height to get a final value. For example setting coarse to 600 and fine to 9 will result in an expand height of 609 (Pinball Fantasies).

#### Logging

Event logging.

- **Output method** [dosbox_core_log_method] (**frontend**|stdout/stderr)

	Where to send log output. "Frontend" will send it to the frontend, while "stdout/stderr" will print it to standard output or standard error (warnings and errors go to stderr, debug and informational messages to stdout.)

- **Verbosity level** [dosbox_core_log_level] (debug|info|**warnings**|errors)

## Controllers

The DOSBox-core core supports 16 ports. Each can be set to one of the following device types:

- Keyboard + Mouse
- Gamepad
- Joystick
- Disconnected

## External Links

- [Libretro DOSBox-core Repository](https://github.com/libretro/dosbox-core)
- [Report Libretro DOSBox-core Core Issues Here](https://github.com/libretro/dosbox-core/issues)
- [DOSBox Homepage](https://www.dosbox.com)
