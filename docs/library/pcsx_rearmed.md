# Sony - PlayStation (PCSX ReARMed)

## Background

PCSX ReARMed is a fork of PCSX Reloaded. It differs from the latter in that it has special optimizations for systems that have an ARM architecture-based CPU.

The PCSX ReARMed core has been authored by

- PCSX Team
- notaz
- Exophase

The PCSX ReARMed core is licensed under

- [GPLv2](https://github.com/libretro/pcsx_rearmed/blob/master/COPYING)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	In case the PCSX ReARMed core can find no BIOS files named like this in RetroArch's system directory, it will default to a High-Level Emulation BIOS. This decreases the level of compatibility of the emulator, so it is recommended that you always supply valid BIOS images inside the system directory.

|   Filename    |    Description         |              md5sum              |
|:-------------:|:----------------------:|:--------------------------------:|
| scph5500.bin  | PS1 JP BIOS - Optional | 8dd7d5296a650fac7319bce665a6a53c |
| scph5501.bin  | PS1 US BIOS - Optional | 490f666e1afb15b7362b406ed1cea246 |
| scph5502.bin  | PS1 EU BIOS - Optional | 32736f17079d0b2b7024407c39bd3050 |

## Extensions

Content that can be loaded by the PCSX ReARMed core have the following file extensions:

- .bin
- .cue
- .img
- .mdf
- .pbp
- .toc
- .cbn
- .m3u

RetroArch database(s) that are associated with the PCSX ReARMed core:

- [Sony - PlayStation](https://github.com/libretro/libretro-database/blob/master/rdb/Sony%20-%20PlayStation.rdb)

## Features

Frontend-level settings or features that the PCSX ReARMed core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The PCSX ReARMed core's library name is 'PCSX-ReARMed'

The PCSX ReARMed core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description        |
|:-----:|:------------------:|
| *.srm | Memory card slot 0 |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

## Geometry and timing

- The PCSX ReARMed core's core provided FPS is 60 for NTSC games. 50 for PAL games.
- The PCSX ReARMed core's core provided sample rate is 44100 Hz
- The PCSX ReARMed core's base width is 320
- The PCSX ReARMed core's base height is 240
- The PCSX ReARMed core's max width is 1024
- The PCSX ReARMed core's max height is 512
- The PCSX ReARMed core's core provided aspect ratio is 4/3

## Loading content

PCSX ReARMed needs a cue-sheet that points to an image file. A cue sheet, or cue file, is a metadata file which describes how the tracks of a CD or DVD are laid out.

If you have e.g. `foo.bin`, you should create a text file and save it as `foo.cue`. Most PS1 games are single-track, so the cue file contents should look like this:

`foobin.cue`
```
 FILE "foo.bin" BINARY
  TRACK 01 MODE1/2352
   INDEX 01 00:00:00
```

After that, you can load the `foo.cue` file in RetroArch with the PCSX ReARMed core.

!!! attention
    Certain PS1 games are multi-track, so their .cue files might be more complicated.

## Playing PAL copy protected games

PAL copy protected games need a SBI Subchannel file next to the bin/cue files in order to get past the copy protection.

- Ape Escape (Europe).bin
- Ape Escape (Europe).cue
- **Ape Escape (Europe).sbi**

## Multiple-disk games

If foo is a multiple-disk game, you should have .cue files for each one, e.g. `foo (Disc 1).cue`, `foo (Disc 2).cue`, `foo (Disc 3).cue`.

To take advantage of PCSX ReARMed's Disk Control feature for disk swapping, an index file (a m3u file) should be made.

Create a text file and save it as `foo.m3u`. Then enter your game's .cue files on it. The m3u file contents should look something like this:

`foo.m3u`
```
foo (Disc 1).cue
foo (Disc 2).cue
foo (Disc 3).cue
```

After that, you can load the `foo.m3u` file in RetroArch with the PCSX ReARMed core.

Here's a m3u example done with Valkryie Profile

![](..\image\core\beetle_psx_hw\m3u.png)

!!! attention
	Adding multi-track games to a RetroArch playlist is recommended. (Manually add an entry a playlist that points to `foo.m3u`)

## Swapping disks	

Swapping disks follows this procedure

1. Open tray (Disk Cycle Tray Status)

2. Change the Disk Index to the disk you want to swap to. 

3. Close tray (Disk Cycle Tray Status)

4. Return to the game and wait a few seconds to let it take effect

## PBP

Alternatively to using cue sheets with .bin/.iso files, you can convert your games to .pbp (Playstation Portable update file).

A recommended .pbp convert tool is PSX2PSP.

If converting a multiple-disk game, all disks should be added to the same .pbp file, rather than making a .m3u file for them.

Most conversion tools will want a single .bin file for each disk. If your game uses multiple .bin files (tracks) per disk, you will have to mount the cue sheet to a virtual drive and re-burn the images onto a single track before conversion.

!!! attention
    RetroArch does not currently have .pbp database due to variability in users' conversion methods. All .pbp games will have to be added to playlists manually.

## Saves

For game savedata storage, the PSX console used memory cards. The PSX console had two slots for memory cards.

The PCSX ReARMed core only has support for the first memory card slot.

In this doc, the first memory card slot will be referred to as 'Memcard slot 0'.

For memory card functionality and usage, the PCSX ReARMed core will the Libretro savedata format.

<center>

| Libretro savedata format |
|--------------------------|
| gamename.srm             |

</center>

**By default**, the filename of the Memcard savedata will match the loaded cue or m3u or pbp filename, like this:

- Loaded content: Breath of Fire III (USA).cue

- **Memcard slot 0: Breath of Fire III (USA).srm**

or

- Loaded content: Final Fantasy VII (USA).m3u

- **Memcard slot 0: Final Fantasy VII (USA).srm**

or

- Loaded content: Wild Arms 2 (USA).pbp

- **Memcard slot 0: `Wild Arms 2 (USA).srm**

!!! attention
	To import your old memory cards from other emulators, you need to rename them to the Libretro savedata format.

!!! warning
	Keep in mind that save states also include the state of the memory card; carelessly loading an old save state will **OVEWRITE** the memory card, potentially resulting in lost saved games. **You can set the 'Don't overwrite SaveRAM on loading savestate' option in RetroArch's Saving settings to On to prevent this.**

## Core options

The PCSX ReARMed core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Frameskip** [pcsx_rearmed_frameskip] (**0**|1|2|3)

	Choose how much frames should be skipped to improve performance at the expense of visual smoothness.
	
- **Region** [pcsx_rearmed_region] (**auto**|NTSC|PAL)

	Choose what region the system is from.
	
- **Pad 1 Type** [pcsx_rearmed_pad1type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 1.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 2 Type** [pcsx_rearmed_pad2type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 2.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 3 Type** [pcsx_rearmed_pad3type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 3.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 4 Type** [pcsx_rearmed_pad4type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 4.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 5 Type** [pcsx_rearmed_pad5type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 5.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 6 Type** [pcsx_rearmed_pad6type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 6.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 7 Type** [pcsx_rearmed_pad7type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 7.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Pad 8 Type** [pcsx_rearmed_pad8type] (**default**|none|standard|analog|negcon)

	Choose the Pad Type for User 8.
	
	With the none setting, input is disabled.
	
	With the standard setting, a standard [PlayStation Controller](https://en.wikipedia.org/wiki/PlayStation_Controller) is emulated.
	
	With the analog setting, a [Dual Analog Controller](https://en.wikipedia.org/wiki/Dual_Analog_Controller) is emulated.
	
	With the negcon setting, a [neGcon Controller](https://en.wikipedia.org/wiki/NeGcon) is emulated.
	
- **Multitap 1** [pcsx_rearmed_multitap1] (**auto**|disabled|enabled)

	Enables/Disables [multitap](https://en.wikipedia.org/wiki/PlayStation_Multitap) functionality on port 1, allowing 3-8 player support in games that permit it.
	
- **Multitap 2** [pcsx_rearmed_multitap2] (**auto**|disabled|enabled)

	Enables/Disables [multitap](https://en.wikipedia.org/wiki/PlayStation_Multitap) functionality on port 2, allowing 3-8 player support in games that permit it.
	
- **NegCon Twist Deadzone (percent)** [pcsx_rearmed_negcon_deadzone] (**0**|5|10|15|20|25|30)

	Sets the deadzone of the RetroPad left analog stick when simulating the 'twist' action of emulated [neGcon Controllers](https://en.wikipedia.org/wiki/NeGcon). Used to eliminate drift/unwanted input.

!!! attention
	Most (all?) negCon compatible titles provide in-game options for setting a 'twist' deadzone value. To avoid loss of precision, the in-game deadzone should *always* be set to zero. Any analog stick drift should instead be accounted for by configuring the 'NegCon Twist Deadzone' core option. This is particularly important when 'NegCon Twist Response' is set to 'quadratic' or 'cubic'.
	
	Xbox gamepads typically require a deadzone of 15-20%. Many Android-compatible bluetooth gamepads have an internal 'hardware' deadzone, allowing the deadzone value here to be set to 0%.
	
	For convenience, it is recommended to make use of the 'Options → Analog Setting 1P' menu of [Gran Turismo](https://en.wikipedia.org/wiki/Gran_Turismo_(video_game)) when calibrating the 'NegCon Twist Deadzone'. This provides a clear and precise representation of 'real' controller input values.

- **NegCon Twist Response** [pcsx_rearmed_negcon_response] (**linear**|quadratic|cubic)

	Specifies the analog response when using a RetroPad left analog stick to simulate the 'twist' action of emulated [neGcon Controllers](https://en.wikipedia.org/wiki/NeGcon).
	
	'linear': Analog stick displacement is mapped linearly to negCon rotation angle.
	
	'quadratic': Analog stick displacement is mapped quadratically to negCon rotation angle. This allows for greater precision when making small movements with the analog stick.
	
	'cubic': Analog stick displacement is mapped cubically to negCon rotation angle. This allows for even greater precision when making small movements with the analog stick, but 'exaggerates' larger movements.
	
!!! attention
	A linear response is not recommended when using standard gamepad devices. The negCon 'twist' mechanism is substantially different from conventional analog sticks; linear mapping over-amplifies small displacements of the stick, impairing fine control. A linear response is only appropriate when using racing wheel peripherals.
	
	In most cases, the 'quadratic' option should be selected. This provides effective compensation for the physical differences between real/emulated hardware, enabling smooth/precise analog input.

- **Enable Vibration** [pcsx_rearmed_vibration] (**enabled**|disabled)

	Enables Rumble. Look at the [Rumble section](https://docs.libretro.com/library/pcsx_rearmed#rumble-support) for more information.
	
- **Enable Dithering** [pcsx_rearmed_dithering] (**enabled**|disabled)

	If Off, disables the dithering pattern the PSX applies to combat color banding.
	
??? note "Enable Dithering - On"
	![](..\image\core\pcsx_rearmed\dither_on.png)
	
??? note "Enable Dithering - Off"
	![](..\image\core\pcsx_rearmed\dither_off.png)
	
- **Frame duping** [pcsx_rearmed_duping_enable] (**enabled**|disabled)

	A speedup, redraws/reuses the last frame if there was no new data.
	
- **Show Bios Bootlogo(Breaks some games)** [pcsx_rearmed_show_bios_bootlogo] (**disabled**|enabled)

	Show the BIOS bootlogo.
	
??? note "Skip BIOS - Off"
	![](..\image\core\beetle_psx_hw\bios.png)
	
- **Sound: Reverb** [pcsx_rearmed_spu_reverb] (**enabled**|disabled)

	Enable sound reverb.
	
- **Sound: Interpolation** [pcsx_rearmed_spu_interpolation] (**simple**|gaussian|cubic|off)

	Modify sound interpolation.
	
- **Parasite Eve 2/Vandal Hearts 1/2 Fix** [pcsx_rearmed_pe2_fix] (**disabled**|enabled)

	Enable this to fit Parasite Eve 2 and Vandal Hearts 1/2
	
- **InuYasha Sengoku Battle Fix** [pcsx_rearmed_inuyasha_fix] (**disabled**|enabled)

	Enable this to fix InuYasha.

## Rumble

Rumble only works in the PCSX ReARMed core when

- The content being ran has rumble support.
- The frontend being used has rumble support.
- The joypad device being used has rumble support.
- The ['Enable Vibration' core option](https://docs.libretro.com/library/pcsx_rearmed#core-options) is set to On
- The corresponding user's Pad Type is set to **analog**

## Multitap

Activating multitap support in compatible games can be configured by the ['Multitap 1' and 'Multitap 2' core options](https://docs.libretro.com/library/pcsx_rearmed#core-options).

## Joypad

![](../image/controller/psx.png)

| RetroPad Inputs                                | User 1 - 8 input descriptors | standard    | analog         | negcon                          |
|------------------------------------------------|------------------------------|-------------|----------------|---------------------------------|
| ![](../image/retropad/retro_b.png)             | Cross                        | Cross       | Cross          | Analog Button I                 |
| ![](../image/retropad/retro_y.png)             | Square                       | Square      | Square         | Analog Button II                |
| ![](../image/retropad/retro_select.png)        | Select                       | Select      | Select         |                                 |
| ![](../image/retropad/retro_start.png)         | Start                        | Start       | Start          | Start                           |
| ![](../image/retropad/retro_dpad_up.png)       | D-Pad Up                     | D-Pad Up    | D-Pad Up       | D-Pad Up                        |
| ![](../image/retropad/retro_dpad_down.png)     | D-Pad Down                   | D-Pad Down  | D-Pad Down     | D-Pad Down                      |
| ![](../image/retropad/retro_dpad_left.png)     | D-Pad Left                   | D-Pad Left  | D-Pad Left     | D-Pad Left                      |
| ![](../image/retropad/retro_dpad_right.png)    | D-Pad Right                  | D-Pad Right | D-Pad Right    | D-Pad Right                     |
| ![](../image/retropad/retro_a.png)             | Circle                       | Circle      | Circle         | A                               |
| ![](../image/retropad/retro_x.png)             | Triangle                     | Triangle    | Triangle       | B                               |
| ![](../image/retropad/retro_l1.png)            | L1                           | L1          | L1             | Left Shoulder Button (analog)   |
| ![](../image/retropad/retro_r1.png)            | R1                           | R1          | R1             | Right Shoulder Button (digital) |
| ![](../image/retropad/retro_l2.png)            | L2                           | L2          | L2             | Analog Button II                |
| ![](../image/retropad/retro_r2.png)            | R2                           | R2          | R2             | Analog Button I                 |
| ![](../image/retropad/retro_l3.png)            | L3                           |             | L3             |                                 |
| ![](../image/retropad/retro_r3.png)            | R3                           |             | R3             |                                 |
| ![](../image/retropad/retro_left_stick.png) X  | Left Analog X                |             | Left Analog X  | Twist                           |
| ![](../image/retropad/retro_left_stick.png) Y  | Left Analog Y                |             | Left Analog Y  |                                 |
| ![](../image/retropad/retro_right_stick.png) X | Right Analog X               |             | Right Analog X |                                 |
| ![](../image/retropad/retro_right_stick.png) Y | Right Analog Y               |             | Right Analog Y |                                 |

## Compatibility

| Game            | Issue                                                  |
|-----------------|--------------------------------------------------------|
| Jumping Flash 2 | Graphics glitches. Geometry issues.                    |
| Tobal 2         | Graphics glitch. Garbled Dream Factory intro sequence. |

## External Links

- [Official PCSX ReARMed Website](http://notaz.gp2x.de/pcsx_rearmed.php)
- [Official PCSX ReARMed Github Repository](https://github.com/notaz/pcsx_rearmed)
- [Libretro PCSX ReARMed Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/pcsx_rearmed_libretro.info)
- [Libretro PCSX ReARMed Github Repository](https://github.com/libretro/pcsx_rearmed)
- [Report Libretro PCSX ReARMed Core Issues Here](https://github.com/libretro/pcsx_rearmed/issues)

## PSX

- [Sony - PlayStation (Beetle PSX)](https://docs.libretro.com/library/beetle_psx/)
- [Sony - PlayStation (Beetle PSX HW)](https://docs.libretro.com/library/beetle_psx_hw/)
