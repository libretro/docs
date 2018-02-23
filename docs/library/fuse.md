# ZX Spectrum (Fuse)

## Contribute to this documentation

**In order to propose improvements to this document, [visit its corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/fuse.md). Changes are proposed using "Pull Requests."**

**There is a To-Do list for libretro/docs [here](https://docs.libretro.com/docguide/todo/)**

**You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).**

## Background

The Free Unix Spectrum Emulator (Fuse): an emulator of the 1980s home computer and various clones for Unix, Mac OS X and Windows. 

### Why use this core?

Awaiting description.

### How to get and install the Fuse core:

- Start up RetroArch. Inside the main menu, go to 'Online Updater'.

<center> ![](images\Cores\all\updater.png) </center>

- Just to make sure we have the latest info files, select 'Update Core Info FIles'. Wait until this is done. Then, select 'Core Updater'.

<center> ![](images\Cores\all\info.png) </center>

- Browse through the list and select 'ZX Spectrum (Fuse)'.

<center> ![](images\Cores\updater\fuse.png) </center>

After this has finished downloading, the core should now be ready for use!

#### How to start (after installation):

- Go back to RetroArch's main menu screen. Select 'Load Content'.

<center> ![](images\Cores\all\load.png) </center>

- Browse to the folder that contains the content you want to run.

- Select the content that you want to run.

- If you are asked which core to select, choose 'ZX Spectrum (Fuse)'.

The content should now start running!

### Authors

- Team Fuse

## License

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

The Fuse core is licensed under

- [GPLv3](https://github.com/libretro/fuse-libretro/blob/master/LICENSE)

## Extensions

Content that can be loaded by the Fuse core have the following file extensions:

- .tzx
- .tap
- .z80
- .rzx
- .scl
- .trd

## Databases

RetroArch database(s) that are associated with the Fuse core:

- [Sinclair - ZX Spectrum +3](https://github.com/libretro/libretro-database/blob/master/rdb/Sinclair%20-%20ZX%20Spectrum%20%2B3.rdb)
- [Sinclair - ZX Spectrum](https://github.com/libretro/libretro-database/blob/master/rdb/Sinclair%20-%20ZX%20Spectrum.rdb)

## Emulated Machines / BIOS

Required or optional firmware files go in RetroArch's system directory.

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

!!! attention
	The BIOS for the last four machines need to be in a directory named 'fuse' in RetroArch's System directory.

## Features

RetroArch-level settings or features that the Fuse core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | -         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |


### Directories

The Fuse core's directory name is 'fuse'

The Fuse core saves/loads to/from these directories.

**RetroArch's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Fuse core's internal FPS is (FPS)
- The Fuse core's internal sample rate is 44100 Hz
- The Fuse core's core provided aspect ratio is (Ratio)

## Core options

The Fuse core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Model (needs content load)** (**Spectrum 48K**/Spectrum 48K (NTSC)/Spectrum 128K/Spectrum +2/Spectrum +2A/Spectrum +3/Spectrum +3e/Spectrum SE/Timex TC2048/Timex TC2068/Timex TS2068/Spectrum 16K/Pentagon 128K/Pentagon 512K/Pentagon 1024/Scorpion 256K)

	Set the machine to emulate. Note that the this setting will have effect only when a new content is loaded.
	
- **Hide Video Border** (**Off**/On)

	Hides the video border, making the game occupy the entire screen area.
	
- **Tape Fast Load** (Off/**On**)

	Instantly loads tape files if enabled, or disabled it to see the moving horizontal lines in the video border while the game loads.

- **Tape Load Sound** (Off/**On**)

	Outputs the tape sound if fast load is disabled.

- **Speaker Type** (**tv speaker**/beeper/unfiltered)

	Applies an audio filter.

- **AV Stereo Separation** (**none**/acb/abc)

	The AY sound chip stereo separation.

- **Transparent Keyboard Overlay** (Off/**On**)

	If the keyboard overlay is transparent or opaque.

- **Time to Release Key in ms** (**500**/1000/100/300)

	How much time to keep a key pressed before releasing it (used when a key is pressed using the keyboard overlay).
	
## Controllers

### Controllers usage

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
- Sinclair Keyboard - Keyboard

### Controller tables

#### Joypad and analog device type table

| User 1 - 7 Remap descriptors  | RetroPad Inputs                              |
|-------------------------------|----------------------------------------------|
| Up                            | ![](images/RetroPad/Retro_B_Round.png)       |
| Fire                          | ![](images/RetroPad/Retro_Y_Round.png)       |
| Keyboard overlay              | ![](images/RetroPad/Retro_Select.png)        |
| Up                            | ![](images/RetroPad/Retro_Dpad_Up.png)       |
| Down                          | ![](images/RetroPad/Retro_Dpad_Down.png)     |
| Left                          | ![](images/RetroPad/Retro_Dpad_Left.png)     |
| Right                         | ![](images/RetroPad/Retro_Dpad_Right.png)    |
| Fire                          | ![](images/RetroPad/Retro_A_Round.png)       |
| Fire                          | ![](images/RetroPad/Retro_X_Round.png)       |
| Enter                         | ![](images/RetroPad/Retro_L1.png)            |
| Space                         | ![](images/RetroPad/Retro_R1.png)            |

#### Keyboard device type table

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

## Compatibility

Awaiting description.

## External Links

- [Libretro Fuse Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/fuse_libretro.info)
- [Libretro Fuse Github Repository](https://github.com/libretro/fuse-libretro)
- [Report Libretro Fuse Core Issues Here](https://github.com/libretro/fuse-libretro/issues)
- [Official Fuse Website](http://fuse-emulator.sourceforge.net/)
- [Official Fuse SourceForge Repository](https://sourceforge.net/projects/fuse-emulator/)