# Mattel - Intellivision (FreeIntv)

## Background

FreeIntv is a libretro emulation core for the Mattel Intellivision designed to be compatible with joypads from the SNES era forward even if they originally required a number pad.

!!! attention
	FreeIntv does not currently emulate Entertainment Computer System (ECS) functionality. Contributions to the source are welcome!

### Author/License

The FreeIntv core has been authored by

- David Richardson

The FreeIntv core is licensed under

- [GPLv3](https://github.com/libretro/FreeIntv/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FreeIntv core have the following file extensions:

- .int
- .rom
- .bin

## Databases

RetroArch database(s) that are associated with the FreeIntv core:

- [Mattel - Intellivision](https://github.com/libretro/libretro-database/blob/master/rdb/Mattel%20-%20Intellivision.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename   | Description              | md5sum                           |
|:----------:|:------------------------:|:--------------------------------:|
| exec.bin   | Executive ROM - Required | 62e761035cb657903761800f4437b8af |                               |
| grom.bin   | Graphics ROM - Required  | 0cd5946c6473e42e8e4c2137785e427f |                               |

## Features

Frontend-level settings or features that the FreeIntv core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✕         |
| Netplay (State based) | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✔         |
| Cheats (Cheats menu) | ✕         |
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

The FreeIntv core's directory name is 'FreeIntv'

### Geometry and timing

- The FreeIntv core's core provided FPS is 60
- The FreeIntv core's core provided sample rate is 44100 Hz
- The FreeIntv core's core provided aspect ratio is 11/7

## Controller overlays

Mattel Intellivision games were often meant to be played with game-specific cards overlaid on the numeric keypad. These overlays convey information which can be very useful in gameplay. Images of a limited selection of Intellivision titles are available at: [http://www.intellivisionlives.com/bluesky/games/instructions.shtml](http://www.intellivisionlives.com/bluesky/games/instructions.shtml)

## Controls

**Definitions:**

* **Mini-Keypad** - Allows the user to view and select keys from a small Intellivision pad in the lower corner of the display.
* **Controller Swap** - Some Intellivision games expect the left controller to be player one, others expect the right controller. This isn't a problem if you have two controllers (and don't mind juggling them) but users with only one controller or using a portable setup would be effectively locked out of some games. Controller Swap swaps the two controller interfaces so that the player does not have to physically swap controllers.

| RetroPad | FreeIntv Function |
| --- | --- |
| D-Pad| 8-way movement |
| Left Analog Stick | 16-way disc |
| Right Analog Stick | Keypad 1-9 |
| A | Right Action Button |
| B | Left Action Button |
| Y | Top Action Button |
| X | Use the Last Selected Intellivision Keypad Button. In Astrosmash, for example, you can leave "3" selected to enable instant access to hyperspace. |
| L/R | Activate the Mini-Keypad |
| LT | Keypad Clear |
| RT | Keypad Enter |
| Left Thumb | Keypad 0 |
| Right Thumb | Keypad 5 |
| Start | Pause Game |
| Select | Controller Swap |

## Compatibility

Awaiting description.

## External Links

- [Official FreeIntv Website](http://neocomputer.org/projects/freeintv/)
- [Libretro FreeIntv Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/freeintv_libretro.info)
- [Libretro FreeIntv Github Repository](https://github.com/libretro/FreeIntv)
- [Intellivision RetroPie Wiki page](https://github.com/RetroPie/RetroPie-Setup/wiki/Intellivision)
- [FreeIntv RetroPie Forums Topic](https://retropie.org.uk/forum/topic/15665/libretro-intellivision-emulator)
- [FreeIntv Libretro Forums Topic](https://forums.libretro.com/t/video-demonstration-of-the-new-freeintv-intellivision-core/14389)
- [Gameplay Videos](https://www.youtube.com/playlist?list=PLRbgg4gk_0Ie3IvIC1OLrsG-9qJ-RbP7r)
