# Nintendo - DS (DeSmuME)

## Background

Port of Desmume to libretro.

### Author/License

The DeSmuME core has been authored by

- YopYop156
- Zeromus

The DeSmuME core is licensed under

- [GPLv2](https://github.com/TASVideos/desmume/blob/master/license.txt)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the DeSmuME core have the following file extensions:

- .nds
- .bin

## Databases

RetroArch database(s) that are associated with the DeSmuME core:

- [Nintendo - Nintendo DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS.rdb)
- [Nintendo - Nintendo DS Decrypted](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20Decrypted.rdb)
- [Nintendo - Nintendo DS (Download Play)](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS%20(Download%20Play).rdb)

## Features

Frontend-level settings or features that the DeSmuME core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔ (Not Download Play, Link-Cable or Wi-Fi emulation)         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The DeSmuME core's internal core name is 'DeSmuME'

The DeSmuME core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.dsv (Cartridge battery save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The DeSmuME core's core provided FPS is 60
- The DeSmuME core's core provided sample rate is 44100 Hz
- The DeSmuME core's core provided aspect ratio is dependant on the ['Screen layout' core option](https://docs.libretro.com/library/desmume/#core-options).

### Nickname

Changing the system nickname isn't currently supported by the DeSmuME core.

## Core options

The DeSmuME core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Internal resolution (restart)** [desmume_internal_resolution] (**256x192**|512x384|768x576|1024x768|1280x960|1536x1152|1792x1344|2048x1536|2304x1728|2560x1920)

	Self explanatory. Please note that the DeSmuME core is only software rendered.
	
??? note "Internal resolution - 256x192"
	![](images\Cores\desmume\256x192.png)
	
??? note "Internal resolution - 2560x1920"
	![](images\Cores\desmume\2560x1920.png)
	
- **CPU cores** [desmume_num_cores] (**1**|2|3|4)

	Configure how much CPU cores the DeSmuME core will use. Please note that, in general, DeSmuME benefits more from few fast CPUs than from many slow CPUs. For example, a dual-core 3.9GHz CPU will run DeSmuME much faster than a 12-core 1.6GHz CPU.
	
- **CPU mode** [desmume_cpu_mode] (**jit**|interpreter)

	Choose to run CPU emulation through the Interpreter engine or the JIT Dynamic Recomplier engine.
	
	Interpreter has better compatibility than JIT Dynamic Recompiler. Some games that fail when using JIT Dynamic Recompiler will work fine with Interpreter. The tradeoff here is that Interpreter has much lower performance than JIT Dynamic Recompiler.
	
	Please note that the default setting for this core option is dependent on your hardware. The JIT Dynamic Recompiler is not available on all hardware (e.g. Android devices).
	
- **JIT block size** [desmume_jit_block_size] (0 to 100 in increments of 1. **12 is default**.)

	This core option is only available when the 'CPU mode' core option to set to jit. You may need to tune the block size to prevent some games from breaking. 1 = most accurate, 100 = fastest.
	
- **Screen layout** [desmume_screens_layout] (**top/bottom**|bottom/top|left/right|right/left|top only|bottom only|quick switch|hybrid/top|hybrid/bottom)

	Self-explanatory.
	
??? note "Screen layout - top/bottom"
	![](images\Cores\desmume\top_bottom.png)
	
??? note "Screen layout - bottom/top"
	![](images\Cores\desmume\bottom_top.png)
	
??? note "Screen layout - left/right"
	![](images\Cores\desmume\left_right.png)
	
??? note "Screen layout - right/left"
	![](images\Cores\desmume\right_left.png)
	
??? note "Screen layout - top only"
	![](images\Cores\desmume\top.png)
	
??? note "Screen layout - bottom only"
	![](images\Cores\desmume\bottom.png)
	
??? note "Screen layout - hybrid/top"
	![](images\Cores\desmume\hybrid_top.png)
	
- **Hybrid layout scale (restart)** [desmume_hybrid_layout_scale] (**1**|3)

	Self explanatory. The 'Screen layout' core option must be set to a hybrid setting for this to function properly.
	
??? note "Hybrid layout scale - 1"
	![](images\Cores\desmume\scale_1.png)
	
??? note "Hybrid layout scale - 3"
	![](images\Cores\desmume\scale_3.png)
	
- **Hybrid layout show both screen** [desmume_hybrid_showboth_screens] (**enabled**|disabled)

	Removes the small top screen when the 'Screen layout' core option is set to hybrid/top 
	
	Removes the small bottom screen when the 'Screen layout' core option is set to hybrid/bottom
	
- **Hybrid layout cursor always on small screen** [desmume_hybrid_cursor_always_smallscreen] (**enabled**|disabled)

	Self explanatory.
	
	Disablng this allows you to use the stylus on the big bottom screen when the 'Screen layout' core option is set to hybrid/bottom.
	
- **Enable mouse/pointer** [desmume_pointer_mouse] (**enabled**|disabled)

	Enabling this allows you to use mouse inputs for the stylus.
	
- **Pointer type** [desmume_pointer_type] (**mouse**/touch)

	Setting this to mouse allows you to use mouse inputs for the stylus
	
	Setting this to touch allows you to use touch inputs for the stylus (e.g. Touch controls on Android devices
	
- **Pointer Colour** [desmume_pointer_colour] (**white**|black|red|blue|yellow")

	Configure the color of the stylus pointer.
	
??? note "Pointer Colour - white"
	![](images\Cores\desmume\pointer_white.png)
	
??? note "Pointer Colour - black"
	![](images\Cores\desmume\pointer_black.png)
	
??? note "Pointer Colour - red"
	![](images\Cores\desmume\pointer_red.png)
	
??? note "Pointer Colour - blue"
	![](images\Cores\desmume\pointer_blue.png)
	
??? note "Pointer Colour - yellow"
	![](images\Cores\desmume\pointer_yellow.png)
	
- **Pointer mode l-analog** [desmume_pointer_device_l] (**none**|emulated|absolute|pressed)

	Awaiting description.
	
- **Pointer mode r-analog** [desmume_pointer_device_r] (**none**|emulated|absolute|pressed)

	Awaiting description.
	
- **Emulated pointer deadzone percent** [desmume_pointer_device_deadzone] (**15**|20|25|30|35|0|5|10)

	Awaiting description.
	
- **Emulated pointer acceleration modifier percent** [desmume_pointer_device_acceleration_mod] (0 to 100 in increments of 1. **0 is default**.)

	Awaiting description.
	
- **Emulated stylus pressure modifier percent** [desmume_pointer_stylus_pressure] (0 to 100 in increments of 1. **50 is default**.)

	Configure the emulated pressure on the touchscreen from a stylus pressing on it.
	
- *Enable emulated stylus jitter** [desmume_pointer_stylus_jitter] (**disabled**|enabled)

	Emulate the tiny jitter from a human hand when holding a stylus; some games were accidentally dependent on this.
	
- **Load Game into Memory (restart)** [desmume_load_to_memory] (**disabled**|enabled)

	Loads the entire game into memory before startup. Will decrease in-game loading times at the cost of increased game startup times.
	
- **Enable Advanced Bus-Level Timing** [desmume_advanced_timing] (**enabled**|disabled)

	This will improve or fix some games but it is very performance demanding. Disable this if you want more speed.
	
- **Firmware language** [desmume_firmware_language] (**Auto**|English|Japanese|French|German|Italian|Spanish)

	Choose the language of the BIOS.
	
- **Frameskip** [desmume_frameskip] (**0**|1|2|3|4|5|6|7|8|9)

	Choose how much frames should be skipped to improve performance at the expense of visual smoothness.
	
	It is generally safe to choose 1 or 2 if you don't mind a slightly choppier game, in order to get a speedup.
	
	 If screens seem stuck or screen flickering becomes unacceptable, pick a different frame skip value.
	
- **Screen Gap** [desmume_screens_gap] (0 to 100 in increments of 1. **0 is default.**)

	Self explanatory.
	
??? note "Screen Gap - 0"
	![](images\Cores\desmume\screengap_0.png)
	
??? note "Screen Gap - 100"
	![](images\Cores\desmume\screengap_100.png)
	
- **Enable Edgemark** [desmume_gfx_edgemark] (**enabled**|disabled)

	Awaiting description.
	
- **Enable Line Hack** [desmume_gfx_linehack] (**enabled**|disabled)

	Fixes some graphical bugs involving lines, but causes some other bugs. Not many games use lines.
	
- **Enable TXT Hack** [desmume_gfx_txthack] (**disabled**|enabled)

	Fixes text bugs in some games (e.g. Etrian Odyssey). You may need to toggle it off & on by scene.
	
- **Force Microphone Enable** [desmume_mic_force_enable] (**disabled**|enabled)

	Self-explanatory.
	
- **Microphone Simulation Settings** [desmume_mic_mode] (**internal**|sample|random|physical)

	Configure microphone input settings.
	
	With the internal setting, DeSmuME will use its internal noise sample for microphone input which works for many games that want you to blow on the mic.
	 
	With the sample setting, you can supply your own microphone sample for microphone input. **This may not work currently in the DeSmuME core**.
	 
	With the random setting, DeSmuME will use random whitenoise for microphone input which will work for games that require blowing but which don't work with the internal noise sample.
	 
	With the physical setting, you can use your default recording device for microphone input. **This may not work currently in the DeSmuME core**.
	
## Controllers

The DeSmuME core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad - Stay on this.
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

![](images/Controllers/nds.png)

| User 1 Remap descriptors | RetroPad Inputs                              | DeSmuME core Inputs |
|--------------------------|----------------------------------------------|---------------------|
| B                        | ![](images/RetroPad/Retro_B_Round.png)       | B                   |
| Y                        | ![](images/RetroPad/Retro_Y_Round.png)       | Y                   |
| Select                   | ![](images/RetroPad/Retro_Select.png)        | Select              |
| Start                    | ![](images/RetroPad/Retro_Start.png)         | Start               |
| Up                       | ![](images/RetroPad/Retro_Dpad_Up.png)       | Up                  |
| Down                     | ![](images/RetroPad/Retro_Dpad_Down.png)     | Down                |
| Left                     | ![](images/RetroPad/Retro_Dpad_Left.png)     | Left                |
| Right                    | ![](images/RetroPad/Retro_Dpad_Right.png)    | Right               |
| A                        | ![](images/RetroPad/Retro_A_Round.png)       | A                   |
| X                        | ![](images/RetroPad/Retro_X_Round.png)       | X                   |
| L                        | ![](images/RetroPad/Retro_L1.png)            | L                   |
| R                        | ![](images/RetroPad/Retro_R1.png)            | R                   |
| Lid Close/Open           | ![](images/RetroPad/Retro_L2.png)            | Lid Close/Open      |
| Tap Stylus               | ![](images/RetroPad/Retro_R2.png)            | Tap Stylus          |
| Toggle Microphone        | ![](images/RetroPad/Retro_L3.png)            | Toggle Microphone   |
| Quick Screen Switch      | ![](images/RetroPad/Retro_R3.png)            | Quick Screen Switch |
|                          | ![](images/RetroPad/Retro_Left_Stick.png) X  | [Pointer mode l-analog](https://docs.libretro.com/library/desmume/#core-options) X |
|                          | ![](images/RetroPad/Retro_Left_Stick.png) Y  | [Pointer mode l-analog](https://docs.libretro.com/library/desmume/#core-options) Y |
|                          | ![](images/RetroPad/Retro_Right_Stick.png) X | [Pointer mode r-analog](https://docs.libretro.com/library/desmume/#core-options) X |
|                          | ![](images/RetroPad/Retro_Right_Stick.png) Y | [Pointer mode r-analog](https://docs.libretro.com/library/desmume/#core-options) Y |

#### Pointer

| RetroPointer Inputs                                                                                                  | DeSmuME core inputs |
|----------------------------------------------------------------------------------------------------------------------|---------------------|
| ![](images/RetroMouse/Retro_Mouse.png) or ![](images/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | Stylus              | 
| ![](images/RetroMouse/Retro_Left.png) or ![](images/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | Stylus Press        |

## Compatibility

| Game                                     | Issue                                                                                         |
|------------------------------------------|-----------------------------------------------------------------------------------------------|
| Alice in Wonderland 	                   | Needs JIT Block Size 8 or smaller to get past title screen.                                   |
| Golden Sun: Dark Dawn (Europe) 	           | Runs very slowly. Buggy sound.                                                            |
| Hotel Dusk: Room 215 	                   | Graphics glitches. Unintended "scanlines" appear on some screens.                             |
| Pokémon HeartGold (Europe) (Rev 10)        | Graphics glitches . Black pixels pop-ups in the top screen. Top screen goes black.          |
| Pokémon SoulSilver (Europe) (Rev 10)       | Graphics glitches. Black pixels pop-ups in the top screen. Top screen goes black.           |
| Puppy Palace (U) / My Puppy Shop (E)       | Crashes in menus.                                                                           |
| Rune Factory (U) 	                       | Random crashes.                                                                               |
| Rune Factory 2 (U) 	                       | Random crashes.                                                                           |
| Ultimate Mortal Kombat 3 	               | Runs very slowly.                                                                             |
| Yoshi Touch & Go 	                       | Runs very slowly.                                                                             |
| Yu-Gi-Oh! 5D's WORLD CHAMPIONSHIP 2010 (J) | Random crashes.                                                                             |

## External Links

- [Official DeSmuME Website](https://desmume.org/)
- [Official DeSmuME Github Repository](https://github.com/TASVideos/desmume)
- [Libretro DeSmuME Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/desmume_libretro.info)
- [Libretro DeSmuME Github Repository](https://github.com/libretro/desmume)
- [Report Libretro DeSmuME Core Issues Here](https://github.com/libretro/desmume/issues)

### See also

#### Nintendo - Nintendo DS (Download Play)

- [Nintendo - DS (melonDS)](https://docs.libretro.com/library/melonds)

#### Nintendo - Nintendo DS Decrypted

- [Nintendo - DS (melonDS)](https://docs.libretro.com/library/melonds)

#### Nintendo - Nintendo DS

- [Nintendo - DS (melonDS)](https://docs.libretro.com/library/melonds)