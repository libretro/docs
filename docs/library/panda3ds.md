# Nintendo - 3DS (Panda3DS)

## Background

Panda3DS is an HLE, red-panda-themed Nintendo 3DS emulator. Panda3DS is still in the early stages of development.

The Panda3DS core has been authored by

- Panda3DS Authors (tm)

The Panda3DS core is licensed under

- GPLv3

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Panda3DS core have the following file extensions:

- .3ds
- .3dsx
- .elf
- .axf
- .cci
- .cxi
- .app

RetroArch database(s) that are associated with the Panda3DS core:

- [Nintendo - Nintendo 3DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%203DS.rdb)

## Features

Frontend-level settings or features that the Panda3DS core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✔         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

## Core options

The Panda3DS core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. Defaults shown are those of desktop builds. **Enable shader JIT** defaults to disabled on CPUs other than x86-64 and ARM64, and **Use ubershaders** to disabled on Android and Apple platforms.

- **Enable fastmem** [panda3ds_use_fastmem] (**enabled**|disabled)

- **Enable shader JIT** [panda3ds_use_shader_jit] (**enabled**|disabled)

- **Run 3DS shaders on the GPU** [panda3ds_accelerate_shaders] (**enabled**|disabled)

- **Enable accurate shader multiplication** [panda3ds_accurate_shader_mul] (**disabled**|enabled)

- **Use ubershaders (No stutter, maybe slower)** [panda3ds_use_ubershader] (**enabled**|disabled)

- **Enable VSync** [panda3ds_use_vsync] (**enabled**|disabled)

- **Hash textures (Better graphics, maybe slower)** [panda3ds_hash_textures] (**enabled**|disabled)

- **System language** [panda3ds_system_language] (**En**|Fr|Es|De|It|Pt|Nl|Ru|Ja|Zh|Ko|Tw)

- **DSP emulation** [panda3ds_dsp_emulation] (**HLE**|LLE|Null)

- **Enable audio** [panda3ds_use_audio] (**enabled**|disabled)

- **Audio volume** [panda3ds_audio_volume] (**100**|0|10|20|40|60|80|90|**100**|120|140|150|180|200)

- **Mute audio** [panda3ds_mute_audio] (**disabled**|enabled)

- **Enable AAC audio** [panda3ds_enable_aac] (**enabled**|disabled)

- **Force shadergen when rendering lights** [panda3ds_ubershader_lighting_override] (**enabled**|disabled)

- **Light threshold for forcing shadergen** [panda3ds_ubershader_lighting_override_threshold] (**1**|2|3|4|5|6|7|8)

- **Enable virtual SD card** [panda3ds_use_virtual_sd] (**enabled**|disabled)

- **Write protect virtual SD card** [panda3ds_write_protect_virtual_sd] (**disabled**|enabled)

- **Battery percentage** [panda3ds_battery_level] (**5**|10|20|30|50|70|90|100)

- **Charger plugged** [panda3ds_use_charger] (**enabled**|disabled)

## External Links

- [Panda3DS Repository](https://github.com/wheremyfoodat/Panda3DS)
- [Report Panda3DS Core Issues Here](https://github.com/wheremyfoodat/Panda3DS/issues)

