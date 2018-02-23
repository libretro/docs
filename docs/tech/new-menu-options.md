# Adding a RetroArch menu option

## Files you need to change

msg_hash_us.c  
msg_hash_us.h  
msg_hash_\*\*.c (If you speak more than one language)  
msg_hash_\*\*.h (If you speak more than one language)  
msg_hash_lbl.h  
msg_hash.h  
menu_cbs_sublabel.c  
menu_setting.c  
menu_displaylist.c  
configuration.c  
configuration.h  
config.def.h

## Creating the menu variable

For this example the variable will be an int named test_menu_option.

 1. Open config.def.h
 2. Add `static const int test_menu_option = 0;` the 0 can be any number, this is just the default value, the user will change it later.
 3. Open configuration.h
 4. There are sections for each variable type(string, float, int, uint and bool) go to "ints" and add `int test_menu_option;`
 5. Open configuration.c
 6. Add `SETTING_INT("test_menu_option",    &settings->ints.test_menu_option, true, test_menu_option, false);` to populate_settings_int.

The variable is now setup but the menu still doesnt know it exists.

## Making the menu read the variable

The variables name must now be configured

 1. Open msg_hash.h
 2. Add `MENU_LABEL(TEST_MENU_OPTION)` to `enum msg_hash_enums`
 3. Open msg_hash_lbl.h
 4. Add `MSG_HASH(MENU_ENUM_LABEL_TEST_MENU_OPTION, "test_menu_option")` in the `MENU_ENUM_LABEL_` section this is how RetroArch identifys the option.
 5. Open msg_hash_us.h
 6. Add `MSG_HASH(MENU_ENUM_LABEL_VALUE_TEST_MENU_OPTION, "Test Menu Option")`  in the `MENU_ENUM_LABEL_VALUE_` section this is what the user actually sees.
 7. Add `MSG_HASH(MENU_ENUM_SUBLABEL_TEST_MENU_OPTION, "Unused Text")` in the `MENU_ENUM_SUBLABEL_` section, sublabels are only used by xmb and glui, they are unused by rgui.
 8. Open msg_hash_us.c
 9. Add `case MENU_ENUM_LABEL_TEST_MENU_OPTION: snprintf(s, len, "Help text"); break;` to `menu_hash_get_help_us_enum` this is the variable info that is shown when you push rshift.

The option is now defined but the menu has still not been told to display it.

## Displaying your option 

Now the menu has to be told how to display the option.

 1. Open menu_cbs_sublabel.c
 2. Add `default_sublabel_macro(action_bind_sublabel_test_menu_option, MENU_ENUM_SUBLABEL_TEST_MENU_OPTION)` to the block of `default_sublabel_macro` functions.
 3. Add `case MENU_ENUM_LABEL_TEST_MENU_OPTION: BIND_ACTION_SUBLABEL(cbs, action_bind_sublabel_test_menu_option); break;` to the `menu_cbs_init_bind_sublabel` function.
 4. Open menu_setting.c
 5. Find your variables section(saving, netplay, video, ...) and add `CONFIG_INT(list, list_info, &settings->ints.test_menu_option, MENU_ENUM_LABEL_TEST_MENU_OPTION, MENU_ENUM_LABEL_VALUE_TEST_MENU_OPTION, test_menu_option, &group_info, &subgroup_info, parent_group, general_write_handler, general_read_handler);` the menu knows everything it needs now.
 6. Open menu_displaylist.c
 7. Find your variables section and add `menu_displaylist_parse_settings_enum(menu, info, MENU_ENUM_LABEL_TEST_MENU_OPTION, PARSE_ONLY_INT, false);` the position of this command in the list is what determines the order of the menu entries, the first run is at the top of the list.

# Finishing

There may be slight differences between variable types but for the most part if you want a string or bool just swap where ever you saw int for string or bool.

The variables name always follows the same format just replace test_menu_option, TEST_MENU_OPTION and "Test Menu Option" with your variables actual name in the same format of uppercase, lowercase or string.

This guide only effects the menu variables and the english name, if you speak another language do what you did to msg_hash_us.c/h to your language files as well.
