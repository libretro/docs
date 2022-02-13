- // THE CORE TEMPLATE DOES NOT NEED TO BE FOLLOWED 100%
- // DOCUMENT THE CORE IN A WAY THAT FEELS THE EASIEST/MOST EFFICIENT TO YOU

# [Title]

- // [Title] is the display name entry from the core's info file
- // https://github.com/libretro/libretro-super/tree/master/dist/info

## Background

[Background info]

- // Add [Background] info for the core here, use google for background info

The [Core name] core has been authored by

- [Author]

- // Add [Core name]
- // [Author] is the display name entry from the core's info file
- // https://github.com/libretro/libretro-super/tree/master/dist/info

The [Core name] core is licensed under

- [License](URL)

- // Add [Core name]
- // Add [License] and (URL), use the core info file, the licenses doc or google for license info
- // https://github.com/libretro/libretro-super/tree/master/dist/info
- // https://docs.libretro.com/development/licenses/

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

[Requirements]

- // Add [Requirements] such as hardware or software requirements for the core here

## How to start the [Core name] core:

- // This section is for cores that need to be started in a special way

- /// Use this example section for cores that need files from RetroArch's Content Downloader

- To start the [Core name] core, you need to obtain [Core name]'s data files. You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

- // Fill in the [Core name]

- Select '[Content directory name]', then select '[Game filename]'. This should download and extract this file to RetroArch's Downloads directory.

- // Fill in the [Content directory name] and the [Game filename]

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

- Select the '[Content directory name]' directory, then select '[Game filename]'.

- // Fill in the [Content directory name] and the [Game filename]

- If you are asked which core to select, choose '[Title]'.

- // Fill in the [Title]

The content should now start running!

- /// Use this example section for cores that don't need content to be started

- To start the [Core name] core, go to RetroArch's main menu screen. Select 'Load Core', then '[Core name]'.

- // Fill in the [Core name]

- Now, select 'Start Core'.

The content should now start running!

## BIOS

- // Add firmware information from the core info file here
- // https://github.com/libretro/libretro-super/tree/master/dist/info)
- // For core that don't need BIOS, either say BIOS not required or just not include a BIOS section

Required or optional firmware files go in the frontend's system directory.

| Filename          | Description                     | md5sum                           |
|:-----------------:|:-------------------------------:|:--------------------------------:|
| bios_filename.bin | Description - Optional/Required |                                  |

## Extensions

Content that can be loaded by the [Core name] core have the following file extensions:

- // Fill in the [Core name]

- .[extension]

// Copy the exntension entry from the core info file and paste it here.
// https://github.com/libretro/libretro-super/tree/master/dist/info)
// Also look at the core's libretro.c/libretro.cpp file, sometimes the core info files can get out of sync

RetroArch database(s) that are associated with the [Core name] core:

- // Fill in the [Core name]

- [Database name](URL)

- // Add database entries from the core info file here and add (URL) from libretro-database repo
- // https://github.com/libretro/libretro-super/tree/master/dist/info
- // https://github.com/libretro/libretro-database/tree/master/rdb

## Features

Frontend-level settings or features that the [Core name] core respects.

- // Fill in the [Core name]
- // Use ✔ or ✕
- // Leave it as - if unsure

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | -         |
| Saves             | -         |
| States            | -         |
| Rewind            | -         |
| Netplay           | -         |
| Core Options      | -         |
| RetroAchievements | -         |
| RetroArch Cheats  | -         |
| Native Cheats     | -         |
| Controls          | -         |
| Remapping         | -         |
| Multi-Mouse       | -         |
| Rumble            | -         |
| Sensors           | -         |
| Camera            | -         |
| Location          | -         |
| Subsystem         | -         |
| [Softpatching](../guides/softpatching.md) | -         |
| Disk Control      | -         |
| Username          | -         |
| Language          | -         |
| Crop Overscan     | -         |
| LEDs              | -         |

## Directories

- // This section is a list of files and/or directories the core creates in certain directories

The [Core name] core's library name is '[Library name]'

- //Add [Core name] and the [Library name]. Check libretro.c/.cpp for [Library name]

The [Core name] core saves/loads to/from these directories.

// Fill in the [Core name]

