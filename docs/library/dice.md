# DICE

## Background

DICE is a Discrete Integrated Circuit Emulator. It emulates computer systems
that lack any type of CPU, consisting only of discrete logic components.

dice-libretro is a Libretro port of DICE, to run in RetroArch.


The DICE core has been authored by:

- Adam B & DICE Team (Standalone DICE)
- Ken Mitton

The DICE core is licensed under:

- [GPLv3](https://github.com/mittonk/dice-libretro/blob/main/LICENSE.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

Minimal.

## How to start the DICE core:

Some games use zipped ROMs and launch similarly to MAME or FBNeo --- filename is
important, see table at
https://github.com/mittonk/dice-libretro/?tab=readme-ov-file#usage

Please do not attempt to contact the DICE team to request ROM files.

Some games (pong, breakout, pinpong, etc) do not have any ROM on the board at
all. For these, copy the dummy launcher file from
[dummy_files](https://github.com/mittonk/dice-libretro/tree/main/dummy_files)
to your ROM
folder; these have a correct name (for example, pong.dmy) that will get
RetroArch to set up lr-dice for the correct game.

## BIOS

None.

## Extensions

Content that can be loaded by the DICE core have the following file extensions:

- .zip
- .dmy

.dmy files are used for games without any ROM component, see "How to start the
DICE core" above.

RetroArch database(s) that are associated with the DICE core:

- [DICE](https://github.com/libretro/libretro-database/blob/master/rdb/DICE.rdb)

## Features

Frontend-level settings or features that the DICE core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✔         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

None.

## Geometry and timing

Varies based on individual game, mostly around 640x246, 60 FPS.

## Usage

Again, see .dmy files for games that do not use read-only memory.

## Core options

There are numerous options around using mice to simulate spinners / paddle
controllers, see
[mouse-support](https://github.com/mittonk/dice-libretro/?tab=readme-ov-file#mouse-support).

- Easy: One mouse can be used for Paddle 1. Use "Core Options -> Use mouse pointer for paddle 1". You'll still want a keyboard or gamepad handy to have enough buttons.

- Somewhat advanced: Multiple mice are supported using certain libretro drivers on Linux and Windows, see [retromouse.md](https://github.com/mittonk/dice-libretro/blob/main/retromouse.md).



## User 1 device types

The DICE core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- **RetroPad**
- RetroPad w/Analog
- Mouse

## Joypad

Most games are playable with just a joypad.  Controls vary by game.

| RetroPad Inputs                                | User # input descriptors | (Device name) Inputs      |
|------------------------------------------------|--------------------------|---------------------------|
| ![](../image/retropad/retro_b.png)             | Button 1                 | -                         |
| ![](../image/retropad/retro_y.png)             | Button 3                 | -                         |
| ![](../image/retropad/retro_select.png)        | Coin                     | -                         |
| ![](../image/retropad/retro_start.png)         | Start                    | -                         |
| ![](../image/retropad/retro_dpad_up.png)       | Up                       | -                         |
| ![](../image/retropad/retro_dpad_down.png)     | Down                     | -                         |
| ![](../image/retropad/retro_dpad_left.png)     | Left                     | -                         |
| ![](../image/retropad/retro_dpad_right.png)    | Right                    | -                         |
| ![](../image/retropad/retro_a.png)             | Button 2                 | -                         |
| ![](../image/retropad/retro_x.png)             |                          | -                         |
| ![](../image/retropad/retro_l1.png)            | Dollar                   | -                         |
| ![](../image/retropad/retro_r1.png)            |                          | -                         |
| ![](../image/retropad/retro_l2.png)            |                          | -                         |
| ![](../image/retropad/retro_r2.png)            |                          | -                         |
| ![](../image/retropad/retro_l3.png)            |                          | -                         |
| ![](../image/retropad/retro_r3.png)            |                          | -                         |
| ![](../image/retropad/retro_left_stick.png) X  | Paddle                   | -                         |
| ![](../image/retropad/retro_left_stick.png) Y  | Paddle                   | -                         |
| ![](../image/retropad/retro_right_stick.png) X |                          | -                         |
| ![](../image/retropad/retro_right_stick.png) Y |                          | -                         |

## Mouse

| RetroMouse Inputs                                     | (Device name) Inputs      |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Paddle, see [mouse-support](https://github.com/mittonk/dice-libretro/?tab=readme-ov-file#mouse-support)                         |
| ![](../image/retromouse/retro_left.png) Mouse 1       | -                         |
| ![](../image/retromouse/retro_right.png) Mouse 2      | -                         |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | -                         |
| Mouse 4                                               | -                         |
| Mouse 5                                               | -                         |
| Wheel Up                                              | -                         |
| Wheel Down                                            | -                         |
| Wheel Left                                            | -                         |
| Wheel Right                                           | -                         |

## Compatibility

|	Name	|	Base filename	|	Publisher	|	Year |	Needs ROM?	|
| ----  | ------------- | --------- | ---- | -------- |
|	Anti-Aircraft	|	antiaircraft	|	Atari	|	1975	|	x	|
|	Attack	|	attack	|	Exidy	|	1977	|	x	|
|	Breakout	|	breakout	|	Atari	|	1976	|		|
|	Clean Sweep	|	cleansweep	|	Ramtek	|	1974	|	x	|
|	Crash 'N Score	|	crashnscore	|	Atari	|	1975	|	x	|
|	Crossfire	|	crossfire	|	Atari	|	1975	|		|
|	Gotcha	|	gotcha	|	Atari	|	1973	|		|
|	Hi-Way	|	hiway	|	Atari	|	1975	|		|
|	Indy 4	|	indy4	|	Atari	|	1976	|	x	|
|	Jet Fighter	|	jetfighter	|	Atari	|	1975	|	x	|
|	Pin Pong	|	pinpong	|	Atari	|	1974	|		|
|	Pong	|	pong	|	Atari	|	1972	|		|
|	Pong Doubles	|	pongdoubles	|	Atari	|	1973	|		|
|	Quadrapong	|	quadrapong	|	Atari	|	1974	|		|
|	Rebound	|	rebound	|	Atari	|	1974	|		|
|	Shark Jaws	|	sharkjaws	|	Atari	|	1975	|	x	|
|	Space Race	|	spacerace	|	Atari	|	1973	|		|
|	Steeplechase	|	steeplechase	|	Atari	|	1975	|	x	|
|	Stunt Cycle	|	stuntcycle	|	Atari	|	1976	|	x	|
|	TV Basketball	|	tvbasketball	|	Midway	|	1974	|		|
|	Wipe Out	|	wipeout	|	Ramtek	|	1974	|	x	|


## External Links

- [Original DICE Website](https://adamulation.blogspot.com/) (inactive)
- [Original DICE Repository](https://sourceforge.net/projects/dice/) (inactive)
- [DirtBagXon's DICE Repository](https://github.com/DirtBagXon/DICE)
- [Libretro DICE Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/dice.info)
- [Libretro DICE (Website name)
  Repository](https://github.com/mittonk/dice-libretro)
- [Report Libretro DICE Core Issues
  Here](https://github.com/mittonk/dice-libretro/issues)

## (Related cores)

MAME has some overlap (Pong, for example).
