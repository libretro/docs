# ZX Spectrum (Fuse)

## Background

The Free Unix Spectrum Emulator (Fuse): an emulator of the 1980s home computer and various clones for Unix, Mac OS X and Windows.

The Fuse core has been authored by

- Team Fuse

The Fuse core is licensed under

- [GPLv3](https://github.com/libretro/fuse-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	The BIOS for the last four machines need to be in a directory named 'fuse' in RetroArch's System directory.

- Spectrum 48K
- Spectrum 48K (NTSC)
- Spectrum 128K
- Spectrum +2
- Spectrum +2A
- Spectrum +3
- Spectrum +3e
- Spectrum SE
- Timex TC2048
- Timex TC2068
- Timex TS2068
- Spectrum 16K

- Pentagon 128K

|   Filename      |    Description               |              md5sum              |
|:---------------:|:----------------------------:|:--------------------------------:|
| fuse/128p-0.rom | Pentagon 128K ROM - Required |                                  |
| fuse/128p-1.rom | Pentagon 128K ROM - Required |                                  |
| fuse/trdos.rom  | Pentagon 128K ROM - Required |                                  |

- Pentagon 512K

|   Filename      |    Description               |              md5sum              |
|:---------------:|:----------------------------:|:--------------------------------:|
| fuse/128p-0.rom | Pentagon 512K ROM - Required |                                  |
| fuse/128p-1.rom | Pentagon 512K ROM - Required |                                  |
| fuse/gluck.rom  | Pentagon 512K ROM - Required |                                  |
| fuse/trdos.rom  | Pentagon 512K ROM - Required |                                  |

- Pentagon 1024

|   Filename      |    Description               |              md5sum              |
|:---------------:|:----------------------------:|:--------------------------------:|
| fuse/128p-0.rom | Pentagon 1024 ROM - Required |                                  |
| fuse/128p-1.rom | Pentagon 1024 ROM - Required |                                  |
| fuse/gluck.rom  | Pentagon 1024 ROM - Required |                                  |
| fuse/trdos.rom  | Pentagon 1024 ROM - Required |                                  |

- Scorpion 256K

|   Filename      |    Description               |              md5sum              |
|:---------------:|:----------------------------:|:--------------------------------:|
| fuse/256s-0.rom | Scorpion 256K ROM - Required |                                  |
| fuse/256s-1.rom | Scorpion 256K ROM - Required |                                  |
| fuse/256s-2.rom | Scorpion 256K ROM - Required |                                  |
| fuse/256s-3.rom | Scorpion 256K ROM - Required |                                  |

## Extensions

Content that can be loaded by the Fuse core have the following file extensions:

- .tzx
- .tap
- .z80
- .rzx
- .scl
- .trd

RetroArch database(s) that are associated with the Fuse core:

- [Sinclair - ZX Spectrum +3](https://github.com/libretro/libretro-database/blob/master/rdb/Sinclair%20-%20ZX%20Spectrum%20%2B3.rdb)
- [Sinclair - ZX Spectrum](https://github.com/libretro/libretro-database/blob/master/rdb/Sinclair%20-%20ZX%20Spectrum.rdb)

## Features

Frontend-level settings or features that the Fuse core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
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
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Fuse core's library name is 'fuse'

The Fuse core saves/loads to/from these directories.

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Fuse core's core provided FPS is (FPS)
- The Fuse core's core provided sample rate is 44100 Hz
- The Fuse core's base width is (Base width)
- The Fuse core's base height is (Base height)
- The Fuse core's max width is (Max width)
- The Fuse core's max height is (Max height)
- The Fuse core's core provided aspect ratio is (Ratio)

## Games

There are hundreds of free, legally available ZX Spectrum games at [World of Spectrum](http://www.worldofspectrum.org/). You should start at the [Visitor Voted Top 100 Best Games](http://www.worldofspectrum.org/bestgames.html).

## Core options

The Fuse core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Model (needs content load)** [fuse_machine] (**Spectrum 48K**|Spectrum 48K (NTSC)|Spectrum 128K|Spectrum +2|Spectrum +2A|Spectrum +3|Spectrum +3e|Spectrum SE|Timex TC2048|Timex TC2068|Timex TS2068|Spectrum 16K|Pentagon 128K|Pentagon 512K|Pentagon 1024|Scorpion 256K)

	Set the machine to emulate. Note that the this setting will have effect only when a new content is loaded.

- **Hide Video Border** [fuse_hide_border] (**Off**|On)

	Hides the video border, making the game occupy the entire screen area.

- **Tape Fast Load** [fuse_fast_load] (Off|**On**)

	Instantly loads tape files if enabled, or disabled it to see the moving horizontal lines in the video border while the game loads.

- **Tape Load Sound** [fuse_load_sound] (Off|**On**)

	Outputs the tape sound if fast load is disabled.

- **Speaker Type** [fuse_speaker_type] (**tv speaker**|beeper|unfiltered)

	Applies an audio filter.

- **AV Stereo Separation** [fise_ay_stereo_separation] (**none**|acb|abc)

	The AY sound chip stereo separation.

- **Transparent Keyboard Overlay** [fuse_key_ovrlay_transp] (Off|**On**)

	If the keyboard overlay is transparent or opaque.

- **Time to Release Key in ms** [fuse_key_hold_time] (**500**|1000|100|300)

	How much time to keep a key pressed before releasing it (used when a key is pressed using the keyboard overlay).

- **Joy Left mapping** [fuse_joypad_left] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the Left joypad input to a keyboard input.

- **Joy Right mapping** [fuse_joypad_right] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the Right joypad input to a keyboard input.

- **Joy Up mapping** [fuse_joypad_up] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the Up joypad input to a keyboard input.

- **Joy Down mapping** [fuse_joypad_down] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the Down joypad input to a keyboard input.

- **Joy Start mapping** [fuse_joypad_start] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the Start joypad input to a keyboard input.

- **Joy A mapping** [fuse_joypad_a] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the A joypad input to a keyboard input.

- **Joy B mapping** [fuse_joypad_b] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the B joypad input to a keyboard input.

- **Joy X mapping** [fuse_joypad_x] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the X joypad input to a keyboard input.

- **Joy Y mapping** [fuse_joypad_y] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the Y joypad input to a keyboard input.

- **Joy L mapping** [fuse_joypad_l] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the L joypad input to a keyboard input.

- **Joy R mapping** [fuse_joypad_r] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the R joypad input to a keyboard input.

- **Joy L2 mapping** [fuse_joypad_l2] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the L2 joypad input to a keyboard input.

- **Joy R2 mapping** [fuse_joypad_r2] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the R2 joypad input to a keyboard input.

- **Joy L3 mapping** [fuse_joypad_l3] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the L3 joypad input to a keyboard input.

- **Joy R3 mapping** [fuse_joypad_r3] (**<none>**|0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Enter|Caps|Symbol|Space)

	Map the R3 joypad input to a keyboard input.

## Controllers usage

There are seven types of joysticks emulated:

1. Cursor
2. Kempston
3. Sinclair 1
4. Sinclair 2
5. Timex 1
6. Timex 2
7. Fuller Joystick

Users can configure their joystick types in the input configuration on the front end. However, fuse-libretro allows for two joysticks at maximum so only users one and two can actually use theirs in the emulation.

Users 1 and 2 can choose any of the joysticks as their device types, user 3 can only choose the Sinclair Keyboard.

Buttons A, X and Y are mapped to the joystick's fire button, and button B is mapped to the UP directional button. Buttons L1 and R1 are mapped to RETURN and SPACE, respectively. The SELECT button brings up the embedded, on-screen keyboard which is useful if you only have controllers attached to your box.

There are some conflicts in the way the input devices interact because of the use of the physical keyboard keys as joystick buttons. For a good gaming experience, set the user device types as follows:

- For joystick games: Set user 1 to a joystick type. Optionally, set user 2 to another joystick type (local cooperative games). Set user 3 to none. This way, you can use L1 as RETURN, R1 as SPACE, and SELECT to bring the embedded keyboard.
- For keyboard games: Set users 1 and 2 to none, and user 3 to Sinclair Keyboard. You won't have any joystick and the embedded keyboard won't work, but the entire physical keyboard will be available for you to type in those text adventure commands.

If you set a joystick along with the keyboard, the joystick will work just fine except for the bindings to RETURN and SPACE, and the keyboard won't register the keys assigned to the Cursor joystick, or to the L1 and R1 buttons for all other joystick types.

### Device types

The Fuse core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

#### User 1 - 2 device types

- None - Input disabled.
- **RetroPad** - Joypad
- Cursor Joystick - Joypad
- Kempston Joystick - Joypad
- Sinclair 1 Joystick - Joypad
- Sinclair 2 Joystick - Joypad
- Timex 1 Joystick - Joypad
- Timex 2 Joystick - Joypad
- Fuller Joystick - Joypad

#### User 3 device types

- None - Input disabled.
- **RetroPad** - Joypad
- Sinclair Keyboard - Keyboard - Has keymapper support

### Joypad

| User 1 - 7 input descriptors | RetroPad Inputs                             |
|------------------------------|---------------------------------------------|
| Up                           | ![](../image/retropad/retro_b.png)          |
| Fire                         | ![](../image/retropad/retro_y.png)          |
| Keyboard overlay             | ![](../image/retropad/retro_select.png)     |
| Up                           | ![](../image/retropad/retro_dpad_up.png)    |
| Down                         | ![](../image/retropad/retro_dpad_down.png)  |
| Left                         | ![](../image/retropad/retro_dpad_left.png)  |
| Right                        | ![](../image/retropad/retro_dpad_right.png) |
| Fire                         | ![](../image/retropad/retro_a.png)          |
| Fire                         | ![](../image/retropad/retro_x.png)          |
| Enter                        | ![](../image/retropad/retro_l1.png)         |
| Space                        | ![](../image/retropad/retro_r1.png)         |

### Keyboard

| RetroKeyboard Inputs          | Sinclair Keyboard  |
|-------------------------------|--------------------|
| Keyboard Backspace            | Backspace          |
| Keyboard Return               | Return             |
| Keyboard Space                | Space              |
| Keyboard 0                    | 0                  |
| Keyboard 1                    | 1                  |
| Keyboard 2                    | 2                  |
| Keyboard 3                    | 3                  |
| Keyboard 4                    | 4                  |
| Keyboard 5                    | 5                  |
| Keyboard 6                    | 6                  |
| Keyboard 7                    | 7                  |
| Keyboard 8                    | 8                  |
| Keyboard 9                    | 9                  |
| Keyboard a                    | a                  |
| Keyboard b                    | b                  |
| Keyboard c                    | c                  |
| Keyboard d                    | d                  |
| Keyboard e                    | e                  |
| Keyboard f                    | f                  |
| Keyboard g                    | g                  |
| Keyboard h                    | h                  |
| Keyboard i                    | i                  |
| Keyboard j                    | j                  |
| Keyboard k                    | k                  |
| Keyboard l                    | l                  |
| Keyboard m                    | m                  |
| Keyboard n                    | n                  |
| Keyboard o                    | o                  |
| Keyboard p                    | p                  |
| Keyboard q                    | q                  |
| Keyboard r                    | r                  |
| Keyboard s                    | s                  |
| Keyboard t                    | t                  |
| Keyboard u                    | u                  |
| Keyboard v                    | v                  |
| Keyboard w                    | w                  |
| Keyboard x                    | x                  |
| Keyboard y                    | y                  |
| Keyboard z                    | z                  |
| Keyboard Right Shift          | Right Shift        |
| Keyboard Left Shift           | Left Shift         |
| Keyboard Right Control        | Right Control      |
| Keyboard Left Control         | Left Control       |
| Keyboard Right Alt            | Right Alt          |
| Keyboard Left Alt             | Left Alt           |
| Keyboard Right Meta           | Right Meta         |
| Keyboard Left Meta            | Left Meta          |
| Keyboard Right Super          | Right Super        |
| Keyboard Left Super           | Left Super         |

## External Links

- [Official Fuse Website](http://fuse-emulator.sourceforge.net/)
- [Official Fuse SourceForge Repository](https://sourceforge.net/projects/fuse-emulator/)
- [Libretro Fuse Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/fuse_libretro.info)
- [Libretro Fuse Github Repository](https://github.com/libretro/fuse-libretro)
- [Report Libretro Fuse Core Issues Here](https://github.com/libretro/fuse-libretro/issues)