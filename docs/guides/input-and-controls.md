# Getting started: Input and controls

## RetroPad Concept
RetroArch controls map real-world controller buttons to a virtual controller called a "RetroPad". A RetroPad does not exist in real life, it's a concept only within RetroArch. A RetroPad has an ABXY layout like a SNES gamepad plus four shoulder buttons and dual analog sticks like a Sony DualShock.

You don't have to map all of the RetroPad buttons to a real world button. If your real controller has less buttons than a DualShock, then the virtual RetroPad also has less buttons, that's perfectly fine.

![RetroPad Conceptual Diagram](../image/guides/retropad-conceptual-diagram.png)

## Gamepad setup
RetroArch is intended to be easily controlled with a gamepad. RetroArch and libretro provide ability to configure a gamepad once for many cores instead of having to configure each core individually. However, RetroArch also provides the freedom to configure specific cores and even individual games differently if the user wants.

### Gamepad autoconfiguration
Many gamepads should work out of the box via the RetroArch autoconfiguration profile database. If the gamepad can be autoconfigured the OSD will inform you of the autoconfiguration event.

!!! info "Manual RetroPad binding"
    Not all gamepads have autoconfigs. If that is the case for your gamepad, please refer to the **Manual RetroPad binding** section below.

## Keyboard controls
RetroArch provides a remappable set of bindings between a keyboard and the RetroPad abstraction as well as between a keyboard and RetroArch's hotkeys. Please refer to **Default RetroArch keyboard bindings** in this doc as a reference.

### Cores with direct keyboard input
Please be aware that some cores, for example arcade emulator cores and vintage computer emulator cores, can also be configured to directly read the keyboard or controls that use a keyboard interface. **If you are using a core configured for direct keyboard access, it is recommended that users unbind the RetroArch keyboard-to-RetroPad and hotkey bindings or use the `Game Focus` mode to disable those bindings while using the keyboard device.** Otherwise, keyboard input may result in multiple conflicting simultaneous actions by the core.

!!! tip
    Controls with keyboard interfaces can also benefit from defining a **Hotkey Enable** button in RetroArch which is required to be held down in order to activate the other hotkeys.

## Manual RetroPad binding

If your gamepad does not have an autoconfiguration or if you would like to change its default RetroPad binding, use the **Input** settings menu.

![Screenshot of input binding](../image/retroarch/xmb/autoconf.gif)

- Navigate to **Settings**
- Navigate to **Input**
- Navigate to **Input User 1 Binds**
- Select **User 1 Bind All**
- Press the buttons as required

!!! tip
    If you have several different controller types you may want to use the **User 1 Save Autoconfig** followed by **User 1 Bind Default All** options after binding in order to achieve hotplug functionality

## Controls for multi-player

If you want to set-up local multi-player with games that support it:

- Navigate to **Settings**
- Navigate to **Input**

Here you will find the option to set binds for multiple users, "Input User 1 Binds", "Input User 2 Binds" and so on.

So lets set-up User 1's controller:

- Navigate to **Input User 1 Binds**
- Select **User 1 Device Index**

From here using the left/right buttons, select which currently plugged-in controller will be assigned to what player. While here you should also bind the controls to this player by pressing them on the assigned controller, Select **User 1 Bind All** to do this.

After you finish, go back, select **Input User 2 Binds** and repeat for user 2.

## Hotkeys
Hotkeys are combinations of buttons you can press in order to access options such as saving, loading, and exiting games. Hotkey binds can be configured at `Settings` → `Input` → `Input Hotkey Binds`. If you map `Enable Hotkeys` to a button, it will require that button to be held in order to trigger any hotkeys.

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

### Keyboard gameplay controls

| User 1 Keyboard                                                                       | Default RetroPad Mapping                                     |
|---------------------------------------------------------------------------------------|--------------------------------------------------------------|
| ![Up Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Up.png)       | ![RetroPad Up](../image/retropad/retro_dpad_up.png)          |
| ![Down Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Down.png)   | ![RetroPad Down](../image/retropad/retro_dpad_down.png)      |
| ![Left Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Left.png)   | ![RetroPad Left](../image/retropad/retro_dpad_left.png)      |
| ![Right Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Right.png) | ![RetroPad Right](../image/retropad/retro_dpad_right.png)    |
| ![Q](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Q.png)                     | ![RetroPad L1](../image/retropad/retro_l1.png)               |
| ![W](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_W.png)                     | ![RetroPad R1](../image/retropad/retro_r1.png)               |
| ![Shift](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Shift.png)             | ![RetroPad Select](../image/retropad/retro_select.png)       |
| ![Enter](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Enter.png)             | ![RetroPad Start](../image/retropad/retro_start.png)         |
| ![Z](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Z.png)                     | ![RetroPad B](../image/retropad/retro_b.png)                 |
| ![X](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_X.png)                     | ![RetroPad A](../image/retropad/retro_a.png)                 |
| ![A](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_A.png)                     | ![RetroPad Y](../image/retropad/retro_y.png)                 |
| ![S](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_S.png)                     | ![RetoPad X](../image/retropad/retro_x.png)                  |

