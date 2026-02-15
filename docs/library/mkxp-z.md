# RPG Maker XP/VX/VX Ace (mkxp-z)

## Background

Open-source cross-platform player for (some) RPG Maker XP / VX / VX Ace games. A very heavily modified fork of mkxp. RGSS on steroids with a stupid name.

### Author/License

The mkxp-z core has been authored by:

- [Aeodyn](https://github.com/Aeodyn) &lt;Aeodyn0@gmail.com&gt;
- [Alex Folland](https://github.com/AlexFolland) &lt;lexlexlex@gmail.com&gt;
- [Amaryllis Kulla](https://github.com/Ancurio) &lt;ancurio@mapleshrine.eu&gt;
- [Thomas Schneider](https://github.com/BlackLotus)
- [Carsten Teibes](https://github.com/carstene1ns) &lt;dev@f4ke.de&gt;
- [cremno](https://github.com/cremno) &lt;cremno@mail.ru&gt;
- [David Salvisberg](https://github.com/Daverball) &lt;dave@daverball.com&gt;
- [Eblo](https://github.com/Eblo)
- [Eliza Velasquez](https://github.com/elizagamedev)
- [Jáchym Toušek](https://github.com/enumag) &lt;enumag@gmail.com&gt;
- [ijuintekka](https://github.com/ijuintekka) &lt;ijuintekka@hotmail.com&gt;
- [Joni Savolainen](https://github.com/jonisavo) &lt;joni@savolainen.io&gt;
- [Luis Cáceres](https://github.com/lacc97) &lt;lacc97@protonmail.ch&gt;
- [mook](https://github.com/mook)
- [Nathan de Medeiros Vieira](https://github.com/Nathan-MV) &lt;nathanmvieira@outlook.com&gt;
- [Riley Pierce](https://github.com/rainefall) &lt;rileyraine01@gmail.com&gt;
- [Rodrigo Locatti](https://github.com/ReinUsesLisp) &lt;rodrigo.locatti@gmail.com&gt;
- [Splendide Imaginarius](https://github.com/Splendide-Imaginarius)
- Struma &lt;strumajen@icloud.com&gt;
- [Edward Rudd](https://github.com/urkle) &lt;urkle@outoforder.cc&gt;
- [Wayward Heart](https://github.com/WaywardHeart)
- [Hao Liu (刘皓)](https://github.com/white-axe) &lt;whiteaxe@tuta.io&gt;

The mkxp-z core is licensed under:

- [GPLv2](https://github.com/mkxp-z/mkxp-z/blob/dev/COPYING)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

Currently, the mkxp-z core requires hardware that supports OpenGL 2.0 or later or OpenGL ES 2.0 or later.

## BIOS

Some RPG Maker games require RTPs (Run Time Packages), which are stock assets intended to be shared between games.

There is one standard RTP for each RPG Maker version supported by the mkxp-z core (XP, VX, VX Ace), which can be downloaded from [https://www.rpgmakerweb.com/run-time-package](https://www.rpgmakerweb.com/run-time-package).

The RTPs are distributed as Windows installers and need to be extracted before they can be used by the mkxp-z core. They can be extracted on many different operating systems using [innoextract](https://constexpr.org/innoextract/). The installers are also runnable in Wine, although innoextract is more convenient.

Once extracted, the RTP files should consist of a directory which contains two subdirectories named "Audio" and "Graphics" and possibly other files and subdirectories. The directory that contains the "Audio" and "Graphics" subdirectories should be renamed to "Standard" (for RPG Maker XP), "RPGVX" (for RPG Maker VX) or "RPGVXAce" (for RPG Maker VX Ace) and placed into the "mkxp-z/RTP" subdirectory of the frontend's system directory. If done correctly, the directory structure should look like this:

```
[system directory]
└── mkxp-z
    └── RTP
        ├── RPGVX
        │   ├── Audio
        │   ├── Fonts
        │   ├── Game.ico
        │   ├── Graphics
        │   ├── RGSS200J.dll
        │   ├── RGSS202E.dll
        │   └── RGSS202J.dll
        ├── RPGVXAce
        │   ├── Audio
        │   ├── Fonts
        │   ├── Game.ico
        │   └── Graphics
        └── Standard
            ├── Audio
            ├── Game.ico
            └── Graphics
```

The three files named Game.ico and the .dll files listed in the above directory tree are not required by the mkxp-z core. Feel free to delete them if you want.

## Extensions

Content that can be loaded by the mkxp-z core have the following file extensions (see the [Usage](#usage) section for instructions on how to load games):

- .ini
- .json
- .rxproj
- .rvproj
- .rvproj2
- .mkxpz
- .zip
- .7z

RetroArch database(s) that are associated with the mkxp-z core:

- [RPG Maker](https://github.com/libretro/libretro-database/blob/master/rdb/RPG%20Maker.rdb)
- [RPG Maker thumbnails](https://github.com/libretro-thumbnails/RPG_Maker)

## Features

Frontend-level settings or features that the mkxp-z core respects:

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✔         |
| States            | ✔         |
| Rewind            | ✔ [^1]    |
| Netplay           | ✔ [^1]    |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✔ [^2]    |
| RetroArch Cheats  | ✔ [^2]    |
| Native Cheats     | ✔         |
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
| Username          | ✔         |
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Directories

The mkxp-z core's library name is 'mkxp-z'

The mkxp-z core saves/loads to/from these directories.

**Frontend's Save directory**

| Directory    | Description |
|:------------:|:-----------:|
| mkxp-z/Saves/[game title] | This is the directory where the game's save files are saved to. The exact contents of the directory vary depending on the specific game being played. |

**Frontend's System directory**

| Directory    | Description |
|:------------:|:-----------:|
| mkxp-z/Fonts | Any fonts that the game uses that are not found in the game files will be loaded from here as a fallback. Supported file extensions for fonts are .otf and .ttf. The names of the font files do not matter since the mkxp-z core matches fonts based on the font family name stored in the file. |
| mkxp-z/RTP   | This is where RTPs are loaded from. See the [BIOS](#bios) section for more details. |
| mkxp-z/Scripts/Preload | Any preload scripts added to this directory can be toggled in the "Preload Scripts" section of the core options. Enabled preload scripts will be loaded in lexicographic order of the bytes in their file names prior to loading the game's scripts. |
| mkxp-z/Scripts/Postload | Any postload scripts added to this directory can be toggled in the "Postload Scripts" section of the core options. In RPG Maker VX Ace games, enabled postload scripts will be loaded in lexicographic order of the bytes in their file names after the game's scripts are loaded but before the game starts running. Enabled postload scripts have no effect in RPG Maker XP and RPG Maker VX games. |

## Geometry and timing

- The mkxp-z core's core provided FPS is 40 (RPG Maker XP) or 60 (RPG Maker VX, RPG Maker VX Ace).
- The mkxp-z core's core provided sample rate is 44100 hertz.
- The mkxp-z core's base width is 640 (RPG Maker XP) or 544 (RPG Maker VX, RPG Maker VX Ace).
- The mkxp-z core's base height is 480 (RPG Maker XP) or 416 (RPG Maker VX, RPG Maker VX Ace).
- The mkxp-z core's max width is 640 (RPG Maker XP) or 544 (RPG Maker VX, RPG Maker VX Ace).
- The mkxp-z core's max height is 480 (RPG Maker XP) or 416 (RPG Maker VX, RPG Maker VX Ace).
- The mkxp-z core's core provided aspect ratio is 4:3 (RPG Maker XP) or 17:13 (RPG Maker VX, RPG Maker VX Ace).

## Usage

There are three ways to load games using the mkxp-z core:

- Load the Game.ini or mkxp.json.
- Create an empty file with the file extension .rxproj, .rvproj or .rvproj2 in the same directory as Game.ini and/or mkxp.json, and load that. This is intended to make it easier to deal with save states in RetroArch, since RetroArch's save states are named after the file you load as the game, so if you load Game.ini or mkxp.json, all the save states for every game will be named "Game" or "mkxp", which is really inconvenient.
- Put the game into a zip or 7z archive with file extension .mkxpz, .zip or .7z and load that. Please note that the files inside the zip or 7z archive should be uncompressed if possible, especially .rgssad/.rgss2a/.rgss3a and .otf/.ttf files inside the archive, or the game will lag quite a bit from trying to seek compressed files. The game will still run, though, just very slowly.

Preload scripts and postload scripts may be added to the mkxp-z/Scripts/Preload and mkxp-z/Scripts/Postload subdirectories of the libretro system directory. Each preload script and postload script added to these directories has its own core option for toggling it. If more than one preload script or postload script is enabled via the core options at the same time, they will be loaded in lexicographic order of the bytes in the file names, which is the same as the order in which they appear in the core options menu.

The default set of preload scripts provided with mkxp-z is embedded in the core and available by default to remove the need to manually copy them into the preload script directory.

Native cheats are run as Ruby scripts. They can be used, for example, to change the contents of `$game_switches`.

## Core options

The mkxp-z core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

In addition to the core options shown below, there are also core options for changing the key bindings and the currently enabled preload scripts and postload scripts.

- **Runtime: RGSS Version** (Restart) [mkxp-z_rgssVersion] (**inherit**|default|1|2|3)

    Specify the RGSS version to run under.
    By default, mkxp will try to guess the required version
    based on the game files.
    If this fails, the version defaults to 1.
    Changes will take effect after the core is reset.

- **Runtime: Save State Size** (Restart) [mkxp-z_saveStateSize] (64|66|68|70|72|74|76|78|80|82|84|86|88|90|92|94|96|98|**100**|102|104|106|108|110|112|114|116|118|120|122|124|126|128|132|136|140|144|148|152|156|160|164|168|172|176|180|184|188|192|196|200|204|208|212|216|220|224|228|232|236|240|244|248|252|256|264|272|280|288|296|304|312|320|328|336|344|352|360|368|376|384|392|400|408|416|424|432|440|448|456|464|472|480|488|496|504|512|528|544|560|576|592|608|624|640|656|672|688|704|720|736|752|768|784|800|816|832|848|864|880|896|912|928|944|960|976|992)

    Maximum size of each save state, in mebibytes.
    If the game uses more than this much memory, save state creation will fail.
    Changes to this setting will not take effect until the core is unloaded.

- **Video: Subimage Fix** [mkxp-z_subImageFix] (inherit|**default**|enabled|disabled)

    Work around buggy graphics drivers which don't
    properly synchronize texture access, most
    apparent when text doesn't show up or the map
    tileset doesn't render at all.
    (default: enabled for systems using OpenGL ES, disabled on other systems)

- **Video: Framebuffer Blitting** [mkxp-z_enableBlitting] (inherit|**default**|enabled|disabled)

    Enable framebuffer blitting if the driver is
    capable of it. Some drivers carry buggy
    implementations of this functionality, so
    disabling it can be used as a workaround.
    (default: disabled on Windows, enabled on other systems)

- **Audio: Threaded Audio** (Restart) [mkxp-z_threadedAudio] (**enabled**|disabled)

    Use a worker thread for rendering the audio instead of
    rendering in the main thread, if possible. Reduces audio
    crackling, especially on systems with slow file system
    access speed. Changes to this setting will not take effect
    until the game is closed.

- **Audio: MIDI Chorus** [mkxp-z_midiChorus] (**inherit**|enabled|disabled)

	Activate "chorus" effect for midi playback.

- **Audio: MIDI Reverb** [mkxp-z_midiReverb] (**inherit**|enabled|disabled)

	Activate "reverb" effect for midi playback.

- **Audio: SE Source Count** (Restart) [mkxp-z_SESourceCount] (**6**|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64)

    Number of OpenAL sources to allocate for SE playback.
    If there are a lot of sounds playing at the same time
    and audibly cutting each other off, try increasing
    this number.
    Changes will take effect after the core is reset.
    (if this value is also set in the game's mkxp.json,
    the maximum of the value set here and the value in
    mkxp.json will be used)

## Joypad

These are the default bindings. They can be changed in the "Button Bindings" section of the core options if needed.

| RetroPad Inputs                                | RGSS Inputs              |
|------------------------------------------------|--------------------------|
| ![](../image/retropad/retro_a.png)             | Input::C                 |
| ![](../image/retropad/retro_b.png)             | Input::B                 |
| ![](../image/retropad/retro_x.png)             | Input::A                 |
| ![](../image/retropad/retro_y.png)             | Input::X                 |
| ![](../image/retropad/retro_dpad_up.png)       | Input::Up                |
| ![](../image/retropad/retro_dpad_down.png)     | Input::Down              |
| ![](../image/retropad/retro_dpad_left.png)     | Input::Left              |
| ![](../image/retropad/retro_dpad_right.png)    | Input::Right             |
| ![](../image/retropad/retro_l1.png)            | Input::L                 |
| ![](../image/retropad/retro_r1.png)            | Input::R                 |
| ![](../image/retropad/retro_l2.png)            | Input::Ctrl              |
| ![](../image/retropad/retro_r2.png)            | Input::Shift             |
| ![](../image/retropad/retro_l3.png)            | Input::Y                 |
| ![](../image/retropad/retro_r3.png)            | Input::Z                 |
| ![](../image/retropad/retro_start.png)         | Input::Alt               |
| ![](../image/retropad/retro_left_stick.png) X  | Input::Left and Input::Right |
| ![](../image/retropad/retro_left_stick.png) Y  | Input::Up and Input::Down |

## Mouse

These are the default bindings. They can be changed in the "Button Bindings" section of the core options if needed.

| RetroMouse Inputs                                     | RGSS Inputs               |
|-------------------------------------------------------|---------------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Input.mouse_x and Input.mouse_y |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Input::MouseLeft          |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Input::MouseRight         |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | Input::MouseMiddle        |
| Mouse 4                                               | Input::MouseX1            |
| Mouse 5                                               | Input::MouseX2            |
| Wheel Up                                              | Input.scroll_v            |
| Wheel Down                                            | Input.scroll_v            |

## External Links

- [mkxp-z GitHub Repository](https://github.com/mkxp-z/mkxp-z)
- [Libretro mkxp-z Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/mkxp-z_libretro.info)
- [Report Libretro mkxp-z Core Issues Here](https://github.com/mkxp-z/mkxp-z/issues)

## (Related cores)

- [RPG Maker 2000/2003 (EasyRPG)](easyrpg.md)

[^1]: Because RetroArch does not currently support rewind or netplay with cores that use threaded audio, rewind and netplay currently require disabling the ["Threaded Audio" core option](#core-options). This core option is enabled by default for better performance and for closer similarity to the original RPG Maker runtimes, which also use threaded audio.

[^2]: Only supported on little-endian devices.
