# Remote RetroPad
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/bzom8OZ-HAk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Remote RetroPad is a built-in core for 2 purposes: controlling another instance of RetroArch over the network, and testing input methods (retropad and keyboard).

#### How to use the Remote RetroPad core:

This core is present in all RetroArch builds that have networking enabled. To start the Remote RetroPad core, go to RetroArch's main menu screen. Select 'Load Core', then 'Remote RetroPad'.

The screen should now display a RetroPad, and buttons will react to controller activity. Digital inputs will be highlighted in one shade of red, analog inputs will be highlighted in a gradual manner. Any input that has been activated at least once, will turn green.

To switch to the keyboard test screen, pass keyboard focus to the core (default hotkey Scroll Lock), and press keyboard keys A and B simultaneously. This screen includes a standard 102-key PC keyboard + extra blocks for all RETROK_ values present in the code. Screen adapted from DOSBox-Pure onscreen keyboard with permission. Keyboard test screen shows pressed keys, including special and multimedia keys, however some keys may be capture by the operating system and cannot be detected by RetroArch. Keyboard inputs are not set up for remote transmission, only for local test.


#### Setting up the RetroArch instance to be controlled

To allow a RetroArch instance to be controlled by Remote RetroPad, enable "Network retropad" under Settings / Network, and enable the remote control for the desired user(s).

### Author/License

The Remote RetroPad core has been authored by

- The RetroArch Team

The Remote RetroPad core is licensed under

- [MIT](https://github.com/libretro/libretro-samples/blob/master/license)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Features

Frontend-level settings or features that the Remote RetroPad core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✕         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
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

### Geometry and timing

- The Remote RetroPad core's core provided FPS is 60.0
- The Remote RetroPad core's resolution is 320x240
- The Remote RetroPad core's core provided sample rate is 30000.0 Hz
- The Remote RetroPad core's core provided aspect ratio is 4.0 / 3.0

## Core options

The Remote RetroPad core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Port** (55400 to 55420 in increments of 1, default **55400**.)

	UDP port for the connection on the target machine. One port is for one user only, if you wish to control e.g. user 2, add one to the base port.

- **IP address part 1** (0 to 255 in increments of 1, default **0**.)

	First octet of the target machine's IP address (e.g. **192**.168.0.33)

- **IP address part 2** (0 to 255 in increments of 1, default **0**.)

	Second octet of the target machine's IP address (e.g. 192.**168**.0.33)

- **IP address part 3** (0 to 255 in increments of 1, default **0**.)

	Third octet of the target machine's IP address (e.g. 192.168.**0**.33)

- **IP address part 4** (0 to 255 in increments of 1, default **0**.)

	Fourth octet of the target machine's IP address (e.g. 192.168.0.**33**)

- **Start screen** (**Retropad** / Keyboard tester)

  Initial screen when starting Remote Retropad.

- **Hide mismatching analog inputs** (**Yes** / No)

  Certain input methods (like using the keyboard to simulate controller buttons) do not send the analog value. Remote Retropad indicates this by leaving the center of the button white, if this option is turned off.

## Controllers

The Remote RetroPad core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

Remote RetroPad supports all standard RetroPad buttons. Analog values are supported for analog sticks. Analog button values are shown for L1/R1/L2/R2, A/B/X/Y buttons, but not transferred.

## Usage for automated tests

It is possible to supply an expected input file, and show instructions on which button to press. For details, see [PR #16357](https://github.com/libretro/RetroArch/pull/16357).

## External Links

- [Libretro Remote RetroPad Github Repository](https://github.com/libretro/RetroArch/tree/master/cores/libretro-net-retropad)
- [Report Libretro Remote RetroPad Core Issues Here](https://github.com/libretro/RetroArch/issues)