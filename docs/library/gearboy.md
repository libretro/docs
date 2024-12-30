# Nintendo - Game Boy / Color (Gearboy)

## Background

Gearboy is an open source, cross-platform, Nintendo Game Boy (DMG) / Game Boy Color (GBC) emulator written in C++.

- Accurate CPU emulation, passes cpu_instrs.gb from blargg's tests.
- Accurate instruction and memory timing, passes instr_timing.gb and mem_timing.gb from blargg's tests.
- Supported cartridges: ROM, ROM + RAM, MBC1, MBC2, MBC3 + RTC, MBC5, HuC-1 and MBC1M (multicart).
- Accurate LCD controller emulation with correct timings and priorities including mid-scanline effects.
- Sound emulation using SDL Audio and [Gb_Snd_Emu library](http://slack.net/~ant/libs/audio.html#Gb_Snd_Emu).
- Battery powered RAM save support.
- Save states.
- Game Genie and GameShark cheat support.
- Bootrom (BIOS) support.
- Supported platforms (libretro): Windows, Linux, macOS, Raspberry Pi, Android, iOS, tvOS, PlayStation Vita, PlayStation 3, Nintendo 3DS, Nintendo GameCube, Nintendo Wii, Nintendo WiiU, Nintendo Switch, Emscripten, Classic Mini systems (NES, SNES, C64, ...), OpenDingux, RetroFW and QNX.

The Gearboy core has been authored by:

- [Ignacio Sanchez (drhelius)](https://github.com/drhelius)

The Gearboy core is licensed under:

- [GPLv3](https://github.com/drhelius/Gearboy/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## BIOS

Gearboy does not require bootrom (BIOS) files to work but they can be used optionally.

When the bootrom is enabled it will execute as in original hardware, causing invalid roms to lock or forcing hardware like GB Pocket or GBA, depending on the bootrom file.

Required or optional firmware files go in the frontend's system directory.

!!! attention
	 If you’d like to use any bootrom, you can place the following files in RetroArch's system directory. Then, you need to enable [DMG Bootrom](#core-options) and/or [Game Boy Color Bootrom](#core-options) core options for these bootrom files to be used.

| Filename     | Description                        | md5sum                           |
|:------------:|:----------------------------------:|:--------------------------------:|
| dmg_boot.bin | Game Boy boot ROM - Optional       | 32fbbd84168d3482956eb3c5051637f5 |
| cgb_boot.bin | Game Boy Color boot ROM - Optional | dbfce9db9deaa2567f6a84fde55f9680 |

## Extensions

Content that can be loaded by the Gearboy core have the following file extensions:

- .gb
- .dmg
- .gbc
- .cgb
- .sgb

RetroArch database(s) that are associated with the Gearboy core:

- [Nintendo - Game Boy](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy.rdb)
- [Nintendo - Game Boy Color](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Game%20Boy%20Color.rdb)

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
| RetroArch Cheats - Game Genie | ✔         |
| RetroArch Cheats - GameShark | ✔         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Gearboy core's library name is 'Gearboy'

The Gearboy core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description            |
|:-----:|:----------------------:|
| *.srm | Cartridge battery save |
| *.rtc | Real time clock save   |

**Frontend's State directory**

| File     | Description |
|:--------:|:-----------:|
| *.state# | State       |

### Geometry and timing

- The Gearboy core's core provided FPS is 59.7275005696
- The Gearboy core's core provided sample rate is 44100 Hz
- The Gearboy core's base width is 160
- The Gearboy core's base height is 144
- The Gearboy core's max width is 160
- The Gearboy core's max height is 144
- The Gearboy core's core provided aspect ratio is 10/9

## Core options

The Gearboy core has the following options that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Game Boy Model (restart)** [gearboy_model] (**Auto**|Game Boy DMG|Game Boy Advance)

	Select which hardware/model is emulated.

    - *Auto* selects the best hardware based in the rom.
    - *Game Boy DMG* forces original Game Boy hardware.
    - *Game Boy Advance* enables Game Boy Advance hardware.

- **Mapper (restart)** [gearboy_mapper] (**Auto**|ROM Only|MBC 1|MBC 2|MBC 3|MBC 5|MBC 1 Multicart)

	Select which Memory Bank Controller (MBC or mapper) is emulated.

    - *Auto* selects the best MBC based in the rom.
    - *ROM Only* forces no MBC.
    - *MBC 1* forces MBC 1.
    - *MBC 2* forces MBC 2.
    - *MBC 3* forces MBC 3 + RTC.
    - *MBC 5* forces MBC 5.
    - *MBC 1 Multicart* forces MBC 1 Multicart.

- **DMG Palette** [gearboy_palette] (**Original**|Sharp|B/W|Autumn|Soft|Slime)

	Select a color palette for Game Boy DMG games.

- **DMG Bootrom** [gearboy_bootrom_dmg] (**Disabled**|Enabled)

	This option will enable/disable bootrom for Game Boy DMG model. For this to work, the `dmg_boot.bin` file must exist in the Retro Arch's system directory.

- **Game Boy Color Bootrom** [gearboy_bootrom_gbc] (**Disabled**|Enabled)

	This option will enable/disable bootrom for Game Boy Color model. For this to work, the `cgb_boot.bin` file must exist in the Retro Arch's system directory.

- **Allow Up+Down / Left+Right** [gearboy_up_down_allowed] (**Disabled**|Enabled)

	Enabling this will allow pressing / quickly alternating / holding both left and right (or up and down in some games) directions at the same time.

	This may cause movement based glitches to occur in certain games.

	It's best to keep this core option disabled.

## Joypad

![](../image/controller/gb.png)

| User 1 input descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |

## Compatibility

- [Gearboy Accuracy Tests](https://github.com/drhelius/Gearboy#accuracy-tests)

## External Links

- [Official Gearboy Github Repository](https://github.com/drhelius/Gearboy)
- [Libretro Gearboy Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/gearboy_libretro.info)
- [Report Libretro Gearboy Core Issues Here](https://github.com/drhelius/Gearboy/issues)

### See also

#### Nintendo - Game Boy (+ Color)

- [Nintendo - Game Boy / Color (Emux GB)](emux_gb.md)
- [Nintendo - Game Boy / Color (Gambatte)](gambatte.md)
- [Nintendo - Game Boy / Color (SameBoy)](sameboy.md)
- [Nintendo - Game Boy / Color (TGB Dual)](tgb_dual.md)
- [Nintendo - Game Boy Advance (mGBA)](mgba.md)
- [Nintendo - Game Boy Advance (VBA-M)](vba_m.md)
- [Nintendo - SNES / Famicom (higan Accuracy)](higan_accuracy.md)
- [Nintendo - SNES / Famicom (nSide Balanced)](nside_balanced.md)
- [Nintendo - SNES / Famicom (Mesen-S)](mesen-s.md)
