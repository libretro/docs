# The Powder Toy

## Background

Based upon the SDL version: [https://github.com/ThePowderToy/The-Powder-Toy](https://github.com/ThePowderToy/The-Powder-Toy)

Have you ever wanted to blow something up? Or maybe you always dreamt of operating an atomic power plant? Do you have a will to develop your own CPU? The Powder Toy lets you to do all of these, and even more!

The Powder Toy is a free physics sandbox game, which simulates air pressure and velocity, heat, gravity and a countless number of interactions between different substances! The game provides you with various building materials, liquids, gases and electronic components which can be used to construct complex machines, guns, bombs, realistic terrains and almost anything else. You can then mine them and watch cool explosions, add intricate wirings, play with little stickmen or operate your machine. You can browse and play thousands of different saves made by the community or upload your own - we welcome your creations!

There is a Lua API - you can automate your work or even make plugins for the game. The Powder Toy is free and the source code is distributed under the GNU General Public License, so you can modify the game yourself or help with development. TPT-LibRetro is compiled using cmake.

## Instructions

Click on the elements with the mouse and draw in the field, like in MS Paint. The rest of the game is learning what happens next.

#### How to start the The Powder Toy core:

- To start the The Powder Toy core, go to RetroArch's main menu screen. Select 'Load Core', then 'The Powder Toy'.

- Now, select 'Start Core'.

The content should now start running!

### Author/License

The The Powder Toy core has been authored by

- jselby
- Original TPT Contributors

The The Powder Toy core is licensed under

- [GPLv3](https://github.com/libretro/ThePowderToy/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the The Powder Toy core have the following file extensions:

- .cps

## Features

Frontend-level settings or features that the The Powder Toy core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✕         |
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

The The Powder Toy core's library name is 'The Powder Toy'

The The Powder Toy core saves/loads to/from these directories.

**Frontend's Save directory**

| File                       | Description                                       |
|:--------------------------:|:-------------------------------------------------:|
| The Powder Toy/Saves/*.cps | Simulations that have been saved to the computer. |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The The Powder Toy core's core provided FPS is 60
- The The Powder Toy core's core provided sample rate is 32000 Hz
- The The Powder Toy core's base width is (Base width)
- The The Powder Toy core's base height is (Base height)
- The The Powder Toy core's max width is (Max width)
- The The Powder Toy core's max height is (Max height)
- The The Powder Toy core's core provided aspect ratio is (Ratio)

## Controls

| Key                     | Action                                                          |
| ----------------------- | --------------------------------------------------------------- |
| TAB                     | Switch between circle/square/triangle brush                     |
| Space                   | Pause                                                           |
| Q / Esc                 | Quit                                                            |
| Z                       | Zoom                                                            |
| S                       | Save stamp (+ Ctrl when STK2 is out)                            |
| L                       | Load last saved stamp                                           |
| K                       | Stamp library                                                   |
| 1-9                     | Set view mode                                                   |
| P / F2                  | Save screenshot to .png                                         |
| E                       | Bring up element search                                         |
| F                       | Pause and go to next frame                                      |
| G                       | Increase grid size                                              |
| Shift + G               | Decrease grid size                                              |
| H                       | Show/Hide HUD                                                   |
| Ctrl + H / F1           | Show intro text                                                 |
| D / F3                  | Debug mode (+ Ctrl when STK2 is out)                            |
| I                       | Invert Pressure and Velocity map                                |
| W                       | Toggle gravity modes (+ Ctrl when STK2 is out)                  |
| Y                       | Toggle air modes                                                |
| B                       | Enter decoration editor menu                                    |
| Ctrl + B                | Toggle decorations on/off                                       |
| N                       | Toggle Newtonian Gravity on/off                                 |
| U                       | Toggle ambient heat on/off                                      |
| Ctrl + I                | Install powder toy, for loading saves/stamps by double clicking |
| ~                       | Console                                                         |
| =                       | Reset pressure and velocity map                                 |
| Ctrl + =                | Reset Electricity                                               |
| [                       | Decrease brush size                                             |
| ]                       | Increase brush size                                             |
| Alt + [                 | Decrease brush size by 1                                        |
| Alt + ]                 | Increase brush size by 1                                        |
| Ctrl + C/V/X            | Copy/Paste/Cut                                                  |
| Ctrl + Z                | Undo                                                            |
| Ctrl + Y                | Redo                                                            |
| Ctrl + Cursor drag      | Rectangle                                                       |
| Shift + Cursor drag     | Line                                                            |
| Middle click            | Sample element                                                  |
| Alt + Left click        | Sample element                                                  |
| Mouse scroll            | Change brush size                                               |
| Ctrl + Mouse scroll     | Change vertical brush size                                      |
| Shift + Mouse scroll    | Change horizontal brush size                                    |
| Shift + R               | Horizontal mirror for selected area when pasting stamps         |
| Ctrl + Shift + R        | Vertical mirror for selected area when pasting stamps           |
| R                       | Rotate selected area counterclockwise when pasting stamps       |

## External Links

- [Official The Powder Toy Website](http://powdertoy.co.uk/)
- [Official The Powder Toy Github Repository](https://github.com/ThePowderToy/The-Powder-Toy)
- [Libretro The Powder Toy Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/thepowdertoy_libretro.info)
- [Libretro The Powder Toy Github Repository](https://github.com/libretro/ThePowderToy)
- [Report Libretro The Powder Toy Core Issues Here](https://github.com/libretro/ThePowderToy/issues)