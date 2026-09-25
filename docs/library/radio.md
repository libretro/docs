# Internet Radio (Radio)

## Background

Streams internet radio stations over the network, and plays local MP3 and WAV files. Stations are read from an .m3u or .txt playlist, with up to 100 presets selectable from the core options; the core also starts with no content at all. Draws a spectrum analyser, oscilloscope, VU meters and other visualisers while it plays. Needs a working network connection for streaming.

The Radio core has been authored by

- fpscan
- gadsby

The Radio core is licensed under

- MIT

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Radio core have the following file extensions:

- .m3u
- .txt
- .mp3
- .wav

The Radio core can also be started without content.

## Features

Frontend-level settings or features that the Radio core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✕         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The Radio core's library name is 'Radio'

## Core options

The Radio core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Active Preset** [radio_station] (**Preset 1**|Preset 2|Preset 3|Preset 4|Preset 5|Preset 6|Preset 7|Preset 8|Preset 9|Preset 10|Preset 11|Preset 12|Preset 13|Preset 14|Preset 15|Preset 16|Preset 17|Preset 18|Preset 19|Preset 20|Preset 21|Preset 22|Preset 23|Preset 24|Preset 25|Preset 26|Preset 27|Preset 28|Preset 29|Preset 30|Preset 31|Preset 32|Preset 33|Preset 34|Preset 35|Preset 36|Preset 37|Preset 38|Preset 39|Preset 40|Preset 41|Preset 42|Preset 43|Preset 44|Preset 45|Preset 46|Preset 47|Preset 48|Preset 49|Preset 50|Preset 51|Preset 52|Preset 53|Preset 54|Preset 55|Preset 56|Preset 57|Preset 58|Preset 59|Preset 60|Preset 61|Preset 62|Preset 63|Preset 64|Preset 65|Preset 66|Preset 67|Preset 68|Preset 69|Preset 70|Preset 71|Preset 72|Preset 73|Preset 74|Preset 75|Preset 76|Preset 77|Preset 78|Preset 79|Preset 80|Preset 81|Preset 82|Preset 83|Preset 84|Preset 85|Preset 86|Preset 87|Preset 88|Preset 89|Preset 90|Preset 91|Preset 92|Preset 93|Preset 94|Preset 95|Preset 96|Preset 97|Preset 98|Preset 99|Preset 100)

- **Visualizer Mode** [radio_visualizer] (**FFT Spectrum Bars**|LED Pharmacy Grid|Phosphor Oscilloscope|Circular Audio Radar|Analog VU Meters)

- **Volume Level** [radio_volume] (**80%**|100%|90%|70%|60%|50%|40%|30%|20%|10%|0%)

- **Auto-Hide UI** [radio_ui_autohide] (**Never**|10 seconds|30 seconds|1 minute|5 minutes)

- **UI Color Theme** [radio_ui_theme] (**Classic Blue**|Matrix Green|Retro Amber|Synthwave Pink|Cyberpunk Orange)

- **Visualizer Palette** [radio_vis_palette] (**Neon Cyan-Pink**|Acid Green|Fire & Brimstone|Rainbow Rave|Deep Space Purple)

## External Links

- [Radio Repository](https://github.com/fpscan/libretro-radio)
- [Report Radio Core Issues Here](https://github.com/fpscan/libretro-radio/issues)

