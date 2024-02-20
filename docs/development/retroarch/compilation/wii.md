# Nintendo Wii Compilation / Development Guide

## Environment configuration

You need to have installed [devkitPro](https://github.com/devkitPro/installer/releases), the homebrew Nintendo Wii SDK (libOGC) and the devkitPPC (r29 or r29-1) toolchain on your computer.

## RetroArch Compilation

### Fetching RetroArch

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch --recursive
    cd retroarch

For subsequent builds you only need to pull the changes from the repo

    cd retroarch
    git pull

To update your local copy of the RetroArch repository, run git pull

### Building RetroArch separately

First, you need to compile [Salamander](../glossary.md#salamander).
To compile Salamander (for Wii) run:

    make -f Makefile.wii.salamander

Rename the file retroarch-salamander_wii.dol as boot.dol. This file is the frontend launcher for the other cores (indeed files containing core and frontend).

Second, to compile RetroArch for Wii (the core and the frontend), rename the compiled core as 'libretro_wii.a' (see below how to compile a core in the "Building Cores" section), put it in the RetroArch directory and run:

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

The easiest way to fetch all the cores is to use libretro-super. Download libretro-super from [GitHub](https://github.com/libretro/libretro-super) and run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for Wii) is to use libretro-super. If not already fetched, put the codes of the cores you want compile in the libretro-super directory and run

    ./libretro-build-wii.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build-wii.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/wii`.

Another way to compile cores, is by cloning the core's repository (for example, FCEUmm) from [GitHub](https://github.com/orgs/libretro/repositories).
In this case, to clone FCEUmm-Libretro repo:

    git clone https://github.com/libretro/libretro-fceumm.git libretro-fceumm --recursive
    cd libretro-fceumm

For subsequent builds you only need to pull the changes from the core's repo (ex., FCEUmm)

    cd libretro-fceumm
    git pull

To update your local copy from the repository of the core (in this case FCEUmm), run git pull

To compile the core for Wii (in this case, FCEUmm) run:

    make platform=wii

Some cores (example, Snes9x) have a dedicated makefile for compile as a Libretro core. To compile the core for Wii with the dedicated Libretro makefile run:

    make -f Makefile.libretro platform=wii

Rename the compiled core as 'libretro_wii.a', then put it in the RetroArch directory and follow the instructions in the "Building RetroArch separately" section.
