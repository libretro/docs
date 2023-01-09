# Adding New Languages to RetroArch

While translation is handled via the Crowdin[^1] platform ([more here](new-translations-crowdin.md)), RetroArch's code must be adjusted for it to display new languages.

## Files to change

* `Makefile.common`
* `msg_hash.c`
* `msg_hash.h`
* `retroarch.c`
* `griffin/griffin.c`
* `intl/msg_hash_xx.c` (new file)
* `intl/msg_hash_us.h`
* `menu/menu_setting.c`
* `libretro-common/include/libretro.h`

> Every new language must first be added to the project on Crowdin. This will ensure that a corresponding `intl/msg_hash_xx.h` file is created. Requests are accepted at the `#retroarch-translations` channel of the RetroArch Discord[^2].

[^1]: https://crowdin.com/ - RetroArch and libretro are not affiliated in any way with Crowdin.
[^2]: The official RetroArch Discord server: https://discord.gg/2E8pNrCR

## Main Instructions

To add a language with the English name `XXXXX` and two-letter code `xx` (be sure to use the same one as in the corresponding `intl/msg_hash_xx.h` file) follow these steps:

1. Open `libretro-common/include/libretro.h`.
    1. Add a `RETRO_LANGUAGE_XXXXX` item to the `retro_language` enum just above `RETRO_LANGUAGE_LAST`, using the next available integer value.
> Do not rearrange the elements of this list! This would break the language association for the cores!
2. Open `msg_hash.h`.
    1. Check if a `MENU_ENUM_LABEL_VALUE_LANG_XXXXX` item for your language is present in the `msg_hash_enums` enum; if not, add it.
    2. Add declaration of a `const char *msg_hash_to_str_xx(enum msg_hash_enums msg)` function.
    3. Add declaration of a `int msg_hash_get_help_xx_enum(enum msg_hash_enums msg, char *s, size_t len)` function.
3. Open `msg_hash.c`.
    1. Add the following block inside the `msg_hash_get_help_enum(enum msg_hash_enums msg, char *s, size_t len)` function:
```c
case RETRO_LANGUAGE_XXXXX:
   ret = msg_hash_get_help_xx_enum(msg, s, len);
   break;
```
    2. Add the following block inside the `get_user_language_iso639_1(bool limit)` function:
```c
case RETRO_LANGUAGE_XXXXX:
   return "xx";
```
    3. Add the following block inside the `msg_hash_to_str(enum msg_hash_enums msg)` function:
```c
case RETRO_LANGUAGE_XXXXX:
    ret = msg_hash_to_str_xx(msg);
    break;
```
4. Open `Makefile.common`.
    1. Add `intl/msg_hash_xx.o` to `OBJ`.
5. Create a copy of `intl/msg_hash_en.c` and name it `intl/msg_hash_xx.c`. After the `msg_hash_us.c` refactor in early 2023, this file will only be a stub, so instead of the _us_ file, _en_ file is the source for this one.
6. Open `intl/msg_hash_xx.c`.
    1. Rename the `msg_hash_get_help_en_enum()` function to `msg_hash_get_help_xx_enum()`.
    2. Rename the `msg_hash_to_str_en()` function to `msg_hash_to_str_xx()` and, inside that same function:
       * Replace the `#include "msg_hash_en.h"` line with `#include "msg_hash_xx.h"`.
7. Decide if `intl/msg_hash_xx.h` should use UTF-8 + BOM encoding. See the section below.
8. Open `intl/msg_hash_us.h`.
    1. Check if the following block is present, where `Yyyyy` is the native name of the language and if not, add it:
```c
MSG_HASH(
   MENU_ENUM_LABEL_VALUE_LANG_XXXXX,
   "Xxxxx - Yyyyy"
   )
```
9. Open `menu/menu_setting.c`.
    1. Add the following assignment to the `setting_get_string_representation_uint_user_language()` function:
```c
modes[RETRO_LANGUAGE_XXXXX] = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_LANG_XXXXX);
```
10. Open `griffin/griffin.c`.
    1. Add the line `#include "../intl/msg_hash_xx.c"` below the existing, similar ones for other languages.
11. Open `retroarch.c`.
    1. Add your language to `enum retro_language rarch_get_language_from_iso(const char *iso639)`:
```c
{"xx", RETRO_LANGUAGE_XXXXX},
```

## Optional Adjustments

### Generating custom font for RGUI

