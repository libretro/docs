# Atari - ST/STE/TT/Falcon (hatariB)

See the [hatariB documentation](https://github.com/bbbradsmith/hatariB/blob/main/README.md) on GitHub for more in-depth information.

## Background

hatariB is an Atari ST/STE/TT/Falcon system emulator that can be used as a libretro core. It emulates the family of 16-bit Atari home computers that began with the Atari ST. While this core is primarily intended to run game software, it is also capable of running many other types of Atari programs.

The hatariB core has been authored by:

- Brad Smith

This core integrates the [Hatari](https://www.hatari-emu.org/) emulator, lead by:

- Nicolas Pomarède

The Hatari core is licensed under

- [GPLv2](https://github.com/bbbradsmith/hatariB/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## How to start the hatariB core:

The simplest way to start this core is by loading an Atari ST game disk image ('Load Content'), which is equivalent to booting an Atari ST with that disk in the drive. Multi-disk games should be loaded from an M3U file containing a list of disks, though the Libretro disk controls can be used to add or swap additional disk images while running.

The core may also be started with no disk at all ('Load Core', then 'Start Core'), which will boot to the Atari desktop. This is often useful if you wish to use a virtual hard disk with the emulator, instead of running games from floppy disks. See: [Hard Disks](https://github.com/bbbradsmith/hatariB/blob/main/README.md#Hard-Disks).

Some games require a high resolution monochrome monitor setting, instead of the default colour monitor. This can be selected in the 'Core Options' 'System' menu.

## BIOS

The ST family of computers had a long history of TOS BIOS ROMs, with many regions and revisions. By default, it will look in your [system directory](https://docs.libretro.com/library/bios/) for the same `tos.img` as [Hatari](hatari.md) and use that:

| Filename          | Description                    |
|:-----------------:|:------------------------------:|
| tos.img           | Atari TOS ROM Image - Optional |

If this default TOS is not supplied, the open source [EmuTOS](https://emutos.sourceforge.io/) BIOS will be supplied automatically as a substitute. EmuTOS is capable of running most games, but it is not 100% compatible, so it is recommended to use an original Atari TOS instead.

Multiple TOS files can be placed in the system folder in a `hatarib` subdirectory, which will allow you to select one via the 'Core Options' 'System' menu. This is especially useful when switching between machine types, as later hardware like the TT or Falcon require later TOS revisions.

There is no one perfect TOS that runs everything. In general TOS 1.0 is the most widely compatible with Atari ST software. Since the majority of ST game software was produced in Europe, a European TOS (e.g. UK) is recommended. The US TOS versions will boot the system with a 60hz framerate, as opposed to 50hz. This may cause some European games that do not override the default framerate to run too fast. (Conversely, some US games will run too slow on a 50hz TOS.)

If using a hard disk, TOS 1.04 is recommended instead, because the operating system support for hard disks in TOS 1.0 was very minimal.

## Extensions

Content that can be loaded by the hatariB core have the following file extensions:

Disk images:
- st
- msa
- dim
- stx
- ipf^*^
- ctr^*^

Multi-disk playlists:
- m3u
- m3u8

Multi-disk archives:
- zip
- zst
- gz

Hard Drive images:
- acsi
- ahd
- vhd
- scsi
- shd
- ide
- gem

^*^ Requires 'capsimg' support library.

See [hatariB File Formats](https://github.com/bbbradsmith/hatariB/blob/main/README.md#File-Formats) more information.

## Features

Frontend-level settings or features that the [Core name] core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

The libretro Crop Overscan interface is not supported, but there are Core Options in the 'Video' submenu that address the issue in detail.

## Directories

The hatariB core's internal name is 'hatarib'

The hatariB core saves/loads to/from these directories:

**Frontend's Save directory**

When disks are modified by saving your game, or otherwise writing to the disk, the original ROM file is not modified. Instead a modified copy or overlay file is saved here.

**Frontend's System directory**

| File          | Description                                           |
|:-------------:|:-----------------------------------------------------:|
| hatarib.nvram | Internal OS memory for TT/Falcon                      |
| hatarib/      | Contains TOS images, and hard disk folders or images. |


## Geometry and timing

- The hatariB core's provided FPS is 50, 60, or 71Hz, dependent on software or settings.
- The hatariB core's provided sample rate is configurable to 11025, 16000, 22050, 32000, 44100, or 48000 (default) Hz.
- The hatariB core's minimum width is 320
- The hatariB core's minimum height is 200
- The hatariB core's maximum width is 832
- The hatariB core's maximum height is 588
- The hatariB core's provided aspect ratio is configurable to 1.000 (square, default), 0.844 (atari colour monitor), 1.010 (atari monochrome monitor), 0.766 (NTSC TV), 0.921 (PAL TV), 0.750 (4:3)

## Core options

The hatariB core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Options marked "Causes restart!!" restart the emulated machine when changed. The **TOS ROM** list also offers every `.img`, `.rom` and `.bin` found in `system/hatarib/`.

#### System

- **TOS ROM** [hatarib_tos] (system/tos.img|EmuTOS 1024k|**EmuTOS 192uk**|EmuTOS 192us)

	Causes restart!! BIOS ROM can use built-in EmuTOS, or choose from:  system/tos.img (default)  system/hatarib/* (all .img, .rom, .bin in folder)

- **Monitor** [hatarib_monitor] (Monochrome High-Resolution|**RGB Colour Low/Medium-Resolution**|VGA|TV)

	Causes restart!! Monitor type. Colour, Monochrome, VGA, TV. TV scanlines effect requires doubled low/medium resolution.

- **Machine Type** [hatarib_machine] (**ST**|Mega ST|STE|Mega STE|TT|Falcon)

	Causes restart!! Atari computer type.

- **ST Memory Size** [hatarib_memory] (256 KB|512 KB|**1 MB**|2 MB|2.5 MB|4 MB|8 MB|10 MB|14 MB)

	Causes restart!! Atari ST memory size.

- **Fast Floppy** [hatarib_fast_floppy] (Off|**On**)

	Artificially accelerate floppy disk access, reducing load times.

- **Save Floppy Disks** [hatarib_save_floppy] (Off|**On**)

	Changes to floppy disks will save a copy in saves/. If turned off, changes will be lost when the content is closed.

- **Floppy Savestate Safety Save** [hatarib_savestate_floppy_modify] (Off|**On**)

	Disable this for netplay or run-ahead. Modified floppies are always saved during eject or content closing,  but this setting produces an extra save before/after restoring a savestate to prevent un-ejected data loss. Because netplay and run-ahead use savestates constantly, this should be turned off for those activities.

- **Soft Reset** [hatarib_soft_reset] (**Off**|On)

	Core Restart is full cold boot by default (power off, on), but this will change it to a warm boot (reset button).

- **Cartridge ROM** [hatarib_cartridge] (**None**)

	ROM image for cartridge port, list of files from system/hatarib/.

- **Hard Disk** [hatarib_hardimg] (**None**)

	Causes restart!! Hard drive image, list of files and directories from system/hatarib/.

- **Hard Disk Type** [hatarib_hardtype] (**GemDOS**|GemDOS (Use 8-bit Filenames)|ACSI|SCSI|IDE (Auto)|IDE (Byte Swap Off)|IDE (Byte Swap On))

	Causes restart!! GemDOS type will simulate a hard disk from a folder in system/hatarib/. The other types must use an image file.

- **Hard Disk Boot** [hatarib_hardboot] (**Off**|On)

	Boot from hard disk.

- **Hard Disk Write Protect** [hatarib_hard_readonly] (Off|**On**|Auto)

	Write protect the hard disk folder or image.

- **EmuTOS Framerate** [hatarib_emutos_framerate] (**Default**|NTSC 60 Hz|PAL 50 Hz)

	Causes restart!! For EmuTOS ROMs this can override the default framerate.

- **EmuTOS 1024k Region** [hatarib_emutos_region] (**Default**|USA (NTSC)|Germany|France|United Kingdom|Spain|Italy|Sweden|Switzerland (French)|Switzerland (German)|Turkey|Finland|Norway|Denmark|Saudi Arabia|Netherlands|Czech Republic|Hungary|Poland|Russia|Greece|Multilanguage)

	Causes restart!! EmuTOS 1024k can choose a default region, which sets language and keyboard.

#### Input

- **Joystick 1** [hatarib_joy1_port] (None|Joy 0|**Joy 1**|STE A|STE B|Parallel 1|Parallel 2)

	Retropad 1 assigned Atari port.

- **Joystick 2** [hatarib_joy2_port] (None|**Joy 0**|Joy 1|STE A|STE B|Parallel 1|Parallel 2)

	Retropad 2 assigned Atari port.

- **Joystick 3** [hatarib_joy3_port] (None|Joy 0|Joy 1|**STE A**|STE B|Parallel 1|Parallel 2)

	Retropad 3 assigned Atari port.

- **Joystick 4** [hatarib_joy4_port] (None|Joy 0|Joy 1|STE A|**STE B**|Parallel 1|Parallel 2)

	Retropad 4 assigned Atari port.

- **Mouse** [hatarib_mouse_port] (None|**Joy 0**)

	Mouse connected to Joy 0 port. This can be connected at the same time as a joystick, but their inputs will overlap.

- **Host Mouse Enabled** [hatarib_host_mouse] (Off|**On**)

	Allow input from your own mouse device. With this disabled you can still use the retropad mouse inputs.

- **Host Keyboard Enabled** [hatarib_host_keyboard] (Off|**On**)

	Allow input from your own keyboard. With this disabled you can still use the onscreen keyboard or retropad mapped keys.

- **Auto-Fire Rate** [hatarib_autofire] (2|3|4|5|**6**|7|8|9|10|11|12|13|14|15|16|17|18|19|20)

	Frames per button press with auto-fire. (Lower number is faster.)

- **Analog Stick Threshold** [hatarib_stick_threshold] (5%|10%|20%|**30%**|40%|50%|60%|70%|80%|90%|95%)

	How far to tilt in a direction to activate the joystick direction, if mapped to an analog stick.

- **Mouse Host Sensitivity** [hatarib_mouse_host_speed] (1|2|3|4|**5**|6|7|8|9|10)

	Speed of the mouse when controlled by the host device mouse.

- **Mouse Stick Speed** [hatarib_mouse_speed] (1|2|3|4|**5**|6|7|8|9|10)

	Speed of the mouse when controlled by the analog sticks.

- **Mouse Stick Deadzone** [hatarib_mouse_deadzone] (0%|1%|2%|3%|4%|**5%**|6%|7%|8%|9%|10%|11%|12%|13%|14%|15%|20%|25%|30%|35%|40%|45%|50%)

	Dead zone for mouse analog stick control to prevent movement from controller randomness.

- **On-Screen Keyboard Layout** [hatarib_osk_layout] (**US QWERTY**|German QWERTZ|French AZERTY|UK QWERTY|Spanish QWERTY|Italian QWERTY|Swedish QWERTY|Swiss French QWERTZ|Swiss German QWERTZ|Finnish QWERTY|Norwegian QWERTY|Danish QWERTY|Dutch QWERTY|Czech QWERTZ|Hungarian QWERTZ|Polish QWERTY)

	Choose a language layout for the on-screen keyboard.

- **On-Screen Keyboard Press Time** [hatarib_osk_press_len] (1|2|3|4|**5**|6|7|8|9|10|15|20|25|30|35|40|45|50|55|60|65|70|71)

	Minimum number of frames to apply a button press from the on-screen keyboard

- **On-Screen Keyboard Repeat Delay** [hatarib_osk_repeat_delay] (50 ms|75 ms|100 ms|125 ms|150 ms|175 ms|200 ms|225 ms|250 ms|275 ms|300 ms|325 ms|350 ms|375 ms|400 ms|425 ms|450 ms|475 ms|**500 ms**|550 ms|600 ms|650 ms|700 ms|750 ms|800 ms|850 ms|900 ms|950 ms|1000 ms|1100 ms|1200 ms|1300 ms|1400 ms|1500 ms|1600 ms|1700 ms|1800 ms|1900 ms|2000 ms|2200 ms|2400 ms|2600 ms|2800 ms|3000 ms|Off)

	Holding a direction will repeat moves after this amount of time.

- **On-Screen Keyboard Repeat Rate** [hatarib_osk_repeat_rate] (50 ms|75 ms|100 ms|125 ms|**150 ms**|175 ms|200 ms|225 ms|250 ms|275 ms|300 ms|325 ms|350 ms|375 ms|400 ms|425 ms|450 ms|475 ms|500 ms|550 ms|600 ms|650 ms|700 ms|750 ms|800 ms|850 ms|900 ms|950 ms|1000 ms|1100 ms|1200 ms|1300 ms|1400 ms|1500 ms|1600 ms|1700 ms|1800 ms|1900 ms|2000 ms|2200 ms|2400 ms|2600 ms|2800 ms|3000 ms)

	Holding a direction will repeat moves at this rate after the first delay.

#### Video

- **Resolution Double** [hatarib_res2x] (Off|**Double Medium**|Double Low + Medium)

	Doubles pixels for low and/or medium resolution,  Prevents video output size changes for resolution switch, and keeps the medium resolution PAR closer to square.

- **Screen Borders** [hatarib_borders] (None|Small|**Medium**|Large|Maximum|Crop 720p (240, 480)|Crop 1080p (270, 540))

	Atari ST monitors had a visible border around the main screen area, but most software does not display anything in it.

- **Status Bar** [hatarib_statusbar] (Off|**On**|Drive Light)

	Display the Hatari status bar at the bottom of the screen, or floppy drive light at the top right.

- **Pixel Aspect Ratio** [hatarib_aspect] (**Square Pixels**|Atari Monitor|NTSC TV|PAL TV|4:3)

	Reports a pixel aspect ratio appropriate for a chosen monitor type. Requires 'Core Provided' Aspect Ratio in Video > Scaling settings.

- **Pause Screen Display** [hatarib_pause_osk] (**Help and Information**|Floppy Disk List|Bouncing Box|Snow|Darken|No Indicator)

	The help screen is displayed at pause by default, but there are alternatives.

- **Show Welcome Message** [hatarib_show_welcome] (Off|**On**)

	At startup the status bar shows a welcome message for 5 seconds, if enabled.

- **Boot Notification** [hatarib_boot_alert] (Off|**On**)

	Show notification for reset/reboot.

#### Audio

- **Samplerate** [hatarib_samplerate] (11025 Hz|16000 Hz|22050 Hz|32000 Hz|44100 Hz|**48000 Hz**)

	Audio samplerate.

- **YM Voices Mixing** [hatarib_ymmix] (Linear|**ST Table**|Math Model)

	Sound chip volume curves.

- **Lowpass Filter** [hatarib_lpf] (None|Hatari STF|Hatari STE/Falcon|**Clean Lowpass**)

	Reduces high frequency noise from sound output to reduce harshness.

- **Highpass Filter** [hatarib_hpf] (None|**IIR Highpass**)

	Removes very low frequencies to keep output waveform centred.

- **MIDI Enable** [hatarib_midi] (Off|**On**)

	MIDI I/O is enabled by default if you have a MIDI device set, but it can be disabled here.

#### Advanced

- **Drive B Enable** [hatarib_driveb] (Off|**On**)

	Turn off to disconnect drive B.

- **Single-Sided Drives** [hatarib_drivesides] (Single-Sided|**Double-Sided**)

	Single-Sided floppy drives instead of Double-Sided.

- **Write Protect Floppy Disks** [hatarib_readonly_floppy] (**Off**|On)

	Write-protect all floppy disks in emulation. The emulated operating system will know that all writes are failing.

- **CPU** [hatarib_cpu] (**Auto**|68000|68010|68020|68030|68040|68060)

	Causes restart!! 68000 family CPU type.

- **CPU Clock Rate** [hatarib_cpu_clock] (**Auto**|8 MHz|16 MHz|32 MHz)

	CPU speed at boot.

- **FPU** [hatarib_fpu] (**Auto**|None|68881|68882|Internal)

	Causes restart!! Floating point unit used with the CPU.

- **Patch TOS for Fast Boot** [hatarib_patchtos] (Off|**On**)

	Boot slightly faster for some known TOS ROMs.

- **Crash Timeout Reset** [hatarib_crashtime] (Off|1|2|3|4|5|6|7|8|9|**10**|11|12|13|14|15|16|17|18|19|20|25|30|35|40|45|50|55|60)

	Time in seconds. If the CPU halts, nothing will happen until a hard reset. This option will automatically reset after the chosen time.

- **Blitter in ST Mode** [hatarib_blitter_st] (**Off**|On)

	Causes restart!! Normally the blitter requires a Mega ST.

- **Video Timing** [hatarib_wakestate] (Random|Wakestate 1|Wakestate 2|**Wakestate 3**|Wakestate 4)

	Specify startup timing for video output.

- **CPU Prefetch Emulation** [hatarib_prefetch] (Off|**On**)

	Causes restart!! Uses more CPU power, more accurate, commonly needed.

- **Cycle-exact Cache Emulation** [hatarib_cycle_exact] (Off|**On**)

	Causes restart!! Uses more CPU power, more accurate.

- **MMU Emulation** [hatarib_mmu] (**Off**|On)

	Causes restart!! For TT or Falcon. Uses more CPU power.

- **Hatari Logging** [hatarib_log_hatari] (Fatal|**Error**|Warn|Info|To Do|Debug)

	Hatari's internal log messages can be sent to the RetroArch logs. Requires content close and re-open.

- **Performance Counters** [hatarib_perf_counters] (**Off**|On)

	Display performance timing on the status bar: frame (average) + last: reset, savestate, restore (μs)

- **Debug Tracing** [hatarib_tracing] (**none**|video_vbl,video_sync|cpu_disasm|cpu_all|all)

	Enable INFO in Hatari Logging first.

- **Debug Input Log** [hatarib_input_debug] (**Off**|On)

	For debugging input, dump polled inputs to the log every frame.

## User 1 - 4 device types

The hatariB core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- Gamepad
- Keyboard
- Mouse

## Joypad

The gamepad buttons can be remapped to a variety of Atari ST inputs, including joystick, keyboard and mouse. The default mappings are:

| RetroPad Inputs                                | Atari Inputs                |
|------------------------------------------------|-----------------------------|
| ![](../image/retropad/retro_b.png)             | Joystick Button             |
| ![](../image/retropad/retro_y.png)             | Mouse Left Click            |
| ![](../image/retropad/retro_select.png)        | Select Drive A/B            |
| ![](../image/retropad/retro_start.png)         | Pause/Core Info             |
| ![](../image/retropad/retro_dpad_up.png)       | Joystick Up                 |
| ![](../image/retropad/retro_dpad_down.png)     | Joystick Down               |
| ![](../image/retropad/retro_dpad_left.png)     | Joystick Left               |
| ![](../image/retropad/retro_dpad_right.png)    | Joystick Right              |
| ![](../image/retropad/retro_a.png)             | Joystick Auto-Fire          |
| ![](../image/retropad/retro_x.png)             | Mouse Right Click           |
| ![](../image/retropad/retro_l1.png)            | On-Screen Keyboard          |
| ![](../image/retropad/retro_r1.png)            | On-Screen Keyboard One-Shot |
| ![](../image/retropad/retro_l2.png)            | Mouse Speed Slow            |
| ![](../image/retropad/retro_r2.png)            | Mouse Speed Fast            |
| ![](../image/retropad/retro_l3.png)            | Space Key                   |
| ![](../image/retropad/retro_r3.png)            | Return Key                  |
| ![](../image/retropad/retro_left_stick.png) X  | Joystick Left/Right         |
| ![](../image/retropad/retro_left_stick.png) Y  | Joystick Up/Down            |
| ![](../image/retropad/retro_right_stick.png) X | Mouse Left/Right            |
| ![](../image/retropad/retro_right_stick.png) Y | Mouse Up/Down               |

By default user 1's joystick controls are mapped to the Atari's Joy 1 port, and user 2's joystick is mapped to the Joy 0 port, but these are both configurable. STE A/B and Parallel joystick ports can also be assigned, as well as keyboard keys and other arbitrary mappings.

By default 'L1' opens an on-screen keyboard which can be used to type Atari keys, selected with the 'D-Pad' and pressed with the 'L1' button. 'R1' closes the keyboard. Alternatively 'R1' opens a "one-shot" keyboard where 'L1' will press the selected key and close the keyboard immediately. These button assignments can be configured.

## Keyboard

Keyboard input maps to the Atari ST keyboard. Focus mode might be useful to access keys normally used by the front-end interface.

## Mouse

Mouse input maps to the Atari ST mouse.

| RetroMouse Inputs                                     | Atari Inputs              |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Move Mouse                |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Left Click                |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Right Click               |

## External links

- [Official hatariB Documentation](https://github.com/bbbradsmith/hatariB/blob/main/README.md)
- [Official hatariB GitHub Repository](https://github.com/bbbradsmith/hatariB)
- [Libretro hatariB Core info file](https://github.com/bbbradsmith/hatariB/blob/main/info/hatarib.info)
- [Report Libretro hatariB Core Issues Here](https://github.com/bbbradsmith/hatariB/issues)

## Related cores

- [Hatari](hatari.md)
