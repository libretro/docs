# macOS/OSX Compilation / Development Guide

This compilation guide will teach you how to build RetroArch for macOS/OSX.

The following versions of the operating system are supported:

- OSX 10.5    (Leopard)
- OSX 10.6    (Snow Leopard)
- OSX 10.7    (Lion)
- OSX 10.8    (Mountain Lion)
- OSX 10.9    (Mavericks)
- OSX 10.10   (Yosemite)
- OSX 10.11   (El Capitan)
- macOS 10.12 (Sierra)
- macOS 10.13 (High Sierra)
- macOS 10.14 (Mojave)
- macOS 10.15 (Catalina)
- macOS 11    (Big Sur)
- macOS 12    (Monterey)
- macOS 13    (Ventura)

RetroArch can work on:

- 32bit PPC   processor-powered Macs
- 64bit PPC   processor-powered Macs
- 32bit Intel processor-powered Macs
- 64bit Intel processor-powered Macs
- 64bit ARM   processor-powered Macs

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/fPO-9jescmo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video covers a quick demonstration of these subjects;

1. Environment Configuration

2. Fetching the code

3. Building RetroArch

4. (Optional) Building the cores

Be sure to read instructions that are given on this page.

## Environment configuration

The following software needs to be installed:

- Xcode (macOS only)

You can get Xcode from the App Store. If you have never used Xcode before, you will need to open the Xcode preferences, and in Accounts, log in with your Apple ID.

## Fetching the code

### libretro-super

The recommended way of fetching RetroArch source code, as well as the source code for all of the cores, is to use libretro-super.

To get libretro-super, run:

```shell
git clone https://github.com/libretro/libretro-super.git libretro-super
cd libretro-super
```

Now you can run the following command to download the source for RetroArch:

```shell
./libretro-fetch.sh --retroarch
```

You can run the following command to download the source for RetroArch as well as all of the cores:

```shell
./libretro-fetch.sh
```

Or specify just the cores that you want:

```shell
./libretro-fetch.sh snes9x2010 fceumm
```

### RetroArch repo

If you choose not to use libretro-super, you can clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

```shell
git clone https://github.com/libretro/RetroArch.git retroarch
cd retroarch
```

!!! Note
    Versions of git available for OSX PowerPC might not come with the necessary SSL/TLS support that Github now requires. If you happen to find that you can not clone or pull from Github, perform the following command:
    git config --global http.sslVerify false.

For subsequent builds you only need to pull the changes from the repo

```shell
cd retroarch
git pull
```

To update your local copy from the repository run git pull

## RetroArch Compilation

There are several Xcode projects and workspaces in the `pkg/apple` directory in RetroArch, to choose from based on your needs:

| Xcode&nbsp;Project/Workspace&nbsp;File&nbsp;Name | OS support | Purpose |
-----------------------------------------|-|-
| `RetroArch.xcworkspace`      | 10.13+ | The primary workspace for the latest Metal build. Most active development happens here. |
| `RetroArch.xcodeproj`        | 10.6+ | The current non-Metal build. |
| `RetroArch_PPC.xcodeproj`    | 10.5+ | Building for PowerPC processor-powered Macs. |
| `RetroArch_Metal.xcodeproj`  | 10.13+ | The project for the latest Metal build. You can use this directly but typically it's preferred to use the Workspace. |
| `RetroArch_OSX107.xcodeproj` | 10.7+ | An old development line that is no longer in use. |

### Building RetroArch separately

Open Xcode. Open your chosen project file in the Xcode IDE and build (**&#8984;-B**) and run (**&#8984;-R**) it there.

## Core Compilation

The easiest way to build all the cores is to use libretro-super.

To build all cores for OSX, run

```shell
./libretro-build.sh
```

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

```shell
./libretro-build.sh snes9x2010 fceumm
```

Once finished, you can find the libretro cores inside directory `dist/osx`.
