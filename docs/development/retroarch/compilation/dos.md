# DOS Compilation / Development Guide

## Environment configuration

This guide will use cross-compilation from Linux to build a DOS executable with the [DJGPP](http://www.delorie.com/djgpp/) toolchain.

Most Linux distributions do not include this toolchain, but prebuilt binaries can be obtained [here](https://github.com/andrewwutw/build-djgpp/releases), or if you are using Arch Linux, you can use the AUR package [djgpp-gcc](https://aur.archlinux.org/packages/djgpp-gcc/) to build it easily.

DJGPP builds 32-bit programs, which means an 80386 or higher processor is required. 80286 is not supported.

## Core Support

!!! Note
    RetroArch on DOS is statically linked. With statically linked RetroArch, each executable is a separate libretro core instead of the core being separately loaded from a single executable. A pre-existing libretro library needs to be present in the root of the source directory in order to link RetroArch DOS. This file needs to be called 'libretro.a'.

## RetroArch Compilation

### Fetching RetroArch

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch
    cd retroarch

For subsequent builds you only need to pull the changes from the repo

    cd retroarch
    git pull

### Building RetroArch

To compile RetroArch run the following commands inside RetroArch's source tree:

    CROSS_COMPILE=i686-pc-msdosdjgpp- ./configure --with-libretro="-L. -lretro"
    make clean
    make -j4

Replace the value of `CROSS_COMPILE` with the prefix of your specific toolchain if necessary.

Once finished, you should find `retroarch.exe` in the current directory, this is the final binary you can run inside DOS. Since older DOS versions do not support long filenames, you may want to rename this file to something shorter.

RetroArch for DOS also requires the CWSDPMI server application from the DJGPP distribution, which can be downloaded separately [here](http://www.delorie.com/pub/djgpp/current/v2misc/csdpmi7b.zip). On the target system, CWSDPMI.EXE will need to be placed in the same directory as your RetroArch executable for it to run properly.

Once you have the DPMI program in place, simply run your RetroArch executable and the DPMI server will be loaded automatically at startup.

It is also possible to include the DPMI server inside the main RetroArch executable so that only a single file is needed, but that is outside the scope of this document. See [here](http://www.delorie.com/djgpp/doc/utils/utils_16.html) for more information.
