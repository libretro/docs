# Building Ludo
___
Ludo is an Emulator Frontend able to run retro video games. Ludo does not emulate the consoles itself, but does it through emulator plugins called libretro cores. Libretro cores are well known emulators (like Snes9x or Genesis Plus GX or PCSX) stripped from their user interface. They contain only console specific logic.

| :warning: DISCLAIMER          |
|:---------------------------|
| Ludo is still under heavy development. In its current state, the project allows you to play most games on most platforms. However, expect bugs, missing features or features not working as intended, and hardware that is yet to be supported. If you find a bug, you can declare it in our [tracker](https://github.com/libretro/ludo/issues), unless already reported.      |

## Prerequisites

- GLFW 3.3
- OpenGL >= 2.1
- OpenAL

## Building
___

Building Ludo from source is for developers and contributors.

### Ubuntu and Debian

```sh
sudo apt install git go libopenal-dev xorg-dev
git clone --recursive https://github.com/libretro/ludo.git
cd ludo
go build
./ludo
```

### Red Hat, CentOS and Fedora

```sh
sudo yum install golang libopenal-soft-devel libX11-devel
git clone --recursive https://github.com/libretro/ludo.git
cd ludo
go build
./ludo
```

### Windows

Setup [Git Bash](https://gitforwindows.org/) then setup [Go](https://golang.org/dl/). When you done with these setup [MinGW-w64](https://sourceforge.net/projects/mingw-w64/) and add it to your PATH. Download http://static.kivutar.me/openal-soft-1.19.0-bin.zip and extract it for example in C:
Setup MinGW-w64 and add it to your PATH
Download http://static.kivutar.me/openal-soft-1.19.0-bin.zip and extract it for example in C:
```shell
export CGO_CFLAGS="-I/c/openal-soft-1.19.0-bin/include/"
export CGO_LDFLAGS="-L/c/openal-soft-1.19.0-bin/build/Release/"
```

```Powershell
git clone --recursive https://github.com/libretro/ludo.git
cd ludo
go build
./ludo
```

### Mac OS X

First setup [Xcode](https://developer.apple.com/documentation/xcode/) then setup [Homebrew](https://brew.sh/).

```brew
brew install go openal-soft
git clone --recursive https://github.com/libretro/ludo.git
cd ludo
go build
./ludo
```