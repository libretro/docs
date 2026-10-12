# Quake III: Arena (vitaQuake 3)

## Background

A port of the VitaQuake 3 source port of iD's ioquake3 engine to libretro. This core loads games in the *.pk3 format.

The vitaQuakeIII core has been authored by

- Rinnegatamante

The vitaQuakeIII core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the vitaQuakeIII core have the following file extensions:

- .pk3

RetroArch database(s) that are associated with the vitaQuakeIII core:

- [Quake III](https://github.com/libretro/libretro-database/blob/master/rdb/Quake%20III.rdb)

## Features

Frontend-level settings or features that the vitaQuakeIII core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✕         |
| Rewind            | ✕         |
| Core Options      | ✔         |

### Directories

The vitaQuakeIII core's library name is 'vitaQuakeIII'

## Core options

The vitaQuakeIII core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Framerate (restart)** [vitaquakeiii_framerate] (**Auto**|50fps|60fps|72fps|75fps|90fps|100fps|119fps|120fps|144fps|155fps|160fps|165fps|180fps|200fps|240fps|244fps|300fps|360fps)

	Modify framerate. Requires a restart.

- **Sound Samplerate (Hint) (restart)** [vitaquakeiii_audio_samplerate] (**Auto**|32 kHz|44 kHz|48 kHz|96 kHz)

	Audio output rate. 'Auto' matches the frontend's target rate, which avoids the frontend resampler's extra filtering and group delay; that rate-matching, not a higher number, is what helps latency. Higher fixed rates give the music-stream resampler finer time resolution, but do little for Quake's own low-rate sound effects. Falls back to 48 kHz when the frontend can't report a target rate. Requires a restart.

- **Internal resolution (restart)** [vitaquakeiii_resolution] (480x272|640x368|640x480|720x408|856x480|800x600|**960x544**|1024x768|1152x864|1280x720|1280x960|1400x1050|1600x1200|1920x1080|2048x1536|2560x1440|3840x2160)

	Configure the resolution. Requires a restart.

- **Overbrights** [vitaquakeiii_overbrights] (Disabled|**Enabled**)

	Increases the range of lighting while comprimising color precision. Requires a restart.

- **Widescreen** [vitaquakeiii_wide] (Vert-|**Hor+**)

- **Invert Y Axis** [vitaquakeiii_invert_y_axis] (Disabled|**Enabled**)

	Invert the gamepad right analog stick's Y axis.

- **Strict Pak Checking** [vitaquakeiii_strict_paks] (**Disabled**|Enabled)

	Disabled (default): allow partial or CD installs (e.g. only pak0-pak6) to boot. Some content may be missing or incorrect, and online play against pure servers may be refused. Enabled: require a complete, checksum-verified id pak set (pak0-pak8, the 1.32 point release). pak0.pk3 is always required.

- **2D Pickups Rendering** [vitaquakeiii_pickups] (**Disabled**|Enabled)

	Makes pickups (medkits, weapons, quad damage, etc.) be rendered with 2D icons.

- **Show Equipped Weapon** [vitaquakeiii_weapon] (Disabled|**Enabled**)

	Shows equipped weapon on screen.

- **Shadows Quality** [vitaquakeiii_shadows] (Disabled|**Low**|High)

	Configure the quality of shadows rendering.

- **Textures Filter** [vitaquakeiii_filter] (Disabled|Linear|**Bilinear**|Trilinear)

	Configure the textures filter to use.

## Controllers

The vitaQuakeIII core supports the following device type(s):

- Gamepad Classic
- Gamepad Classic Alt
- Gamepad Modern
- RetroKeyboard + Mouse

## External Links

- [vitaQuakeIII Repository](https://github.com/libretro/vitaquake3)
- [Report vitaQuakeIII Core Issues Here](https://github.com/libretro/vitaquake3/issues)

