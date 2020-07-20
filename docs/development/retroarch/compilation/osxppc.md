# OSX PowerPC Compilation / Development Guide

This compilation guide will teach you how to build RetroArch for OSX PowerPC.

The following versions of the operating system are supported:

- OSX 10.5    (Leopard)

RetroArch can work on both 32bit and 64bit PowerPC processor-powered Macs.

## Environment configuration

The following software needs to be installed:

- XCode
- (Optional) NVIDIA Cg Toolkit

## RetroArch Compilation

### Fetching RetroArch

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch
    cd retroarch

!!! Note
    Versions of git available for OSX PowerPC might not come with the necessary SSL/TLS support that Github now requires. If you happen to find that you can not clone or pull from Github, perform the following command:
    git config --global http.sslVerify false.

For subsequent builds you only need to pull the changes from the repo

    cd retroarch
    git pull

To update your local copy from the repository run git pull

### Building RetroArch separately

#### Using the graphical interface

Open Xcode. Open the following project file `pkg/apple/RetroArch_PPC.xcodeproj` in the Xcode IDE and build (**&#8984;-B**) and run (**&#8984;-R**) it there. Or you can use the command line....

#### Using the command line

To build a debug build :

    # Build
    xcodebuild -target RetroArch -configuration Debug -project pkg/apple/RetroArch_PPC.xcodeproj
    # Run
    open ./pkg/apple/build/Debug/RetroArch.app/

To build a release build :

    # Build
    xcodebuild -target RetroArch -configuration Release -project pkg/apple/RetroArch_PPC.xcodeproj
    # Run
    open ./pkg/apple/build/Release/RetroArch.app/

### Packaging RetroArch


### Additional Tips:

## Core Compilation

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Run

    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for OSX PowerPC) is to use libretro-super.

To build all cores for OSX, run

    ./libretro-build.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/osx`.
