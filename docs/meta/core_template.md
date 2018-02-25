# (Title)

// Copy the display name entry from the core info file and paste it here for the title.
// https://github.com/libretro/libretro-super/tree/master/dist/info

## Background

Awaiting description.

// Put background information for the core here.

### Requirements
// Optional section.

Awaiting description.

// Fill in hardware or software requirements for the core here.

#### How to start the (Core name) core:
// Optional section.
// This section is for cores that need files from RetroArch's content downloader.

- To start the (Core name) core, you need to obtain (Core name)'s data files. You can do this by going to RetroArch's main menu screen and selecting 'Online Updater'. From there, select 'Content Downloader'.

<center> ![](images\Cores\all\download.png) </center>

// Fill in the (Core name).

- Select '(Content directory name)', then select '(Game filename)'. This should download and extract this file to RetroArch's Downloads directory.

<center> ![](images\Cores\folder\screenshot_name.png) </center>

// Fill in the (Content directory name) and the (Game filename).

- Go back to RetroArch's main menu screen. Select 'Load Content', then 'Downloads'.

<center> ![](images\Cores\all\load.png) </center>

<center> ![](images\Cores\all\downloads.png) </center>

- Select the '(Content directory name)' directory, then select '(Game filename)'.

// Fill in the (Content directory name) and the (Game filename).

- If you are asked which core to select, choose '(Title)'.

// Fill in the title.

The content should now start running!

#### How to start the (Core name) core:
// Optional section.
// This section is for cores that don't need any content to be started.

- To start the (Core name) core, go to RetroArch's main menu screen. Select 'Load Core', then '(Core name)'.

// Fill in the (Core name).

- Now, select 'Start Core'.

The content should now start running!

### Author/License

The (Core name) core has been authored by

