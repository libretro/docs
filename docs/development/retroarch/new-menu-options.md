# Adding a RetroArch menu option

The RetroArch menu system is a bit complex as no UI framework is used for implementing it, due to extreme portability reasons. This guide outlines adding one setting to RetroArch global configuration and the corresponding menu entry, but you may encounter special menus or more complex settings. Try to add the new bits to places where they can be logically found.

## Files you need to change

* `msg_hash_us.h`
* `msg_hash_lbl.h`
* `msg_hash.h`
* `menu_cbs_sublabel.c`
* `menu_setting.c`
* `menu_displaylist.c`
* `configuration.c`
* `configuration.h`
* `config.def.h`
* `ui/drivers/qt/qt_options.cpp`


## Creating the config variable

For this example the variable will be a boolean option for showing messages about failed autoconfig. You can also view the pull request [here](https://github.com/libretro/RetroArch/pull/17636/files).

 1. Open `config.def.h`
 2. Add `#define DEFAULT_NOTIFICATION_SHOW_AUTOCONFIG_FAILS true` to provide a generic default for the option. If needed, use compiler switches for different defaults on different platforms.
 3. Open `configuration.h`
 4. There are sections for each variable type(string, float, int, uint and bool) go to `bools` and add `bool notification_show_autoconfig_fails;`
 5. Open `configuration.c`
 6. Add `SETTING_BOOL("notification_show_autoconfig_fails", &settings->bools.notification_show_autoconfig_fails, true, DEFAULT_NOTIFICATION_SHOW_AUTOCONFIG_FAILS, false);` to `populate_settings_bool`.

The variable is now part of global RetroArch settings, will be saved/loaded from configuration file and can be used from RetroArch code, but the menu still doesn't know it exists.

## Defining menu labels and messages

Time to define the labels for identifying and displaying the new setting.

 1. Open `msg_hash.h`
 2. Add `MENU_LABEL(NOTIFICATION_SHOW_AUTOCONFIG_FAILS)` to `enum msg_hash_enums`
 3. Open `intl/msg_hash_lbl.h`
 4. Add `MSG_HASH( MENU_ENUM_LABEL_NOTIFICATION_SHOW_AUTOCONFIG_FAILS, "notification_show_autoconfig_fails")` in the `MENU_ENUM_LABEL_` section. This identifier may appear in logs, but not in the menu.
 5. Open `intl/msg_hash_us.h`
 6. Add `MSG_HASH( MENU_ENUM_LABEL_VALUE_NOTIFICATION_SHOW_AUTOCONFIG_FAILS, "Input (Autoconfig) Failure Notifications")`  in the `MENU_ENUM_LABEL_VALUE_` section. This is what the user and the translators actually see.
 7. Add `MSG_HASH( MENU_ENUM_SUBLABEL_NOTIFICATION_SHOW_AUTOCONFIG_FAILS, "Display an on-screen message when input devices could not be configured.")` section. Sublabels are a bit more detailed explanations that appear underneath the menu item.

The option is now defined but the menu has still not been told to display it.

## Displaying your option

Now the menu has to be told how to display the option.

 1. Open `menu/cbs/menu_cbs_sublabel.c`
 2. Add `DEFAULT_SUBLABEL_MACRO( action_bind_sublabel_notification_show_autoconfig_fails, MENU_ENUM_SUBLABEL_NOTIFICATION_SHOW_AUTOCONFIG_FAILS)` to the block of `DEFAULT_SUBLABEL_MACRO` functions.
 3. Add `case MENU_ENUM_LABEL_NOTIFICATION_SHOW_AUTOCONFIG_FAILS: BIND_ACTION_SUBLABEL(cbs, action_bind_sublabel_notification_show_autoconfig_fails); break;` to the `menu_cbs_init_bind_sublabel` function.
 4. Open `menu/menu_setting.c`
 5. Find your variables section(saving, netplay, video, ...) and add `CONFIG_BOOL` macro. The options are too numerous to list here, look for a similar example to what you plan to add. This entry controls the related setting, the menu labels, and possible actions. Simple config types already have implemented actions for changing (like toggling the boolean value with left/right), but if something more complex is needed, like a list of predefined values, it will need to be implemented in other menu files.
 6. Open `menu/menu_displaylist.c`
 7. Find your variables section and add `{MENU_ENUM_LABEL_NOTIFICATION_SHOW_AUTOCONFIG_FAILS, PARSE_ONLY_BOOL, false },` the position of this command in the list is what determines the order of the menu entries, the first run is at the top of the list.
 8. Open `ui/drivers/qt/qt_options.cpp`
 9. Find the corresponding menu and add the option, in this case `notificationsGroup->add(MENU_ENUM_LABEL_NOTIFICATION_SHOW_AUTOCONFIG);`. This represents the menu item in the desktop menu.

# Finishing

This guide only introduces the English menu labels. Translations are handled via Crowdin, after the pull request is accepted, new strings will appear for translators. New items wil be shown to users in English until translation is done.

There are several possibilities that can be done with the menu system, but most require additional functions. Help text may also be defined (a slightly longer description that can be displayed with Select button). Some of the menu code is dynamic depending on e.g. number of users, those items usually require extra care. Icon assignments are handled in the menu drivers (ozone, xmb, glui).
