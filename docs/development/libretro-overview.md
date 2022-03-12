# Libretro Development Overview

The Libretro API is a lightweight C-based Application Programming Interface (API) that exposes generic audio, video, and input callbacks.

### Frontends and cores

There are two sides to Libretro development:

  - **frontends** are programs that can run libretro-compatible cores.
  - **cores** are program (such as a game, emulator, or media player) that has been ported to the libretro API so that it can be executed by libretro frontends.

Developers of cores such as standalone games, game emulators, media players, and other applications don’t have to worry about writing different video drivers for Direct3D, OpenGL or worrying about catering to all possible input APIs, sound APIs, gamepads, etc.

Cores are built as a single library file which can be executed by any frontend that supports the libretro API. The frontend's responsibility is to provide all the implementation-specific details. The core's responsibility is solely to provide the main program.

## libretro.h
The libretro API consists of several functions outlined in libretro.h, found in the RetroArch source package. The API header is compatible with C99 and C++. From C99, the bool type and `<stdint.h>` are used. The latest version of this file can be found [in `libretro-common`](https://github.com/libretro/RetroArch/blob/master/libretro-common/include/libretro.h).

## Core development resources
You can see a partial list of the cores which are maintained as part of [libretro's github repositories](http://github.com/libretro/) in the section `For Users > Core Documentation`.

### Core development overview
[Visit the overview on libretro core development](./cores/developing-cores.md).

## Frontend development resources
[A growing list of libretro frontends](frontends.md) is available, reflecting a variety of host systems and use cases.

### RetroArch Reference Frontend
RetroArch is the libretro "reference frontend" and is available across a wide range of host platforms. Learn more about RetroARch development in the section `For Developers > RetroArch Development`.

## Libretro-powered operating systems
[Lakka](http://www.lakka.tv/), based on LibreELEC, is Libretro's reference operating system distribution.

Below is a partial list of external distributions that also use libretro or RetroArch as part of their backend technology:

  * [Batocera.linux](http://batocera.org/)
  * [RetroPie](http://retropie.org.uk/)
  * [Recalbox](http://recalbox.com/)

!!! info "Licensing"
    Libretro is an open specification that is 100% free to implement, with no licensing fees or strings attached. Our reference frontend is RetroArch. The two projects are not the same, and this is reflected in the licensing. RetroArch is licensed via GPLv3 whereas the libretro API is a MIT-licensed API.