- [Author](http://link)

// Fill in the (Core name)
// Copy the author entry from the core info file and paste it here. Link is optional.
// https://github.com/libretro/libretro-super/tree/master/dist/info

The (Core name) core is licensed under

- [license](https://link)

// Fill in the (Core name)
// Copy the license entry from the core info file and a url to license information and paste it here.
//(https://github.com/libretro/libretro-super/tree/master/dist/info)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

## Extensions
// Optional section.

Content that can be loaded by the (Core name) core have the following file extensions:

// Fill in the (Core name).

- .(extension)

// Copy the exntension entry from the core info file and paste it here.
// https://github.com/libretro/libretro-super/tree/master/dist/info)

## Databases
// Optional section.

RetroArch database(s) that are associated with the (Core name) core:

// Fill in the (Core name).

- [Database name](Database file URL)

// Copy the database entry from the core info file and paste it here. Also, paste in the link for the database. 
// https://github.com/libretro/libretro-super/tree/master/dist/info
// https://github.com/libretro/libretro-database/tree/master/rdb

## BIOS
// Optional section.

Required or optional firmware files go in the frontend's system directory.

| Filename          | Description                     | md5sum                           |
|:-----------------:|:-------------------------------:|:--------------------------------:|
| bios_filename.bin | Description - Optional/Required |                                  |

// Copy the firmware information from the core info file and paste it here (
// https://github.com/libretro/libretro-super/tree/master/dist/info)--

## Features

Frontend-level settings or features that the (Core name) core respects.

// Fill in the (Core name).

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | -         |
| Screenshots       | -         |
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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | -         |
| Disk Control      | -         |
| Username          | -         |
| Language          | -         |
| Crop Overscan     | -         |
| LEDs              | -         |

// Use ✔ or ✕
// Leave it as - if unsure.

### Directories

The (Core name) core's library name is '(Directory name)'

// Fill in the (Core name) and the (Directory name).
// The (Directory name) is the name of the directory the core creates in the frontend's save and state directories.

The (Core name) core saves/loads to/from these directories.

// Fill in the (Core name).

-**Frontend's Home directory**

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

// Add a list of directories/files the core uses.

### Geometry and timing
// Optional section.

- The (Core name) core's core provided FPS is (FPS)
- The (Core name) core's core provided sample rate is (Rate)
- The (Core name) core's base width is (Base width)
- The (Core name) core's base height is (Base height)
- The (Core name) core's max width is (Max width)
- The (Core name) core's max height is (Max height)
- The (Core name) core's core provided aspect ratio is (Ratio)

// Fill in the (Core name) and the FPS, sample rate, width/height, aspect ratio info.

## Usage
// Optional section.
// Explain how to use the core if further explaination is needed.

## Core options
// Optional section.

The (Core name) core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded. 

// Fill in the (Core name).

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **Core Option** [option-string] (**Setting1**|Setting2)

	Awaiting description.

??? note "Core Option - Setting"
	![](images\Cores\folder\screenshot_name.png)

// Fill in core options.
// Add core option screenshots if needed.

## Controllers

The (Core name) core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

// Fill in the (Core name).

### User # - # device types

- None - Input disabled.
- **(Device name)** - (Device type) - Optional description.

// Fill in (Device name).

// Fill in (Device type)
/// Possible device types
//// None
//// Joypad
//// Analog
//// Keyboard
//// Mouse
//// Lightgun
//// Pointer

### Other controllers
// Optional section.
// This section is for cores that have controllers that cannot be manually selected through the frontend's Controls menu.

- (Device name) - (Device type) - Optional description.

### Rumble support
// Optional section.
// This section is for cores that have rumble support

Rumble only works in the (Core name) core when

// Fill in the (Core name).

- The content being ran has rumble support.
- The frontend being used has rumble support.
- The joypad device being used has rumble support.

// Explain how to activate rumble.

### Multitap support
// Optional section.
// This section for cores that have an opton to activate mutlitap in supported games.

// Explain how to activate multitap.

### Controller tables

#### Joypad

| User # Remap descriptors | RetroPad Inputs                              | (Device name) Inputs      |
|--------------------------|----------------------------------------------|---------------------------|
| Action 1                 | ![](images/RetroPad/Retro_B_Round.png)       | -                         |
| Action 2                 | ![](images/RetroPad/Retro_Y_Round.png)       | -                         |
| Action 3                 | ![](images/RetroPad/Retro_Select.png)        | -                         |
| Action 4                 | ![](images/RetroPad/Retro_Start.png)         | -                         |
| Action 5                 | ![](images/RetroPad/Retro_Dpad_Up.png)       | -                         |
| Action 6                 | ![](images/RetroPad/Retro_Dpad_Down.png)     | -                         |
| Action 7                 | ![](images/RetroPad/Retro_Dpad_Left.png)     | -                         |
| Action 8                 | ![](images/RetroPad/Retro_Dpad_Right.png)    | -                         |
| Action 9                 | ![](images/RetroPad/Retro_A_Round.png)       | -                         |
| Action 10                | ![](images/RetroPad/Retro_X_Round.png)       | -                         |
| Action 11                | ![](images/RetroPad/Retro_L1.png)            | -                         |
| Action 12                | ![](images/RetroPad/Retro_R1.png)            | -                         |
| Action 13                | ![](images/RetroPad/Retro_L2.png)            | -                         |
| Action 14                | ![](images/RetroPad/Retro_R2.png)            | -                         |
| Action 15                | ![](images/RetroPad/Retro_L3.png)            | -                         |
| Action 16                | ![](images/RetroPad/Retro_R3.png)            | -                         |
| Action 17                | ![](images/RetroPad/Retro_Left_Stick.png) X  | -                         |
| Action 18                | ![](images/RetroPad/Retro_Left_Stick.png) Y  | -                         |
| Action 19                | ![](images/RetroPad/Retro_Right_Stick.png) X | -                         |
| Action 20                | ![](images/RetroPad/Retro_Right_Stick.png) Y | -                         |

#### Keyboard

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

#### Mouse

| RetroMouse Inputs                                   | (Device name) Inputs      |
|-----------------------------------------------------|---------------------------|
| ![](images/RetroMouse/Retro_Mouse.png) Mouse Cursor | -                         |
| ![](images/RetroMouse/Retro_Left.png) Mouse 1       | -                         |
| ![](images/RetroMouse/Retro_Right.png) Mouse 2      | -                         |
| ![](images/RetroMouse/Retro_Middle.png) Mouse 3     | -                         |
| Mouse 4                                             | -                         |
| Mouse 5                                             | -                         |
| Wheel Up                                            | -                         |
| Wheel Down                                          | -                         |
| Wheel Left                                          | -                         |
| Wheel Right                                         | -                         |

#### Pointer

| RetroPointer Inputs                                                                                                  | (Device name) Inputs      |
|----------------------------------------------------------------------------------------------------------------------|---------------------------|
| ![](images/RetroMouse/Retro_Mouse.png) or ![](images/Button_Pack/Gestures/Gesture_Finger_Front.png) Pointer Position | -                         | 
| ![](images/RetroMouse/Retro_Left.png) or ![](images/Button_Pack/Gestures/Gesture_Tap.png) Pointer Pressed            | -                         |

#### Lightgun

| RetroLightgun Inputs                                 | (Device name) Inputs      |
|------------------------------------------------------|---------------------------|
| ![](images/RetroMouse/Retro_Mouse.png) Gun Crosshair | -                         |
| Gun Trigger                                          | -                         |
| Gun Reload                                           | -                         |
| Gun Aux A                                            | -                         |
| Gun Aux B                                            | -                         |
| Gun Aux C                                            | -                         |
| Gun Start                                            | -                         |
| Gun Select                                           | -                         |
| Gun D-pad Up                                         | -                         |
| Gun D-pad Down                                       | -                         |
| Gun D-pad Left                                       | -                         |
| Gun D-pad Right                                      | -                         |

// Deprecated Lightgun inputs

#define RETRO_DEVICE_ID_LIGHTGUN_CURSOR           3 /*Use Aux:A*/
#define RETRO_DEVICE_ID_LIGHTGUN_TURBO            4 /*Use Aux:B*/
#define RETRO_DEVICE_ID_LIGHTGUN_PAUSE            5 /*Use Start*/

#### Other

| Inputs                                                                                                               | Device name (Inputs) |
|----------------------------------------------------------------------------------------------------------------------|----------------------|
| Input                                                                                                                |                      |

## Compatibility
// Optional section.

// Paste in a link to a compatibility list.
- [(Core name) Compatibility List](URL)

// Or write up a compatibility description.
Awaiting description.

// Or make a compatibility table.
| Game | Issue |
|------|-------|
|      |       |

## External Links
// Put relevant links here.

- [Official/Original (Core name) Website](https://link)
- [Official/Original (Core name) (Website name) Repository](https://link)
- [Libretro (Core name) Core info file](https://link)
- [Libretro (Core name) (Website name) Repository](https://link)
- [Report Libretro (Core name) Core Issues Here](https://link)

### See also
// Optional section.

- [Other Core](https://docs.libretro.com/library/)

// Add links to related core docs here.
// https://docs.libretro.com/meta/see_also