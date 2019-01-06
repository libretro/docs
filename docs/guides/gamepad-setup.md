# RetroPad Setup

## RetroPad Concept
RetroArch controls map real-world controller buttons to a virtual controller called a "RetroPad". A RetroPad does not exist in real life, it's a concept only within RetroArch. A RetroPad has an ABXY layout like a SNES gamepad plus four shoulder buttons and dual analog sticks like a Sony DualShock.

You don't have to map all of the RetroPad buttons to a real world button. If your real controller has less buttons than a DualShock, then the virtual RetroPad also has less buttons, that's perfectly fine.

![RetroPad Conceptual Diagram](../image/guides/retropad-conceptual-diagram.png)

## Keyboard controls
RetroArch provides [a default set of bindings]([retroarch-keyboard-controls) between a keyboard and the RetroPad abstraction as well as between a keyboard and RetroArch's hotkeys.


!!! tip
    Some cores, for example arcade emulator cores and vintage computer emulator cores, can also be configured to read the keyboard directly for input. **If you are using a core configured for direct keyboard access, it is often necessary to unbind the RetroArch keyboard-to-RetroPad and hotkey bindings or to use the `Game Focus` mode to disable those bindings while the core is in use.** Otherwise keyboard input may result in multiple conflicting simultaneous actions by the core.

## Gamepad setup
RetroArch is intented to be easily controlled with a gamepad. RetroArch and libretro provide ability to configure a gamepad once for many cores instead of having to configure each core individually. However, RetroArch also provides the freedom to configure specific cores and even individual games differently if the user wants.

### Gamepad autoconfiguration
Many gamepads should work out of the box via the RetroArch autoconfiguration profile database. If the gamepad can be autoconfigured the OSD will inform you of the autoconfiguration event.

### Manual gamepad binding
Not all controllers have these autoconfigs, if this is your case follow this guide:

![Screenshot of input binding](../image/windows/autoconf.gif)

- Navigate to **Settings**
- Navigate to **Input**
- Navigate to **Input User 1 Binds**
- Select **User 1 Bind All**
- Press the buttons as required

!!! tip
    If you have several different controller types you may want to use the **User 1 Save Autoconfig** followed by **User 1 Bind Default All** options after binding in order to achieve hotplug functionality

## Controls for multi-player 

If you want to set-up local multi-player with games that supports it:

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

## Remapping controls for individual cores or content
Core Controls Remapping alters how the core receives input rather than how the gamepad is coded, for example you can tell an individual core to switch button A and B on the RetroPad for gameplay, but you can still use "A" to select in the RetroArch menu and "B" to go back. This is opposed to changing the gamepad bindings in RetroArch itself which would swap "A" and "B" in the core but would also make "B" select and "A" back in the RetroArch menu.

**How to remap the controls for a single core or game:**

* Start content with the core for which you want to remap controls
* Go to **Quick Menu** and then **Controls**
* Configure the buttons the way you want
* Select **Save Core Remap File**
* OR, if you want to save this remapping for the current game only, select **Save Game Remap File**
