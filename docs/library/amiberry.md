# Commodore - Amiga (Amiberry)

## Background

Amiberry is a lightweight, optimized Amiga emulator based on UAE. Requires appropriate Kickstart ROMs.

The Amiberry core has been authored by

- BlitterStudio/amiberry

The Amiberry core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Amiberry core have the following file extensions:

- .adf
- .adz
- .dms
- .fdi
- .raw
- .ipf
- .hdf
- .hdz
- .lha
- .lzh
- .zip
- .7z
- .uae
- .rp9
- .m3u
- .m3u8
- .iso
- .cue
- .ccd
- .nrg
- .mds
- .chd

RetroArch database(s) that are associated with the Amiberry core:

- [Commodore - Amiga](https://github.com/libretro/libretro-database/blob/master/rdb/Commodore%20-%20Amiga.rdb)
- [Commodore - CD32](https://github.com/libretro/libretro-database/blob/master/rdb/Commodore%20-%20CD32.rdb)
- [Commodore - CDTV](https://github.com/libretro/libretro-database/blob/master/rdb/Commodore%20-%20CDTV.rdb)

## BIOS

Required or optional firmware files go in the frontend's system directory.

| Filename | Description | md5sum |
|:---:|:---:|:---:|
| kick34005.A500 | A500 Kickstart v1.3 r34.5 - Required |  |
| kick37350.A600 | A600 Kickstart v2.05 r37.350 - Required |  |
| kick40068.A1200 | A1200 Kickstart v3.1 r40.68 - Required |  |
| kick33180.A500 | A500 Kickstart v1.2 r33.180 - Optional |  |
| kick40068.A4000 | A4000 Kickstart v3.1 r40.68 - Optional |  |
| kick40060.CD32 | CD32 Kickstart v3.1 r40.60 - Optional |  |
| ext40060.CD32 | CD32 Extended-ROM r40.60 - Optional |  |

## Features

Frontend-level settings or features that the Amiberry core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |
| Core Options      | ✔         |

### Directories

The Amiberry core's library name is 'Amiberry'

## Core options

The Amiberry core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

#### System

System and ROM settings.

- **Model** [amiberry_model] (**A500 (512K Chip + 512K Slow, OCS, KS 1.3)**|A500 Original (512K Chip, OCS, KS 1.2)|A500+ (1MB Chip, ECS)|A600 (2MB Chip + 8MB Fast, ECS)|A1200 Original (2MB Chip, AGA)|A1200 (2MB Chip + 8MB Fast, AGA)|A4000/030 (2MB Chip + 8MB, AGA)|A4000/040 (2MB Chip + 8MB, AGA)|CD32 (2MB Chip, AGA)|CD32 (2MB Chip + 8MB Fast, AGA)|CDTV (1MB Chip, ECS))

	Select the Amiga model and configuration preset. Models with expanded RAM allow more demanding software to run. Core restart required.

- **Kickstart ROM** [amiberry_kickstart] (**Automatic**|kick.rom|kick13.rom|kick20.rom|kick31.rom|kick205.rom|kick40068.A1200|kick40068.A4000|cd32.rom|cdtv.rom)

	Override the Kickstart ROM file. Uses system directory unless an absolute path is provided. Core restart required.

- **CPU Model** [amiberry_cpu_model] (**Auto**|68000|68010|68020|68030)

	Override the CPU model. Uses model defaults when set to Auto. Core restart required.

- **Chipset** [amiberry_chipset] (**Auto**|OCS|ECS)

	Override the chipset. Uses model defaults when set to Auto. Core restart required.

- **Chipset (AGA)** [amiberry_chipset_aga] (**Auto**|OCS|ECS|AGA)

	Override the chipset on AGA-capable models. Uses model defaults when set to Auto. Core restart required.

- **Floppy Speed** [amiberry_floppy_speed] (Turbo|**1x (Normal)**|2x|4x|8x)

	Set floppy drive speed multiplier. 0 enables turbo loading.

#### Input

Controller and mouse settings.

- **Port 1 Device** [amiberry_port0_device] (**Mouse**|Joystick)

	Select the input device for Amiga port 1.

- **Port 2 Device** [amiberry_port1_device] (**Joystick**|Mouse)

	Select the input device for Amiga port 2.

- **Swap Ports** [amiberry_swap_ports] (**disabled**|enabled)

	Swap input devices between port 1 and port 2.

- **Joyport Order** [amiberry_joyport_order] (**Automatic**|2-1|1-2)

	Order for mapping controller ports to Amiga ports.

- **Deadzone** [amiberry_joy_deadzone] (**33%**|25%|20%|15%|10%|5%|0%|40%|50%)

	Analog deadzone percentage.

- **Sensitivity** [amiberry_analog_sensitivity] (**18**|15|20|25|30|10)

	Adjust analog sensitivity.

- **Analog Input** [amiberry_analog] (**enabled**|disabled)

	Enable analog input mapping.

- **Joystick As Mouse** [amiberry_joy_as_mouse] (**disabled**|Port 1|Port 2|Both)

	Map joystick to mouse input.

- **Input Log File** [amiberry_input_log] (**disabled**|enabled)

	Write input events to a log file in the save directory.

#### Video

Video and sync settings.

- **Internal VSync** [amiberry_internal_vsync] (**disabled**|Standard|Standard (50Hz))

	Select internal vsync mode.

- **Video Standard** [amiberry_video_standard] (**Auto**|PAL (50Hz)|NTSC (60Hz))

	Select PAL or NTSC timing mode. Auto uses the model default. Core restart required.

- **Crop Overscan** [amiberry_crop_overscan] (**Disabled**|Automatic|Fixed 320x256|Fixed 320x240|Fixed 320x200|Fixed 320x180)

	Trim the Amiga overscan borders. Automatic uses content-aware detection of the drawn region; fixed presets use increasingly tighter centered crops for games with unstable display changes. No effect in RTG/Workbench (Picasso96) modes.

- **Status Line** [amiberry_statusline] (**Disabled**|Enabled)

	Show an on-screen status line at the bottom with power/floppy/HD/CD activity LEDs and disk insert/eject messages, like the standalone Amiberry.

- **Status Line Size** [amiberry_statusline_size] (**1x**|2x|3x|4x)

	Scale factor for the on-screen status line. Use a larger value for high-resolution output.

- **On-Screen Keyboard** [amiberry_on_screen_keyboard] (**Disabled**|Enabled)

	Show an on-screen Amiga keyboard (bottom of the screen) for typing. Toggle it with a bound gamepad button; D-pad or stick moves the focus and another button presses the key.

#### Audio

Audio settings.

- **Audio Rate** [amiberry_audio_rate] (**Auto**|44100|48000)

	Override audio sample rate. Uses defaults when set to Auto. Core restart required.

- **Interpolation** [amiberry_audio_interpolation] (**Auto**|Off|Anti-alias|Sinc)

	Override audio interpolation. Uses defaults when set to Auto. Core restart required.

- **Sound Filter** [amiberry_sound_filter] (**Off**|Emulated (A500)|Always On)

	Amiga audio low-pass filter. 'Emulated' mimics the original A500 hardware filter.

- **Stereo Separation** [amiberry_stereo_separation] (0 (Mono)|1|2|3|4|5|6|**7 (Amiga Default)**|8|9|10 (Full Stereo))

	Set stereo separation from mono to full stereo. 7 matches default Amiga hard-panned output.

- **MIDI Output** [amiberry_midi_output] (**Disabled**|Frontend MIDI|Munt MT-32|Munt CM-32L)

	Select MIDI output device. 'Frontend MIDI' routes through RetroArch's MIDI driver (configure in Settings > Audio > MIDI). Munt options provide built-in MT-32/CM-32L synthesis (requires ROM files in system/mt32-roms/).

## Controllers

The Amiberry core supports 2 port(s). Each can be set to one of the following device types:

- RetroPad
- CD32 Pad
- Joystick
- Mouse
- None

## External Links

- [Amiberry Repository](https://github.com/BlitterStudio/amiberry)
- [Report Amiberry Core Issues Here](https://github.com/BlitterStudio/amiberry/issues)

