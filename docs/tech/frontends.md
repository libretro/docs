# Frontends

Libretro frontends are programs that have implemented the [libretro API](../specs/api.md) specification. If fully implemented, this allows the program to run any libretro core that has been developed.

Name | Author(s) | Last Release | Description
------|-----------|--------------|------------
[RetroArch](http://retroarch.com) | [libretro](http://libretro.com) | 2017-11-21 1.6.9 | Official reference libretro frontend, developed in-house. It is usually the first in implementing new features added to the libretro API. Written almost entirely in C, targets a large amount of platforms.
[minir](https://github.com/Alcaro/minir) | Alcaro | | WIMP interface (Windows, Icons, Menus and Pointers), and only cares about the major desktop OSes. Drops flexibility in favor of improved out-of-the-box experience.
[Arcan](https://github.com/letoram/arcan) | Letoram | | Powerful development framework for creating virtually anything from user interfaces for specialized embedded applications all the way to full-blown standalone desktop environments.
[GNOME Games](https://wiki.gnome.org/Apps/Games) | GNOME | | Games is a GNOME application to browse your video games library and to easily pick and play a game from it.
[BizHawk](http://tasvideos.org/BizHawk.html) | BizHawk | | Experimental libretro player support for the BizHawk multi-platform emulator.
[Phoenix](http://phoenix.vg/) | Phoenix | | Upcoming libretro frontend written with the Qt5 cross-platform application framework.
[Anarchy Arcade](http://store.steampowered.com/app/266430/Anarchy_Arcade/) | Elijah Newman-Gomez | | AArcade is a virtual reality 3D desktop that launches shortcuts to absolutely anything you like.
[ZMZ](https://github.com/Alcaro/ZMZ) | Alcaro | Abandoned | Fork of [ZSNES](http://www.zsnes.com/) that rips out its emulation code, using libretro instead. Due to ZSNES being inflexible, ZMZ became quite a bit of a mess.
[retro_frontend](https://github.com/ehmry/genode-libretro) | Ehmry  | | Frontend for the [Genode](http://genode.org) operating system framework. Following the Genode philosophy this frontend strives to be a minimal implemention that is extensible via the abstract OS services provided to it.
[RetroPlayer](https://forum.kodi.tv/forumdisplay.php?fid=194) | Kodi-Game | | Also known as [Kodi-Game](https://github.com/kodi-game/), RetroPlayer is a libretro compatibility layer for [Kodi](https://kodi.tv/).
einweggerät | mudlord | | Debugging tool for libretro cores.
[nanoarch](https://github.com/heuripedes/nanoarch) | heuripedes | | Small frontend providing video, audio and basic input features to run non-libretro-GL cores. Built on GLFW.
[sdlarch](https://github.com/heuripedes/sdlarch) | heuripedes | | Small frontend providing video, audio and basic input to run basic libretro cores. Built on SDL.
[noarch](https://github.com/robloach/noarch) | RobLoach | | Minimalist frontend which does not provide video, audio or even basic input. It loads a libretro core, runs an iteration, and then exits. Good for unit testing.
[minir test fronts](https://github.com/Alcaro/minir/tree/master/subproj) | Alcaro | | Three different fronts, none of which has IO drivers: retroprofile just runs the core, intended for performance tests and PGO; retrorepeat runs the core twice, expecting identical output; retrostateverify traces the entire core and verifies whether its savestates are perfect.