- // Add a list of directories/files the core uses
- // The Home, Appdata directories sections are rarely used, they're only for cores that don't follow the libretro API 100%

**Frontend's Home directory**

| File         | Description |
|:------------:|:-----------:|
| filename.bin | Description |

**Frontend's Save directory**

| File         | Description |
|:------------:|:-----------:|
| filename.bin | Description |

**Frontend's State directory**

| File         | Description |
|:------------:|:-----------:|
| filename.bin | Description |

**Frontend's System directory**

| File         | Description |
|:------------:|:-----------:|
| filename.bin | Description |

**Loaded content's directory**

| File         | Description |
|:------------:|:-----------:|
| filename.bin | Description |

**Appdata directory**

| File         | Description |
|:------------:|:-----------:|
| filename.bin | Description |

## Geometry and timing

// Add [Core name], [FPS], [Sample rate], [Base width], [Base height], [Max width], [Max height], [Aspect ratio]

- The [Core name] core's core provided FPS is [FPS]
- The [Core name] core's core provided sample rate is [Sample rate]
- The [Core name] core's base width is [Base width]
- The [Core name] core's base height is [Base height]
- The [Core name] core's max width is [Max width]
- The [Core name] core's max height is [Max height]
- The [Core name] core's core provided aspect ratio is [Aspect ratio]

## Usage

// Explain how to use the core if further explaination is needed

## Core options

The [Core name] core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

// Fill in the [Core name]

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

// Fill in core options.
// Add core option screenshots if needed.

- **Core Option** [option-string] (**Setting1**|Setting2)

	Awaiting description.

Core Option - Setting


## User # - # device types

The [Core name] core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

// Add [Core name] and device types
/// Possible device types
/// Gamepad
/// Analog
/// Keyboard
/// Mouse
/// Lightgun
/// Pointer

- None - Optional description.
- **(Device name)** - (Device type) - Optional description.

## Other devices

// This section is for cores that have devices that cannot be manually selected

- (Device name) - (Device type) - Optional description.

## Rumble

- // This section is for cores that have rumble support
- // Explain how to activate rumble

Rumble only works in the [Core name] core when

- // Fill in the [Core name]

- The content being ran has rumble support.
- The frontend being used has rumble support.
- The controller device being used has rumble support.

## Multitap

- // This section for cores that have an option to activate mutlitap in supported games
- // Explain how to activate multitap

## Joypad

- // Add RetroPad inputs, please note the third column is only used when an input doesn't have a descriptor

| RetroPad Inputs                                | User # input descriptors | (Device name) Inputs      |
|------------------------------------------------|--------------------------|---------------------------|
| ![](../image/retropad/retro_b.png)             | Action 1                 | -                         |
| ![](../image/retropad/retro_y.png)             | Action 2                 | -                         |
| ![](../image/retropad/retro_select.png)        | Action 3                 | -                         |
| ![](../image/retropad/retro_start.png)         | Action 4                 | -                         |
| ![](../image/retropad/retro_dpad_up.png)       | Action 5                 | -                         |
| ![](../image/retropad/retro_dpad_down.png)     | Action 6                 | -                         |
| ![](../image/retropad/retro_dpad_left.png)     | Action 7                 | -                         |
| ![](../image/retropad/retro_dpad_right.png)    | Action 8                 | -                         |
| ![](../image/retropad/retro_a.png)             | Action 9                 | -                         |
| ![](../image/retropad/retro_x.png)             | Action 10                | -                         |
| ![](../image/retropad/retro_l1.png)            | Action 11                | -                         |
| ![](../image/retropad/retro_r1.png)            | Action 12                | -                         |
| ![](../image/retropad/retro_l2.png)            | Action 13                | -                         |
| ![](../image/retropad/retro_r2.png)            | Action 14                | -                         |
| ![](../image/retropad/retro_l3.png)            | Action 15                | -                         |
| ![](../image/retropad/retro_r3.png)            | Action 16                | -                         |
| ![](../image/retropad/retro_left_stick.png) X  | Action 17                | -                         |
| ![](../image/retropad/retro_left_stick.png) Y  | Action 18                | -                         |
| ![](../image/retropad/retro_right_stick.png) X | Action 19                | -                         |
| ![](../image/retropad/retro_right_stick.png) Y | Action 20                | -                         |

