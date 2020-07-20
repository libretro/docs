# Nintendo 3DS Compilation / Development Guide

## Environment configuration

You need the homebrew Nintendo 3DS SDK libctru and DevkitARM toolchain installed.
If you are running windows you will need to install [MSYS2](http://www.msys2.org/) and point it to your devkitARM installation like this:

    Put these lines in RetroArch3DSEnv.sh
    export DEVKITPRO="/c/devkitPro"
    export DEVKITARM="$DEVKITPRO/devkitARM"
    export CTRULIB="$DEVKITPRO/libctru"
    export CTRBANNERTOOL="/c/Users/Emily/Desktop/RetroArchDev/CompatFiles/bannertool.exe"
    bash
The custom bannertool is needed if you want to compile .cia builds due to a broken wav encoder in the windows version of bannertool included with RetroArch.
Before building RetroArch you will have to load MSYS2 and launch `RetroArch3DSEnv.sh`, then proceed as you would for linux.

The working bannertool can be compiled from the sources [here](https://github.com/Steveice10/bannertool) using MSYS2.

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

First, you need to compile [Salamander](../glossary.md#salamander). To compile Salamander (for 3DS) run:

    make -f Makefile.ctr.salamander

Second, to compile RetroArch (for 3DS) run:

    make -f Makefile.ctr

!!! Note
    RetroArch on 3DS is statically linked. With statically linked RetroArch, each executable is a separate libretro core instead of the core being separately loaded from a single executable. A pre-existing libretro library needs to be present in the root directory in order to link RetroArch 3DS. This file needs to be called 'libretro_ctr.a'.

After a few seconds/minutes you should be able to find a retroarch_ctr.elf and retroarch_ctr.dol file under that directory.

### Building RetroArch in bulk

Instead of building each core one by one, you can build all cores as a batch task. Run from the main 'retroarch' directory:

    cd dist-scripts

!!! Note
    Make sure that all the libretro cores that you want to compile are inside the 'dist-scripts' directory.

Once inside this directory, run :

    ./dist-cores.sh ctr

This process will also automate the packaging process for you.

### Packaging RetroArch


### Additional Tips:

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for 3DS) is to use libretro-super. Run

    ./libretro-build-ctr.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build-ctr.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/ctr`.
