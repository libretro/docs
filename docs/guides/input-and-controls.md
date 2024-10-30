# Getting started: Input and controls

## Game controllers
RetroArch is intended to be easily controlled with a controller. RetroArch uses the overall term **controller** which encompasses all input hardware that could be described by the terms **joypad**, **gamepad**, **joystick**, and others.

!!! info "Map controls by controller, core, or game"
    RetroArch allows users to configure a controller once for many cores instead of having to configure each core individually. RetroArch also provides the freedom to configure specific cores and even individual games differently if the user wants.

### What is a RetroPad?
RetroArch maps real-world controller inputs to a virtual controller called a `RetroPad` . A RetroPad resembles the common modern controller layout, and has:

- a D-pad
- 4 face buttons with an ABXY layout like a SNES gamepad (that is: A-right, B-bottom, X-top, Y-left)
- Select / Start buttons
- two shoulder buttons (L1, R1)
- two trigger buttons (L2, R2)
- dual analog sticks like a Sony DualShock, which can also be used as a button (L3, R3).

![RetroPad Conceptual Diagram](../image/guides/retropad-conceptual-diagram.png)

You don't have to map all of the RetroPad buttons to a real world button. If your real controller has less buttons than a DualShock, then the virtual RetroPad will have some unmapped buttons, that's perfectly fine. If your real controller has more buttons, the extra buttons may be used as freely configurable hotkeys.

Conceptually, all RetroPad buttons can behave as analog (pressure sensitive), but the hardware typically only supports this for the trigger buttons. Gyroscope, acceleration, and illumination sensors may be supported, very much depending on the driver and the core.

### Controller autoconfiguration
Most well-known controllers should work out of the box via the RetroArch autoconfiguration profile database. If the controller can be autoconfigured, the OSD will inform you of the autoconfiguration event. The menu hotkey is often pre-defined in the autoconfiguration profile. 