## Keyboard

- // Add keyboard inputs

| RetroKeyboard Inputs         | (Device name) Inputs      |
|------------------------------|---------------------------|
| Keyboard Backspace           | -                         |
| Keyboard Tab                 | -                         |
| Keyboard Clear               | -                         |
| Keyboard Return              | -                         |
| Keyboard Pause               | -                         |
| Keyboard Escape              | -                         |
| Keyboard Space               | -                         |
| Keyboard Exclaim !           | -                         |
| Keyboard Double Quote "      | -                         |
| Keyboard Hash #              | -                         |
| Keyboard Dollar $            | -                         |
| Keyboard Ampersand &         | -                         |
| Keyboard Quote '             | -                         |
| Keyboard Left Parenthesis (  | -                         |
| Keyboard Right Parenthesis ) | -                         |
| Keyboard Asterisk *          | -                         |
| Keyboard Plus +              | -                         |
| Keyboard Comma ,             | -                         |
| Keyboard Minus -             | -                         |
| Keyboard Period .            | -                         |
| Keyboard Slash /             | -                         |
| Keyboard 0                   | -                         |
| Keyboard 1                   | -                         |
| Keyboard 2                   | -                         |
| Keyboard 3                   | -                         |
| Keyboard 4                   | -                         |
| Keyboard 5                   | -                         |
| Keyboard 6                   | -                         |
| Keyboard 7                   | -                         |
| Keyboard 8                   | -                         |
| Keyboard 9                   | -                         |
| Keyboard Colon :             | -                         |
| Keyboard Semicolon ;         | -                         |
| Keyboard Less than <         | -                         |
| Keyboard Equals =            | -                         |
| Keyboard Greater than >      | -                         |
| Keyboard Question ?          | -                         |
| Keyboard At @                | -                         |
| Keyboard Left Bracket [      | -                         |
| Keyboard Backslash \         | -                         |
| Keyboard Right Bracket ]     | -                         |
| Keyboard Caret ^             | -                         |
| Keyboard Underscore _        | -                         |
| Keyboard Backquote `         | -                         |
| Keyboard a                   | -                         |
| Keyboard b                   | -                         |
| Keyboard c                   | -                         |
| Keyboard d                   | -                         |
| Keyboard e                   | -                         |
| Keyboard f                   | -                         |
| Keyboard g                   | -                         |
| Keyboard h                   | -                         |
| Keyboard i                   | -                         |
| Keyboard j                   | -                         |
| Keyboard k                   | -                         |
| Keyboard l                   | -                         |
| Keyboard m                   | -                         |
| Keyboard n                   | -                         |
| Keyboard o                   | -                         |
| Keyboard p                   | -                         |
| Keyboard q                   | -                         |
| Keyboard r                   | -                         |
| Keyboard s                   | -                         |
| Keyboard t                   | -                         |
| Keyboard u                   | -                         |
| Keyboard v                   | -                         |
| Keyboard w                   | -                         |
| Keyboard x                   | -                         |
| Keyboard y                   | -                         |
| Keyboard z                   | -                         |
| Keyboard Delete              | -                         |
| Keyboard Keypad 0            | -                         |
| Keyboard Keypad 1            | -                         |
| Keyboard Keypad 2            | -                         |
| Keyboard Keypad 3            | -                         |
| Keyboard Keypad 4            | -                         |
| Keyboard Keypad 5            | -                         |
| Keyboard Keypad 6            | -                         |
| Keyboard Keypad 7            | -                         |
| Keyboard Keypad 8            | -                         |
| Keyboard Keypad 9            | -                         |
| Keyboard Keypad Period .     | -                         |
| Keyboard Keypad Divide /     | -                         |
| Keyboard Keypad Multiply *   | -                         |
| Keyboard Keypad Minus -      | -                         |
| Keyboard Keypad Plus +       | -                         |
| Keyboard Keypad Enter        | -                         |
| Keyboard Keypad Equals =     | -                         |
| Keyboard Up                  | -                         |
| Keyboard Down                | -                         |
| Keyboard Right               | -                         |
| Keyboard Left                | -                         |
| Keyboard Insert              | -                         |
| Keyboard Home                | -                         |
| Keyboard End                 | -                         |
| Keyboard Page Up             | -                         |
| Keyboard Page Down           | -                         |
| Keyboard F1                  | -                         |
| Keyboard F2                  | -                         |
| Keyboard F3                  | -                         |
| Keyboard F4                  | -                         |
| Keyboard F5                  | -                         |
| Keyboard F6                  | -                         |
| Keyboard F7                  | -                         |
| Keyboard F8                  | -                         |
| Keyboard F9                  | -                         |
| Keyboard F10                 | -                         |
| Keyboard F11                 | -                         |
| Keyboard F12                 | -                         |
| Keyboard F13                 | -                         |
| Keyboard F14                 | -                         |
| Keyboard F15                 | -                         |
| Keyboard Num Lock            | -                         |
| Keyboard Caps Lock           | -                         |
| Keyboard Scroll Lock         | -                         |
| Keyboard Right Shift         | -                         |
| Keyboard Left Shift          | -                         |
| Keyboard Right Control       | -                         |
| Keyboard Left Control        | -                         |
| Keyboard Right Alt           | -                         |
| Keyboard Left Alt            | -                         |
| Keyboard Right Meta          | -                         |
| Keyboard Left Meta           | -                         |
| Keyboard Right Super         | -                         |
| Keyboard Left Super          | -                         |
| Keyboard Mode                | -                         |
| Keyboard Compose             | -                         |
| Keyboard Help                | -                         |
| Keyboard Print               | -                         |
| Keyboard Sys Req             | -                         |
| Keyboard Break               | -                         |
| Keyboard Menu                | -                         |
| Keyboard Power               | -                         |
| Keyboard €                   | -                         |
| Keyboard Undo                | -                         |
| Keyboard Unmapped            | -                         |
| Keyboard Unknown             | -                         |

## Mouse

- // Add mouse inputs

| RetroMouse Inputs                                     | (Device name) Inputs      |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | -                         |
| ![](../image/retromouse/retro_left.png) Mouse 1       | -                         |
| ![](../image/retromouse/retro_right.png) Mouse 2      | -                         |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | -                         |
| Mouse 4                                               | -                         |
| Mouse 5                                               | -                         |
| Wheel Up                                              | -                         |
| Wheel Down                                            | -                         |
| Wheel Left                                            | -                         |
| Wheel Right                                           | -                         |

## Pointer

- // Add pointer inputs

| RetroPointer Inputs                                                                                                      | (Device name) Inputs      |
|--------------------------------------------------------------------------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) or ![](../image/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | -                         |
| ![](../image/retromouse/retro_left.png) or ![](../image/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | -                         |

## Lightgun

- // Add lightgun inputs
- /// Deprecated Lightgun inputs
- /// RETRO_DEVICE_ID_LIGHTGUN_CURSOR - Use Gun Aux A instead
- /// RETRO_DEVICE_ID_LIGHTGUN_TURBO - Use Gun Aux B instead
- /// RETRO_DEVICE_ID_LIGHTGUN_PAUSE - Use Gun Start instead

| RetroLightgun Inputs                                   | (Device name) Inputs      |
|--------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Gun Crosshair | -                         |
| Gun Trigger                                            | -                         |
| Gun Reload                                             | -                         |
| Gun Aux A                                              | -                         |
| Gun Aux B                                              | -                         |
| Gun Aux C                                              | -                         |
| Gun Start                                              | -                         |
| Gun Select                                             | -                         |
| Gun D-pad Up                                           | -                         |
| Gun D-pad Down                                         | -                         |
| Gun D-pad Left                                         | -                         |
| Gun D-pad Right                                        | -                         |

## Compatibility

- // Paste in a link to a compatibility list
- // Or write up a compatibility description
- // Or make a compatibility table

## External Links

- // Put relevant links here

- [Official/Original (Core name) Website](https://link)
- [Official/Original (Core name) (Website name) Repository](https://link)
- [Libretro (Core name) Core info file](https://link)
- [Libretro (Core name) (Website name) Repository](https://link)
- [Report Libretro (Core name) Core Issues Here](https://link)

## (Related cores)

- // Add links to related core docs here. Use the See Also doc for help
- // https://docs.libretro.com/meta/see_also

- [Other Core](name.md)
