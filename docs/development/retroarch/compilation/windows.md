# Windows 7 and later compilation and development guide

!!! Warning
    The MinGW toolchain we use in this guide no longer supports targeting Windows Vista or earlier.
    Please refer to one of the MSVC guides for how to target older Windows versions with Visual Studio.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/OaYvc3y3VLI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video covers quick demonstrations of these subjects;

1. Environment Configuration

2. Building RetroArch

3. Packaging RetroArch

Be sure to read instructions that are given in this page.

## Environment configuration

We recommend MinGW-W64 from MSYS2. You can download MSYS2 installer from [here](http://msys2.github.io/).

Follow the installation instructions and once finished start the MSYS2 shell.

You may need to add "Full Control" permission to your MSYS folder (for example, C:\msys64) or run the shell as Administrator.

MSYS2 shell is a maintenance shell. We are going to use this shell to install the toolchain and other packages. First order of business is to update MSYS2. Start the MSYS2 MINGW64 or MINGW32 Shell (mingw64.exe or mingw32.exe), It is important to use this particular shell (MINGW) because the makefile uses it to detect the target platform as Windows.

Once we're in the shell, run the following commands:

```bash
pacman --noconfirm -Sy
pacman --needed --noconfirm -S bash pacman pacman-mirrors msys2-runtime
```

Close MSYS2 shell and start it again, and:

```bash
pacman --noconfirm -Su
```

Restart MSYS2 once again. Now we can start installing the packages we actually need.

For 32-bit builds:

```bash
pacman -S --noconfirm --needed wget git make mingw-w64-i686-toolchain mingw-w64-i686-ntldd mingw-w64-i686-zlib mingw-w64-i686-pkg-config mingw-w64-i686-SDL2 mingw-w64-i686-libxml2 mingw-w64-i686-freetype mingw-w64-i686-python3 mingw-w64-i686-ffmpeg mingw-w64-i686-drmingw
```

For 64-bit builds:

```bash
pacman -S --noconfirm --needed wget git make mingw-w64-x86_64-toolchain mingw-w64-x86_64-ntldd mingw-w64-x86_64-zlib mingw-w64-x86_64-pkg-config mingw-w64-x86_64-SDL2 mingw-w64-x86_64-libxml2 mingw-w64-x86_64-freetype mingw-w64-x86_64-python3 mingw-w64-x86_64-ffmpeg mingw-w64-x86_64-drmingw
```

You might want to install Qt too if you want to be able to use the desktop GUI.

For 32-bit builds:

```bash
pacman -S --noconfirm --needed mingw-w64-i686-qt5 mingw-w64-i686-openssl
```

For 64-bit builds:

```bash
pacman -S --noconfirm --needed mingw-w64-x86_64-qt5  mingw-w64-x86_64-openssl
```

The NVIDIA CG toolkit package hasn't been updated for a while so you need to download that package manually and install with pacman. You can download the packages from sourceforge at the following locations: [32-bit](http://sourceforge.net/projects/msys2/files/REPOS/MINGW_GCC_4_9/i686/mingw-w64-i686-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz/download) / [64-bit](http://sourceforge.net/projects/msys2/files/REPOS/MINGW_GCC_4_9/x86_64/mingw-w64-x86_64-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz/download). Alternatively you can use the following commands directly:

For 32-bit builds:

```bash
wget http://sourceforge.net/projects/msys2/files/REPOS/MINGW_GCC_4_9/i686/mingw-w64-i686-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz/download -O mingw-w64-i686-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz
pacman -U mingw-w64-i686-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz
```

For 64-bit builds:

```bash
wget https://sourceforge.net/projects/mingw-w64-archlinux/files/x86_64/mingw-w64-nvidia-cg-toolkit-3.1-2-any_4.pkg.tar.xz/download -O mingw-w64-x86_64-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz
pacman -U mingw-w64-x86_64-nvidia-cg-toolkit-3.1-2-any.pkg.tar.xz
```

If you encounter any errors, you may try the following procedure instead:

```bash
pacman -S mingw-w64-x86_64-crt
pacman -S mingw-w64-x86_64-nvidia-cg-toolkit
```


Once these packages are installed close MSYS2 shell and open MinGW-w32 shell or MinGW-w64 shell depending on the platform you want to build for.

You'll need gcc and make:
```bash
pacman -S make
pacman -S gcc
```

## RetroArch Compilation
### Building RetroArch

The first step is to obtain RetroArch's source tree.
You can find the repository directly at [GitHub](https://github.com/libretro/RetroArch)

Start the MINGW64 or the MINGW32 shell depending on what you want to compile and run the following commands:

```bash
git clone https://github.com/libretro/RetroArch.git retroarch
```

For subsequent builds you will need to pull the changes from the repo

```bash
cd retroarch
git pull
```

To compile RetroArch, run the following commands inside RetroArch's source tree:

```bash
./configure
make clean
make -j4
```

For development purposes you might want to run a debug build instead. In such case use the following commands:

```bash
./configure
make clean
make DEBUG=1 GL_DEBUG=1 -j4
```

To facilitate debugging you can get an integrated crash handler by replacing the configure step with (debug builds only):

     ./configure --enable-drmingw

After a few minutes you should be able to find retroarch.exe under that directory. To start the newly compiled retroarch you can use:

```bash
./retroarch
```

### Packaging RetroArch

You might not be able to start your own build outside that environment. You might want to try to get all the required DLLs by running the following script in your destination RetroArch folder (not the git repo folder):

```bash
for i in $(seq 3); do for bin in $(ntldd -R *exe | grep -i mingw | cut -d">" -f2 | cut -d" " -f2); do cp -vu "$bin" . ; done; done
```

If Qt is enabled for your build (detected automatically by default), the following is also needed:

```bash
windeployqt --no-patchqt --no-translations retroarch.exe
for i in $(seq 3); do for bin in $(ntldd -R imageformats/*dll | grep -i mingw | cut -d">" -f2 | cut -d" " -f2); do cp -vu "$bin" . ; done; done
```

If you really want to get the required libraries for distribution or for personal use on other devices and LDD doesn't work for you for whatever reason, then you can try [Dependency Walker](http://www.dependencywalker.com/).

!!! tip
    If you're building frequently you may want to add **ccache** to the mix to speed up the build process.
    Install ccache via the package manager and the prepend the ccache symlink directory to your build environment path as shown below.

    For further instructions check the [documentation](https://ccache.samba.org/manual.html#_run_modes)

Install **ccache** for 32-bit builds:

```bash
pacman -S --noconfirm --needed make mingw-w64-i686-ccache
```

Install **ccache** for 64-bit builds:

```bash
pacman -S --noconfirm --needed mingw-w64-x86_64-ccache
```

Configure paths for 32-bit builds:

```bash
export PATH=/mingw32/lib/ccache/bin/:$PATH
```

Configure paths for 64-bit builds:

```bash
export PATH=/mingw64/lib/ccache/bin/:$PATH
```

Build with both `ccache` and the `-j5` flag to specify five concurrent tasks:

```bash
ccache make -j5
```

!!! tip
    You can add this to /etc/profile under both the 32-bit and 64-bit setups by adding `${MINGW_MOUNT_POINT}/lib/ccache/bin` to the front of the PATH variables found in `MINGW32)` and `MINGW64)`, around line 50 of profile, to ensure the proper binaries are loaded for each development environment.

From our own buildbot, the times with and without **ccache** are the following:

Without **ccache**:

    real    2m7.645s
    user    0m2.585s
    sys     0m11.527s

With **ccache**:

    real    0m25.466s
    user    0m2.902s
    sys     0m9.952s

!!! tip
    You can also strip the debug symbols of the build product to save some space.

Strip **retroarch**:

```bash
strip -s retroarch.exe
```

## Core Compilation

### Fetching Cores

You can find the cores on libretro's [GitHUB organization](https://github.com/libretro/).

We have an all-in-one tool to fetch and compile cores which you can use to streamline the process.
You can obtain the tool by using these commands:

```bash
git clone https://github.com/libretro/libretro-super.git
cd libretro-super
```

Then you can fetch one or all the cores by using **libretro-fetch.sh**

Fetch all cores:

```bash
./libretro-fetch.sh
```

Fetch one core:

```bash
./libretro-fetch.sh *corename*
```

!!! Note
     Replace *corename* with the name of the core you want to fetch, for example gambatte

### Building Cores

#### libretro-super

The easiest way to build all the cores is to use **libretro-build.sh** from within libretro-super's source tree:

```bash
./libretro-build.sh
```

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order:

```bash
./libretro-build.sh snes9x2010 fceumm
```

Once compilation has finished, you can find the libretro cores inside *dist/win*.

#### Manual Fetching and Compilation

Get the core's source tree. As an example we'll use [fceumm](https://github.com/libretro/libretro-fceumm/)

```bash
git clone https://github.com/libretro/libretro-fceumm.git
```

Then compile the core:

```bash
cd libretro-fceumm
make -f Makefile.libretro
```

If the Makefile.libretro is not present, as in the libretro-atari800 core, you might try the following:

```bash
cd libretro-atari800
make
```

Optionally strip the build product:

```bash
strip fceumm_libretro.dll
```

Most cores will build with these instructions. You might need to browse to a subdirectory in some cases.
