# Mr.Boom (Bomberman)

## Background

Mr.Boom is an up to 8 player Bomberman clone ported to the libretro API.

The goal of the game is to bomb away your enemies and other players.

The Mr.Boom core has been authored by

- Remdy Software

The Mr.Boom core is licensed under

- [MIT](https://github.com/libretro/mrboom-libretro/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

The Mr.Boom core does not feature extension use. Just load and start the core.

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controllers       | ✔         |
| Remapping         | ✕         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |

The Mr.Boom core's directory name is 'Mr.Boom'

Save states are saved/loaded to and from where state files are stored.

### Geometry and timing

- The Mr. Boom core's core provided FPS is 60
- The Mr. Boom core's core provided sample rate is 48000 Hz
- The Mr. Boom core's core provided base width is 320
- The Mr. Boom core's core provided base height is 200
- The Mr. Boom core's core provided aspect ratio is 8/5 (native), 4/3 or 16/9

## Core options

*The Mr.Boom core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.*

- **Team mode** (**Selfie**/Color/Sex): Team mode color.

- **Monsters** (Off/**On**): Awaiting description. Enable or disable monsters.

??? note "Monsters - On"
	![](../image/core/mr_boom/monsters_on.png)

??? note "Monsters - Off"
	![](../image/core/mr_boom/monsters_off.png)

- **Drop bomb autofire** (**Off**/On): Enables Drop bomb autofire mode. Holding down the Drop bomb button will repeatedly use the Drop bomb action. (Potentially useful when used in conjunction with certain powerups)

## Controllers

*The Mr.Boom core supports the following controller setting(s), bolded controller settings are the default for the specified user(s):*

### User 1 - 16 Device Type(s)

* **RetroPad** - Joypad with analog

* RetroPad w/Analog - **There is no reason to switch to this.**

### Controllers graph

| RetroPad Inputs                                | Mr.Boom core inputs |
|------------------------------------------------|---------------------|
| ![](../image/retropad/retro_b.png)             | Drop Bomb/Join game                         |
| ![](../image/retropad/retro_select.png)        | Add a bomberman bot (while in the join game screen)                         |
| ![](../image/retropad/retro_start.png)         | Start game                         |
| ![](../image/retropad/retro_dpad_up.png)       | Up/Push bomb                         |
| ![](../image/retropad/retro_dpad_down.png)     | Down/Push bomb                         |
| ![](../image/retropad/retro_dpad_left.png)     | Left/Push bomb                         |
| ![](../image/retropad/retro_dpad_right.png)    | Right/Push bomb                         |
| ![](../image/retropad/retro_a.png)             | Detonate bomb (when you have the Remote control power)/Join game                         |
| ![](../image/retropad/retro_x.png)             | Jump (while riding a Kangaroo)/Join game)                         |

## External Links

* [Libretro Mr.Boom Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mrboom_libretro.info)
* [Libretro Mr.Boom Repository](https://github.com/libretro/mrboom-libretro)
* [Report Core Issues Here](https://github.com/libretro/libretro-meta)
* [Official Website](http://mrboom.mumblecore.org/)
* [Upstream Repository](https://github.com/Javanaise/mrboom-libretro)