### Menu controls

The keyboard inputs shown here are active only when `Settings` → `Input` → `Unified Menu Controls` is disabled (default). Otherwise, only Retropad inputs are used.

| Keyboard Input                                                                        | Retropad Input                                            | Menu Action                   |
| ------------------------------------------------------------------------------------- | --------------------------------------------------------- | ----------------------------- |
| ![Up Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Up.png)       | ![RetroPad Up](../image/retropad/retro_dpad_up.png)       | Move cursor up                |
| ![Down Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Down.png)   | ![RetroPad Down](../image/retropad/retro_dpad_down.png)   | Move cursor down              |
| ![Left Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Left.png)   | ![RetroPad Left](../image/retropad/retro_dpad_left.png)   | Move cursor left              |
| ![Right Arrow](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Arrow_Right.png) | ![RetroPad Right](../image/retropad/retro_dpad_right.png) | Move cursor right             |
| ![Page Up](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Page_Up.png)         | ![RetroPad L1](../image/retropad/retro_l1.png)            | Scroll one page up            |
| ![Page Down](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Page_Down.png)     | ![RetroPad R1](../image/retropad/retro_r1.png)            | Scroll one page down          |
| ![Backspace](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Backspace.png)     | ![RetroPad B](../image/retropad/retro_b.png)              | Return to the previous screen |
| ![Enter](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Enter.png)             | ![RetroPad A](../image/retropad/retro_a.png)              | Select Item                   |
| -                                                                                     | ![RetroPad Y](../image/retropad/retro_y.png)              | Scan content                  |
| ![/](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Slash.png)                 | ![RetroPad X](../image/retropad/retro_x.png)              | Search                        |
| ![Shift](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Shift.png)             | ![RetroPad Select](../image/retropad/retro_select.png)    | Help                          |
| ![Del](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Del.png)                 | -                                                         | Remove highlighted input bind |
| ![Space](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Space.png)             | ![RetroPad Start](../image/retropad/retro_start.png)      | Reset to default              |
| ![Esc](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Esc.png)                 | -                                                         | Exit RetroArch                |

### Hotkey controls

Hotkey binds can be configured at `Settings` → `Input` → 'Input Hotkey Binds'. If you map `Enable Hotkeys` to a key, it will require that key to be held in order to trigger any hotkeys. This can be useful in avoiding keyboard mapping conflicts between RetroArch and cores cores that use the keyboard for input.

!!! Tip
    Hotkeys can also be mapped to RetroPad buttons.

| Keyboard Input                                                               | In-Game Action               |
| ---------------------------------------------------------------------------- | ---------------------------- |
| ![R](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_R.png)            | Rewind                       |
| ![P](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_P.png)            | Pause                        |
| ![H](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_H.png)            | Reset                        |
| ![M](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_M.png)            | Next shader                  |
| ![N](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_N.png)            | Previous shader              |
| ![I](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_I.png)            | Netplay toggle play/spectate |
| ![F1](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F1.png)          | Menu toggle                  |
| ![F2](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F2.png)          | Save state                   |
| ![F4](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F4.png)          | Load state                   |
| ![F7](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F7.png)          | Increase current state slot  |
| ![F6](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F6.png)          | Decrease current state slot  |
| ![F8](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F8.png)          | Take screenshot              |
| ![F9](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F9.png)          | Mute                         |
| ![F12](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F12.png)        | Show on-screen keyboard      |
| ![F11](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F11.png)        | Grab mouse                   |
| ![+](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Plus.png)         | Volume Up                    |
| ![-](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Minus.png)        | Volume Down                  |
| ![Spacebar](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_Space.png) | Fast forward toggle          |
| ![L](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_L.png)            | Fast forward hold            |
| ![O](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_O.png)            | Movie record                 |
| ![P](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_K.png)            | Frame advance                |
| ![E](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_E.png)            | Slow motion                  |
| ![F](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F.png)            | Fullscreen toggle            |
| ![F5](../image/Button_Pack/Keyboard_Mouse/Dark/Keyboard_Black_F5.png)          | Switch GUI                   |

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
