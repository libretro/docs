# macOS/OSX Compilation / Development Guide

This compilation guide will teach you how to build RetroArch for macOS/OSX.

The following versions of the operating system are supported:

- OSX 10.6    (Snow Leopard)
- OSX 10.7    (Lion)
- OSX 10.8    (Mountain Lion)
- OSX 10.9    (Mavericks)
- OSX 10.10   (Yosemite)
- OSX 10.11   (El Capitan)
- macOS 10.12 (Sierra)

RetroArch can work on both 32bit and 64bit Intel processor-powered Macs.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/fPO-9jescmo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video covers a quick demonstration of these subjects;

1. Environment Configuration

2. Building RetroArch

Be sure to read instructions that are given on this page.

## Environment configuration

The following software needs to be installed:

- XCode
- (Optional) NVIDIA Cg Toolkit

!!! Note
    You need to make sure you have the macOS 10.11 SDK or lower when compiling this software, or else the OpenGL driver might have several issues that currently cannot be fixed.

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

#### Using the graphical interface

Open Xcode. Open the following project file `pkg/apple/RetroArch.xcodeproj` in the Xcode IDE and build (**&#8984;-B**) and run (**&#8984;-R**) it there. Or you can use the command line....

#### Using the command line

To build a debug build :

    # Build
    xcodebuild -target RetroArch -configuration Debug -project pkg/apple/RetroArch.xcodeproj
    # Run
    open ./pkg/apple/build/Debug/RetroArch.app/

To build a release build :

    # Build
    xcodebuild -target RetroArch -configuration Release -project pkg/apple/RetroArch.xcodeproj
    # Run
    open ./pkg/apple/build/Release/RetroArch.app/

### Packaging RetroArch


### Additional Tips:

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super.

To get libretro-super, run:

    git clone https://github.com/libretro/libretro-super.git libretro-super
    cd libretro-super

Now you can run the following command to download the source for all cores:

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for iOS) is to use libretro-super.

To build all cores for OSX, run

    ./libretro-build.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/osx`.
