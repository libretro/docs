# Doom (PrBoom)

## Background

Port of prboom to libretro - plays Doom, Doom II, Final Doom and other Doom IWAD mods. 

### Author(s)

Florian Schulze

## Contribute to this documentation

In order to propose improvements to this document, [visit it's corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/library/prboom.md). Changes are proposed using "Pull Requests."

## See also

[Quake 1 (TyrQuake)](https://docs.libretro.com/library/tyrquake.md/)

## License

GPLv2

## Extensions

*Content that can be loaded by the PrBoom core have the following file extensions.*

wad|iwad

## Database(s)

*RetroArch database(s) that are associated with the PrBoom core*

* DOOM

## Features

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controllers       | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |

The PrBoom core's directory name is 'PrBoom'

Game data is saved/loaded to and from the folder where the loaded content is.

The Retroarch port of PrBoom is not able to play the music files inside the wad files (they are in a proprietary midi format).
To have music, you have to put the files in mp3 format inside the content's directory.

## Loading content

PrBoom can load wad or iwad files. The PrBoom core requires data ROM ['prboom.wad'](https://github.com/libretro/libretro-prboom/blob/master/prboom.wad) inside the loaded content's directory.

## Core options

*The PrBoom core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.*

- **Internal resolution** (**320x200**/640x400/960x600/1280x800/1600x1000/1920x1200): Configure the resolution.

??? note "Internal resolution - 320x200"
	![](..\image\core\prboom\internal_resolution_320x200.png)
	
??? note "Internal resolution - 1920x1200"
	![](..\image\core\prboom\internal_resolution_1920x1200.png)	

- **Mouse active when using Gamepad** (**Off**/On): Allows you to use mouse inputs even when the User 1 Device Type is set to RetroPad.

## Controllers

*The PrBoom core supports the following controller setting(s), bolded controller settings are the default for the specified user(s):*

### User 1 Device Type(s)

* **RetroPad** - Joypad

* RetroKeyboard/Mouse - Keyboard + Mouse

### User 2 - 16 Device Type(s)

* RetroPad - Joypad

### Controllers graph

| User 1 Remap descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| Strafe                   | ![](../image/retropad/retro_b.png)          |
| Run                      | ![](../image/retropad/retro_y.png)          |
| Show/Hide Map            | ![](../image/retropad/retro_select.png)     |
| Settings                 | ![](../image/retropad/retro_start.png)      |
| D-Pad Up                 | ![](../image/retropad/retro_dpad_up.png)    |
| D-Pad Down               | ![](../image/retropad/retro_dpad_down.png)  |
| D-Pad Left               | ![](../image/retropad/retro_dpad_left.png)  |
| D-Pad Right              | ![](../image/retropad/retro_dpad_right.png) |
| Use                      | ![](../image/retropad/retro_a.png)          |
| Fire                     | ![](../image/retropad/retro_x.png)          |
| Strafe Left              | ![](../image/retropad/retro_l1.png)         |
| Strafe Right             | ![](../image/retropad/retro_r1.png)         |
| Previous Weapon          | ![](../image/retropad/retro_l2.png)         |
| Next Weapon              | ![](../image/retropad/retro_r2.png)         |

| Weapons  | RetroKeyboard/Mouse |
|----------|---------------|
| Fist     | ![Keyboard_Black_1](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_1.png) |
| Pistol   | ![Keyboard_Black_2](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_2.png) |
| Shotgun  | ![Keyboard_Black_3](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_3.png) |
| Chain    | ![Keyboard_Black_4](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_4.png) |
| Rocket   | ![Keyboard_Black_5](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_5.png) |
| Chainsaw | ![Keyboard_Black_8](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_8.png) |
| Best     | ![Keyboard_Black_8](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_0.png) |
| Fire     | ![Keyboard_Black_Ctrl](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Ctrl.png) or ![Retro_Left](images\RetroMouse\Retro_Left.png) |
| Next/Previous Weapon | Mouse scrollwheel |

| Movement | RetroKeyboard/Mouse |
|----------|---------------------|
| Forward  | ![Keyboard_Black_Arrow_Up](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Arrow_Up.png) or Mouse Button 3 |
| Backward | ![Keyboard_Black_Arrow_Down](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Arrow_Down.png) |
| Turn Left | ![Keyboard_Black_Arrow_Left](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Arrow_Left.png) |
| Turn Right | ![Keyboard_Black_Arrow_Right](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Arrow_Right.png) |
| Run | ![Keyboard_Black_Shift](images/Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Shift.png) |
| Strafe Left | ![Keyboard_Black_Mark_Left](images/Button_Pack/Keyboard_&_Mouse\Dark\Keyboard_Black_Mark_Left.png) |
| Strafe Right | ![Keyboard_Black_Mark_Right](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Mark_Right.png) |
| Strafe       | ![Keyboard_Black_Alt](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Alt.png) or ![Retro_Right](images\RetroMouse\Retro_Right.png) |
| Autorun      | ![Keyboard_Black_Caps_Lock](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Caps_Lock.png) |
| 180 Turn     | / |
| Use          | ![Keyboard_Black_Space](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Space.png) or Mouse Button 3 |

| Game | RetroKeyboard/Mouse |
|------|---------------------|
| Save | ![Keyboard_Black_F2](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F2.png) |
| Load | ![Keyboard_Black_F3](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F3.png) |
| Quicksave | ![Keyboard_Black_F6](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F6.png) |
| End Game | ![Keyboard_Black_F7](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F7.png) |
| Quickload | ![Keyboard_Black_F9](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F9.png) |
| Quit      | ![Keyboard_Black_F10](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F10.png) |

| Screen | RetroKeyboard/Mouse |
|--------|---------------------|
| Help   | ![Keyboard_Black_F1](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F1.png) |
| Menu   | ![Keyboard_Black_Esc](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Esc.png) |
| Setup  | ![Keyboard_Black_Home](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Home.png) |
| Pause  | Pause |
| Automap | ![Keyboard_Black_Tab](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Tab.png) |
| Sound Volume | ![Keyboard_Black_F4](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F4.png) |
| Hud | ![Keyboard_Black_F5](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F5.png) |
| Messages | ![Keyboard_Black_F8](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F8.png) |
| Gamma Fix | ![Keyboard_Black_F11](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F11.png) |
| Spy | ![Keyboard_Black_F12](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F12.png) |
| Larger View | ![Keyboard_Black_Plus](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Plus.png) |
| Smaller View | ![Keyboard_Black_Space](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Minus.png) |

| Automap | RetroKeyboard/Mouse |
|---------|---------------------|
| Follow Mode | ![Keyboard_Black_F](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_F.png) |
| Zoom In     | ![Keyboard_Black_Plus](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Plus.png) |
| Zoom Out    | ![Keyboard_Black_Minus](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_Minus.png) |
| Mark Place  | ![Keyboard_Black_M](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_M.png) |
| Clear Marks | ![Keyboard_Black_C](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_C.png) |
| Full/Zoom   | ![Keyboard_Black_O](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_O.png) |
| Grid        | ![Keyboard_Black_G](images\Button_Pack\Keyboard_&_Mouse\Dark\Keyboard_Black_G.png) |

## External Links

* [Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/prboom_libretro.info)
* [Libretro Repository](https://github.com/libretro/libretro-prboom)
* [Report Core Issues Here](https://github.com/libretro/libretro-meta)
* [Official Website](http://prboom.sourceforge.net/)
* [Official SourceForge Repository](http://sourceforge.net/projects/prboom/)
