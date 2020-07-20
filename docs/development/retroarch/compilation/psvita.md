# PlayStation Vita/TV Compilation / Development Guide

## Environment configuration

You need the homebrew PlayStation Vita SDK and toolchain installed.

## RetroArch Compilation

### Fetching RetroArch

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch
    cd retroarch

For subsequent builds you only need to pull the changes from the repo

    cd retroarch
    git pull

To update your local copy from the repository run git pull

### Building RetroArch separately

First, you need to compile [Salamander](../glossary.md#salamander). To compile Salamander (for PlayStation3) run:

    make -f Makefile.vita.salamander

Second, to compile RetroArch (for PlayStation3) run:

    make -f Makefile.griffin platform=vita

!!! Note
    RetroArch on PlayStation Vita/TV is statically linked. With statically linked RetroArch, each executable is a separate libretro core instead of the core being separately loaded from a single executable. A pre-existing libretro library needs to be present in the root directory in order to link RetroArch Vita. This file needs to be called 'libretro_vita.a'.

After a few seconds/minutes you should be able to find a retroarch_vita.elf and retroarch_vita.self file under that directory.

### Building RetroArch in bulk

Instead of building each core one by one, you can build all cores as a batch task. Run from the main 'retroarch' directory:

    cd dist-scripts

!!! Note
    Make sure that all the libretro cores that you want to compile are inside the 'dist-scripts' directory.

Once inside this directory, run :

    ./dist-cores.sh vita

This process will also automate the packaging process for you.

### Packaging RetroArch


### Additional Tips:

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for PlayStation3) is to use libretro-super. Run

    ./libretro-build-vita.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build-vita.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/vita`.
