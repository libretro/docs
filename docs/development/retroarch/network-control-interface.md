# RetroArch Network Control Interface

## Purpose
Network Commands allow the control of certain parts of RetroArch over UDP.


## Enabling
Enable network commands in the settings menu, or ensure that `network_cmd_enable = "true"` is set in retroarch.cfg.
RetroArch will listen on port 55355 by default.

## Sending commands
On Linux, network commands may be sent from the command line like so:

````
echo -n "QUIT" | nc -u -w1 127.0.0.1 55355
````

## Commands
The following commands are supported:

* FAST_FORWARD
* FAST_FORWARD_HOLD
* LOAD_STATE
* SAVE_STATE
* FULLSCREEN_TOGGLE
* QUIT
* STATE_SLOT_PLUS
* STATE_SLOT_MINUS
* REWIND
* MOVIE_RECORD_TOGGLE
* PAUSE_TOGGLE
* FRAMEADVANCE
* RESET
* SHADER_NEXT
* SHADER_PREV
* CHEAT_INDEX_PLUS
* CHEAT_INDEX_MINUS
* CHEAT_TOGGLE
* SCREENSHOT
* MUTE
* NETPLAY_FLIP
* SLOWMOTION
* VOLUME_UP
* VOLUME_DOWN
* OVERLAY_NEXT
* DISK_EJECT_TOGGLE
* DISK_NEXT
* DISK_PREV
* GRAB_MOUSE_TOGGLE
* MENU_TOGGLE
