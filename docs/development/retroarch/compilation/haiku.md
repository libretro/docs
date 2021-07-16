# Haiku Compilation / Development Guide

This compilation guide will teach you how to build RetroArch for Haiku.

It is more than recommended to keep your Haiku system up to date and use Nightlybuilds with upgraded packages.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/jrrssHG_9uo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video covers a quick demonstration of these subjects;

1. Environment Configuration

2. Building RetroArch

Be sure to read instructions that are given on this page.

## Environment configuration

The following software needs to be installed:

- Haiku standard development packages (haiku_devel)
- SDL libraries and development packages (libsdl_devel / libsdl2_devel)
- X11 libraries and development packages (libx11_devel, libxau_devel, libxext_devel)
- Mesa libraries and development packages (mesa_devel, glu_devel)
- Jpeg, PNG, Zlib libraries and development packages (jpeg_devel, libpng16_devel, zlib_devel)

Optional dependencies:

- libxml2_devel - For XML shaders and cheat support.
- freetype_devel - TTF font rendering
- ffmpeg_devel - FFmpeg recording

## RetroArch Compilation

### Fetching RetroArch

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch
    cd retroarch

For subsequent builds you only need to pull the changes from the repo

    cd retroarch
    git pull

To update your local copy from the repository run git pull

### Building RetroArch

Make sure gcc is installed, then run:

    # Build
    ./configure --prefix=~/config/non-packaged/ --datarootdir=~/config/non-packaged/data/ --with-man_dir=~/config/non-packaged/documentation/man/
    make
    # Install
    make install
    # Run
    retroarch

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores is to use libretro-super.

To build all cores for Haiku, run

    ./libretro-build.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/haiku`.