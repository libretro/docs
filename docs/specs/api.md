# Libretro API Overview

The Libretro API is a lightweight C-based Application Programming Interface.

The Libretro API is a lightweight C-based Application Programming Interface (API) that exposes generic audio, video, and input callbacks. Developers of "cores" such as standalone games, game emulators, media players, and other applications don’t have to worry about writing different video drivers for Direct3D, OpenGL or worrying about catering to all possible input APIs, sound APIs, joypads, etc.

When you choose to use the libretro API, your program gets turned into a single library file (called a ‘libretro core’). A frontend that supports the libretro API can then load that library file and run the app. The frontend’s responsibility is to provide all the implementation-specific details. The libretro core’s responsibility is solely to provide the main program.

!!! info "Licensing"
    Libretro is an open specification that is 100% free to implement, with no licensing fees or strings attached. Our reference frontend is RetroArch. The two projects are not the same, and this is reflected in the licensing. RetroArch is licensed via GPLv3 whereas the libretro API is a MIT-licensed API.

## libretro.h
The libretro API consists of several functions outlined in libretro.h, found in the RetroArch source package. The API header is compatible with C99 and C++. From C99, the bool type and `<stdint.h>` are used. The latest version of this file can be found [in `libretro-common`](https://github.com/libretro/RetroArch/blob/master/libretro-common/include/libretro.h).

## Libretro core development
[Visit the overview on libretro core development](developing-cores.md).

## Libretro frontend development
[A growing list of libretro frontends](../tech/frontends.md) is available, reflecting a variety of host systems and use cases. RetroArch is the libretro "reference frontend" and is available across a wide range of host platforms.

## Libretro-powered operating systems
[Lakka](http://www.lakka.tv/), based on LibreELEC, is Libretro's reference operating system distribution. Below is a partial list of external distributions that also use libretro/RetroArch as part of their backend technology:
  
  * [batocera.linux](http://batocera-linux.xorhub.com/)
  * [RetroPie](http://retropie.org.uk/)
  * [Recalbox](http://recalbox.com/)
