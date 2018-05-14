# ScummVM

## Background

ScummVM is an interpreter program which allows you to run certain classic graphical point-and-click adventure games, provided you already have their data files. The clever part about this: ScummVM just replaces the executables shipped with the games, allowing you to play them on systems for which they were never designed

The ScummVM core has been authored by

- [ScummVM Team](http://www.scummvm.org/credits/)

The ScummVM core is licensed under

- [GPLv2](https://github.com/libretro/scummvm/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the ScummVM core have the following file extensions:

- .scummvm

RetroArch database(s) that are associated with the ScummVM core:

- [ScummVM](https://github.com/libretro/libretro-database/blob/master/rdb/ScummVM.rdb)

## Features

Frontend-level settings or features that the ScummVM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The ScummVM core's library name is 'scummvm'

The ScummVM core saves/loads to/from these directories.

**Frontend's Save directory**

- Game saves

**Frontend's System directory**

| File        | Description         |
|:-----------:|:-------------------:|
| scummvm.ini | ScummVM Config File |

## Geometry and timing

- The ScummVM core's core provided FPS is 60
- The ScummVM core's core provided sample rate is 44100 Hz
- The ScummVM core's base width is 640
- The ScummVM core's base height is 480
- The ScummVM core's max width is 640
- The ScummVM core's max height is 480.
- The ScummVM core's core provided aspect ratio is 4/3

## Usage

### Initial Configuration

Before attempting to run a game with the ScummVM core, certain preparations are required to ensure correct operation:

- Download and extract the file [scummvm.zip](https://github.com/libretro/scummvm/raw/master/backends/platform/libretro/aux-data/scummvm.zip).

- Place the resultant 'scummvm' folder inside the RetroArch 'system' directory.

- Run the ScummVM core without content:

    - Go to RetroArch's main menu screen.
    
    - Select 'Load Core', then 'ScummVM'.
    
    - Select 'Start Core'.
    
    - The main ScummVM user interface will open:

<center> ![](..\image\core\scummvm\scummvm_menu_1st_run.png) </center>

- Press the 'Options...' button, then select the 'Paths' tab.

- Press the 'Theme Path:' button and navigate to the RetroArch 'system' directory. Enter the 'scummvm/theme/' folder and press the 'Choose' button.

- Press the 'Extra Path:' button and navigate to the RetroArch 'system' directory. Enter the 'scummvm/extra/' folder and press the 'Choose' button.

- Press the 'Apply' button.

<center> ![](..\image\core\scummvm\scummvm_menu_paths.png) </center>

- Select the 'Misc' tab, then press the 'Theme:' button.

- Select 'ScummVM Modern Theme' and press the 'Choose' button.

- Press the 'Apply' button, then continue to the 'Enable Enhanced MIDI Emulation' section below.

<center> ![](..\image\core\scummvm\scummvm_menu_misc.png) </center>

#### Enable Enhanced MIDI Emulation

Some games only contain music in the form of MIDI data. By default, ScummVM will emulate MIDI mode using AdLib. Higher quality audio may be achieved for MIDI-enabled games by using FluidSynth MIDI emulation with an appropriate soundfont. This is the recommended mode of operation under RetroArch.

- Select the 'MIDI' tab, then under 'GM Device' select 'FluidSynth'.

- Press the 'SoundFont:' button and navigate to the RetroArch 'system' directory. Enter the 'scummvm/extra/' folder. (NB: If you have followed the steps of this guide in order, the 'scummvm/extra/' folder will be selected automatically upon pressing the 'SoundFont:' button)

- Select the file 'Roland_SC-55.sf2' and press the 'Choose' button.

- Tick the 'Mixed AdLib/MIDI mode' checkbox.

- Press the 'Apply' button, then continue to the 'Enable MT-32 Emulation' section below.

<center> ![](..\image\core\scummvm\scummvm_menu_midi.png) </center>

Many games benefit greatly from FluidSynth MIDI emulation. Some particularly notable examples are:

- Sam & Max Hit the Road

- Day of the Tentacle

- Discworld

!!! attention
	FluidSynth MIDI emulation slightly increases the CPU requirements of the ScummVM core. On the vast majority of platforms this should not be an issue. If crackling sound is observed on very low power devices, FluidSynth MIDI emulation should be disabled by setting 'GM Device' to the default "Don't use General MIDI music" option.

#### Enable MT-32 Emulation (Optional)

Some games which contain MIDI music data also have improved tracks designed for the MT-32 sound module. ScummVM can emulate this device, vastly increasing the audio quality of these games. Enabling MT-32 emulation is therefore highly recommended, but should be considered optional since it requires original MT-32 ROMs which must be provided by the user.

The names and checksums of the two required ROM files are:

|   Filename       |              md5sum              |
|:----------------:|:--------------------------------:|
| MT32_PCM.ROM     | 89e42e386e82e0cacb4a2704a03706ca |
| MT32_CONTROL.ROM | 5626206284b22c2734f3e9efefcd2675 |

These files must be placed inside the 'scummvm/extra/' folder within the RetroArch 'system' directory. MT-32 emulation may then be enabled via the main ScummVM user interface as follows:

- Select the 'MT-32' tab.

- Under 'MT-32 Device' select 'MT-32 Emulator'.

- Press the 'Apply' button, then the 'OK' button to close the options menu.

<center> ![](..\image\core\scummvm\scummvm_menu_mt32.png) </center>

Some notable examples of games that sound exquisite with MT-32 emulation are:

- Monkey Island 2: LeChuck's Revenge

- Indiana Jones and the Fate of Atlantis

- Simon the Sorcerer

Experiencing Monkey Island 2 without MT-32 emulation is like listening to Beethoven played on a kazoo.

!!! attention
	MT-32 emulation substantially increases the CPU requirements of the ScummVM core, and this can vary on a per-game basis. On most desktop systems this should not be an issue, but some devices may struggle to maintain full speed with all games. For example, 'Monkey Island 2' and 'Indiana Jones and the Fate of Atlantis' will run on very low power Android chipsets, but 'Simon the Sorcerer' will overwhelm mid-to-high-end mobile CPUs. If crackling sound is observed, the user should either (a) disable MT-32 emulation by setting 'MT-32 Device' to the default "Don't use Roland MT-32 music" or (b) force the use of the 'FluidSynth' audio device via an internal ScummVM game settings override (this is described in the following section).

This concludes 'Initial Configuration'. The core may be shut down either by pressing the 'Quit' button, or via 'Close Content' from the Quick Menu.

## Core options

The ScummVM core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Gamepad Cursor Speed** [scummvm_gamepad_cursor_speed] (**1.0**|1.5|2.0|2.5|3.0|0.25|0.5|0.75)

	Sets the mouse cursor speed multiplier when moving the cursor with the RetroPad left analog stick or D-Pad.

!!! attention
	The default value of '1.0' is optimised for games that have a native resolution of '320x200' or '320x240'. When running 'high definition' games with a native resolution of '640x400' or '640x480', it is recommended to set the Gamepad Cursor Speed to '2.0'.

- **Analog Cursor Response** [scummvm_analog_response] (**linear**|cubic)

	Determines how the speed of the cursor varies when tilting the RetroPad left analog stick.

	'linear': Cursor speed increases linearly with analog stick movement. This is standard behaviour with which most users will be familiar.

	'cubic': Cursor speed increases quadratically with analog stick movement. This allows for greater precision when making small movements with the analog stick, without sacrificing maximum speed at full analog stick range. This mode may require practice for effective use.

- **Analog Deadzone (percent)** [scummvm_analog_deadzone] (**15**|20|25|30|0|5|10)

	Sets the deadzone of the RetroPad analog sticks. Used to eliminate cursor drift/unwanted input.

!!! attention
	The deadzone setting can have a significant effect on the 'feel' of analog cursor movement. The value should be set as low as possible for best results - i.e. reduce the value until cursor drift is evident, then increment to the next highest setting. Xbox gamepads typically require a deadzone of 15-20%. Many Android-compatible bluetooth gamepads have an internal 'hardware' deadzone, allowing the deadzone value here to be set to 0%.

## Scanning Support

To allow launching ScummVM games from the menu, you'll need to do the following:

1. Look up the Game ID of the game you're looking to add to the menu. Game IDs can be found in [ScummVM's compatibility list](http://scummvm.org/compatibility).
    > `monkey` for Monkey Island

2. Inside the game directory, create a `.scummvm` file, named by the Game ID
    > `monkey.scummvm` for Monkey Island

3. Open up the file in a text editor, and enter in the Game ID.
    > `echo monkey > monkey.scummvm`

4. (Optional) Alternatively, you could download a prepared `.scummvm` file from [libretro-database-scummvm](https://github.com/RobLoach/libretro-database-scummvm/tree/master/games).

5. Scan each game directory

This is an example of what the playlist would look like:

```
    /storage/roms/scummvm/monkey/monkey.scummvm
    The Secret of Monkey Island
    /tmp/cores/scummvm_libretro.so
    ScummVM
    b0e2af30|crc
    ScummVM.lpl
```

## Joypad

| RetroPad Inputs                                | User 1 input descriptors | ScummVM Inputs          |
|------------------------------------------------|--------------------------|-------------------------|
| ![](../image/retropad/retro_b.png)             | Right Mouse Button       | Right Mouse Button      |
| ![](../image/retropad/retro_y.png)             | .                        | . (period)              |
| ![](../image/retropad/retro_select.png)        | F1                       | F1                      |
| ![](../image/retropad/retro_start.png)         | ScummVM GUI              | ScummVM GUI             |
| ![](../image/retropad/retro_dpad_up.png)       | Mouse Cursor Up          | Mouse Cursor Up         |
| ![](../image/retropad/retro_dpad_down.png)     | Mouse Cursor Down        | Mouse Cursor Down       |
| ![](../image/retropad/retro_dpad_left.png)     | Mouse Cursor Left        | Mouse Cursor Left       |
| ![](../image/retropad/retro_dpad_right.png)    | Mouse Cursor Right       | Mouse Cursor Right      |
| ![](../image/retropad/retro_a.png)             | Left Mouse Button        | Left Mouse Button       |
| ![](../image/retropad/retro_x.png)             | Esc                      | Esc                     |
| ![](../image/retropad/retro_l1.png)            | Enter                    | Enter                   |
| ![](../image/retropad/retro_r1.png)            | Numpad 5                 | Numpad 5                |
| ![](../image/retropad/retro_l2.png)            | Backspace                | Backspace               |
| ![](../image/retropad/retro_r2.png)            | Cursor Fine Control      | Cursor Fine Control     |
| ![](../image/retropad/retro_l3.png)            | F10                      | F10                     |
| ![](../image/retropad/retro_r3.png)            | Numpad 0                 | Numpad 0                |
| ![](../image/retropad/retro_left_stick.png) X  |                          | Mouse Cursor Left/Right |
| ![](../image/retropad/retro_left_stick.png) Y  |                          | Mouse Cursor Up/Down    |
| ![](../image/retropad/retro_right_stick.png)   |                          | Virtual Numpad          |

**Additional Notes:**

- Depressing the 'Cursor Fine Control' button reduces cursor speed to 1/3 of the value set by the 'Gamepad Cursor Speed' core option.

- The RetroPad right analog stick is mapped to an 8-way 'Virtual Numpad' with the following layout:

        [7][8][9]
        [4]   [6]
        [1][2][3]

**Additional 'ScummVM Input' Descriptions:**

- Esc:

    - Skips cutscenes.
    
    - Opens/closes menus in some games.

- Virtual Numpad + Numpad 5 + Numpad 0:

    - Enables control during fight sequences in the 'Indiana Jones' series of games.
    
    - Enables bypass of Monkey Island 2 copy protection.
    
    - Enables saving in games that require text entry when naming a save slot.
    
    - Enables menu navigation in some games (Numpad 8 == up, Numpad 2 == down).

- Enter + Backspace:

    - Enables saving in games that require text entry when naming a save slot.
    
    - 'Enter' may be used to attack in 'Full Throttle' fight sequences.
    
    - 'Enter' enables menu item selection in some games.

- . (period): Skips lines of dialogue in SCUMM engine games.

- F1:

    - Shows in-game menu in some games.
    
    - Enables saving in some games.

- F10: Shows hotspots in Simon the Sorcerer 1 + 2.

## Mouse

| RetroMouse Inputs                                     | ScummVM Inputs     |
|-------------------------------------------------------|--------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Left Mouse Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Right Mouse Button |

## Pointer

- The Wii U build of the ScummVM core uses the libretro pointer API for mouse emulation.

| RetroPointer Inputs                                                                                                      | ScummVM Inputs |
|--------------------------------------------------------------------------------------------------------------------------|----------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Mouse Cursor   | 
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | Left Mouse Button   |

## Compatibility

- [ScummVM Compatibility List](https://www.scummvm.org/compatibility/)

## External Links

- [Official ScummVM Website](http://scummvm.org/)
- [Official ScummVM Github Repository](https://github.com/scummvm/scummvm)
- [Libretro ScummVM Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/scummvm_libretro.info)
- [Libretro ScummVM Github Repository](https://github.com/libretro/scummvm)
- [Report Libretro ScummVM Core Issues Here](https://github.com/libretro/scummvm/issues)
