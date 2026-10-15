# Nintendo - 3DS (Citra 2018)

## Background

A port of the Citra 3DS emulator to libretro. The core requires decrypted ROMs to function, and some games require Mii data to be dumped from your own 3DS console.

The Citra2018 core has been authored by

- Citra Emulation Project

The Citra2018 core is licensed under

- GPLv2+

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Citra2018 core have the following file extensions:

- .3ds
- .3dsx
- .cia
- .elf

RetroArch database(s) that are associated with the Citra2018 core:

- [Nintendo - Nintendo 3DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%203DS.rdb)

## Features

Frontend-level settings or features that the Citra2018 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✔         |
| States            | ✕         |
| Rewind            | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✔         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The Citra2018 core's library name is 'Citra2018'

## Core options

The Citra2018 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Enable CPU JIT** [citra2018_use_cpu_jit] (**enabled**|disabled)

- **Enable hardware renderer** [citra2018_use_hw_renderer] (**enabled**|disabled)

- **Enable shader JIT** [citra2018_use_shader_jit] (**enabled**|disabled)

- **Enable hardware shaders** [citra2018_use_hw_shaders] (**enabled**|disabled)

- **Enable accurate geometry shaders (only for H/W shaders)** [citra2018_use_acc_geo_shaders] (**enabled**|disabled)

- **Enable accurate shaders multiplication (only for H/W shaders)** [citra2018_use_acc_mul] (**enabled**|disabled)

- **Resolution scale factor** [citra2018_resolution_factor] (**1x (Native)**|2x|3x|4x|5x|6x|7x|8x|9x|10x)

- **Screen layout positioning** [citra2018_layout_option] (**Default Top-Bottom Screen**|Single Screen Only|Large Screen, Small Screen|Side by Side)

- **Prominent 3DS screen** [citra2018_swap_screen] (**Top**|Bottom)

- **Right analog function** [citra2018_analog_function] (**C-Stick and Touchscreen Pointer**|Touchscreen Pointer|C-Stick)

- **Emulated pointer deadzone (%)** [citra2018_deadzone] (**15**|20|25|30|35|0|5|10)

- **Enable mouse input for touchscreen** [citra2018_mouse_touchscreen] (**enabled**|disabled)

- **Show mouse pointer for touchscreen** [citra2018_mouse_show_pointer] (**enabled**|disabled)

- **Enable virtual SD card** [citra2018_use_virtual_sd] (**enabled**|disabled)

- **Savegame location** [citra2018_use_libretro_save_path] (**LibRetro Default**|Citra Default)

- **3DS system model** [citra2018_is_new_3ds] (**Old 3DS**|New 3DS)

- **3DS system region** [citra2018_region_value] (**Auto**|Japan|USA|Europe|Australia|China|Korea|Taiwan)

- **Enable GDB stub** [citra2018_use_gdbstub] (**disabled**|enabled)

## Controllers

The Citra2018 core supports the following device type(s):

- Nintendo 3DS

## External Links

- [Citra2018 Repository](https://github.com/libretro/citra2018)
- [Report Citra2018 Core Issues Here](https://github.com/libretro/citra2018/issues)

