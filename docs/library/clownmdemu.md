# ClownMDEmu

## Background

A highly-portable Sega Mega Drive emulator that aims to be as fast as possible without sacrificing accuracy.

The ClownMDEmu core has been authored by:

- Clownacy

The ClownMDEmu core is licensed under:

- [AGPLv3](https://github.com/Clownacy/clownmdemu-libretro/blob/master/LICENCE.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the ClownMDEmu core have the following file extensions:

- .bin
- .md
- .gen
- .cue
- .iso

RetroArch database(s) that are associated with the ClownMDEmu core:

- [Sega - Mega Drive - Genesis](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Mega%20Drive%20-%20Genesis.rdb)
- [Sega - Mega-CD - Sega CD](https://github.com/libretro/libretro-database/blob/master/rdb/Sega%20-%20Mega-CD%20-%20Sega%20CD.rdb)

## Features

Frontend-level settings or features that the ClownMDEmu core respects:

| Feature           | Supported |
|-------------------|-----------|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
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
| [Softpatching](../guides/softpatching.md) | ✔         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The ClownMDEmu core's library name is 'ClownMDEmu'.

The ClownMDEmu core saves/loads to/from these directories.

**Frontend's Save directory**

| File  | Description                  |
|-------|------------------------------|
| *.srm | Mega Drive/Genesis save data |
| *.brm | Mega CD/Sega CD save data    |

**Frontend's State directory**

| File     | Description |
|----------|-------------|
| *.state# | State       |

## Geometry and timing

- The ClownMDEmu core's core-provided FPS is 59.94 for NTSC games and 50 for PAL games
- The ClownMDEmu core's core-provided sample rate is 223721.5625 Hz
- The ClownMDEmu core's base width is 320 (though this varies depending on the loaded content)
- The ClownMDEmu core's base height is 224 (though this varies depending on the loaded content)
- The ClownMDEmu core's max width is 320
- The ClownMDEmu core's max height is 480
- The ClownMDEmu core's core-provided aspect ratio is typically 10:7 (though this varies depending on the loaded content)

## Core options

The ClownMDEmu core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Debug > Disable Sprite Plane** [clownmdemu_disable_sprite_plane] (**disabled**|enabled)

	Disable the VDP's Sprite Plane.

- **Debug > Disable Window Plane** [clownmdemu_disable_window_plane] (**disabled**|enabled)

	Disable the VDP's Window Plane.

- **Debug > Disable Plane A** [clownmdemu_disable_plane_a] (**disabled**|enabled)

	Disable the VDP's Plane A.

- **Debug > Disable Plane B** [clownmdemu_disable_plane_b] (**disabled**|enabled)

	Disable the VDP's Plane B.

- **Debug > Disable FM1** [clownmdemu_disable_fm1] (**disabled**|enabled)

	Disable the YM2612's FM1 channel.

- **Debug > Disable FM2** [clownmdemu_disable_fm2] (**disabled**|enabled)

	Disable the YM2612's FM2 channel.

- **Debug > Disable FM3** [clownmdemu_disable_fm3] (**disabled**|enabled)

	Disable the YM2612's FM3 channel.

- **Debug > Disable FM4** [clownmdemu_disable_fm4] (**disabled**|enabled)

	Disable the YM2612's FM4 channel.

- **Debug > Disable FM5** [clownmdemu_disable_fm5] (**disabled**|enabled)

	Disable the YM2612's FM5 channel.

- **Debug > Disable FM6** [clownmdemu_disable_fm6] (**disabled**|enabled)

	Disable the YM2612's FM6 channel.

- **Debug > Disable DAC** [clownmdemu_disable_dac] (**disabled**|enabled)

	Disable the YM2612's DAC channel.

- **Debug > Disable PSG1** [clownmdemu_disable_psg1] (**disabled**|enabled)

	Disable the SN76496's PSG1 channel.

- **Debug > Disable PSG2** [clownmdemu_disable_psg2] (**disabled**|enabled)

	Disable the SN76496's PSG2 channel.

- **Debug > Disable PSG3** [clownmdemu_disable_psg3] (**disabled**|enabled)

	Disable the SN76496's PSG3 channel.

- **Debug > Disable PSG Noise** [clownmdemu_disable_psg_noise] (**disabled**|enabled)

	Disable the SN76496's PSG Noise channel.

- **Debug > Disable PCM1** [clownmdemu_disable_pcm1] (**disabled**|enabled)

	Disable the RF5C164's PCM1 channel.

- **Debug > Disable PCM2** [clownmdemu_disable_pcm2] (**disabled**|enabled)

	Disable the RF5C164's PCM2 channel.

- **Debug > Disable PCM3** [clownmdemu_disable_pcm3] (**disabled**|enabled)

	Disable the RF5C164's PCM3 channel.

- **Debug > Disable PCM4** [clownmdemu_disable_pcm4] (**disabled**|enabled)

	Disable the RF5C164's PCM4 channel.

- **Debug > Disable PCM5** [clownmdemu_disable_pcm5] (**disabled**|enabled)

	Disable the RF5C164's PCM5 channel.

- **Debug > Disable PCM6** [clownmdemu_disable_pcm6] (**disabled**|enabled)

	Disable the RF5C164's PCM6 channel.

- **Debug > Disable PCM7** [clownmdemu_disable_pcm7] (**disabled**|enabled)

	Disable the RF5C164's PCM7 channel.

- **Debug > Disable PCM8** [clownmdemu_disable_pcm8] (**disabled**|enabled)

	Disable the RF5C164's PCM8 channel.

- **TV Standard** [clownmdemu_tv_standard] (**NTSC (59.94Hz)**|PAL (50Hz))

	Which television standard to output in.

- **Console Region** [clownmdemu_overseas_region] (**Overseas (Elsewhere)**|Domestic (Japan))

	Which region the console is.

- **Tall Interlace Mode 2** [clownmdemu_tall_interlace_mode_2] (**disabled**|enabled)

	Makes games that use Interlace Mode 2 for split-screen not appear squashed.

- **Low-Pass Filter** [clownmdemu_lowpass_filter] (**enabled**|disabled)

	Makes the audio sound 'softer', just like on a real Mega Drive.

- **Low-Volume Distortion** [clownmdemu_ladder_effect] (**enabled**|disabled)

	Approximates the so-called 'ladder effect' that is present in early Mega Drives. Without this, certain sounds in some games will be too quiet.

## Joypad

| RetroPad Inputs                                | User 1 - 2 input descriptors |
|------------------------------------------------|------------------------------|
| ![](../image/retropad/retro_b.png)             | B                            |
| ![](../image/retropad/retro_y.png)             | A                            |
| ![](../image/retropad/retro_select.png)        | Mode                         |
| ![](../image/retropad/retro_start.png)         | Start                        |
| ![](../image/retropad/retro_dpad_up.png)       | Up                           |
| ![](../image/retropad/retro_dpad_down.png)     | Down                         |
| ![](../image/retropad/retro_dpad_left.png)     | Left                         |
| ![](../image/retropad/retro_dpad_right.png)    | Right                        |
| ![](../image/retropad/retro_a.png)             | C                            |
| ![](../image/retropad/retro_x.png)             | Y                            |
| ![](../image/retropad/retro_l1.png)            | X                            |
| ![](../image/retropad/retro_r1.png)            | Z                            |

## External links

- [Official ClownMDEmu Website](https://clownmdemu.clownacy.com)
- [Official ClownMDEmu GitHub Repository](https://github.com/Clownacy/clownmdemu-libretro)
- [Libretro ClownMDEmu Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/clownmdemu_libretro.info)
- [Report Libretro ClownMDEmu Core Issues Here](https://github.com/Clownacy/clownmdemu-libretro/issues)

## Sega Mega Drive/Genesis cores

- [Sega - Mega Drive - Genesis (BlastEm)](blastem.md)
- [Sega - MS/GG/MD/CD (Genesis Plus GX)](genesis_plus_gx.md)
- [Sega - MS/MD/CD/32X (PicoDrive)](picodrive.md)
