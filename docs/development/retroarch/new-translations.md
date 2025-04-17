# Adding New Languages to RetroArch

While translation is handled via the Crowdin[^1] platform ([more here](new-translations-crowdin.md)), RetroArch's code must be adjusted to display new languages.

## Files to change

* `msg_hash.c`
* `msg_hash.h`
* `retroarch.c`
* `translation_defines.h`
* `intl/msg_hash_us.h`
* `menu/menu_setting.c`
* `tasks/task_translation.c`
* `libretro-common/include/libretro.h`

> Every new language must first be added to the project on Crowdin. This will ensure that a corresponding `intl/msg_hash_xx.h` file is created. Requests are accepted at the `#retroarch-translations` channel of the RetroArch Discord[^2].

[^1]: https://crowdin.com/ - RetroArch and libretro are not affiliated in any way with Crowdin.
[^2]: The official RetroArch Discord server: https://ra-link.web.app/discord

## Main Instructions

To add a language with the English name `XXXXX` and two-letter code `xx` (be sure to use the same one as in the corresponding `intl/msg_hash_xx.h` file) follow these steps:

1. Open `libretro-common/include/libretro.h`.
    1. Add a `RETRO_LANGUAGE_XXXXX` item to the `retro_language` enum just above `RETRO_LANGUAGE_LAST`, using the next available integer value.
> Do not rearrange the elements of this list! This would break the language association for the cores!
2. Open `msg_hash.h`.
    1. Check if a `MENU_ENUM_LABEL_VALUE_LANG_XXXXX` item for your language is present in the `msg_hash_enums` enum; if not, add it.
3. Open `msg_hash.c`.
    1. Add the following block inside the `get_user_language_iso639_1(bool limit)` function:
```c
case RETRO_LANGUAGE_XXXXX:
   return "xx";
```
    2. Add the following block inside the `msg_hash_to_str(enum msg_hash_enums msg)` function:
```c
case RETRO_LANGUAGE_XXXXX:
   ret = msg_hash_to_str_xx(msg);
   break;
```
    3. Add a new static function:
```c
static const char *msg_hash_to_str_xx(enum msg_hash_enums msg)
{
   switch (msg)
   {
#include "intl/msg_hash_xx.h"
      default:
         break;
   }

   return "null";
}
```
4. Decide if `intl/msg_hash_xx.h` should use UTF-8 + BOM encoding. See the section below.
5. Open `intl/msg_hash_us.h`.
    1. Check if the following block is present, where `Yyyyy` is the native name of the language and if not, add it:
```c
MSG_HASH(
   MENU_ENUM_LABEL_VALUE_LANG_XXXXX,
   "Xxxxx - Yyyyy"
   )
```
6. Open `menu/menu_setting.c`.
    1. Add the following assignment to the `setting_get_string_representation_uint_user_language()` function, before `if (*msg_hash_get_uint(MSG_HASH_USER_LANGUAGE) == RETRO_LANGUAGE_ENGLISH)` statement:
```c
LANG_DATA(XXXXX)
```
    2. Add the following block inside the `setting_get_string_representation_uint_ai_service_lang()` function:
```c
case TRANSLATION_LANG_XX:
   enum_idx = MENU_ENUM_LABEL_VALUE_LANG_XXXXX;
   break;
```
7. Open `retroarch.c`.
    1. Add your language to `enum retro_language retroarch_get_language_from_iso(const char *iso639)`:
```c
{"xx", RETRO_LANGUAGE_XXXXX},
```
8. Open `tasks/task_translation.c`.
    1. Add the following block inside the `ai_service_get_str(enum translation_lang id)` function:
```c
case TRANSLATION_LANG_XX:
   return "xx";
```
9. Open `translation_defines.h`.
    1. Add your language to the `translation_lang` enum between `TRANSLATION_LANG_DONT_CARE` and `TRANSLATION_LANG_LAST`items:
```c
TRANSLATION_LANG_XX,    /* Xxxxx */
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

### Narrator support

1. For Mac. (compatible with **say**)
    1. Open `frontend/drivers/platform_darwin.m`.
    2. Go to `accessibility_mac_language_code(const char* language)` function. Check if the following block is present, where `Yyyyy` is the voice name for the language and if not, add it before `return ""`:
```c
else if (string_is_equal(language,"xx"))
   return "Yyyyy";
```
2. For Linux. (compatible with **[espeak](https://github.com/espeak-ng/espeak-ng)**)
    1. Open `frontend/drivers/platform_unix.c`.
    2. Go to `accessibility_unix_language_code(const char* language)` function. Check if the following block is present, where `yyy` is the [Identifier](https://github.com/espeak-ng/espeak-ng/blob/master/docs/languages.md) for the language and if not, add it before `/* default voice as fallback */`:
```c
else if (string_is_equal(language, "xx"))
   return "yyy";
```
3. For Windows. (OS compatiable)
    1. Open `frontend/drivers/platform_win32.c`.
    2. Go to `accessibility_win_language_code(const char* language)` function. Check if the following block is present, where `Yyyyy` is the [voice name](https://support.microsoft.com/en-us/windows/appendix-a-supported-languages-and-voices-4486e345-7730-53da-fcfe-55cc64300f01#WindowsVersion=Windows_10) for the language and if not, add it before `return ""`:
```c
else if (string_is_equal(language,"xx"))
   return "Microsoft Yyyyy Desktop";
```

## Encoding of translation files

Translation files (`intl/msg_hash_xx.h`) in general must be UTF-8 encoded.
For some languages, these files need to have a "UTF-8 Unicode (with [BOM](https://en.wikipedia.org/wiki/Byte_order_mark))" encoding. This can be done using the 'Encoding' option of editors like Notepad++ and Notepadqq. AFAIK, this is because of a requirement of the MSVC compilers for the Windows platform. Examples of this as of now are:

* `msg_hash_ar.c`
* `msg_hash_chs.h`
* `msg_hash_cht.h`
* `msg_hash_ja.h`
* `msg_hash_ko.h`
* `msg_hash_pl.h`
* `msg_hash_ru.h`
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

* [List of merges related to adding languages](https://github.com/libretro/RetroArch/pulls?q=is%3Apr+is%3Amerged+in%3Atitle+add+language+option+)

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
