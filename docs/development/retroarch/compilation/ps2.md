# PlayStation 2 Compilation / Development Guide

## Environment configuration

You need the homebrew PlayStation 2 SDK and toolchain installed.
You can follow how to install the toolchain over here [ps2toolchain](https://github.com/ps2dev/ps2toolchain)

Additionally you need the PS2 Graphics Synthesizer installed.
You can follow how to install the GSKit over here [gsKit](https://github.com/ps2dev/gsKit)

Finally you need to install specific ports for PlayStation 2.
You can follow how to install the PlayStation 2 Ports over here [ps2sdk-ports](https://github.com/ps2dev/ps2sdk-ports)

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

<!-- First, you need to compile [Salamander](../glossary.md#salamander). To compile Salamander (for PlayStation Portable) run:

    make -f Makefile.ps2.salamander

Second, to compile RetroArch (for PlayStation 2) run: -->

To compile RetroArch (for PlayStation 2) run:
    make -f Makefile.ps2

!!! Note
    RetroArch on PlayStation PS2 is statically linked. With statically linked RetroArch, each executable is a separate libretro core instead of the core being separately loaded from a single executable. A pre-existing libretro library needs to be present in the root directory in order to link RetroArch PS2. This file needs to be called 'libretro_ps2.a'.

After a few seconds/minutes you should be able to find a retroarch_ps2.elf file under that directory.

### Building RetroArch in bulk

Instead of building each core one by one, you can build all cores as a batch task. Run from the main 'retroarch' directory:

    cd dist-scripts

!!! Note
    Make sure that all the libretro cores that you want to compile are inside the 'dist-scripts' directory.

Once inside this directory, run :
<!--
    ./dist-cores.sh ps2 -->

This process will also automate the packaging process for you.

### Packaging RetroArch


### Additional Tips:

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for PlayStation Portable) is to use libretro-super. Run
<!--
    ./libretro-build-ps2.sh -->

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:
<!--
    ./libretro-build-ps2.sh snes9x2010 fceumm -->

Once finished, you can find the libretro cores inside directory `dist/ps2`.
