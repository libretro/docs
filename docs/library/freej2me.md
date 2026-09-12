# Mobile - J2ME (FreeJ2ME)

## Background

FreeJ2ME is an emulator for J2ME (Java 2 Micro Edition), the platform the games on pre-smartphone mobile phones were written for. It implements MIDP 2.0 along with the manufacturer extensions those games reached for - Nokia's, Siemens', Motorola's - and runs the .jar the phone would have run.

The core is a front end rather than a reimplementation: it starts FreeJ2ME's own Java application and exchanges video, input and settings with it. **A Java runtime has to be installed on the machine**, and `freej2me-lr.jar` has to be in the frontend's system directory - the core cannot supply either.

### Author/License

The FreeJ2ME core has been authored by

- David Richardson
- Saket Dandawate

The FreeJ2ME core is licensed under

- [GPLv3](https://github.com/hex007/freej2me/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FreeJ2ME core have the following file extensions:

- .jar

## Databases

RetroArch database(s) that are associated with the FreeJ2ME core:

- [Mobile - J2ME](https://github.com/libretro/libretro-database/blob/master/dat/Mobile%20-%20J2ME.dat)

## BIOS

The FreeJ2ME core requires the emulator's own Java application, which is not part of the core and has to be placed in the frontend's system directory by hand. It is built from the same repository as the core (`make -f Makefile.libretro` produces both) and published with its releases.

| Filename          | Description                                    |
|-------------------|------------------------------------------------|
| freej2me-lr.jar   | FreeJ2ME's Java application. Required.          |

The core also needs a Java runtime installed on the system: it launches `java -jar` (`javaw` on Windows), so a machine without one loads the core and then stops with nothing on screen.

## Features

Frontend-level settings or features that the FreeJ2ME core respects.

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
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

Saves are written by the Java application into its own directory under the frontend's save directory, so they survive, but they do not go through the frontend's save handling - hence no save states, no rewind and no netplay.

### Directories

The FreeJ2ME core's library name is 'FreeJ2ME'

### Geometry and timing

- The FreeJ2ME core's core provided FPS is 30
- The FreeJ2ME core's base and maximum size follow the **Phone Resolution** core option, 240x320 by default
- The FreeJ2ME core's supported pixel format is XRGB8888
- Sound is produced by the Java application itself rather than sent through the frontend, so the frontend's audio settings do not apply to it

## Core options

The FreeJ2ME core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Phone Resolution (Core Restart required)** [freej2me_resolution] (96x65|96x96|104x80|128x128|132x176|128x160|176x208|176x220|208x208|**240x320**|320x240|240x400|352x416|360x640|640x360|480x800|800x480)

	Not all J2ME games run at the same screen resolution. If the game's window is too small, or has sections of it cut off, try increasing or decreasing the internal screen resolution.

- **Rotate Screen** [freej2me_rotate] (**off**|on)

	Some games, especially ones that support touch controls, tend to expect the screen to be rotated. This option comes in handy on those cases.

- **Phone Key Layout** [freej2me_phone] (**Standard**|Nokia|Siemens|Motorola)

	Due to the different mobile phone manufacturers on the J2ME space, it's usual to have some games expecting a certain phone's key layout like Nokia's for example. If a game is not responding to the inputs correctly, try changing this option.

- **Game FPS Limit** [freej2me_fps] (Auto|**60**|30|15)

	The J2ME platform allows a great deal of freedom when dealing with synchronization, so while many games are locked to a certain framerate internally, others allow for variable framerates when uncapped at the cost of higher CPU usage, and some even run faster than intended when they get over a certain FPS threshold. Use the option that best suits the game at hand.

- **Virtual Phone Sound** [freej2me_sound] (**on**|off)

	Enables or disables the virtual phone's ability to load and play audio samples/tones. Some games require support for codecs not yet implemented, or have issues that can be worked around by disabling audio in FreeJ2ME (ID Software games such as DOOM II RPG having memory leaks with MIDI samples being one example). If a game doesn't run or has issues during longer sessions, try disabling this option.

- **Pointer Type** [freej2me_pointertype] (**Mouse**|Touch|None)

	This option sets the type of pointer used by FreeJ2ME, can be set to use a Mouse, a Touchscreen or neither. Please note that only Mouse supports drag and drop motions

- **Pointer X Speed** [freej2me_pointerxspeed] (2|**4**|8|16)

	This option sets the horizontal speed of the on-screen pointer when controlled by a joypad's analog stick.

- **Pointer Y Speed** [freej2me_pointeryspeed] (2|**4**|8|16)

	This option sets the vertical speed of the on-screen pointer when controlled by a joypad's analog stick.

- **Pointer Inner Color** [freej2me_pointerinnercolor] (Black|Red|Green|Blue|Yellow|Pink|Cyan|**White**)

	This option sets the on-screen pointer's inner color.

- **Pointer Outline Color** [freej2me_pointeroutercolor] (**Black**|Red|Green|Blue|Yellow|Pink|Cyan|White)

	This option sets the on-screen pointer's outline color.

- **Pointer Click Indicator Color** [freej2me_pointerclickcolor] (Black|Red|Green|Blue|**Yellow**|Pink|Cyan|White)

	This option sets the on-screen pointer's click indicator color.

## Joypad

| RetroPad Inputs                                | FreeJ2ME Inputs         |
|------------------------------------------------|-------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Arrow Up, Num 2         |
| ![](../image/retropad/retro_dpad_down.png)     | Arrow Down, Num 8       |
| ![](../image/retropad/retro_dpad_left.png)     | Arrow Left, Num 4       |
| ![](../image/retropad/retro_dpad_right.png)    | Arrow Right, Num 6      |
| ![](../image/retropad/retro_b.png)             | Num 7                   |
| ![](../image/retropad/retro_a.png)             | Num 9                   |
| ![](../image/retropad/retro_x.png)             | Num 0                   |
| ![](../image/retropad/retro_y.png)             | Num 5, Pointer Click    |
| ![](../image/retropad/retro_l1.png)            | Num 1                   |
| ![](../image/retropad/retro_r1.png)            | Num 3                   |
| ![](../image/retropad/retro_l2.png)            | Key *                   |
| ![](../image/retropad/retro_r2.png)            | Key #                   |
| ![](../image/retropad/retro_select.png)        | Left Options Key        |
| ![](../image/retropad/retro_start.png)         | Right Back Key          |
| ![](../image/retropad/retro_right_stick.png) X | Pointer Horizontal Move |
| ![](../image/retropad/retro_right_stick.png) Y | Pointer Vertical Move   |

The right analog stick moves the on-screen pointer for games that expect a touchscreen or a mouse; **Pointer Type** decides whether it behaves as a mouse, as a touchscreen, or is turned off.

## External Links

- [Official FreeJ2ME Github Repository](https://github.com/hex007/freej2me)
- [Libretro FreeJ2ME Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/freej2me_libretro.info)
