# RetroArch Input Driver Specification
[RetroArch](http://retroarch.com) is the reference frontend for the libretro API, and is used for emulators, game engines, and media players.

RetroArch strives to be available on as many different platforms as possible. RetroArch runs and is supported on GNU/Linux, BSD, Windows, Mac OSX, Haiku, PlayStation Classic, PlayStation 2, PlayStation 3, Playstation Vita, Playstation Portable, Xbox 360, Xbox One, Raspberry Pi, Nintendo GameCube, Nintendo Wii, Nintendo Wii U, Nintendo 3DS & 2DS Family, Nintendo Switch, Steam Link, Android, iOS, Open Pandora, Blackberry, and in web browsers via the Emscripten compiler.

### Purpose of input drivers
RetroArch uses a modular "driver" system to allow the software to be ported to new platforms. One or more RetroArch input drivers must be available on a system in order to run the frontend. In addition to input drivers, RetroArch uses a variety of other platform-specific drivers including video drivers, audio drivers, and video recording drivers. 

In RetroArch, choosing an input driver generally corresponds to choosing an input API on the host system. A RetroArch input driver might be written for the API of a piece of hardware, such as `input_wiiu`; it might be specific to an operating system, such as `input_linuxraw` or `input_dos`; or the driver might be available on several platforms, such as `input_sdl`. The input drivers implement access to user keyboards, mice, pointers, and lightguns. A "controller driver" is also necessary if the input driver implements access to user joysticks or gamepads.

!!! Note
    Controller drivers were previously referred to as joypad drivers. Some documentation and code may still use the older "joypad" terminology.

### Purpose of this document
This document organizes the information needed to develop and debug RetroArch input drivers, such as when porting RetroArch to a new platform.

## libretro input device abstractions
RetroArch's input system is based on abstracted input device types which are polled via callbacks provided by the libretro API. Libretro input device abstractions include:

 * RetroPad
    - Digital Gamepad or Joystick
    - Digital Gamepad or Joystick with Analog
 * Mouse
 * Pointer
 * Keyboard
 * Lightgun

## RetroArch input priorities
As the libretro reference frontend, RetroArch's goal is to implement the API in a way that provides users a full experience across as wide a variety of platforms as possible. This includes the ability to map and remap physical input hardware to as many different types of libretro input device abstractions as possible, although the amount of flexibility can vary due to the limitations of specific platforms.

!!! Note
    The minimum API requirement for a libretro frontend is to implement polling responses for one "RetroPad", libretro's digital gamepad controller device abstraction. A compliant frontend could therefore support only a single input source -- for example, a frontend written for a handheld game system that has a built-in hardware controller, or a frontend that only accepts RetroPad input over a network connection.

For libretro core developers, the value of a frontend like RetroArch that fully implements these abstractions with robust remapping abilities is that cores can be coded with the 'ideal' input type abstraction in mind using simple polling logic. Meanwhile users have the freedom to map that abstraction to any number of hardware or software input sources.

## Input driver functionality tables
These tables presents RetroArch's input driver functionality organized into categories. It is based on the table that appears in the source for each input driver. Not all input drivers implement all possible functionality; in some case this is due to the inherent limitations of the host platform, and in other cases the functionality is possible but has yet to be implemented.

| RetroPad Function                              | Supported | Notes                                   |
| ---------------------------------------------- | --------- | --------------------------------------- |
| Map physical gamepad to RetroPad (Port 0)       |           |                                         |
| Map physical gamepad w/analog to RetroPad       |           |                                         |
| Support multiple RetroPads                     |           |                                         |
| Remap one RetroPad control to another          |           |                                         |
| Map physical keyboard to RetroPad controls     |           |                                         |
| Map physical mouse buttons to RetroPad         |           |                                         |
| Map physical pointer taps/controls to RetroPad |           |                                         |

| Keyboard Function                               | Supported | Notes                                   |
| ----------------------------------------------- | --------- | --------------------------------------- |
| Map physical keyboard to RetroKeyboard          |           |                                         |
| Remap one RetroKey to another                   |           |                                         |
| Respect `keyboard_mapping_blocked`              |           |                                         |
| Map physical gamepad controls to RetroKeys       |           |                                         |
| Map physical mouse buttons to RetroKeys         |           |                                         |
| Map physical pointer taps/controls to RetroKeys |           |                                         |

| Mouse Function                                             | Supported | Notes                                   |
| ---------------------------------------------------------- | --------- | --------------------------------------- |
| Map physical mouse to RetroMouse (Port 0)                  |           |                                         |
| Support multiple RetroMice                                 |           |                                         |
| 'Grab and ungrab' mice                                     |           |                                         |
| Remap one mouse control to another                         |           |                                         |
| Map physical pointer/touchpad to RetroMouse                |           |                                         |
| Map physical analog controls to RetroMouse coordinates     |           |                                         |
| Map physical digital gamepad controls to RetroMouse buttons |           |                                         |
| Map physical keyboard to RetroMouse buttons                |           |                                         |

| Pointer Function                                         | Supported | Notes                                   |
| -------------------------------------------------------- | --------- | --------------------------------------- |
| Map physical pointer/touchpad to RetroPointer (Port 0)   |           |                                         |
| Support Multi-Touch Pointer (Port 0)                     |           |                                         |
| Support multiple RetroPointers                           |           |                                         |
| Support Multiple Pointers w/Multi-Touch                  |           |                                         |
| Support remapping one touchpad control to another        |           |                                         |
| Map physical mouse to RetroPointer                       |           |                                         |
| Map physical analog controls to RetroPointer coordinates |           |                                         |
| Map physical digital gamepad controls to taps/controls    |           |                                         |
| Map physical keyboard to taps/controls                   |           |                                         |

| Lightgun Function                                     | Supported | Notes                                   |
| ----------------------------------------------------- | --------- | --------------------------------------- |
| Map physical pointer/touchpad to Lightgun (Port 0)    |           |                                         |
| Map physical mouse to Lightgun (Port 0)               |           |                                         |
| Map physical analog joysticks to Lightguns            |           |                                         |
| Support multiple Lightguns                            |           |                                         |
| Map multiple mice to multiple Lightguns               |           |                                         |
| Map multiple pointers/touchpads to multiple Lightguns |           |                                         |
| Map physical digital gamepad to Lightgun controls      |           |                                         |
| Map physical keyboard to Lightgun controls            |           |                                         |

| Sensor Function*                           | Supported | Notes                                   |
| ------------------------------------------ | --------- | --------------------------------------- |
| Set polling rate                           |           |                                         |
| Enable/disable sensors                     |           |                                         |
| Get sensor input                           |           |                                         |

!!! Note
The **Sensor Function** table of input driver sensor functionality is incomplete. [Contributions welcome!](../../../meta/how-to-contribute.md)

| Other Input Functions*                                      | Supported | Notes                                |
| ----------------------------------------------------------- | --------- | ------------------------------------ |
|                                                             |           |                                      |

!!! Note
The **Other Input Functions** table of input driver functionality is driver-specific at this time.

## Input driver architecture
To be written.

### input_driver_t struct
To be written.

#### Example input_driver_t
```c
input_driver_t input_winraw = {
   winraw_init,
   winraw_poll,
   winraw_input_state,
   winraw_free,
   NULL,
   NULL,
   winraw_get_capabilities,
   "raw",
   winraw_grab_mouse,
   NULL
};
```

## Documentation TODO
* Some RetroArch video drivers also serve as input drivers. In cases when the video driver relies on input driver for event handling, the video driver can preinitialize an input driver.
* Describe controller drivers and their implementation
