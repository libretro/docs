# DOS (DOSBox-SVN)

## Background

DOSBox-SVN is a port of DOSBox SVN trunk (0.74-SVN) to libretro. It allows on-the-fly configuration through core options and offers different sync methods. [DOSBox-core](dosbox_core.md) was forked from it.

The DOSBox-SVN core has been authored by

- DOSBox Team
- radius

The DOSBox-SVN core is licensed under

- [GPLv2](https://github.com/libretro/dosbox-svn/blob/libretro/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the DOSBox-SVN core have the following file extensions:

- .exe
- .com
- .bat
- .conf
- .cue
- .iso
- .img
- a directory

RetroArch database(s) that are associated with the DOSBox-SVN core:

- [DOS](https://github.com/libretro/libretro-database/blob/master/rdb/DOS.rdb)

## Features

Frontend-level settings or features that the DOSBox-SVN core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The DOSBox-SVN core's library name is 'DOSBox-SVN'

## Loading content

An .exe, .com or .bat file is run the way standalone DOSBox runs a file given on its command line. A .conf file starts DOSBox with the settings in it; its `[autoexec]` section can mount the game and start it:

```
[autoexec]
@echo off
mount c "/storage/roms/dos/game"
c:
game.exe
```

Settings in a .conf file and the core options apply to the same DOSBox settings. **Core: Enable options** decides whether the core options are applied at all.

## Core options

The DOSBox-SVN core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. The **dynamic** CPU core is only offered by builds that have a dynamic recompiler for their CPU.

- **Core: Enable options** [dosbox_svn_use_options] (**true**|false)

	Enable options. Disable in-case of using pre-generated configuration files (restart).

- **Core: Enable advanced options** [dosbox_svn_adv_options] (true|**false**)

	Enable advanced options that are not required for normal operation.

- **Core: Enable overlay file system (restart)** [dosbox_svn_save_overlay] (true|**false**)

	Enable overlay file system to redirect filesystem changes to the save directory. Disable if you have problems starting some games.

- **Core: Timing mode** [dosbox_svn_core_timing] (internal (fixed 60fps)|internal (variable fps)|external (variable fps))

	Internal mode works on an internal scheduler. DOSBox will render frames at it's own pace which may result in additional input lag and judder. Cycles modes "auto" and "max" should work as intended. There is a fixed 60 fps mode and a variable framerate mode. External mode works based on the frontend's scheduler. It should offer lower input lag but requires a fixed cycle rate. It should offer smoother scrolling, and no judder.

- **System: Emulated machine (restart)** [dosbox_svn_machine_type] (Hercules (Hercules Graphics Card)|CGA (Color Graphics Adapter)|Tandy (Tandy Graphics Adapter|PCjr|EGA (Enhanced Graphics Adapter|VGA (Video Graphics Array)|**SVGA (Super Video Graphics Array) (S3 Trio64)**|SVGA (Super Video Graphics Array) (Tseng Labs ET3000)|SVGA (Super Video Graphics Array) (Tseng Labs ET4000)|SVGA (Super Video Graphics Array) (Paradise PVGA1A)|SVGA (Super Video Graphics Array) (S3 Trio64 no-line buffer hack)|SVGA (Super Video Graphics Array) (S3 Trio64 VESA 1.3))

	The type of machine that DOSBox will try to emulate.

- **System: Hercules color mode** [dosbox_svn_machine_hercules_palette] (**black & white**|black & amber|black & green)

	The color scheme for hercules emulation.

- **System: CGA composite mode toggle** [dosbox_svn_machine_cga_composite_mode] (**auto**|true|false)

	Enable or disable CGA composite mode.

- **System: CGA model** [dosbox_svn_machine_cga_model] (**late**|early)

	They type of CGA model in the emulated system.

- **System: Memory size (restart)** [dosbox_svn_memory_size] (4|8|**16**|24|32|48|64)

	The amount of memory that the emulated machine has.

- **System: CPU core** [dosbox_svn_cpu_core] (**auto (real-mode games use normal, protected-mode games use dynamic if available)**|dynamic (dynarec using dynrec implementation)|normal (interpreter)|simple (interpreter optimized for old real-mode games))

	CPU core used for emulation. Auto will switch to dynamic if appropriate. Dynamic core DYNREC available.

- **System: CPU type** [dosbox_svn_cpu_type] (**auto (fastest choice)**|386|386 (slow)|386 (prefetch queue emulation)|486|486 (slow)|pentium (slow))

	Emulated CPU type. Auto is the fastest choice.

- **System: CPU cycles mode** [dosbox_svn_cpu_cycles_mode] (auto (real-mode games use fixed cycles 3000, protected-mode games use max)|**fixed (set emulated CPU speed to a amount of cycles**|max (sets cycles to default value of the host CPU))

	Method to determine the amount of CPU cycles that DOSBox tries to emulate per millisecond. "fixed" in combination with an appropriate cycle amount is the most compatible setting. "auto" and "max" have issues with automatically adjusting cycles on some systems.

- **System: Coarse CPU cycles multiplier** [dosbox_svn_cpu_cycles_multiplier] (100|1000|**10000**|100000)

	Multiplier for coarse CPU cycles tuning.

- **System: Coarse CPU cycles value** [dosbox_svn_cpu_cycles] (0|**1**|2|3|4|5|6|7|8|9)

	Value for coarse CPU cycles tuning.

- **System: Fine CPU cycles multiplier** [dosbox_svn_cpu_cycles_multiplier_fine] (1|10|100|**1000**|10000)

	Multiplier for fine CPU cycles tuning.

- **System: Fine CPU cycles value** [dosbox_svn_cpu_cycles_fine] (**0**|1|2|3|4|5|6|7|8|9)

	Value for fine CPU cycles tuning.

- **System: Max CPU cycles limit** [dosbox_svn_cpu_cycles_limit] (10%|20%|30%|40%|50%|60%|70%|80%|90%|**100%**|105%)

	Limit the maximum amount of CPU cycles used.

- **Video: Aspect ratio correction** [dosbox_svn_aspect_correction] (**true**|false)

	When enabled, the aspect ratio will match that of a CRT monitor. This is required for non-square pixel resolutions to look as intended. Disable this if you want unscaled square pixel aspect ratios (at the cost of a squashed or stretched image), or if the result looks clearly wrong (games that use 640x350 for example will look stretched with this enabled.)

- **Video: Scaler** [dosbox_svn_scaler] (**none**|normal2x|normal3x|advmame2x|advmame3x|advinterp2x|advinterp3x|hq2x|hq3x|2xsai|super2xsai|supereagle|tv2x|tv3x|rgb2x|rgb3x|scan2x|scan3x)

	Scaler used to scale or improve image quality.

- **Input: Enable joystick timed intervals** [dosbox_svn_joystick_timed] (**false**|true)

	Enable timed intervals for joystick axes. Experiment with this option if your joystick drifts.

- **Input: Enable gamepad emulated mouse** [dosbox_svn_emulated_mouse] (**false**|true)

	Enable mouse emulation via the right stick on your gamepad.

- **Input: Gamepad emulated mouse deadzone** [dosbox_svn_emulated_mouse_deadzone] (0%|5%|10%|15%|20%|25%|**30%**)

	Deadzone of the gamepad emulated mouse. Experiment with this value if the mouse cursor drifts.

- **Input: Horizontal mouse sensitivity.** [dosbox_svn_mouse_speed_factor_x] (0.10|0.11|0.12|0.13|0.14|0.15|0.16|0.17|0.18|0.19|0.20|0.21|0.22|0.23|0.24|0.25|0.26|0.27|0.28|0.29|0.30|0.31|0.32|0.33|0.34|0.35|0.36|0.37|0.38|0.39|0.40|0.43|0.45|0.48|0.50|0.55|0.60|0.65|0.70|0.75|0.80|0.85|0.90|0.95|**1.00**|1.10|1.17|1.25|1.38|1.50|1.63|1.75|2.00|2.25|2.50|2.75|3.00|3.25|3.50|3.75|4.00|4.25|4.50|4.75|5.00)

	Experiment with this value if the mouse is too fast when moving left/right.

- **Input: Vertical mouse sensitivity.** [dosbox_svn_mouse_speed_factor_y] (0.10|0.11|0.12|0.13|0.14|0.15|0.16|0.17|0.18|0.19|0.20|0.21|0.22|0.23|0.24|0.25|0.26|0.27|0.28|0.29|0.30|0.31|0.32|0.33|0.34|0.35|0.36|0.37|0.38|0.39|0.40|0.43|0.45|0.48|0.50|0.55|0.60|0.65|0.70|0.75|0.80|0.85|0.90|0.95|**1.00**|1.10|1.17|1.25|1.38|1.50|1.63|1.75|2.00|2.25|2.50|2.75|3.00|3.25|3.50|3.75|4.00|4.25|4.50|4.75|5.00)

	Experiment with this value if the mouse is too fast when moving up/down.

- **Sound: SoundBlaster type** [dosbox_svn_sblaster_type] (SoundBlaster 1.0|SoundBlaster 2.0|SoundBlaster Pro|SoundBlaster Pro 2|**SoundBlaster 16**|GameBlaster|none)

	Type of emulated SoundBlaster card.

- **Sound: SoundBlaster Base Address** [dosbox_svn_sblaster_base] (**220**|240|260|280|2a0|2c0|2e0|300)

	The I/O address for the emulated SoundBlaster card.

- **Sound: SoundBlaster IRQ Number** [dosbox_svn_sblaster_irq] (3|5|**7**|9|10|11|12)

	The IRQ number for the emulated SoundBlaster card.

- **Sound: SoundBlaster DMA Number** [dosbox_svn_sblaster_dma] (**1**|3|5|6|7|0)

	The DMA number for the emulated SoundBlaster card.

- **Sound: SoundBlaster High DMA Number** [dosbox_svn_sblaster_hdma] (1|3|**5**|6|7|0)

	The High DMA number for the emulated SoundBlaster card.

- **Sound: SoundBlaster OPL mode** [dosbox_svn_sblaster_opl_mode] (**auto (select based on the SoundBlaster type)**|CMS (Creative Music System / GameBlaster)|OPL-2 (AdLib / OPL-2 / Yamaha 3812)|Dual OPL-2 (Dual OPL-2 used by SoundBlaster Pro 1.0 for stereo sound)|OPL-3 (AdLib / OPL-3 / Yamaha YMF262)|OPL-3 Gold (AdLib Gold / OPL-3 / Yamaha YMF262)|none)

	The SoundBlaster emulated OPL mode. All modes are Adlib compatible except cms.

- **Sound: SoundBlaster OPL provider** [dosbox_svn_sblaster_opl_emu] (**default**|compat|fast|mame)

	Provider for the OPL emulation. Compat might provide the best quality.

- **Sound: Gravis Ultrasound support** [dosbox_svn_gus] (**false**|true)

	Enables Gravis Ultrasound emulation. Thee ULTRADIR directory is not configurable. It is always set to C:\ULTRASND and is not configurable via options.

- **Sound: Ultrasound sample rate** [dosbox_svn_gusrate] (8000|11025|16000|22050|32000|**44100**|48000|49716)

	Gravis Ultrasound emulation sample rate.

- **Sound: Ultrasound IO address** [dosbox_svn_gusbase] (220|**240**|260|280|2a0|2c0|2e0|300)

	The IO base address for the emulated Gravis Ultrasound card.

- **Sound: Ultrasound IRQ** [dosbox_svn_gusirq] (3|**5**|7|9|10|11|12)

	The IRQ number for the emulated Gravis Ultrasound card.

- **Sound: Ultrasound DMA** [dosbox_svn_gusdma] (0|1|**3**|5|6|7)

	The DMA channel for the emulated Gravis Ultrasound card.

- **Sound: Enable libretro MIDI passthrough** [dosbox_svn_midi] (**false**|true)

	Enable libretro MIDI passthrough.

- **Sound: Enable PC speaker** [dosbox_svn_pcspeaker] (**false**|true)

	Enable PC speaker emulation.

- **Sound: Enable Tandy Sound System** [dosbox_svn_tandy] (auto|true|**false**)

	Enable Tandy Sound System Emulation. Auto only works if machine is set to tandy.

- **Sound: Enable Disney Sound Source** [dosbox_svn_disney] (**false**|true)

	Enable Disney Sound Source Emulation.

- **Network: Enable IPX** [dosbox_svn_ipx] (**false**|true)

	Enable IPX over UDP tunneling.

## Controllers

The DOSBox-SVN core supports 6 ports. Ports 1 and 2 can be set to one of the following device types:

- Keyboard + Mouse
- Gamepad
- Joystick
- Disconnected

Ports 3 to 6 can be set to Keyboard + Mouse or Disconnected.

## External Links

- [Libretro DOSBox-SVN Repository](https://github.com/libretro/dosbox-svn)
- [Report Libretro DOSBox-SVN Core Issues Here](https://github.com/libretro/dosbox-svn/issues)
- [DOSBox Homepage](https://www.dosbox.com)
