# Atari - 2600 (Stella 2023)

## Background

A port of [Stella](https://stella-emu.github.io/) 6.6, the Atari 2600 VCS emulator, kept at its 2023 state. It has the high accuracy and wide compatibility of modern Stella; the up-to-date [Stella](stella.md) core follows current Stella and has more controller types and core options.

The Stella 2023 core has been authored by

- Stephen Anthony
- Bradford Mott
- Eckhard Stolberg
- Brian Watson

The Stella 2023 core is licensed under

- [GPLv2](https://github.com/libretro/stella2023/blob/master/License.txt)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Stella 2023 core have the following file extensions:

- .a26
- .bin

RetroArch database(s) that are associated with the Stella 2023 core:

- [Atari - 2600](https://github.com/libretro/libretro-database/blob/master/rdb/Atari%20-%202600.rdb)

## Features

Frontend-level settings or features that the Stella 2023 core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔         |
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
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Core options

The Stella 2023 core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Console display** [stella_console] (**auto**|ntsc|pal|secam|ntsc50|pal60|secam60)
- **Palette colors** [stella_palette] (**standard**|z26|user|custom)
- **TV effects** [stella_filter] (**OFF**|composite|s-video|rgb|badly adjusted)
- **Crop horizontal overscan** [stella_crop_hoverscan] (**OFF**|ON)
- **Crop vertical overscan** [stella_crop_voverscan] (**0**|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24)
- **NTSC aspect %** [stella_ntsc_aspect] (**par**|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99)
- **PAL aspect %** [stella_pal_aspect] (**par**|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99)
- **Stereo sound** [stella_stereo] (**auto**|off|on)
- **Phosphor mode** [stella_phosphor] (**auto**|off|on)
- **Phosphor blend %** [stella_phosphor_blend] (**60**|65|70|75|80|85|90|95|100|0|5|10|15|20|25|30|35|40|45|50|55)
- **Paddle mouse sensitivity** [stella_paddle_mouse_sensitivity] (**20**|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)
- **Paddle joypad sensitivity** [stella_paddle_joypad_sensitivity] (**3**|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|1|2)
- **Paddle analog sensitivity** [stella_paddle_analog_sensitivity] (**20**|21|22|23|24|25|26|27|28|29|30|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)
- **Paddle analog deadzone** [stella_paddle_analog_deadzone] (**15**|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14)
- **Paddle analog absolute** [stella_paddle_analog_absolute] (**OFF**|ON)
- **Lightgun crosshair** [stella_lightgun_crosshair] (**OFF**|ON)

## Controllers

Each port is **Automatic** - the controller the game needs is picked from Stella's ROM database - or **None**.

### Joypad

| RetroPad Inputs | Stella 2023 |
|---|---|
| ![](../image/retropad/retro_dpad_up.png) | Up |
| ![](../image/retropad/retro_dpad_down.png) | Down |
| ![](../image/retropad/retro_dpad_left.png) | Left |
| ![](../image/retropad/retro_dpad_right.png) | Right |
| ![](../image/retropad/retro_b.png) | Fire |
| ![](../image/retropad/retro_select.png) | Select |
| ![](../image/retropad/retro_start.png) | Reset |
| ![](../image/retropad/retro_a.png) | Trigger |
| ![](../image/retropad/retro_y.png) | Booster |
| ![](../image/retropad/retro_l1.png) | Left Difficulty A |
| ![](../image/retropad/retro_l2.png) | Left Difficulty B |
| ![](../image/retropad/retro_r1.png) | Right Difficulty A |
| ![](../image/retropad/retro_r2.png) | Right Difficulty B |
| ![](../image/retropad/retro_l3.png) | Color |
| ![](../image/retropad/retro_r3.png) | Black/White |

## External Links

- [Libretro Stella 2023 Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/stella2023_libretro.info)
- [Libretro Stella 2023 Github Repository](https://github.com/libretro/stella2023)
- [Report Libretro Stella 2023 Core Issues Here](https://github.com/libretro/stella2023/issues)

## Other Atari 2600 cores

- [Atari - 2600 (Stella)](stella.md)
- [Atari - 2600 (Stella 2014)](stella2014.md)
- [Atari - 2600 (Tia)](tia.md)
