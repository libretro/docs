The simple and optimized way to run RetroArch on Raspberry Pi is [Lakka](https://lakka.tv). However, if you already have a working Linux distribution on a Raspberry Pi, and just want to add RetroArch to it, that is also possible.

## Installing from distribution repositories
Several repositories carry RetroArch for the armhf/aarch64 architecture used by the RPi models. Some issues that can be encountered when using these:

- RetroArch version may be old
- Binary may be too generic and not optimized for the actual model
- Package may be set up to not allow core downloads

But there is no harm in trying it. Use the system package manager (apt, yum or similar) to install `retroarch`.

## Compiling from source

### Major hardware and software variables

A RetroArch binary on Raspberry Pi may be created in several flavors. The major factors are:

- 32/64 bit OS. Only Pi 3 and 4 have a choice, older models can only use 32 bit OS. RetroArch can be compiled for both.
- legacy or open source GL drivers (64-bit and Pi 4 does not have a choice). This can be set in `raspi-config`. Open source drivers (mesa) are recommended, see later for the legacy driver instructions.
- GUI environment (X11 or Wayland) or special terminal based setup (KMS). Distributions that have no windowing environment, such as the "lite" versions of Raspberry Pi OS, may still run RetroArch using [KMS mode](../kms-mode).
- audio driver in use: alsa or PulseAudio. If `pactl list cards` produces a list of sound devices, PA is in use, otherwise use alsa.
- GPU memory: while it has no effect on compilation, at least 128 MB is recommended for Pi 0..3, for Pi 4 the default 76 MB is OK.

## Installing necessary packages for compilation

Preinstalled packages may vary between distribution and releases. List is given using Raspberry Pi OS (Debian Bullseye).

- base packages needed for all described compilations: `sudo apt install -y build-essential libudev-dev libegl-dev libgles-dev libx11-xcb-dev`
- sound driver for PulseAudio, if it is in use: `sudo apt install -y libpulse-dev`
- sound driver for alsa, if PulseAudio is not used: `sudo apt install -y libasound2-dev` (there is no harm in installing both audio libraries)
- vulkan driver for Pi 4: `sudo apt install -y libvulkan-dev mesa-vulkan-drivers`
- additional packages for KMS build: `sudo apt install -y libavcodec-dev libavdevice-dev libavformat-dev libavresample-dev libdrm-common libdrm-dev libdrm2 libegl1-mesa-dev libfreetype6-dev libgbm-dev libgbm-dev libgbm1 libgles2 libgles2-mesa libgles2-mesa-dev libsdl-image1.2-dev libsdl2-dev libswresample-dev libswscale-dev libv4l-dev libxkbcommon-dev libxml2-dev yasm zlib1g-dev`

## Retrieving RetroArch code

RetroArch can be retrieved from Git (it may be needed to install git: `sudo apt install git`):

    git clone https://github.com/libretro/RetroArch -b v1.15.0
    cd RetroArch

or alternatively, just downloaded as a specific version (somewhat faster, but can not be easily updated and recompiled):

    wget https://github.com/libretro/RetroArch/archive/refs/tags/v1.15.0.tar.gz
    tar xvfz v1.15.0.tar.gz
    cd RetroArch-1.15.0

## Configuration options

Configuration for RPi 0..3 32-bit, disabling the legacy GL driver, GL1 support, enabling OpenGL ES instead of OpenGL, and adding support for the floating point unit found in all Pi's:

    ./configure --disable-videocore --disable-opengl1 --enable-opengles --enable-floathard

Configuration for RPi 3 64-bit, where the floating point unit is default:

    ./configure --disable-videocore --disable-opengl1 --enable-opengles

Configuration for RPi 4, adding OpenGL ES 3.1 support:

    ./configure --disable-videocore --disable-opengl1 --enable-opengles --enable-opengles3 --enable-opengles3_1

Several options can be added as a doublecheck. If the necessary libraries are installed, these are picked up automatically, adding the option ensures that missing libraries can not go unnoticed.

- `--enable-pulse` for PulseAudio sound driver
- `--enable-alsa` for ALSA sound driver
- `--enable-udev` for udev input/joypad driver
- `--enable-ssl` for SSL connection (for downloading via https)
- `--enable-vulkan` for Vulkan video driver (usable on Pi 4 only)
- `--enable-kms` and `--enable-egl` for libraries necessary for KMS mode

In case of RPi 2 and 3 with 32-bit OS, NEON support can be explicitly enabled, by adding `CFLAGS='-mfpu=neon'` in front of `./configure` and `--enable-neon` to the options. In RetroArch, this has effect on the audio resampling algorithm compilation.
In all platforms, code optimization can be triggered by adding adding `CFLAGS='-march=native'` in front of .configure. This also means resulting binary may not be executable on an other Pi model.

## Compiling and first updates

Compilation is done with make command. In case of Pi 2 and later, compilation can be made faster by using 2 threads (-j 2). Using more than 2 threads is only recommended on Pi4 with 4GB or more RAM, as compilation of certain parts can eat up available memory and crawl system to a halt.

    make -j2

Compiling depends on SD card access speed as well. On a Pi 1, it can take two hours, on Pi 2, around 30 min, Pi 4 can finish under 10 minutes.

RetroArch can be also installed to the default location, which is usually not writable without sudo:

    sudo make install

Start RetroArch with logging enabled (`./retroarch -v`) to catch any potential problems, and carry out initial updates in the Online Updater:

- download assets
- download core info files
- download controller profiles
- download shaders

In some cases, it may happen that input driver is not found and RetroArch will not start. In this case, add following line into `~/.config/retroarch/retroarch.cfg`, which at this point is almost empty:

    input_driver = "udev"

## Downloading or compiling cores

Libretro cores are built automatically for most platform, but for `armhf` (all Pi 32-bit) or `armv7-neon-hf` (Pi 2 onwards 32-bit), there are only some quite old versions on libretro buildbot. For `aarch64` (Pi 3 and 4 64-bit), there is none.

Building cores can be tried using libretro-super scripts. It is not guaranteed that all cores can be compiled for these platforms, as it depends on the core itself. Example with vitaquake2 core:

    git clone https://github.com/libretro/libretro-super
    cd libretro-super
    ./libretro-fetch.sh vitaquake2
    ./libretro-build.sh vitaquake2
    cp dist/unix/*.so ~/.config/retroarch/cores

## Further RetroArch settings

It is worth to check if the audio driver matches the one you want. Threaded video setting may be enabled for speed enhancement.
In KMS mode, the resolution setting is not exposed in the GUI. Edit following entries in `retroarch.cfg`, example for 1920x1080 50Hz:

    video_fullscreen = "true"
    video_fullscreen_x = "1920"
    video_fullscreen_y = "1080"
    video_windowed_fullscreen = "false"
    video_refresh_rate = "50.0"

For Pi 4 to enable 4K 60 Hz refresh, a line is needed in `config.txt`:

    hdmi_enable_4kp60 = 1

[LED driver](../led-drivers/#sysled-driver) may also be enabled.

## Legacy GL drivers and dispmanx

Initially, RPi's VideoCore IV GPU (used for models earlier than RPi 4) was supported through vendor-specific Broadcom OpenGL/EGL libraries. This library is linked when `--enable-videocore` option is specified for `./configure`.
To compile RetroArch with legacy drivers, specify the `--enable-videcore` option instead of `--disable-videocore` above. Note that this library is only available for 32-bit systems, and even there it is missing in recent distributions. The binaries must be present in `/opt/vc` for compilation to work.
To start RetroArch built this way, system must be switched to "Legacy GL" driver using `raspi-config`.
In addition to this, RetroArch has a specific `dispmanx` video driver that utilizes the vendor-specific API instead of OpenGL. This video driver can be enabled with `--enable-dispmanx`, however it has only limited functionalities, in particular only RGUI is supported, and there are no widgets/overlays. As a corner case, dispmanx driver works in fake KMS mode.
Neither dispmanx driver nor legacy GL drivers work with RetroArch in KMS mode.

## Checking OpenGL details

Active GL driver can be checked by running `lsmod | grep vc4`. If this shows a loaded module, then the open source GL driver is in use.
OpenGL performance can be checked with `glxgears` command:

    vblank_mode=0 glxgears -info

This command should display a window with spinning gears, and an FPS counter in the command line. Few hundred FPS is expected (even on RPi 1), since vblank_mode=0 will decouple refresh from the display refresh rate.
If glxgears can not be found, install `mesa-utils` package. If weird textures appear, you are running the legacy GL driver. If image is correct, but performance is low, check if the renderer has fallen back to software (LLVMpipe). In this case, run `raspi-config` and enable Glamor for acceleration.

Pi 0..3 supports OpenGL ES 2, Pi 4 supports OpenGL ES 3.1. To doublecheck the supported versions, use `glxinfo | grep version`.

## Some tests in 2023

Tests were done as follows:

- fresh installation of 2023-02-21 versions of Raspberry Pi OS
- download, configure and build RetroArch 1.15.0
- keep default settings of RA, download assets and core info files
- run RA in the native monitor resolution (fullscreen, 1920x1080x60hz)
- no shaders
- Pi4 is also tested with 4kp60

FPS of Ozone menu, after downloading assets, gl driver:

| Setup                         | RPi 1     | RPi 2     | RPi 3     | RPi 4     | RPi 4 4K  |
|-------------------------------|:---------:|:---------:|:---------:|:---------:|:---------:|
| Bullseye 32-bit, Mesa         | ~5        | ~23       | ~29       |  ~50      | ¬10       |
| Bullseye 64-bit, Mesa         | -         | -         | ~25       |  ~55      | ¬13       |
| Bullseye lite 32-bit, Mesa/KMS| ~20       | ~42       | ~50       |  ~55      | ~23       |
| Bullseye lite 64-bit, Mesa/KMS| -         | -         | ~48       |  ~55      | ~23       |
| Buster 32-bit, legacy         | ~6/21     | ~9/40     | ~10/42    |  -        | -         |

On Pi 4, where there is a choice of gl, glcore and vulkan drivers, both glcore and vulkan gave an increase of a few fps in the menu.
With legacy drivers, Ozone is much slower than XMB, so XMB values are also given. With Mesa, there is not much difference.

FPS of VitaQuake2, default demo, default internal resolution (960x544), gl driver:

| Setup                         | RPi 1     | RPi 2     | RPi 3     | RPi 4     | RPi 4 4K  |
|-------------------------------|:---------:|:---------:|:---------:|:---------:|:---------:|
| Bullseye 32-bit, Mesa         | <1        | ~12       | ~15       | ~52       | ~25       |
| Bullseye 64-bit, Mesa         | -         | -         | ~23       | >60       | ~26       |
| Bullseye lite 32-bit, Mesa/KMS| ~3        | ~16       | ~25       | >60       |           |
| Bullseye lite 64-bit, Mesa/KMS| -         | -         | ~29       | >60       | ~45-50    |
| Buster 32-bit, legacy         | ~2        | ~13       | ~19       | -         | -         |

## Problems experienced

Following problems were experienced while writing this guide:

- Vulkan with KMS does not work, RetroArch fails to launch.
- In KMS mode, display can become shifted (even the menu)
- On Buster, the terminal that is used to launch RetroArch, will continue to receive keypresses
- Compiling for Pi4 needs all 3 of the opengles command line switches, even though they seem redundant