The tutorial down below is taken from [trngaje's page.](https://trngaje.github.io/retroarch/retroarch-rgui-font/)

First of all, I will explain the basic font, English font. It was 5x10 in size at first.

If you analyze the first letter of !… hexadecimal value

`0x80, 0x10, 0x42, 0x08, 0x20, 0x00, 0x00,`

Convert to Binary

```
1000 0000
0001 0000
0100 0010
0000 1000
0010 0000
0000 0000
```

Place it in a little endian and cut it into 5 pixels

```
00000
00100
00100
00100
00100
00100
00000
00100
00000000
```

The source code in retroarch for this is as follows.

```
unsigned font_pixel = x + y * FONT_WIDTH;
uint8_t rem         = 1 << (font_pixel & 7);
unsigned offset     = font_pixel >> 3;
uint8_t col         = (bitmap_bin[FONT_OFFSET(letter) + offset] & rem) ? 0xff : 0;
```

The font was recreated by IlDucci’s request to improve the second Cyrillic language display error. It was 6x10 in size at first.

![image](https://user-images.githubusercontent.com/4651944/192516266-58bebc83-9e58-4fb1-aae9-8614f26e68bc.png)

Each letter is separated by 16 pixels, of which only 6x10 is a meaningful area.

For this purpose, I created a conversion program using the SDL function.

It can be generated simply as follows.

```
./png2c bitmap_cyrillic.png
```

Please refer to the location below for the code to build.

https://github.com/trngaje/png2c

You can download prebuilt images for Windows from the path below. https://github.com/trngaje/png2c/releases/tag/windows_64bit_png2c_220924

unzip windows_64bit_png2c_prebuild_220924.zip

```
png2c.exe bitmap_cyrillic.png
```

### RGUI Compatibility

To make the new language usable with the RGUI menu driver:

1. Open `menu/drivers/rgui.c`.
2. Navigate to the `rgui_fonts_init(rgui_t *rgui)` function.
3. Add `case RETRO_LANGUAGE_XXXXX:` to
    1. the extended ASCII section if the new language uses the Basic Latin/ASCII + Latin-1 Supplement range of UTF-8 or
    2. any other present language the new language shares the alphabet with (like Russian).
4. If a new language was added, it is important to compile RetroArch with the changes and ensure the new language works correctly with RGUI.
5. If your language uses a different range of symbols, an RGUI compatible font must be added first. This is an extensive process, which is outside the scope of this article.

### Enabling new languages in cores

Adding a language to RetroArch does not automatically enable it for the core options.
To do that for cores which have been added to Crowdin, follow these steps:

1. Locate the `libretro.h` file and add a `RETRO_LANGUAGE_XXXXX` item to the `retro_language` enum exactly the same as was done for RetroArch.
    1. Alternatively, overwrite this file with the `libretro-common/include/libretro.h` file from RetroArch's code.
2. Locate the `libretro_core_options.h` file and open it.
    1. Add `&options_xx,` at the end of the `retro_core_options_v2` struct. Remember to keep the same order as in the `retro_language` enum.

> Adding cores to Crowdin is a whole other elaborate process and, currently, can only be performed by a Crowdin manager. Suggestions/Requests can be submitted on Discord to DisasterMo#0389.

## Encoding of translation files

Translation files (`intl/msg_hash_xx.{c,h}`) in general must be UTF-8 encoded.
For some languages, these files need to have a "UTF-8 Unicode (with [BOM](https://en.wikipedia.org/wiki/Byte_order_mark))" encoding. This can be done using the 'Encoding' option of editors like Notepad++ and Notepadqq. AFAIK, this is because of a requirement of the MSVC compilers for the Windows platform. Examples of this as of now are:

* `msg_hash_ar.{c,h}`
* `msg_hash_chs.{c,h}`
* `msg_hash_cht.{c,h}`
* `msg_hash_ja.{c,h}`
* `msg_hash_ko.{c,h}`
* `msg_hash_pl.{c,h}`
* `msg_hash_ru.{c,h}`
* `msg_hash_vn.h`

Be careful when creating and editing your new translation files, as some text editors do strip the BOM without warning.

## Examples

### Adding languages to RetroArch

* Arabic:
    * [add basic support for arabic.](https://github.com/libretro/RetroArch/commit/45580cb9a8f0fcd0a87f00eadf26d87f05289485)
    * [add byte-order-marker to msg_hash_ar.*](https://github.com/libretro/RetroArch/commit/d8f1a08a4758851d5530d311303146257cbf8216)
    * [Add "Arabic" to intl/msg_hash_us.h missed in 45580cb.](https://github.com/libretro/RetroArch/commit/7a0428fc769fd0eca663207134bec311aa3e30f3)

* Indonesian, Swedish and Ukrainian (+RGUI):
    * [Add Indonesian, Swedish and Ukrainian language options](https://github.com/libretro/RetroArch/commit/311fec15d9db10ab14c879e898a8205dd37f827c)

### Enabling new languages for cores

* mgba:
    * [Enable Indonesian, Swedish and Ukrainian localisations](https://github.com/libretro/mgba/commit/b0cdccc9ad2e5a8cd40ad4b9a3db1587d6f1560b)

## Translation

If you speak the target language `xx` then you could start translating on Crowdin.
Instructions and recommended reading for that can be found [here](https://docs.libretro.com/development/retroarch/new-translations-crowdin/).

> Please **do not change** the `intl/msg_hash_xx.h` files directly!

Starting from early 2023, the help texts that were located in `intl/msg_hash_xx.c` files are also included on Crowdin. If you have translation efforts in `msg_hash_xx.c` file from an earlier date, you can copy them to Crowdin, with following caveats:
* Individual line breaks (\n) at the end of each line are not required, current menu drivers will break lines automatically. Line break may be used as a paragraph separator, if text is long.
* Make sure translations still matches the current source text, as several of those were updated during the refactor.
* Do not exceed maximum line length (500 characters).
* The Crowdin translations for these strings will only take effect when the definition is removed from `intl/msg_hash_xx.c`.

## See also

* [Adding a RetroArch menu option](new-menu-options.md)
* [Helping with RetroArch translations](new-translations-crowdin.md)
