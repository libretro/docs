# Turbo Fire

Turbo Fire makes RetroArch press and release a button over and over while you hold it, for games that expect you to hammer a fire button. It works with every core, whether or not the core has turbo buttons of its own.

The settings are in `Settings > Input > Turbo Fire`. Turbo Fire itself is on by default, but nothing happens until a **Turbo** button is assigned.

## Assigning the Turbo button

Turbo Fire needs a button that switches it on. Assign it in one of two places:

- `Settings > Input > Port 1 Controls > Turbo Fire` (and so on for each port) assigns it for that port only.
- **Turbo Bind** in `Settings > Input > Turbo Fire` picks one RetroPad button to be the Turbo button on every port. Left empty, the per-port binding above is used.

A RetroPad button set as **Turbo Bind** is not passed to the core as itself while it is pressed.

## Turbo Mode

**Turbo Mode** decides how the Turbo button and the other buttons work together.

| Mode | How to use it |
|---|---|
| **Classic** (default) | Hold a button and press the Turbo button: that button fires repeatedly for as long as you keep holding it. Release it and turbo stops. |
| **Classic (Toggle)** | Hold a button and press the Turbo button once: turbo stays on for that button, which now fires repeatedly whenever you hold it. Hold it and press the Turbo button again to switch turbo off. |
| **Single Button (Toggle)** | Press the Turbo button once: the button chosen in **Turbo Button** fires repeatedly, without being held. Press the Turbo button again to stop. |
| **Single Button (Hold)** | The button chosen in **Turbo Button** fires repeatedly while the Turbo button is held down. |

In the two Single Button modes only the button chosen in **Turbo Button** (B by default) can fire. To get the autofire of home computer joysticks, choose **Single Button (Hold)** and set **Turbo Bind** and **Turbo Button** to the same fire button: holding it then fires repeatedly.

## Speed

Turbo presses and releases the button in a repeating cycle:

- **Turbo Period** is the length of one cycle, in frames. The default is 6: at 60 frames per second, 10 presses a second.
- **Turbo Duty Cycle** is how many frames of each cycle the button is held down. The default, **Half Period**, holds it for half the cycle. A duty cycle equal to or longer than the period never releases the button.

Some games only count a press if the button stays down or up for a few frames. If turbo does not register, make **Turbo Period** longer.

## Other settings

- **Turbo Allow D-Pad Directions** lets the D-pad directions be turbo in the Classic modes. It is off by default, so holding the Turbo button does not turn directions into turbo.
- **Turbo Fire** switches the whole feature off or on. The `Turbo Fire (Toggle)` hotkey in `Settings > Input > Hotkeys` does the same while playing.
