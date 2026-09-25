# Commodore - Amiga (FS-UAE)

## Background

A port of the FS-UAE Amiga emulator to libretro. The core expects a kickstart to be located in the user's 'saves' directory, in a subdirectory named fsue/Kickstarts. Most users will be better served by the PUAE core, which has received more work to integrate it with libretro and to make it usable with just a gamepad.

The FS-UAE core has been authored by

- FrodeSolheim

The FS-UAE core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FS-UAE core have the following file extensions:

- .adf
- .ipf
- .fs-uae

RetroArch database(s) that are associated with the FS-UAE core:

- [Commodore - Amiga](https://github.com/libretro/libretro-database/blob/master/rdb/Commodore%20-%20Amiga.rdb)

## Features

Frontend-level settings or features that the FS-UAE core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✕         |
| Rewind            | ✕         |

## Core options

The FS-UAE core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Internal resolution** [fsuaeresolution] (**640x400**|640x432|640x480|640x540|704x480|704x540|720x480|720x540|800x600|1024x768)

- **Pixel Format** [fsuaefmt] (**RGB565**|XRGB8888)

- **Use Analog** [analog] (**OFF**|ON)

- **Leds** [leds] (**Standard**|Simplified|None)

## External Links

- [FS-UAE Repository](https://github.com/libretro/libretro-fsuae)
- [Report FS-UAE Core Issues Here](https://github.com/libretro/libretro-fsuae/issues)

