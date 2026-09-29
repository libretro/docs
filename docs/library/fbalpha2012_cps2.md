# Arcade (FB Alpha 2012 CPS-2)

## Background

Based on a snapshot of the Final Burn Alpha codebase from circa 2012, 'FB Alpha 2012 CPS-2' is compatible with FB Alpha v0.2.97.28 ROM sets. This core variant is for CPS-2 games only. It exists solely for use with RAM-constrained platforms, such as certain console or embedded platforms, that do not have the capacity to load the full core along with large games. Most users should use up-to-date FBNeo instead.

The FB Alpha 2012 CPS-2 core has been authored by

- Team FB Alpha

The FB Alpha 2012 CPS-2 core is licensed under

- Non-commercial

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FB Alpha 2012 CPS-2 core have the following file extensions:

- .zip

## Features

Frontend-level settings or features that the FB Alpha 2012 CPS-2 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |
| Core Options      | ✔         |

### Directories

The FB Alpha 2012 CPS-2 core's library name is 'FB Alpha 2012 CPS-2'

## Core options

The FB Alpha 2012 CPS-2 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **CPU Speed (%)** [fba2012cps2_cpu_speed_adjust] (**100**|110|120|130|140|150|160|170|180|190|200)

	Enables overclocking of the emulated CPU. Can reduce slowdown, but may cause glitches.

- **High scores** [fba2012cps2_hiscores] (enabled|**disabled**)

	Enables saving of high scores in supported games. Requires the file 'hiscore.dat' to be placed in your system/fbalpha2012/ folder.

- **Controls** [fba2012cps2_controls] (**Gamepad**|Arcade)

	Set default controller mapping.

- **Core-Provided Aspect Ratio** [fba2012cps2_aspect] (**DAR**|PAR)

	Selects the preferred content aspect ratio. This will only apply when RetroArch's aspect ratio is set to 'Core provided' in the Video settings.

- **Rotate Vertically Aligned Games (Restart Required)** [fba2012cps2_auto_rotate] (**enabled**|disabled)

	Automatically rotate the display when running vertically aligned games. When disabled, D-Pad input will be rotated to match on-screen directions.

- **Audio Filter** [fba2012cps2_lowpass_filter] (**disabled**|enabled)

	Enables a low pass audio filter to soften the 'harsh' sound of some arcade games.

- **Audio Filter Level (%)** [fba2012cps2_lowpass_range] (5 to 95 in steps of 5, **60**)

	Specifies the cut-off frequency of the low pass audio filter. A higher value increases the perceived 'strength' of the filter, since a wider range of the high frequency spectrum is attenuated.

- **Frameskip** [fba2012cps2_frameskip] (**disabled**|Auto|Manual)

	Skip frames to avoid audio buffer under-run (crackling). Improves performance at the expense of visual smoothness. 'Auto' skips frames when advised by the frontend. 'Manual' utilizes the 'Frameskip Threshold (%)' setting.

- **Frameskip Threshold (%)** [fba2012cps2_frameskip_threshold] (15 to 60 in steps of 3, **33**)

	When 'Frameskip' is set to 'Manual', specifies the audio buffer occupancy threshold (percentage) below which frames will be skipped. Higher values reduce the risk of crackling by causing frames to be dropped more frequently.

## External Links

- [FB Alpha 2012 CPS-2 Repository](https://github.com/libretro/fbalpha2012_cps2)
- [Report FB Alpha 2012 CPS-2 Core Issues Here](https://github.com/libretro/fbalpha2012_cps2/issues)

