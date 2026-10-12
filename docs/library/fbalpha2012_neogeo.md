# Arcade (FB Alpha 2012 Neo Geo)

## Background

Based on a snapshot of the Final Burn Alpha codebase from circa 2012, 'FB Alpha 2012 Neo Geo' is compatible with FB Alpha v0.2.97.29 ROM sets. This core variant is for Neo-Geo games only. It exists solely for use with RAM-constrained platforms, such as certain console or embedded platforms, that do not have the capacity to load the full core along with large games. Most users should use up-to-date FBNeo instead.

The FB Alpha 2012 Neo Geo core has been authored by

- Team FB Alpha

The FB Alpha 2012 Neo Geo core is licensed under

- Non-commercial

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FB Alpha 2012 Neo Geo core have the following file extensions:

- .iso
- .zip
- .7z

## Features

Frontend-level settings or features that the FB Alpha 2012 Neo Geo core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✔         |
| Rewind            | ✔         |

### Directories

The FB Alpha 2012 Neo Geo core's library name is 'FB Alpha 2012 Neo Geo'

## Core options

The FB Alpha 2012 Neo Geo core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. These options are set when content is loaded. **Diagnostic Input** is only shown for games that have a diagnostic input. Each game's DIP switches are added as further options.

- **Core-Provided Aspect Ratio** [fbalpha2012_neogeo_aspect] (**DAR**|PAR)

	Choose the preferred content aspect ratio. This will only apply when RetroArch's aspect ratio is set to 'Core provided' in the Video settings.

- **CPU Speed (%)** [fbalpha2012_neogeo_cpu_speed_adjust] (**100**|110|120|130|140|150|160|170|180|190|200)

	Enables overclocking of the emulated CPU. Can reduce slowdown, but may cause glitches.

- **Diagnostic Input** [fbalpha2012_neogeo_diagnostic_input] (**None**|Hold Start|Start + A + B|Hold Start + A + B|Start + L + R|Hold Start + L + R|Hold Select|Select + A + B|Hold Select + A + B|Select + L + R|Hold Select + L + R)

	Enables access to the service menu via the selected key combination.

- **Audio Filter** [fbalpha2012_neogeo_lowpass_filter] (**disabled**|enabled)

	Enables a low pass audio filter to soften the 'harsh' sound of some arcade games.

- **Audio Filter Level (%)** [fbalpha2012_neogeo_lowpass_range] (5 to 95 in steps of 5, **60**)

	Specifies the cut-off frequency of the low pass audio filter. A higher value increases the perceived 'strength' of the filter, since a wider range of the high frequency spectrum is attenuated.

- **Frameskip** [fbalpha2012_neogeo_frameskip] (**disabled**|Auto|Manual)

	Skip frames to avoid audio buffer under-run (crackling). Improves performance at the expense of visual smoothness. 'Auto' skips frames when advised by the frontend. 'Manual' utilises the 'Frameskip Threshold (%)' setting.

- **Frameskip Threshold (%)** [fbalpha2012_neogeo_frameskip_threshold] (15 to 60 in steps of 3, **33**)

	When 'Frameskip' is set to 'Manual', specifies the audio buffer occupancy threshold (percentage) below which frames will be skipped. Higher values reduce the risk of crackling by causing frames to be dropped more frequently.

- **Neo Geo Mode** [fbalpha2012_neogeo_neogeo_mode] (**MVS**|AES|UNIBIOS|DIPSWITCH)

	Choose operating mode by selecting which bios to load: MVS - Arcade; AES - Home; UNIBIOS - Hold A+B+C at UNIBIOS boot screen to configure system; DIPSWITCH - Use DIP switch setting.

## External Links

- [FB Alpha 2012 Neo Geo Repository](https://github.com/libretro/fbalpha2012_neogeo)
- [Report FB Alpha 2012 Neo Geo Core Issues Here](https://github.com/libretro/fbalpha2012_neogeo/issues)

