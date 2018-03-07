# Nintendo - Game Boy / Color (Gearboy)

## Background

Gearboy is an open source, multi-platform, Nintendo Game Boy (DMG) / Game Boy Color (CGB) emulator written in C++.

- Highly accurate CPU emulation, passes cpu_instrs.gb from blargg's tests.
- Accurate instruction and memory timing, passes instr_timing.gb and mem_timing.gb from blargg's tests.
- Memory Bank Controllers (MBC1, MBC2, MBC3 with RTC, MBC5), ROM + RAM and multicart cartridges.
- Accurate LCD controller emulation. Background, window and sprites, with correct timings and priorities including mid-scanline timing.
- Mix frames: Mimics the LCD ghosting effect seen in the original Game Boy.
- Sound emulation using SDL Audio and [Gb_Snd_Emu library](http://slack.net/~ant/libs/audio.html#Gb_Snd_Emu).
- Battery powered RAM save support.
- Runs on Windows, Linux, Mac OS X, Raspberry Pi, iOS and as a libretro core (RetroArch).

### Author/License

The Gearboy core has been authored by

- Ignacio Sanchez

The Gearboy core is licensed under

- [GPLv3](https://github.com/libretro/Gearboy/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions

Content that can be loaded by the Gearboy core have the following file extensions:

- .gb
- .dmg
- .gbc
- .cgb
- .sgb

## Databases

RetroArch database(s) that are associated with the Gearboy core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

## BIOS

Not required.

## Features

Frontend-level settings or features that the Gearboy core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Gearboy core's internal core name is 'Gearboy'

The Gearboy core saves/loads to/from these directories.

**Frontend's Save directory**

- 'content-name'.srm (Cartridge battery save)
- 'content-name'.rtc (Real time clock save)

**Frontend's State directory**

- 'content-name'.state# (State)

### Geometry and timing

- The Gearboy core's core provided FPS is 59.7275005696
- The Gearboy core's core provided sample rate is 44100 Hz
- The Gearboy core's core provided aspect ratio is 10/9

## Core options

The Gearboy core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Emulated Model (restart)** [gearboy_model] (**Auto**|Game Boy DMG)

	Select which hardware/model is emulated.

    - Auto selects the best hardware based in the rom.
    - Game Boy DMG forces original Game Boy hardware.

- **Palette** [gearboy_palette] (**Original**|Sharp|B/W|Autumn|Soft|Slime)

	Select a color palette for Game Boy DMG games.

## Controllers

The Gearboy core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **RetroPad** - Joypad - Stay on this.
- Nintendo Gameboy - Same as RetroPad. There's no reason to switch to this.

### Controller tables

#### Joypad

![](../image/controller/gb.png)

| User 1 Remap descriptors | RetroPad Inputs                           |
|--------------------------|-------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)    |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)    |

## Compatibility

[Gearboy Accuracy Tests](https://github.com/drhelius/Gearboy#accuracy-tests)

## External Links

- [Official Gearboy Github Repository](https://github.com/drhelius/Gearboy)
- [Libretro Gearboy Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gearboy_libretro.info)
- [Libretro Gearboy Github Repository](https://github.com/libretro/Gearboy)
- [Report Libretro Gearboy Core Issues Here](https://github.com/drhelius/Gearboy/issues)

### See also

#### Nintendo - Game Boy (+ Color)

- [Nintendo - Game Boy / Color (Emux GB)](https://docs.libretro.com/library/emux_gb/)
- [Nintendo - Game Boy / Color (Gambatte)](https://docs.libretro.com/library/gambatte/)
- [Nintendo - Game Boy / Color (SameBoy)](https://docs.libretro.com/library/sameboy/)
- [Nintendo - Game Boy / Color (TGB Dual)](https://docs.libretro.com/library/tgb_dual/)
- [Nintendo - Game Boy Advance (mGBA)](https://docs.libretro.com/library/mgba/)
- [Nintendo - SNES / Famicom (higan Accuracy)](https://docs.libretro.com/library/higan_accuracy/)
- [Nintendo - SNES / Famicom (nSide Balanced)](https://docs.libretro.com/library/nside_balanced/)
