# Frontend Development
Libretro frontends are programs that have implemented the [libretro API](libretro-overview.md) specification. If fully implemented, this allows the program to run any libretro core that has been developed.

## Frontend Development Guides
  * [A Libretro retrospective](https://web.archive.org/web/20190404052149/https://genodians.org/ehmry/2019-03-28-libretro) - Developer Emery Hemingway's detailed look back on implementing a new libretro frontend for the Genode Operating System.

## Reference frontend
[RetroArch](http://retroarch.com) is the official reference [libretro](http://libretro.com) frontend, developed in-house. It is usually the first in implementing new features added to the libretro API. Written almost entirely in C, targets a large amount of platforms.

Name | Author(s) |  Description
------|-----------|------------
[Anarchy Arcade](http://store.steampowered.com/app/266430/Anarchy_Arcade/) | Elijah Newman-Gomez | AArcade is a virtual reality 3D desktop that launches shortcuts to absolutely anything you like.
[Arcan](https://github.com/letoram/arcan) | Letoram | Powerful development framework for creating virtually anything from user interfaces for specialized embedded applications all the way to full-blown standalone desktop environments.
[EmuHawk (BizHawk)](github.com/TASEmulators/BizHawk) | BizHawk team | Multi-system emulator that uses its own set of cores, but also allows loading libretro cores [to varied success](https://github.com/TASEmulators/BizHawk/wiki/Libretro-core-compatibility).
[Emutest](https://github.com/kivutar/emutest) | kivutar | A headless libretro frontend to test libretro cores.
[EmuVR](http://www.emuvr.net/about/) | | |
[Hackable console](https://github.com/leiradel/hackable-console) | leiradel | Debugging tool for libretro cores.
[Haiyajan](https://projects.deltabeard.com/haiyajan) | deltabeard | A tiny and fast libretro entertainment application.
[KRetro](https://invent.kde.org/games/kretro) | Seshan Ravikumar | libretro emulation frontend for Plasma.
[Ludo](https://github.com/libretro/ludo) | kivutar | libretro frontend written in Go.
[Lemuroid](https://github.com/Swordfish90/Lemuroid) | Swordfish90 | All in 1 emulator on Android.
[Merton](https://github.com/snowcone-ltd/merton) | Snowcone Ltd. | Merton is a work-in-progress emulator frontend for libretro built with [libmatoya](https://github.com/snowcone-ltd/libmatoya).
[Mininal reference fronted](https://github.com/bparker06/reference_frontend) | bparker06 | This is a barebones minimal reference frontend for the libretro API.
[minir](https://github.com/Alcaro/minir) | Alcaro | WIMP interface (Windows, Icons, Menus and Pointers), and only cares about the major desktop OSes. Drops flexibility in favor of improved out-of-the-box experience.
[minir test fronts](https://github.com/Alcaro/minir/tree/master/subproj) | Alcaro | Three different fronts, none of which has IO drivers: retroprofile just runs the core, intended for performance tests and PGO; retrorepeat runs the core twice, expecting identical output; retrostateverify traces the entire core and verifies whether its savestates are perfect.
[miniretro](https://github.com/davidgfnet/miniretro) | davidgfnet | This is a small (Linux only for now) CLI libretro frontend for automated testing of libretro cores. 
[nanoarch](https://github.com/heuripedes/nanoarch) | heuripedes | Small frontend providing video, audio and basic input features to run non-libretro-GL cores. Built on GLFW.
[New Retro Arcade](http://digitalcybercherries.com/) | Digital Cyber Cherries | |
[noarch](https://github.com/robloach/noarch) | RobLoach | Minimalist frontend which does not provide video, audio or even basic input. It loads a libretro core, runs an iteration, and then exits. Good for unit testing.
[picoarch](https://git.crowdedwood.com/picoarch/about) | neonloop | picoarch uses libpicofe and SDL to create a small frontend to libretro cores. It's designed for small (320x240 2.0-2.4") screen, low-powered devices like the Trimui Model S (PowKiddy A66).
[Phoenix](http://phoenix.vg/) | Phoenix | Upcoming libretro frontend written with the Qt5 cross-platform application framework.
[raylib-libretro](https://github.com/RobLoach/raylib-libretro) | RobLoach |  Libretro frontend using raylib.
[retro_frontend](https://github.com/ehmry/genode-libretro) | Ehmry  | Frontend for the [Genode](http://genode.org) operating system framework. Following the Genode philosophy this frontend strives to be a minimal implemention that is extensible via the abstract OS services provided to it.
[RePlay OS](https://www.replayos.com/) | RTA | Upcoming libretro based frontend optimized for use with Raspberry Pi boards using both LCD and CRT screens.
[replay](https://github.com/avojak/replay) | avojak | Native Linux multi-system emulator built in Vala and GTK for elementary OS.
[Retrobot](https://github.com/rossimo/retrobot) | Ross Squires | A self-hosted Discord bot that allows friends to play games over chat.
[RetroPlayer](https://forum.kodi.tv/forumdisplay.php?fid=194) | Kodi-Game | Also known as [Kodi-Game](https://github.com/kodi-game/), RetroPlayer is a libretro compatibility layer for [Kodi](https://kodi.tv/).
[sdlarch](https://github.com/heuripedes/sdlarch) | heuripedes | Small frontend providing video, audio and basic input to run basic libretro cores. Built on SDL.
[URetro](https://github.com/QuarkTheAwesome/URetro) | | Nintendo WiiU frontend
[Vintage Simulator](https://vintagesimulator.com) | runvnc | 3D Lua-programmable libretro frontend supporting many 3D formats, some Cairo graphics, physics, emulation control with scripts
[ZMZ](https://github.com/Alcaro/ZMZ) | Alcaro | Abandoned | Fork of [ZSNES](http://www.zsnes.com/) that rips out its emulation code, using libretro instead. Due to ZSNES being inflexible, ZMZ became quite a bit of a mess.
