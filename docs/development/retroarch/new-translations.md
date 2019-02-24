# Adding a translation to a new language

## Files you need to change

* `libretro-common/include/libretro.h`
* `msg_hash.h`
* `msg_hash.c`
* `Makefile.common`
* `intl/msg_hash_xx.c` (new file)
* `intl/msg_hash_xx.h` (new file)
* `intl/msg_hash_us.h`
* `menu/menu_setting.c`
* `griffin/griffin.c`

## Instructions

1. Open `libretro-common/include/libretro.h`
2. Add a `RETRO_LANGUAGE_XXXXX` item to the `retro_language` enum just above `RETRO_LANGUAGE_LAST`, using the next available integer value
3. Open `msg_hash.h`
4. Add a `MENU_ENUM_LABEL_VALUE_LANG_XXXXX` item to the `msg_hash_enums` enum
5. Add declaration of a `const char *msg_hash_to_str_xx(enum msg_hash_enums msg)` function
6. Add declaration of a `int menu_hash_get_help_xx_enum(enum msg_hash_enums msg, char *s, size_t len)` function
7. Open `msg_hash.c`
8. Add a
     ```c
     case RETRO_LANGUAGE_XXXXX:
         ret = menu_hash_get_help_xx_enum(msg, s, len);
         break;
     ```
   block inside the `menu_hash_get_help_enum()` function
9. Add a
     ```c
     case RETRO_LANGUAGE_XXXXX:
         ret = msg_hash_to_str_xx(msg);
         break;
     ```
   block inside the `msg_hash_to_str()` function
10. Search for the `#include "msg_hash_us.h"` line and replace it with `#include "msg_hash_xx.h"`
11. Open `Makefile.common`
12. Add `intl/msg_hash_xx.o` to `OBJS`
13. Copy `intl/msg_hash_us.c` to `intl/msg_hash_xx.c`
14. Decide if `intl/msg_hash_xx.c` should use UTF-8 + BOM encoding. See the section below
15. Open `intl/msg_hash_xx.c`
16. Rename the `menu_hash_get_help_us_enum()` function to `menu_hash_get_help_xx_enum()`
17. Rename the `menu_hash_to_str_us_label_enum()` function to `menu_hash_to_str_xx_label_enum()`
18. Rename the `menu_hash_to_str_us()` function to `msg_hash_to_str_xx()` and, inside that same function:
    * Replace the call to `menu_hash_to_str_us_label_enum()` with a call to `menu_hash_to_str_xx_label_enum()`
    * Replace the `#include "msg_hash_us.h"` line with #include "msg_hash_xx.h"
19. Open `intl/msg_hash_us.h`
20. Add a
     ```c
     MSG_HASH(MENU_ENUM_LABEL_VALUE_LANG_XXXXX, "Xxxxx")
     ```
    block
21. Copy `intl/msg_hash_us.h` to `intl/msg_hash_xx.h`
22. Decide if `intl/msg_hash_xx.h` should use UTF-8 + BOM encoding. See the section below
23. Open `menu/menu_setting.c`
24. Add a
     ```c
     modes[RETRO_LANGUAGE_XXXXX] = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_LANG_XXXXX);
     ```
    assignment to the `setting_get_string_representation_uint_user_language()` function
25. Open `griffin/griffin.c`
26. Add a `#include "../intl/msg_hash_xx.c"` line below the existing, similar
    ones for other languages.

### Encoding of translation files

* Translation files (`intl/msg_hash_xx.{c,h}`) in general must be UTF-8 encoded
* For some languages, these files need to have a "UTF-8 Unicode (with BOM)"
  encoding, this is, UTF-8 and a
  [BOM](https://en.wikipedia.org/wiki/Byte_order_mark). AFAIK this is so
  because a requirement of the MSVC compilers (Windows platform). Examples of
  this as of now are:

    * `msg_hash_ar.{c,h}`
    * `msg_hash_chs.{c,h}`
    * `msg_hash_cht.{c,h}`
    * `msg_hash_ja.{c,h}`
    * `msg_hash_ko.{c,h}`
    * `msg_hash_pl.{c,h}`
    * `msg_hash_ru.{c,h}`
    * `msg_hash_vn.h`

* Be careful when creating and editing your new translation files as some text
  editors do strip the BOM without warning.

### Translation

If you speak the target language xx then you could start translating literals in

* `intl/msg_hash_xx.c`
* `intl/msg_hash_xx.h`

by replacing the English original ones with its translations.

### Example: Addition of Arabic language:

* Commit [45580cb](https://github.com/libretro/RetroArch/commit/45580cb9a8f0fcd0a87f00eadf26d87f05289485)
* Commit [d8f1a08](https://github.com/libretro/RetroArch/commit/d8f1a08a4758851d5530d311303146257cbf8216)
* Commit [7a0428f](https://github.com/libretro/RetroArch/commit/7a0428fc769fd0eca663207134bec311aa3e30f3)

## See also

* [Adding a RetroArch menu option](new-menu-options.md)
