# Nintendo Wii Compilation / Development Guide

## Environment configuration

You need the homebrew Nintendo Wii SDK libogc and Devkitpro PPC toolchain installed.

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

First, you need to compile [Salamander](../glossary.md#salamander).
To compile Salamander (for Wii) run:

    make -f Makefile.wii.salamander

Rename the file retroarch-salamander_wii.dol as boot.dol. This file is the frontend launcher for the other cores (indeed files containing core and frontend).

Second, to compile RetroArch for Wii (the core and the frontend), rename the compiled core as 'libretro_wii.a' (see bellow how to compile a core), put it in the RetroArch directory and run:

    make -f Makefile.griffin platform=wii

!!! Note
    RetroArch on Wii is statically linked. With statically linked RetroArch, each executable is a separate libretro core instead of the core being separately loaded from a single executable. A pre-existing libretro library needs to be present in the root directory in order to link RetroArch Wii. This file needs to be called 'libretro_wii.a'.

After a few seconds/minutes you should be able to find a retroarch_wii.elf and retroarch_wii.dol file under that directory.

### Building RetroArch in bulk

Instead of building each core one by one, you can build all cores as a batch task. Run from the main 'retroarch' directory:

    cd dist-scripts

!!! Note
    Make sure that all the libretro cores that you want to compile are inside the 'dist-scripts' directory.

Once inside this directory, run :

    ./dist-cores.sh wii

This process will also automate the packaging process for you.

### Packaging RetroArch


### Additional Tips:

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Download libretro-super from github and run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for Wii) is to use libretro-super. If not already fetched, put the codes of the cores you want compile in the libretro-super directory and run

    ./libretro-build-wii.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build-wii.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/wii`.