!!! info "Manual RetroPad binding"
    Not all controllers have autoconfigs. If that is the case for your controller, please refer to the [Manual RetroPad Binding](#manual-retropad-binding).

## Keyboard controls
RetroArch provides a remappable set of bindings between a keyboard and the RetroPad abstraction as well as between a keyboard and RetroArch's hotkeys, details are [below](#default-retroarch-keyboard-bindings).

### Cores with direct keyboard input
Please be aware that some cores, for example arcade emulator cores and vintage computer emulator cores, can also be configured to directly read the keyboard or controls that use a keyboard interface. **If you are using a core configured for direct keyboard access, it is recommended to use the `Game Focus` mode (default: Scroll Lock) to disable those bindings while using the keyboard device,** or unbind the conflicting RetroArch keyboard-to-RetroPad and hotkey bindings if only a few keys are needed. Otherwise, keyboard input will be captured by the RetroArch hotkeys and the core will not get the input.

!!! tip
    Controls with keyboard interfaces can also benefit from defining a **Hotkey Enable** button. If this hotkey is defined, other hotkeys will not be activated unless it is pressed.

## Manual RetroPad binding

If your gamepad is not recognized by autoconfiguration or if you would like to change its RetroPad binding, use the **Input** settings menu.

![Screenshot of input binding](../image/retroarch/xmb/autoconf.gif)

- Navigate to **Settings**
- Navigate to **Input**
- Navigate to **RetroPad Binds**
- Navigate to **Port 1 Controls**
- Select **Set All Controls**
- Press the buttons as required.

!!! tip
    If you have several different controllers, do **Save Controller Profile** after each binding so that controllers will be recognized next time automatically.

## Controls for multi-player

If you want to set-up local multi-player with games that support it:

- Navigate to **Settings**
- Navigate to **Input**
- Navigate to **RetroPad Binds**

Here you will find the option to set binds for multiple users. Let's set-up User 1's controller:

- Navigate to **Port 1 Controls**
- Select **Device Index**

Select which currently plugged-in controller will be assigned to this player. After you finish, go back, select **Port 2 Controls** and repeat for user 2.

In case of multiple controllers, RetroArch will assign them by default in the order they are presented by the operating system. For more customization, use the device reservation options to explicitly assign a controller to a player.

## Hotkeys
Hotkeys are combinations of buttons you can press in order to access options such as saving, loading, and exiting games. Hotkey binds can be configured at `Settings` → `Input` → `Hotkeys` . If you map `Enable Hotkeys` to a button, it will require that button to be held in order to trigger any hotkeys.

!!! tip
    To unbind (effectively, disable) a hotkey, press **Del** on your keyboard or the **Y button** (the left one of the 4 buttons) on the RetroPad. To reset a hotkey to its default, press **Space** on your keyboard or the **Start** button on the RetroPad.

## Remapping controls for individual cores or content
Core Controls Remapping alters how the core receives input rather than how the gamepad is coded, for example you can tell an individual core to switch button A and B on the RetroPad for gameplay, but you can still use "A" to select in the RetroArch menu and "B" to go back. This is opposed to changing the gamepad bindings in RetroArch itself which would swap "A" and "B" in the core but would also make "B" select and "A" back in the RetroArch menu.

**How to remap the controls for a single core or game:**

* Start content with the core for which you want to remap controls
* Go to **Quick Menu** and then **Controls**
* Configure the buttons the way you want
* Select **Save Core Remap File**
* OR, if you want to save this remapping for the current game only, select **Save Game Remap File**

## Default RetroArch keyboard bindings

### General controller mapping

These controls are valid both in-game and in the menu:

| User 1 Keyboard                                                                         | Default RetroPad Mapping                                     | Menu Action                   |
|-----------------------------------------------------------------------------------------|--------------------------------------------------------------| ----------------------------- |
| ![Up Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Up.png)       | ![RetroPad Up](../image/retropad/retro_dpad_up.png)          | Move cursor up                |
| ![Down Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Down.png)   | ![RetroPad Down](../image/retropad/retro_dpad_down.png)      | Move cursor down              |
| ![Left Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Left.png)   | ![RetroPad Left](../image/retropad/retro_dpad_left.png)      | Move cursor left              |
| ![Right Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Right.png) | ![RetroPad Right](../image/retropad/retro_dpad_right.png)    | Move cursor right             |
| ![Q](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Q.png)                     | ![RetroPad L1](../image/retropad/retro_l1.png)               | Scroll one page up            |
| ![W](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_W.png)                     | ![RetroPad R1](../image/retropad/retro_r1.png)               | Scroll one page down          |
| ![Z](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Z.png)                     | ![RetroPad B](../image/retropad/retro_b.png)                 | Return to the previous screen |
| ![X](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_X.png)                     | ![RetroPad A](../image/retropad/retro_a.png)                 | Select Item                   |
| ![A](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_A.png)                     | ![RetroPad Y](../image/retropad/retro_y.png)                 | Scan content / Remove highlighted input bind |
| ![S](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_S.png)                     | ![RetroPad X](../image/retropad/retro_x.png)                 | Search                        |
| ![Shift](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Shift.png)             | ![RetroPad Select](../image/retropad/retro_select.png)       | Help                          |
| ![Enter](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Enter.png)             | ![RetroPad Start](../image/retropad/retro_start.png)         | (see next section)            |

### Menu controls

While in the menu, there are additional navigation keys defined for convenience.

| Keyboard Input                                                                        | Retropad Input                                            | Menu Action                   |
| ------------------------------------------------------------------------------------- | --------------------------------------------------------- | ----------------------------- |
| ![Backspace](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Backspace.png)   | ![RetroPad B](../image/retropad/retro_b.png)              | Return to the previous screen |
| ![Enter](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Enter.png)           | ![RetroPad A](../image/retropad/retro_a.png)              | Select Item (note: Enter key is mapped to Select button in-game) |
| ![Del](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Del.png)               | ![RetroPad Y](../image/retropad/retro_y.png)              | Scan content / Remove highlighted input bind |
| ![/](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Slash.png)               | ![RetroPad X](../image/retropad/retro_x.png)              | Search                        |
| ![Space](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Space.png)           | ![RetroPad Start](../image/retropad/retro_start.png)      | Reset to default              |
|                                                                                       | ![RetroPad L3](../image/retropad/retro_l2.png)            | Scroll to previous letter     |
|                                                                                       | ![RetroPad R3](../image/retropad/retro_r2.png)            | Scroll to next letter         |
| ![Home](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Home.png)             | ![RetroPad L3](../image/retropad/retro_l3.png)            | Scroll to top                 |
| ![End](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_End.png)               | ![RetroPad R3](../image/retropad/retro_r3.png)            | Scroll to bottom              |

Analog sticks are also able to control the menu. If needed, additional hotkeys can be disabled in `Settings` → `Input` → `Menu Controls`, along with several other customization options.

### Hotkey controls

Hotkey binds can be configured at `Settings` → `Input` → `Hotkeys` . If you map `Enable Hotkeys` to a key, it will require that key to be held in order to trigger any hotkeys. This can be useful in avoiding keyboard mapping conflicts between RetroArch and cores cores that use the keyboard for input.

!!! Tip
    Hotkeys can also be mapped to controller buttons.

| Keyboard Input                                                                 | In-Game Action               |
| ------------------------------------------------------------------------------ | ---------------------------- |
| ![Esc](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Esc.png)        | Exit RetroArch               |
| ![Spacebar](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Space.png) | Fast forward toggle          |
| ![L](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_L.png)            | Fast forward hold            |
| ![P](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_P.png)            | Pause                        |
| ![P](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_K.png)            | Frame advance                |
| ![E](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_E.png)            | Slow motion                  |
| ![R](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_R.png)            | Rewind                       |
| ![H](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_H.png)            | Reset                        |
| ![F1](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F1.png)          | Menu toggle                  |
| ![F2](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F2.png)          | Save state                   |
| ![F3](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F3.png)          | Show FPS                     |
| ![F4](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F4.png)          | Load state                   |
| ![F5](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F5.png)          | Desktop menu                 |
| ![F6](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F6.png)          | Decrease current state slot  |
| ![F7](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F7.png)          | Increase current state slot  |
| ![F8](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F8.png)          | Take screenshot              |
| ![F9](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F9.png)          | Mute                         |
| ![F11](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F11.png)        | Grab mouse                   |
| ![+](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Plus.png)         | Volume Up                    |
| ![-](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Minus.png)        | Volume Down                  |
| ![F](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F.png)            | Fullscreen toggle            |
| ![M](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_M.png)            | Next shader                  |
| ![N](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_N.png)            | Previous shader              |
| ![I](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_I.png)            | Netplay toggle play/spectate |
| ![U](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_U.png)            | Cheat toggle                 |
| ![Y](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Y.png)            | Next cheat                   |
| ![T](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_T.png)            | Previous cheat               |

## Platform-specific controls

### Nintendo Switch

USB keyboards and mice: All keyboards seem to work. Not all mice seem to work. [Mouse compatibility sheet](https://docs.google.com/spreadsheets/d/1Drbo5-QuSX901MwtOytSMuqRGxeIkq2HELM806I9dj0/edit#gid=0).

Touch mouse emulation: The Switch touchscreen can be used for mouse control like a laptop touchpad. The following gestures are supported.

| Touch Input              | Effect                                                 |
|--------------------------|--------------------------------------------------------|
| single finger drag       | move the mouse pointer (indirectly like on a touchpad) |
| single short tap         | left mouse click                                       |
| dual finger short tap*   | right mouse click                                      |
| dual finger drag         | drag'n'drop (left mouse button is held down)           |
| three finger drag        | drag'n'drop (right mouse button is held down)          |

*: hold one finger, short tap with another
