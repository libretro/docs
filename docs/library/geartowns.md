# Fujitsu - FM Towns (Geartowns)

## Background

Geartowns is an open source, cross-platform Fujitsu FM Towns emulator written in C++.

- FM Towns Model 1/2 emulation with configurable RAM size, CPU speed and floppy drives.
- 80386 dynamic recompiler (dynarec) on supported platforms.
- CD-ROM drive emulation with `cue/bin`, `iso` and `chd` images, `m3u` disc playlists and disc swapping.
- Physical CD-ROM disc support through the frontend.
- Two floppy drives with `d77`, `d88`, `hdm`, `xdf` and `img` images, also inside `zip` archives, `m3u` playlists, blank save disks and persistent disk changes.
- Battery-backed CMOS saved as a save file.
- Controllers:
    * Original FM Towns gamepad (2 buttons)
    * FM Towns Marty gamepad (2 buttons and Zoom)
    * 6 button gamepad
    * FM Towns mouse, also from an analog stick
- FM Towns keyboard support.
- Supported platforms (libretro): Windows, Linux, macOS, Android, iOS, tvOS and Raspberry Pi.

The Geartowns core has been authored by:

- [Nacho Sanchez (drhelius)](https://github.com/drhelius)

The Geartowns core is licensed under:

- [GPLv3](https://github.com/drhelius/Geartowns/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Geartowns requires the FM Towns system ROMs to work. Content does not load if a required ROM is missing, and the message lists the missing files.

Place the ROMs in a `geartowns` folder inside the frontend's system directory. A complete set placed directly in the system directory is used when the `geartowns` folder doesn't have one.

!!! attention
	`FMT_SYS.ROM`, `FMT_DOS.ROM`, `FMT_FNT.ROM` and `FMT_DIC.ROM` are required for Geartowns to function.

| Filename    | Description                    | Size   | md5sum                           |
|:-----------:|:------------------------------:|:------:|:--------------------------------:|
| FMT_SYS.ROM | System ROM - Required          | 256 KB | feaf8c5675151e00cfe3ad27673bff29 |
| FMT_DOS.ROM | OS ROM - Required              | 512 KB | 0585b19930d4a7f4c71bcc8a33746588 |
| FMT_FNT.ROM | Font ROM - Required            | 256 KB | eb44f2093f51eb7159f03e170b13af76 |
| FMT_DIC.ROM | Dictionary ROM - Required      | 512 KB | 34847786d7de94b5d1133c956ab1d75d |
| FMT_F20.ROM | 20-dot Font ROM - Optional     | 512 KB |                                  |

The checksums above identify the FM Towns Model 1/2 ROMs, the recommended set. Lowercase file names (`fmt_sys.rom`, `fmt_dos.rom`, `fmt_fnt.rom`, `fmt_dic.rom` and `fmt_f20.rom`) are also accepted.

ROM sets dumped from later FM Towns models also load, but the core shows a warning because they do not match the emulated Model 1/2 hardware. The Free FM Towns Project replacement ROMs are recognized. A blank ROM is used if `FMT_F20.ROM` is not found.

## Extensions

Content that can be loaded by the Geartowns core have the following file extensions:

- .cue
- .chd
- .iso
- .zip
- .d77
- .d88
- .hdm
- .xdf
- .img
- .m3u

Geartowns supports `chd`, `iso` and `cue/bin` CD-ROM images. Load the `cue` file, not a `bin` track. CUE audio tracks can use raw BIN, WAV (44.1 kHz, 16-bit stereo) or Ogg Vorbis files. Physical CD-ROM discs can be loaded with the frontend's **Load Disc** option where supported.

Floppy disk images can be `d77`, `d88`, `hdm`, `xdf` or `img` files, also inside `zip` archives. A `zip` archive must hold exactly one floppy image. Zipped CD-ROM images are not supported; use `chd` or `cue/bin`. Multi-disk `d77`/`d88` images expose each disk as a separate disk control entry.

## Features

Frontend-level settings or features that the Geartowns core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔ (CMOS and floppy disks) |
| States            | ✔         |
| Rewind            | ✔         |
| Run-Ahead         | ✔         |
| Netplay           | ✔ (gamepads and mouse) |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
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

Keyboard input is not synchronized in netplay. Netplay peers must start with the same floppy disk working copies.

## Save states

States keep the machine and the identity of the inserted disks, but not the contents of the floppy disks. Loading a state or rewinding does not undo what a game wrote to a floppy disk. When a state was made with another disk in a drive, or with a disk in a drive that is now empty, the core inserts that disk from the disk control list and loads the state; if the disk is not in the list, the state does not load. States are about 3 MB with the default 2 MB of RAM and grow with the **RAM Size** option.

States saved by the Geartowns desktop application can't be loaded by the core.

## Starting without content

The core can start without content. The BIOS waits for a boot disk; add a CD-ROM or floppy image with **Disc Control > Append Disc** and insert it.

## Disk control

Disk controls manage both the CD-ROM drive and the floppy drives. Eject the current disk, select another disk index, then insert it again. A CD-ROM entry goes to the CD-ROM drive and a floppy entry goes to the floppy drive chosen with **Disk Control Floppy Drive**. The same floppy disk cannot be in both drives.

Each drive keeps its own disk. When the selected entry belongs to another drive, the ejected drive gets its disk back right away, so a CD-ROM game keeps its disc while a floppy disk is changed.

When content is opened again, the disk RetroArch remembers is used for CD-ROM entries. Floppy disk content always starts from its first disk.

Load an `m3u` playlist to add several CD-ROM or floppy images to the disk control list. Playlists can mix CD-ROM and floppy images; when they do, the first image of the other media type is also inserted at startup. Enable **Floppy MultiDrive** to also insert the following floppy disk into drive 2.

Custom labels for the disk control list can be set with `DISK_FILE|DISK_LABEL`. A blank label (`DISK_FILE|`) shows only the disk index. A `#SAVEDISK:DiskName` line adds a formatted blank 2HD save disk; `DiskName` is optional and is stored as the D77 disk name, not as a volume label on the disk. Save disks are created in the frontend's save directory as `[M3U_FILE_NAME].save[N].d77` and labelled `Save Disk N`, counting from 0.

`Game.m3u`
```
Game (Disk 1).d77|Program Disk
Game (Disk 2).d77|Data Disk
#SAVEDISK:USER
```

## Floppy disks

Geartowns never writes to the original floppy images. When a game writes to a floppy disk, the changes are stored as a working copy in the frontend's save directory and loaded automatically the next time the same disk is inserted. Changes are written a few seconds after the game stops writing, when the disk is ejected or swapped, and when the content is closed.

Delete the working copy to return to the original disk image.

Some software asks for a blank user or save disk. Enable **Save Disk** to add a formatted blank 2HD disk named "Save Disk" to the disk control list, or add a `#SAVEDISK:` line to an `m3u` playlist. Save disks are created in the save directory, and games write to them directly.

## Directories

The Geartowns core's library name is 'Geartowns'.

The Geartowns core saves/loads to/from these directories.

**Frontend's System directory**

| File                  | Description     |
|:---------------------:|:---------------:|
| geartowns/FMT_SYS.ROM | System ROM      |
| geartowns/FMT_DOS.ROM | OS ROM          |
| geartowns/FMT_FNT.ROM | Font ROM        |
| geartowns/FMT_DIC.ROM | Dictionary ROM  |
| geartowns/FMT_F20.ROM | 20-dot Font ROM |

The same files are read from the system directory itself when the `geartowns` folder has no complete set.

**Frontend's Save directory**

| File                              | Description              |
|:---------------------------------:|:------------------------:|
| *.srm                             | CMOS backup RAM          |
| `<image name>.<CRC32>.geartowns.d77` | Floppy disk working copy |
| `<image name>.<CRC32>.<N>.geartowns.d77` | Working copy of disk N when an earlier disk of the same image is identical |
| `<content name>.save.d77`         | Save disk                |
| `<m3u name>.save<N>.d77`          | Playlist save disk       |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The Geartowns core reports a dynamic refresh rate that follows the vertical sync rate of the emulated CRTC
- The Geartowns core's provided sample rate is 44100 Hz
- The Geartowns core's base size follows the active video mode, starting at 640x480
- The Geartowns core's max width is 1024
- The Geartowns core's max height is 768
- The Geartowns core's default aspect ratio is 4:3; the ['Aspect Ratio' core option](#core-options) can change it

## Core options

The Geartowns core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings marked (restart) take effect after reloading the content.

- **Aspect Ratio** [geartowns_aspect_ratio] (1:1 PAR|**4:3 DAR**|16:9 DAR|16:10 DAR)

	Select which aspect ratio will be presented by the core. *1:1 PAR* produces square pixels at monitor resolution, also when **Native Resolution** outputs fewer pixels.

- **Native Resolution** [geartowns_native_resolution] (**Enabled**|Disabled)

	Output one pixel per game pixel, as shaders expect. When disabled, zoomed modes are output at monitor resolution.

- **Frameskip** [geartowns_frameskip] (**Disabled**|Auto|Manual)

	Skip frames to avoid audio crackling when the device is too slow. *Auto* skips when the frontend reports that the audio buffer is about to run out, *Manual* uses **Frameskip Threshold (%)**.

- **Frameskip Threshold (%)** [geartowns_frameskip_threshold] (**33**|15-60)

	With *Manual* frameskip, skip frames while the audio buffer is below this percentage. Higher values reduce crackling but skip more frames. Shown when **Frameskip** is *Manual*.

- **FM Volume** [geartowns_fm_volume] (**100**|0-200)

	Volume of the FM synthesizer, as a percentage.

- **PCM Volume** [geartowns_pcm_volume] (**100**|0-200)

	Volume of the PCM sound source, as a percentage.

- **CD-DA Volume** [geartowns_cdda_volume] (**100**|0-200)

	Volume of the CD-ROM audio tracks, as a percentage.

- **Allow Opposing Directions** [geartowns_up_down_allowed] (**Disabled**|Enabled)

	Enable this option to press, quickly alternate, or hold both left and right, or up and down, at the same time.

	This may cause movement-based glitches in some software.

	It is best to keep this option disabled.

- **Mouse Sensitivity** [geartowns_mouse_sensitivity] (**5**|1-15)

	Adjust FM Towns mouse sensitivity. Higher values move the cursor faster.

- **Analog Stick Mouse** [geartowns_analog_mouse] (**Disabled**|Left stick|Right stick)

	Move the FM Towns mouse with an analog stick of the first controller. L2 and R2 are the mouse buttons. A controller port must be set to *Mouse*.

- **Analog Mouse Speed** [geartowns_analog_mouse_speed] (**5**|1-10)

	Adjust how fast the analog stick moves the FM Towns mouse. Shown when **Analog Stick Mouse** is enabled.

- **Preload CD-ROM (restart)** [geartowns_cdrom_preload] (**Disabled**|Enabled)

	Preload all CD-ROM tracks into RAM. This increases memory usage but may improve performance.

- **CD-ROM Read Speed** [geartowns_cdrom_speed] (**1x (Original)**|2x|4x|8x)

	Speed up how fast the drive reads sectors. Faster speeds reduce loading times, but some software may not expect a faster drive.

- **Disk Control Floppy Drive** [geartowns_floppy_drive] (**Floppy 1**|Floppy 2)

	Select the floppy drive that the frontend's disk control ejects and inserts floppy disks into.

- **Floppy MultiDrive (restart)** [geartowns_floppy_multidrive] (**Disabled**|Enabled)

	Also insert the floppy that follows the boot floppy into drive 2, for software that reads from both drives.

- **Save Disk (restart)** [geartowns_save_disk] (**Disabled**|Enabled)

	Add a blank 2HD floppy disk to the disk control list for software that asks for a user or save disk. It is stored in the save directory.

- **RAM Size (restart)** [geartowns_ram_size] (1 MB|**2 MB (Original)**|4 MB|6 MB)

	Main memory of the FM Towns Model 1/2. Some software needs more than the original 2 MB. Save states grow with it.

- **CPU Speed (restart)** [geartowns_cpu_speed] (**16 MHz (Original)**|20 MHz|25 MHz|33 MHz|40 MHz|50 MHz|66 MHz|100 MHz)

	Run the 80386 faster than the original 16 MHz. Some software may not expect a faster CPU.

- **Clock Start (restart)** [geartowns_rtc] (**Host time**|Fixed date)

	Start the FM Towns clock from the host time or from a fixed date (January 1, 1990). A fixed date makes netplay and replays independent of each computer's clock.

- **Floppy Drives (restart)** [geartowns_floppy_drives] (1|**2**)

	Number of internal floppy drives.

- **CPU Dynarec** [geartowns_dynarec] (**Enabled**|Disabled)

	Use dynamic recompilation. Most games will run faster but some games may run slower.

	The core falls back to the interpreter if the frontend can't run generated code. This option is not available on iOS and tvOS.

## Joypad

Ports 1 and 2 accept **Original gamepad**, **Marty gamepad**, **6 button gamepad**, **Mouse** or **Keyboard**. **Original gamepad** is the default. Set port 2 to **Mouse** for Towns OS and other mouse-driven software.

| RetroPad Inputs                             | Original gamepad | Marty gamepad | 6 button gamepad |
|---------------------------------------------|------------------|---------------|------------------|
| ![](../image/retropad/retro_dpad_up.png)    | D-Pad Up         | D-Pad Up      | D-Pad Up         |
| ![](../image/retropad/retro_dpad_down.png)  | D-Pad Down       | D-Pad Down    | D-Pad Down       |
| ![](../image/retropad/retro_dpad_left.png)  | D-Pad Left       | D-Pad Left    | D-Pad Left       |
| ![](../image/retropad/retro_dpad_right.png) | D-Pad Right      | D-Pad Right   | D-Pad Right      |
| ![](../image/retropad/retro_select.png)     | Select           | Select        | Select           |
| ![](../image/retropad/retro_start.png)      | Run              | Run           | Run              |
| ![](../image/retropad/retro_a.png)          | A                | A             | A                |
| ![](../image/retropad/retro_b.png)          | B                | B             | B                |
| ![](../image/retropad/retro_y.png)          |                  |               | C                |
| ![](../image/retropad/retro_x.png)          |                  |               | X                |
| ![](../image/retropad/retro_l1.png)         |                  |               | Y                |
| ![](../image/retropad/retro_r1.png)         |                  | Zoom          | Z                |

A port set to **Keyboard** has no FM Towns gamepad. Use RetroArch's keyboard mapping in *Quick Menu > Controls* to assign FM Towns keys to the RetroPad buttons of that port.

## Mouse

Select *Mouse* as the device type for controller port 1 or 2. The FM Towns mouse follows the mouse of RetroArch's first user, whichever port it is plugged into. Only one mouse is supported; a second port set to *Mouse* is unplugged. Adjust movement with **Mouse Sensitivity**.

| RetroMouse Inputs | FM Towns Mouse |
|-------------------|----------------|
| Mouse movement    | Movement       |
| Left button       | Left button    |
| Right button      | Right button   |

Without a mouse, enable **Analog Stick Mouse** to move the FM Towns mouse with an analog stick of the first controller.

| RetroPad Inputs                              | FM Towns Mouse |
|----------------------------------------------|----------------|
| Left or right analog stick                   | Movement       |
| ![](../image/retropad/retro_l2.png)          | Left button    |
| ![](../image/retropad/retro_r2.png)          | Right button   |

## Keyboard

The host keyboard is mapped to the FM Towns keyboard by key position. Letters, numbers, cursor keys, the numeric keypad, Shift, Left Ctrl, Alt, Tab, Space, Enter, Backspace, Insert, Delete and Home map to the FM Towns keys with the same names.

!!! attention
	Outside *Game Focus* mode, RetroArch does not pass keys bound to hotkeys or to RetroPad buttons to the core. With the default bindings this includes F1-F9, F11, Enter, Space, Escape, the cursor keys and many letters. Enable *Game Focus* (Scroll Lock by default) before typing, or set *Settings > Input > Auto Game Focus* to *Detect*. On keyboards without Scroll Lock, bind *Game Focus* to another key in *Settings > Input > Hotkeys*.

Keys that map to a different FM Towns key:

| Host key           | FM Towns key  |
|--------------------|---------------|
| F1 - F15           | PF1 - PF15    |
| Escape / Pause     | BREAK         |
| ` (backquote)      | ESC           |
| = (equals)         | ^             |
| [ (left bracket)   | @             |
| ] (right bracket)  | [             |
| \\ (backslash)     | ¥             |
| # (UK keyboards)   | ]             |
| ' (quote)          | :             |
| Caps Lock          | CAPS          |
| Page Up            | PREVIOUS      |
| Page Down          | NEXT          |
| Print Screen       | COPY          |
| Right Alt          | Kana/Kanji    |
| Right Ctrl         | KATAKANA      |
| Left Super         | NO CONVERT    |
| Right Super        | CONVERT       |
| Menu               | HIRAGANA      |

The FM Towns HALF/FULL, PF16-PF20, keypad 000 and dictionary keys have no host key in the libretro core. On keyboards without a `#` key, map `#` to a button with RetroArch's keyboard mapping to reach the FM Towns `]` key.

## External Links

- [Official Geartowns Github Repository](https://github.com/drhelius/Geartowns)
- [Libretro Geartowns Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/geartowns_libretro.info)
- [Report Libretro Geartowns Core Issues Here](https://github.com/drhelius/Geartowns/issues)
