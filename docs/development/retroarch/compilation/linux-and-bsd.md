# Compilation in Linux and BSD

Compilation on Linux and BSD does not have many surprises, as its foundation is Unix-based.

### Dependencies
- At least one libretro implementation
- pkgconfig
- Working OpenGL headers (should be included by default, but you might need to install libgl/mesa development packages)

### Optional dependencies
- libxml2-devel - For XML shaders and cheat support.
- libcaca-devel - Color AsCii Art library
- freetype-devel - TTF font rendering
- ffmpeg/libavcodec - FFmpeg recording
- flac-devel - Free Lossless Audio Codec
- nvidia-cg-toolkit - Cg shaders
- slang-devel - Slang shaders
- libudev-devel
- qt5-qtbase-devel - For Qt GUI (Desktop)
- zlib-devel

Some other libraries can be built support for as well, please refer to `./configure --help`.

#### Satisfying dependencies under Fedora 23
```bash
sudo dnf install make automake gcc gcc-c++ kernel-devel mesa-libEGL-devel libv4l-devel libxkbcommon-devel mesa-libgbm-devel Cg libCg zlib-devel freetype-devel libxml2-devel ffmpeg-devel SDL2-devel SDL-devel perl-X11-Protocol perl-Net-DBus pulseaudio-libs-devel openal-soft-devel libusb-devel
```

#### Satisfying additional dependencies under Fedora 33
```bash
sudo dnf install egl-wayland-devel wayland-devel wayland-protocols-devel mesa-vulkan-devel libXxf86vm-devel flac-devel slang-devel libcaca-devel qt5-qtbase-devel
```

#### Satisfying dependencies under Debian/Ubuntu
```bash
apt-get -y install build-essential libxkbcommon-dev zlib1g-dev libfreetype6-dev libegl1-mesa-dev libgles2-mesa-dev libgbm-dev nvidia-cg-toolkit nvidia-cg-dev libavcodec-dev libsdl2-dev libsdl-image1.2-dev libxml2-dev yasm
```

#### Satisfying dependencies under Alpine
```sh
apk add eudev-dev ffmpeg-dev freetype-dev g++ gcc libxml2-dev mesa-dev pkgconf zlib-dev
```

This list of packages may not be complete.
### Getting the code
```bash
git clone https://github.com/libretro/libretro-super.git
cd libretro-super
SHALLOW_CLONE=1 ./libretro-fetch.sh
```

### Building RetroArch
```bash
./retroarch-build.sh
```

### Building libretro cores
You should at least build one libretro implementation so RetroArch can do stuff.
There is a [super-project](https://github.com/libretro/libretro-super) that is designed to easily build every libretro port out there. To build every core:
```bash
NOCLEAN=1 ./libretro-build.sh
```
Omit NOCLEAN=1 if you wish to perform "make clean" on every repo before building

### Installing
Let's assume you'd like to install RetroArch into a folder called `~/ra`
```bash
mkdir -p ~/ra/cores
cd retroarch
make DESTDIR=~/ra install
cd .. #to libretro-super directory
./libretro-install.sh ~/ra/cores
```
You should now have a fully functional RetroArch build in `~/ra` Enjoy! :)
