# Mobile - J2ME (FreeJ2ME-Plus)

## Background

FreeJ2ME-Plus is a fork of [FreeJ2ME](freej2me.md) aimed at compatibility: it adds a Mascot Capsule v3 and an M3G (JSR-184) renderer for the 3D games, DoJa support, per-game compatibility switches for titles that misbehave on a strict implementation, and speed hacks for slower hardware. Like the original it emulates J2ME (Java 2 Micro Edition), the platform pre-smartphone mobile games were written for.

The core is a front end rather than a reimplementation: it starts FreeJ2ME-Plus's own Java application and exchanges video, input and settings with it. **A Java runtime has to be installed on the machine**, and `freej2me_plus-lr.jar` has to be in the frontend's system directory - the core cannot supply either.

### Author/License

The FreeJ2ME-Plus core has been authored by

- Paulo Sousa (AShiningRay)
- David Richardson (recompileorg)
- Saket Dandawate (hex007)

The FreeJ2ME-Plus core is licensed under

- [GPLv3](https://github.com/TASEmulators/freej2me-plus/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the FreeJ2ME-Plus core have the following file extensions:

- .jar
- .kjx

## Databases

RetroArch database(s) that are associated with the FreeJ2ME-Plus core:

- [Mobile - J2ME](https://github.com/libretro/libretro-database/blob/master/dat/Mobile%20-%20J2ME.dat)

## BIOS

The FreeJ2ME-Plus core requires the emulator's own Java application, which is not part of the core and has to be placed in the frontend's system directory by hand. It is built from the same repository as the core and published with its releases.

| Filename                | Description                                       |
|-------------------------|---------------------------------------------------|
| freej2me_plus-lr.jar    | FreeJ2ME-Plus's Java application. Required.        |

The core also needs a Java runtime installed on the system: it launches `java -jar` (`javaw` on Windows), so a machine without one loads the core and then stops with nothing on screen.

## Features

Frontend-level settings or features that the FreeJ2ME-Plus core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
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

Saves are written by the Java application into its own directory under the frontend's save directory, so they survive, but they do not go through the frontend's save handling - hence no save states, no rewind and no netplay.

### Directories

The FreeJ2ME-Plus core's library name is 'FreeJ2ME-Plus'

### Geometry and timing

- The FreeJ2ME-Plus core's core provided FPS is 60
- The FreeJ2ME-Plus core's base width is 320 and base height is 240
- The FreeJ2ME-Plus core's max width and max height are 800; the size in use follows the **Phone Resolution** core option, 240x320 by default
- The FreeJ2ME-Plus core's supported pixel format is XRGB8888
- Sound is produced by the Java application itself rather than sent through the frontend, so the frontend's audio settings do not apply to it

## Core options

The FreeJ2ME-Plus core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Phone Resolution (Core Restart may be required)** [freej2me_resolution] (96x65|101x64|101x80|128x128|130x130|120x160|128x160|160x128|132x176|208x173|176x208|176x220|220x176|208x208|220x220|180x320|320x180|240x240|240x260|208x320|**240x320**|320x240|240x400|400x240|320x320|240x432|240x480|360x360|352x416|360x480|360x640|640x360|480x640|640x480|345x800|800x345|480x800|800x480|480x854|854x480)

	Not all J2ME games run at the same screen resolution. If the game's window is too small, or has sections of it cut off, try increasing or decreasing the internal screen resolution. Some games also break when the screen size is updated while it's running, so in those cases, a restart is required.

- **DoJa API Version** [freej2me_dojaversion] (20|30|35|40|41|50|51|100|110|120|130|150|**200**)

	DoCoMo's Java VM implementation is separated into a set of different APIs with some breaking changes between major versions. This setting allows you to set a specific version that might fix any transparency, audio and gameplay issues on the DoJa/Star app you are running.

- **Rotate Screen** [freej2me_rotate] (**0**|90|180|270)

	For applications that expect the screen to be rotated, this option allows you to set the rotation in 90-degree steps. 270 degrees is the most commonly used

- **Phone Key Layout** [freej2me_phone] (**Default**|KDDI|LG|Motorola/SoftBank/Sharp|Motorola Triplets|Motorola V8|Motorola A1000|Nokia Full Keyboard|Sagem|Siemens|SKT)

	Due to the different mobile phone manufacturers on the J2ME space, it's usual to have some games expecting a certain phone's key layout like Nokia's for example. If a game is not responding to the inputs correctly, try changing this option. NOTE: Sharp devices are known to use motorola's mappings.

- **LCD Backlight Color** [freej2me_backlightcolor] (Disabled|**Green**|Cyan|Orange|Violet|Red)

	Mostly used for monochrome games, where they request the screen to be lit/unlit for additional effects. This option allows you to select a color for the backlight to mimic some of these devices, like Green (Nokia 3410), Cyan (Nokia 6310i), Orange (Siemens C55), etc. If the game you're running has colored graphics and requests screen backlight anyway, or you don't like those backlight effects, disable this option.

- **Game FPS Limit** [freej2me_fps] (Auto|**60**|55|50|45|40|35|30|25|20|15|10)

	The J2ME platform allows a great deal of freedom when dealing with synchronization, so while many games are locked to a certain framerate internally, others allow for variable framerates when uncapped at the cost of higher CPU usage, and some even run faster than intended when they get over a certain FPS threshold. Use the option that best suits the game at hand.

- **Virtual Phone Sound (Core Restart required)** [freej2me_sound] (**on**|off)

	Enables or disables the virtual phone's ability to load and play audio samples/tones. Some games require support for codecs not yet implemented, or have issues that can be worked around by disabling audio in FreeJ2ME. If a game doesn't run or has issues during longer sessions, try disabling this option.

- **MIDI Soundfont** [freej2me_midifont] (**off**|on)

	Selects which kind of MIDI soundfont to use. 'Default' uses the soundfont bundled with the system or Java VM, while 'Custom' allows you to place a custom soundfont on '<freej2me-lr.jar folder>/freej2me_system/customMIDI' and use it on J2ME apps to simulate a specific phone or improve MIDI sound quality. WARNING: Big soundfonts greatly increase the emulator's RAM footprint and processing requirements, while smaller ones can actually help it perform better.

- **Text Font** [freej2me_textfont] (**off**|on)

	Selects whether you want to use a custom text font or not. 'Default' uses the font bundled with the system or Java VM, while 'Custom' allows you to place a custom font on '<freej2me-lr.jar folder>/freej2me_system/customFont' and use it on J2ME apps to simulate a specific phone's font family. Do note that some fonts may end up being too large or too small to fit in some screen sizes, so you might need to adjust the size offset.

- **Font Size Offset** [freej2me_fontoffset] (-4|-3|-2|-1|**0**|1|2|3|4)

	Adjust the offset used for font sizing in order to make text bigger or smaller. Also helps with custom fonts that might be too big or small by default.

- **Use Analog As Entire Keypad** [freej2me_analogasentirekeypad] (**off**|on)

	A few games like Time Crisis Elite and Rayman Raving Rabbids can benefit from having the analog serve as the entire keypad for smoother gameplay (in TC Elite's case, with num 5 as pressing the analog too). If you have a game that appears to benefit from this by using the diagonal keypad keys instead of allowing for num2 and num4 to be pressed simultaneously for the same effect for example, try enabling it.

- **Anti-Aliasing** [freej2me_m3gantialiasmode] (off|**app**|on)

	Applications can request Anti-Aliasing to be applied. Usage is extremely rare, so FreeJ2ME-Plus allows you to override the render flag for better quality... This setting doesn't cost as much performance as one might think, but may cause issues.

- **Bilinear Texture Filtering** [freej2me_m3gbilinearmode] (off|**app**|on)

	Applications can enable or disable texture filtering by themselves. FreeJ2ME-Plus allows you to override the render flag for better quality or performance.

- **Dithering** [freej2me_m3gditheringmode] (off|**app**|on)

	Applications can enable or disable dithering by themselves. Usage is quite rare, so FreeJ2ME-Plus allows you to override the render flag for better quality by reducing color banding.

- **Texture Perspective Correction** [freej2me_m3gperspcorrmode] (off|**app**|on)

	Applications can enable or disable perspective correction by themselves. This is nearly free in FreeJ2ME-Plus, so force-enable it for apps that disable this feature and end up with texture distortion.

- **Perspective Correction Quality** [freej2me_m3gperspcorrfact] (extra|**high**|medium|low)

	Perspective Correction is a costly operation. To solve that, FreeJ2ME-Plus subsamples and interpolates that operation over a given span of pixels. This setting allows you to define how big that span is for better quality or performance.

- **Mipmapping Mode** [freej2me_m3gmipmapmode] (off|**app**|nearest|linear)

	M3G supports mipmapping, which may be requested by applications in either nearest or linear filter modes. Contrary to GPUs, this setting has a small performance cost on Software Rasterization, so it can be force-disabled for better performance, or forced to either Nearest or Linear for better quality.

- **Render M3G at Half Resolution** [freej2me_spdhackm3ghalfres] (on|**off**)

	FreeJ2ME-Plus uses a software renderer for M3G (Mobile 3D Graphics), which can be intensive in more complex applications and higher phone resolutions. Use this if your cpu cannot keep up with full resolution rendering.

- **Disable Fog** [freej2me_m3gdisablefog] (on|**off**)

	M3G supports fog volumes (either linear or exponential) which apps may use. Disable it for a small performance gain in said apps, or if your want/need to eee further.

- **Logging Level** [freej2me_logginglevel] (**0**|1|2|3|4)

	When enabled, this option allows FreeJ2ME to log messages of the specified level and higher into 'freej2me_system/FreeJ2ME.log' to facilitate debugging

- **Dump Audio Streams** [freej2me_dumpaudiostreams] (**off**|on)

	This option allows FreeJ2ME to dump incoming Audio Data into $SYSTEM/FreeJ2MEDumps/Audio/appname/*, mostly useful for debugging

- **Dump Graphics Data (Stub)** [freej2me_dumpgraphicsdata] (**off**|on)

	This option allows FreeJ2ME to dump incoming Graphics Data into $SYSTEM/FreeJ2MEDumps/Graphics/appname/*, mostly useful for debugging

- **Delete KJX files' temporary JAR/JAD** [freej2me_deletetempkjxfiles] (off|**on**)

	Disabling this option allows FreeJ2ME to keep the decompiled JAR and JAD files from a KDDI KJX container in $SYSTEM/FreeJ2MEDumps/KDDI/, useful if you want to archive those files outside their KJX container or try running them somewhere that doesn't handle KJX files

- **Pointer Type** [freej2me_pointertype] (**Mouse**|Touch|None)

	This option sets the type of pointer used by FreeJ2ME, can be set to use a Mouse, a Touchscreen or neither. Please note that only Mouse supports drag and drop motions

- **Pointer X Speed** [freej2me_pointerxspeed] (2|**4**|8|16)

	This option sets the horizontal speed of the on-screen pointer when controlled by a joypad's analog stick.

- **Pointer Y Speed** [freej2me_pointeryspeed] (2|**4**|8|16)

	This option sets the vertical speed of the on-screen pointer when controlled by a joypad's analog stick.

- **Pointer Inner Color** [freej2me_pointerinnercolor] (Black|Red|Green|Blue|Yellow|Pink|Cyan|**White**)

	This option sets the on-screen pointer's inner color.

- **Pointer Outline Color** [freej2me_pointeroutercolor] (**Black**|Red|Green|Blue|Yellow|Pink|Cyan|White)

	This option sets the on-screen pointer's outline color.

- **Pointer Click Indicator Color** [freej2me_pointerclickcolor] (Black|Red|Green|Blue|**Yellow**|Pink|Cyan|White)

	This option sets the on-screen pointer's click indicator color.

- **No Alpha on Blank Images (Restart Required)** [freej2me_spdhacknoalpha] (on|**off**)

	J2ME dictates that all images, including fully blank ones, have to be created with an alpha channel, and this includes the virtual phone's LCD screen. However, FreeJ2ME can create those without an alpha channel instead, cutting back on alpha processing for those images that usually are always fully painted with no transparency. Provides a measurable performance boost depending on the app with little to no side effects

- **Render MascotCapsuleV3 at Half Resolution** [freej2me_spdhackmcv3halfres] (on|**off**)

	FreeJ2ME-Plus also uses a software renderer for MascotCapsuleV3 (courtesy of Roman Lahin, @rmn20), which can be intensive in more complex applications and higher phone resolutions. Use this if your cpu cannot keep up with full resolution rendering.

- **Disable MascotCapsuleV3 lighting** [freej2me_spdhackmcv3nolight] (on|**off**)

	FreeJ2ME-Plus allows disabling all lighting operations on its MCV3 renderer. Helps games that use complex lighting setups, otherwise, doesn't have much of a performance impact.

- **Framerate Unlock Hack** [freej2me_spdhackfpsunlock] (**0**|1|2|3)

	Hijacks calls to Java methods normally used for delays and synchronization in order to increase the app's internal framerate. Higher aggressiveness levels increase the scope and type of calls intercepted. 'Safe' tackles only sleep() calls that reside in the same function of a rendering call, 'Extended' extends it to all sleep() calls, and 'Aggressive' goes beyond and hijacks system calls used for timing as well. Works best when the FPS limiter is set to anything other than 'Auto'.

- **Fix for Fantasy Zone 176x208 weird mirroring** [freej2me_compatfantasyzonefix] (on|**off**)

	Fantasy Zone 176x208's MIDP version goes entirely out of spec with its mirroring operation. It's broken on every other emulator out there and even on actual devices that aren't some Nokia S40 devices. This setting fixes it at the expense of breaking other applications that use the same draw path for S40.

- **Translate to origin on gfx reset** [freej2me_compattranstooriginongfxreset] (on|**off**)

	Some apps rely on the graphics object being translated to the origin before every draw as opposed to managing that state themselves. This compatibility setting helps with that, and any case where the drawn area keeps moving in any given direction for unknown reasons.

- **Process canvas repaint calls immediately** [freej2me_compatimmediaterepaintcalls] (on|**off**)

	By default, J2ME expects canvas repaints to be queued up, and applications can either request serviceRepaints() or use serial calls to synchronize rendering. However, some apps might cause deadlocks by improper usage of the repaint queue and in turn, freeze. This setting may help cases where an app is freezing for no apparent reason.

- **Repaint on MIDP Display setCurrent** [freej2me_compatrepaintonsetcurrent] (on|**off**)

	By default, J2ME never explicitly makes a Canvas repaint itself when it is brought to the screen (set as current), the apps should do so when appropriate. This setting forces repaints to happen in that case, fixing apps that would get stuck in a blank or black screen at boot.

- **Override Mobile Platform checks** [freej2me_compatoverrideplatcheck] (**on**|off)

	Some applications check against specific platform strings (such as 'Nokia', 'Siemens S60'), whenever this happens, FreeJ2ME's platform string doesn't match what they expect so they refuse to run. This setting overrides any platform strings by FreeJ2ME's own. This option helps far more than breaks, so it's on by default

- **Siemens-friendly drawing methods** [freej2me_compatsiemensfriendlydraw] (on|**off**)

	MIDP-Compliant J2ME drawing operations do not need to check for negative translation values in order to draw images properly. However, some Siemens apps like STCC (Swedish Touring Car Championship) won't work properly with the default behavior. This option tries to correct translations in a way that is closer to what Siemens' VM probably does drawing. Note that enabling this will break jars that use negative translations but are tailored for the J2ME specification.

- **Ignore volume changes** [freej2me_compatignorevolumechanges] (on|**off**)

	Media playback is probably the J2ME subsystem whose implementation and utilization varies the most by vendor. Some applications go as far as setting volume changes to streams they already stopped beforehand, which can cause playback issues on other media that's currently playing. Sonic 2's MIDP versions are some such cases... enabling this option helps them.

- **MascotCapsuleV3 Horizontal FOV Fix** [freej2me_compatmcv3horfovfix] (on|**off**)

	Might help games meant for portrait resolutions work better in landscape resolutions.

- **Draw only vertex colors** [freej2me_m3grenderuntextured] (on|**off**)

	Enabling this makes M3G render only vertex colored, untextured polygons. Useful for debugging blending and vertex coloring seams.

- **Draw Wireframe** [freej2me_m3grenderwireframe] (on|**off**)

	Enabling this makes M3G render only wireframes. Useful for debugging triangle clipping and culling.

- **Show Heap Usage** [freej2me_mcv3showheap] (on|**off**)

	Shows how much Heap is being used by MascotCapsuleV3's renderer.

- **Show Time Stats** [freej2me_mcv3showtimestats] (on|**off**)

	Shows frametime statistics for the most important blocks of MascotCapsuleV3's renderer.

## Joypad

| RetroPad Inputs                                | FreeJ2ME-Plus Inputs    |
|------------------------------------------------|-------------------------|
| ![](../image/retropad/retro_dpad_up.png)       | Arrow Up                |
| ![](../image/retropad/retro_dpad_down.png)     | Arrow Down              |
| ![](../image/retropad/retro_dpad_left.png)     | Arrow Left              |
| ![](../image/retropad/retro_dpad_right.png)    | Arrow Right             |
| ![](../image/retropad/retro_b.png)             | Num 7                   |
| ![](../image/retropad/retro_a.png)             | Num 9                   |
| ![](../image/retropad/retro_x.png)             | Num 0                   |
| ![](../image/retropad/retro_y.png)             | OK/Fire                 |
| ![](../image/retropad/retro_l1.png)            | Num 1                   |
| ![](../image/retropad/retro_r1.png)            | Num 3                   |
| ![](../image/retropad/retro_l2.png)            | Num *                   |
| ![](../image/retropad/retro_r2.png)            | Num #                   |
| ![](../image/retropad/retro_l3.png)            | Num 5 / Pointer Press   |
| ![](../image/retropad/retro_r3.png)            | CLR                     |
| ![](../image/retropad/retro_select.png)        | Left Softkey            |
| ![](../image/retropad/retro_start.png)         | Right Softkey           |
| ![](../image/retropad/retro_left_stick.png) X  | Num 4 / Num 6           |
| ![](../image/retropad/retro_left_stick.png) Y  | Num 2 / Num 8           |
| ![](../image/retropad/retro_right_stick.png) X | Pointer Horizontal Move |
| ![](../image/retropad/retro_right_stick.png) Y | Pointer Vertical Move   |

The left analog stick doubles as the number keys 2, 4, 6 and 8 - or, with **Use Analog As Entire Keypad**, as the whole keypad. The right stick moves the on-screen pointer for games that expect a touchscreen or a mouse; **Pointer Type** decides whether it behaves as a mouse, as a touchscreen, or is turned off.

## External Links

- [Official FreeJ2ME-Plus Github Repository](https://github.com/TASEmulators/freej2me-plus)
- [Libretro FreeJ2ME-Plus Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/freej2me_plus_libretro.info)
