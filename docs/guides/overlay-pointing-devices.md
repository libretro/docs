# Overlay Mouse, Lightgun, and Pointer
When using an overlay, RetroArch can send pointing device input alongside gamepad input using `Enable Overlay Lightgun, Mouse, and Pointer` in the `On-Screen Overlay` menu.

This allows more natural control of lightgun overlays, emulated touchscreens, mouse-controlled first-person shooters, and anything else requiring simultaneous button \+ pointer input.

**Note:** This overrides any platform-specific touchscreen controls, which might behave differently.

## Mouse behavior
Dragging 1 finger moves the mouse cursor. 1-, 2-, and 3-finger taps are left, right, and middle mouse button clicks.

By default, a 0.2s long press begins holding a button, and you'll feel haptic feedback when it starts. A double-tap hold method is also available but adds some latency to clicks. With either method, dragging 2 or 3 fingers immediately holds the right or middle button.

There are settings for mouse speed, long-press and double-tap time thresholds, and a "swipe threshold" to distinguish swipes from taps and long presses.

## Lightgun behavior
Lightgun x, y, and trigger are normally sent together to every lightgun port. There are settings to choose the port, disable the trigger, delay the trigger, and clamp off-screen aim to the in-bounds edge. The trigger delay is needed for content that doesn't instantly move the gun cursor to a screen tap.

More lightgun buttons can be assigned to 2-, 3-, and 4-finger inputs. The trigger delay is used to wait for the correct multi-touch count. A 1-frame delay is usually enough to distinguish these inputs.

**Note:** A few cores have a `Touchscreen` option for lightgun input. That needs to be set to `Lightgun` for this.
