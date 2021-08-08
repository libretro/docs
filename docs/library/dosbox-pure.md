![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) (So, to create this document, I copied the [original Libretro DOSBox documentation](https://docs.libretro.com/library/dosbox/) and overwrote/expanded it. There's still many chunks of content in here that come straight from the original document and that probably need revision, and then most of the extra stuff in here comes from [Bernhard Schelling's readme for DOSBox Pure](https://github.com/schellingb/dosbox-pure). Lastly, a few additions by me. I annotated this whole thing, look for the read squares. - Matt)

# DOS (DOSBox Pure)

## Background

DOSBox Pure is fork of the multiplatform MS-DOS emulator, DOSBox. It was built by Bernhard Schelling in 2020 specifically for RetroArch/Libretro and implements advanced features like save states, an on-screen keyboard, easy controller setup or rewinding. DOSBox Pure aims for simplicity and ease of use.

The DOSBox-Pure core has been authored by

- DOSBox Team
- Psyraven

The DOSBox core is licensed under

- [GPLv2](https://github.com/libretro/dosbox-libretro/blob/master/COPYING)
![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) (I presume?)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).
![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) (This is a relative URL, so I'm guessing it will work correctly when this file lands on the master?)

## Extensions

Content that can be loaded by the DOSBox Pure core has the following file extensions:

- .zip
- .dosz (alternative extension to .ZIP)
- .exe
- .com
- .bat
- .iso
- .cue
- .ins
- .img
- .ima
- .vhd
- .m3u
- .m3u8

RetroArch database(s) that are associated with the DOSBox core:

- [DOS](https://github.com/libretro/libretro-database/blob/master/rdb/DOS.rdb)
![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) (Others?)

## Features
!!!tip
	DOSBox Pure has its own [trailer on YouTube](https://www.youtube.com/watch?v=rHkIz4-SewI).

Frontend-level settings or features that the DOSBox Pure core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
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

### MIDI playback with SoundFonts

If DOSBox Pure finds one or more `.SF2` sound font files in the `system` directory of the frontend, one of them can be selected via the `Audio > MIDI SoundFont` core option. This sound font will then be used to play General Midi and Sound Canvas music.

###  MPU-401 MIDI device emulation through MUNT

To emulate pre-General MIDI (MPU-401) devices such as the Roland MT-32, CM-32L, CM-64 and LAPC-I, you need the correct ROM files, e.g., MT32_CONTROL.ROM and MT32_PCM.ROM (more details about necessary files [here](https://github.com/munt/munt/blob/master/mt32emu/src/ROMInfo.cpp#L28)). Place them in the RetroArch `system` directory.

Then, bring up DOSBox Pure's options and in `Audio > MIDI Output`, select the device you want to emulate (e.g., `Roland MT-32`).

### Cheats support

DOSBox Pure exposes its memory for cheats in the libretro frontend.

For details how to use it and how to find new cheats while playing the game, check the [Libretro documentation for cheats](https://docs.libretro.com/guides/cheat-codes/). This can also be used to add controller rumble support to DOS games.

### Save states

The DOSBox Pure core fully supports libretro save states. Make sure to test it in each game before using it. Complex late era DOS games might have problems.

Be aware that states saved with different video or cpu settings are not loadable.

Save states might not be compatible across different versions of DOSBox Pure.

Rewind support

Using the core option `Save States Support`, rewinding can be enabled. Keep in mind that rewind support comes at a high performance cost.

## Directories

The DOSBox Pure core's library name is 'DOSBox-Pure'.

## Geometry and timing

- The DOSBox Pure core's core provided FPS is dependent on the DOS application
- The DOSBox Pure core's core provided sample rate is dependent on the 'Audio > Audio Sample Rate' core option
- The DOSBox Pure core's base width is 320
- The DOSBox Pure core's base height is 200
- The DOSBox Pure core's max width is 1280
- The DOSBox Pure core's max height is 1024
- The DOSBox Pure core's core provided aspect ratio is dependent on the DOS application and the 'Video > Aspect Ratio Correction' core option

## Loading content

### Load games from ZIP

DOSBox Pure can load games directly from ZIP files without the need to extract them.

### Store modifications in separate save files

Changes made to a loaded ZIP file will be stored as a separate ZIP file into the libretro saves directory. If a game is loaded directly without using a ZIP file the saves directory is not used.

### Mount disc images from inside ZIP files

CD images (ISO or CUE) and floppy disk images (IMG/IMA/VHD) can be mounted directly from inside ZIP files. The system will automatically mount the first found disk image as the A: or D: drive. Additional disks can be loaded or swapped by using the `Disc Control` menu in RetroArch.

The start menu also offers the option to mount or unmount an image.

### Start menu with auto start

![The DOSBox Pure Start Menu](https://raw.githubusercontent.com/schellingb/dosbox-pure/main/images/startmenu.png)

This is the first screen that appears when loading a game. It offers a gamepad controllable list of all executable files for the loaded game. By pressing right an item can be selected as the default which will skip the menu on the next launch.

By pressing right multiple times, a number of frames can be specified that will automatically be skipped on start. This can be used to skip over loading screens or start-up sequences.

If there is only a single executable, the menu will not show and directly run the file.

To force the menu to be shown, hold shift on the keyboard or L2 or R2 on the gamepad while selecting `Restart` in the core menu.

### Installing CD-ROM games from disc images (ISO etc.) and running them

In order to install a game from a CD-ROM image (e.g., a .iso file), use the "Load Content" option in the RetroArch main menu. Navigate to the ISO and launch it with the DOSBox Pure core.

From the start menu, select the executable on the CD-ROM to install the game (probably something like `SETUP.EXE`, `INSTALL.EXE`, `START.EXE`...). Follow the installer's instructions to install the game in any local directory of your choice (e.g., `C:\`, `C:\C&C\`, ...).

Now, the next time you run the ISO in DOSBox Pure (same way as above), the start menu will feature the "local" executables, e.g.: `C:\C&C\C&C.EXE`. They'll be available to select above the executables from mounted discs. Launch the correct executable to run the game.

See screenshot in "Start menu with auto start" section above for reference.

### Loading M3U8 files

If the core gets loaded with a `.m3u8` file, all files listed in it will be added to the disc swap menu. The first image will automatically get mounted as the A: or D: drive depending on whether it is a CD or floppy disk image.

## Tips, Q&A, Troubleshooting

### Smooth scrolling

You might have trouble getting stutter-free scrolling in some games (cf. https://github.com/schellingb/dosbox-pure/issues/128). There are a number of things you can try to remedy this:

- In RetroArch's settings, navigate to `Video` and set `Threaded Video` to OFF.
- Try `Video` > `Output` > `Set Display-Reported Refresh Rate`.
- Try setting `Video` > `Synchronization` > `Vertical Sync` to ON.
- If using a variable refresh rate screen (G-Sync, FreeSync, HDMI 2.1 VRR): navigate to `Video` > `Synchronization` and set `Sync to Exact Content Framerate (G-Sync, FreeSync)` to ON.

### Playing with keyboard and mouse

To play not with a gamepad but with keyboard and mouse, be sure to use the 'Game Focus' mode available in RetroArch. By default you can toggle game focus by pressing the scroll lock key. While game focus is active, the RetroArch hotkeys are disabled and keyboard presses will not cause [RetroPad](https://docs.libretro.com/guides/input-and-controls/) button presses (which could cause multiple keys to be pressed at once).

### ZIP files can be renamed to DOSZ

If your libretro frontend wants to load the content of `.ZIP` files instead of sending it to DOSBox Pure to load, the files can be renamed from `.ZIP` to `.DOSZ`.
This is especially useful for CD images in ZIP format which RetroArch refuses to append through its `Disc Control` menu. Using an `.M3U8` file (see above) also avoids this problem.

### Force opening the start menu

If you have assigned an auto start item in the start menu but want to go back to it, hold shift on the keyboard or L2 or R2 on the gamepad while selecting `Restart` in the core menu.

### Mount ZIP as A or D drive

If you have a ZIP file you want to load as a fake floppy disk or fake CD-ROM, there are multiple options.

- The easiest is to rename the file from `.ZIP` to e.g., `.D.ZIP` (to use the D: drive).
- You can also edit the RetroArch `.LPL` playlist file to add a `#D` after the file like `game.zip#D`.
- A third option is available inside DOSBox Pure with a new remount command that can be called with REMOUNT C: D: to remount the C: drive to D:. This can for example be used in a startup batch file.

### Change disk label with label command

DOSBox Pure by default uses the first word of the ZIP file name as the label of the mounted disk. Some games require a specific label on a floppy or a CD-ROM so DOSBox Pure offers a new command to change the label of a mounted disk. For example, `LABEL C: HELLO` changes the label of the C: drive.

This label is not saved anywhere and needs to be reapplied on every launch so it's best to add the command in a startup batch file. You can run the `MOUNT` command to check all mounted disks and their disk label.

### Keyboard layout defaults to US

The keyboard layout defaults to the US Layout (QWERTY). If you need a different layout, you can change the core option `Input > Advanced > Keyboard Layout`.

### Save file handling

When modifications to the file system loaded from a ZIP file happen, these modifications are written into a separate save file. You can find these save files inside the data directory of your libretro frontend, usually in a sub-directory called `saves`, or any other directory you have set in `RetroArch's Settings > Directory > Savefile`.

- Save files get re-written to disk a short while after a modification happens in the file system.
- The larger the save, the less often it will be written out.
- Up to 1MB of total save data, it will be written out 2 seconds after the previous file modification. Then gradually until at max 59MB and more, it will be written out 60 seconds after the last file modification.

## Features currently not implemented

### Load dosbox.conf

It would be nice to be able to load a dosbox.conf file if it exists in the loaded game directory (for example inside the ZIP file). Ideally this would then hide all the options that have been overwritten by that .conf file in the core options list.

### Store ZIP seek index into save file

When a DOS game opens a large file and wants to read some data from near the end of the file, DOSBox Pure needs to decompress the entire file to do that. This can be most noticeable when mounting CD-ROM images from inside ZIP files.
Afterwards there is an index buffer which will be used to decompress random locations of the file and file access will be much faster.
This index buffer should be stored into the game save file to avoid having to slowly rebuild it every time the same game is launched.

### Serial Port, IPX emulation

For now, serial port and IPX emulation from base DOSBox have been removed.

!!! tip
    **Thoughts by Matt** I seem to remember this core looks up games in an extensive online database of DOS games, so it enables RetroArch to easily create playlists from a user's collection of DOS games? In general, it might be useful to have a section about creating playlists here, I'll be happy to write it but I need to understand it better myself first.

## Core options
![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) (Still need to re-write this whole section)

The DOSBox core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Machine type** [dosbox_machine_type] (**vgaonly**|svga_s3|svga_et3000|svga_et4000|svga_paradise|hercules|cga|tandy|pcjr|ega)

	Select what machine will be emulated.

- **Gamepad emulated mouse** [dosbox_emulated_mouse] (**enable**|disable)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 100000** [dosbox_cpu_cycles_0] (**0**|1|2|3|4|5|6|7|8|9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 10000** [dosbox_cpu_cycles_1] (**0**|1|2|3|4|5|6|7|8|9)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 1000** [dosbox_cpu_cycles_2] (**1**|2|3|4|5|6|7|8|9|0)

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

- **CPU cycles x 100** [dosbox_cpu_cycles_3] (**0**|1|2|3|4|5|6|7|8|9")

	CPU cycles are divided in core options to allow fine control of the desired CPU cycles. Setting this too low may cause slow gameplay, setting this too high might cause sound crackling and bad performance.

## Controls

### Automated controller mappings

When a game is loaded, DOSBox Pure will try to detect the game and apply a controller mapping. 

To see the applied mapping, check the `Port 1 Controls` screen in the RetroArch menu. It will show `Detected Automatic Key Mapping: <GAMENAME>`. Additionally you can set the core option `Input > Advanced > Automatic Game Pad Mappings` to `Enable with notification on game detection`.

### Mouse emulation

On the `Controls` screen in the RetroArch menu, there are 2 mouse emulation modes available by switching the `Device Type` setting of any port with left/right. There is `Mouse with Left Analog Stick` and `Mouse with Right Analog Stick`.

- When choosing left stick, the face buttons (B/A) will be used as left/right mouse buttons.
- For the right stick, the shoulder buttons L/R will be used as left/right mouse buttons.
- The X button is the middle mouse button and L2/R2 can be used to speed up or slow down mouse movement.

There is also the core option `Input > Mouse Sensitivity` to increase/decrease mouse movement speed.

### Keyboard emulation

For games that don't have automated controller mappings or are not detected successfully, by default the option `Input > Bind Unused Buttons` will assign all unused buttons on the game pad with some default key.

If the `Device Type` on the `Controls` screen in the RetroArch menu of any port is set to `Generic Keyboard Bindings`, all buttons will be assigned with a keyboard key.

Additionally, it can be set to `Custom Keyboard Bindings` which will allow fully customizable mappings.

### Joystick emulation

There are multiple DOS era joysticks available as mappings on the `Controls` screen in the RetroArch menu.

`Gravis GamePad (1 D-Pad, 4 Buttons)`, `Basic joystick (2 Axes, 2 Buttons)`, `ThrustMaster Flight Stick (3 axes, 4 buttons, 1 hat)` and `Control both DOS joysticks (4 axes, 4 buttons)`.

These can be assigned to any port and the button layout can be remapped as with any other device type.

### On-screen keyboard

![DOSBox Pure On-Screen Keyboard](https://github.com/schellingb/dosbox-pure/blob/main/images/onscreenkeyboard.png)

By pressing L3 on the gamepad (usually by pushing in the left analog stick), the on-screen keyboard will open. The cursor can be controlled with the controller (or mouse or keyboard) and L2/R2 will speed up or slow down the move speed.

By clicking a key on the on-screen keyboard for 0.5 seconds, it will be held down, clicking it again will release it. This allows multiple keys to be pressed at the same time through the on-screen-keyboard.

!!!tip
	Depending on your controller, you might experience a slight drift (the cursor moving on its own). Fix this by going to `Settings > Input` in RetroArch and nudging the option `Analog Deadzone`up a bit (e.g., 0.3).

If the cursor is moved above the middle of the screen, the keyboard will move to the top. The button can be remapped in the controls menu and there is also a core option to disable it entirely.

![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) Note, the button can't be remapped (at present?) when using `Custom Keyboard Bindings`. cf. [bug #25](https://github.com/schellingb/dosbox-pure/issues/25)

## Joypad (RetroPad)
!!!tip
	There should be a run-down here of how the DOSBox Pure-specific features are mapped, e.g. the on-screen keyboard or the button combos to do things like force-open the start menu. Also, perhaps a quick guide to remapping. I noticed that only the custom mapping feature (cf. [bug #25](https://github.com/schellingb/dosbox-pure/issues/25) and [bug #14](https://github.com/schellingb/dosbox-pure/issues/14)) allows mapping of any keyboard key to any button, while it doesn't allow mapping the on-screen keyboard to a button. The others, like "Generic Keyboard Mapping", do allow mapping the on-screen keyboard, but they don't offer the full range of keyboard keys. For instance, in Generic Mapping, a user wouldn't be able to map the tab key to a controller button; they can only shuffle around the pre-defined keys.

![#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) (This whole section needs to be double-checked/amended)

| Input descriptors for Gamepad 2 Button | RetroPad Inputs                             |
|----------------------------------------|---------------------------------------------|
| Button 2                               | ![](../image/retropad/retro_b.png)          |
| Button 1                               | ![](../image/retropad/retro_y.png)          |
| D-Pad Up                               | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                             | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                             | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                            | ![](../image/retropad/retro_dpad_right.png) |

| Input descriptors for Gamepad 4 Button | RetroPad Inputs                             |
|----------------------------------------|---------------------------------------------|
| Button 3                               | ![](../image/retropad/retro_b.png)          |
| Button 1                               | ![](../image/retropad/retro_y.png)          |
| D-Pad Up                               | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down                             | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left                             | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right                            | ![](../image/retropad/retro_dpad_right.png) |
| Button 4                               | ![](../image/retropad/retro_a.png)          |
| Button 2                               | ![](../image/retropad/retro_x.png)          |

| Input descriptors for Joystick 2 Button | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Button 2                                | ![](../image/retropad/retro_b.png)             |
| Button 1                                | ![](../image/retropad/retro_y.png)             |
| Left Analog X                           | ![](../image/retropad/retro_left_stick.png) X  |
| Left Analog Y                           | ![](../image/retropad/retro_left_stick.png) Y  |

| Input descriptors for Joystick 4 Button | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Button 3                                | ![](../image/retropad/retro_b.png)             |
| Button 1                                | ![](../image/retropad/retro_y.png)             |
| Button 4                                | ![](../image/retropad/retro_a.png)             |
| Button 2                                | ![](../image/retropad/retro_x.png)             |
| Left Analog X                           | ![](../image/retropad/retro_left_stick.png) X  |
| Left Analog Y                           | ![](../image/retropad/retro_left_stick.png) Y  |
| Right Analog X                          | ![](../image/retropad/retro_right_stick.png) X |
| Right Analog Y                          | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for Keyboard - Port 1 | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Kbd Up                                  | ![](../image/retropad/retro_dpad_up.png)       |
| Kbd Down                                | ![](../image/retropad/retro_dpad_down.png)     |
| Kbd Left                                | ![](../image/retropad/retro_dpad_left.png)     |
| Kbd Right                               | ![](../image/retropad/retro_dpad_right.png)    |
| Esc                                     | ![](../image/retropad/retro_select.png)        |
| Enter                                   | ![](../image/retropad/retro_start.png)         |
| Space                                   | ![](../image/retropad/retro_x.png)             |
| Left Shift                              | ![](../image/retropad/retro_y.png)             |
| Left Ctrl                               | ![](../image/retropad/retro_b.png)             |
| Left Alt                                | ![](../image/retropad/retro_a.png)             |
| 1                                       | ![](../image/retropad/retro_l1.png)            |
| 2                                       | ![](../image/retropad/retro_r1.png)            |
| 3                                       | ![](../image/retropad/retro_l2.png)            |
| 4                                       | ![](../image/retropad/retro_r2.png)            |
| F1                                      | ![](../image/retropad/retro_l3.png)            |
| F2                                      | ![](../image/retropad/retro_r3.png)            |
| Kbd Left/Right                          | ![](../image/retropad/retro_left_stick.png) X  |
| Kbd Up/Down                             | ![](../image/retropad/retro_left_stick.png) Y  |
| Home/End                                | ![](../image/retropad/retro_right_stick.png) X |
| PgUp/PgDn                               | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for Keyboard - Port 2 | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| 8                                       | ![](../image/retropad/retro_dpad_up.png)       |
| 2                                       | ![](../image/retropad/retro_dpad_down.png)     |
| 4                                       | ![](../image/retropad/retro_dpad_left.png)     |
| 6                                       | ![](../image/retropad/retro_dpad_right.png)    |
| Period                                  | ![](../image/retropad/retro_select.png)        |
| Enter                                   | ![](../image/retropad/retro_start.png)         |
| 5                                       | ![](../image/retropad/retro_x.png)             |
| 1                                       | ![](../image/retropad/retro_y.png)             |
| 0                                       | ![](../image/retropad/retro_b.png)             |
| 3                                       | ![](../image/retropad/retro_a.png)             |
| 7                                       | ![](../image/retropad/retro_l1.png)            |
| 9                                       | ![](../image/retropad/retro_r1.png)            |
| Minus                                   | ![](../image/retropad/retro_l2.png)            |
| Plus                                    | ![](../image/retropad/retro_r2.png)            |
| Divide                                  | ![](../image/retropad/retro_l3.png)            |
| Multiply                                | ![](../image/retropad/retro_r3.png)            |
| 4/6                                     | ![](../image/retropad/retro_left_stick.png) X  |
| 8/2                                     | ![](../image/retropad/retro_left_stick.png) Y  |
| Minus/Plus                              | ![](../image/retropad/retro_right_stick.png) X |
| Divide/Multiply                         | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for Keyboard - Port 3 | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Q                                       | ![](../image/retropad/retro_dpad_up.png)       |
| A                                       | ![](../image/retropad/retro_dpad_down.png)     |
| Z                                       | ![](../image/retropad/retro_dpad_left.png)     |
| X                                       | ![](../image/retropad/retro_dpad_right.png)    |
| G                                       | ![](../image/retropad/retro_select.png)        |
| H                                       | ![](../image/retropad/retro_start.png)         |
| D                                       | ![](../image/retropad/retro_x.png)             |
| F                                       | ![](../image/retropad/retro_y.png)             |
| C                                       | ![](../image/retropad/retro_b.png)             |
| S                                       | ![](../image/retropad/retro_a.png)             |
| W                                       | ![](../image/retropad/retro_l1.png)            |
| E                                       | ![](../image/retropad/retro_r1.png)            |
| R                                       | ![](../image/retropad/retro_l2.png)            |
| T                                       | ![](../image/retropad/retro_r2.png)            |
| V                                       | ![](../image/retropad/retro_l3.png)            |
| B                                       | ![](../image/retropad/retro_r3.png)            |
| Z/X                                     | ![](../image/retropad/retro_left_stick.png) X  |
| Q/A                                     | ![](../image/retropad/retro_left_stick.png) Y  |
| J/L                                     | ![](../image/retropad/retro_right_stick.png) X |
| I/K                                     | ![](../image/retropad/retro_right_stick.png) Y |

| Input descriptors for Keyboard - Port 4 | RetroPad Inputs                                |
|-----------------------------------------|------------------------------------------------|
| Backspace                               | ![](../image/retropad/retro_dpad_up.png)       |
| Backslash                               | ![](../image/retropad/retro_dpad_down.png)     |
| Semicolon                               | ![](../image/retropad/retro_dpad_left.png)     |
| Quote                                   | ![](../image/retropad/retro_dpad_right.png)    |
| O                                       | ![](../image/retropad/retro_select.png)        |
| P                                       | ![](../image/retropad/retro_start.png)         |
| Slash                                   | ![](../image/retropad/retro_x.png)             |
| Right Shift                             | ![](../image/retropad/retro_y.png)             |
| Right Ctrl                              | ![](../image/retropad/retro_b.png)             |
| Right Alt                               | ![](../image/retropad/retro_a.png)             |
| Left Bracket                            | ![](../image/retropad/retro_l1.png)            |
| Right Bracket                           | ![](../image/retropad/retro_r1.png)            |
| Comma                                   | ![](../image/retropad/retro_l2.png)            |
| Period                                  | ![](../image/retropad/retro_r2.png)            |
| Minus                                   | ![](../image/retropad/retro_l3.png)            |
| Equals                                  | ![](../image/retropad/retro_r3.png)            |
| Semicolon/Quote                         | ![](../image/retropad/retro_left_stick.png) X  |
| Backspace/Backslash                     | ![](../image/retropad/retro_left_stick.png) Y  |
| Left/Right Bracket                      | ![](../image/retropad/retro_right_stick.png) X |
| Minus/Equals                            | ![](../image/retropad/retro_right_stick.png) Y |

!!!tip
	Above are the default keyboard to RetroPad mappings for all 4 ports. Note that by using the Quick Menu, you can choose from various presets in the `Controls` > `Port # Controls` section.

| Input descriptors for Emulated mouse | RetroPad Inputs                                |
|--------------------------------------|------------------------------------------------|
| Emulated Mouse Right Click           | ![](../image/retropad/retro_l2.png)            |
| Emulated Mouse Left Click            | ![](../image/retropad/retro_r2.png)            |
| Emulated Mouse X Axis                | ![](../image/retropad/retro_right_stick.png) X |
| Emulated Mouse Y Axis                | ![](../image/retropad/retro_right_stick.png) Y |

## Keyboard

| RetroKeyboard Inputs          | Keyboard           |
|-------------------------------|--------------------|
| Keyboard Backspace            | Backspace          |
| Keyboard Tab                  | Tab                |
| Keyboard Return               | Enter              |
| Keyboard Pause                | Pause              |
| Keyboard Escape               | Escape             |
| Keyboard Space                | Space              |
| Keyboard '                    | '                  |
| Keyboard ,                    | ,                  |
| Keyboard .                    | .                  |
| Keyboard /                    | /                  |
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
| Keyboard ;                    | ;                  |
| Keyboard -                    | -                  |
| Keyboard =                    | =                  |
| Keyboard [                    | [                  |
| Keyboard \                    | \                  |
| Keyboard ]                    | ]                  |
| Keyboard `                    | `                  |
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
| Keyboard Delete               | Delete             |
| Keyboard Numpad 0             | Numpad 0           |
| Keyboard Numpad 1             | Numpad 1           |
| Keyboard Numpad 2             | Numpad 2           |
| Keyboard Numpad 3             | Numpad 3           |
| Keyboard Numpad 4             | Numpad 4           |
| Keyboard Numpad 5             | Numpad 5           |
| Keyboard Numpad 6             | Numpad 6           |
| Keyboard Numpad 7             | Numpad 7           |
| Keyboard Numpad 8             | Numpad 8           |
| Keyboard Numpad 9             | Numpad 9           |
| Keyboard Numpad .             | Numpad .           |
| Keyboard Numpad /             | Numpad /           |
| Keyboard Numpad *             | Numpad *           |
| Keyboard Numpad -             | Numpad -           |
| Keyboard Numpad +             | Numpad +           |
| Keyboard Numpad Enter         | Numpad Enter       |
| Keyboard Up                   | Up                 |
| Keyboard Down                 | Down               |
| Keyboard Right                | Left               |
| Keyboard Left                 | Right              |
| Keyboard Insert               | Insert             |
| Keyboard Home                 | Home               |
| Keyboard End                  | End                |
| Keyboard Page Up              | Page Up            |
| Keyboard Page Down            | Page Down          |
| Keyboard F1                   | F1                 |
| Keyboard F2                   | F2                 |
| Keyboard F3                   | F3                 |
| Keyboard F4                   | F4                 |
| Keyboard F5                   | F5                 |
| Keyboard F6                   | F6                 |
| Keyboard F7                   | F7                 |
| Keyboard F8                   | F8                 |
| Keyboard F9                   | F9                 |
| Keyboard F10                  | F10                |
| Keyboard F11                  | F11                |
| Keyboard F12                  | F12                |
| Keyboard Num Lock             | Num Lock           |
| Keyboard Caps Lock            | Caps Lock          |
| Keyboard Scroll Lock          | Scroll Lock        |
| Keyboard Right Shift          | Right Shift        |
| Keyboard Left Shift           | Left Shift         |
| Keyboard Right Control        | Right Control      |
| Keyboard Left Control         | Left Control       |
| Keyboard Right Alt            | Right Alt          |
| Keyboard Left Alt             | Left Alt           |
| Keyboard Sys Req              | Print Screen       |

## Compatibility

### Boppin'
If the game quickly cycles through the main menu options indefinitely, open the RetroArch Quick Menu and select Controls > Port 2 Controls > Device Type > Disabled.

## External Links

- [Official DOSBox Website](https://www.dosbox.com/)
- [Official/Original DOSBox SourceForge Repository](https://sourceforge.net/projects/dosbox/)
- [Libretro DOSBox Pure info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dosbox_pure_libretro.info)
![#f03c15]
- [Libretro DOSBox Pure GitHub Repository](https://github.com/schellingb/dosbox-pure)
- [Report Libretro DOSBox Pure core Issues Here](https://github.com/schellingb/dosbox-pure/issues)
