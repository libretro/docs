# Windows (NT3.51) Command-line Compilation / Development Guide

## Environment configuration

To compile RetroArch on the command-line targeting Windows NT3.51, we will use a combination of the MSYS2 shell and Microsoft Visual C++ 6.

This guide assumes the host OS is Windows Vista or later, as MSYS2 cannot be installed on anything older.

Prerequisites:

Visual C++ 6

[Windows Server 2003 SP1 Platform SDK](https://www.microsoft.com/en-us/download/details.aspx?id=12261)

!!! Note
    In lieu of having to install the full Visual Studio suite, a minimal toolchain can be created by copying the `Common` and `VC98` folders from an installation on another machine (usually located at `C:\Program Files (x86)\Microsoft Visual Studio`). For this example we will use a root folder of `C:\mini-msvc` to hold everything, and those two folders from the MSVC installation will be copied into a directory under the root folder called `msvc6`.

!!! Note
    The same thing can be done with the Platform SDK, just copy the `Include` and `Lib` folders from an existing installation (usually located in `C:\Program Files (x86)\Microsoft Platform SDK`) into a folder in the root such as `plat2003sp1`.

## RetroArch Compilation
### Building RetroArch

First you will need the MSYS2 distribution. You can download the MSYS2 installer from [here](http://msys2.github.io/).

Follow the installation instructions and once finished start the MSYS2 shell.

First we need to install the `make` package:

    pacman -S make

Then we need to obtain RetroArch's source tree.

You can clone the repository directly from [GitHub](https://github.com/libretro/RetroArch):

    git clone https://github.com/libretro/RetroArch.git retroarch

For subsequent builds you will need to pull the changes from the repo

    cd retroarch
    git pull

To compile RetroArch, run:

    make -f Makefile.griffin platform=windows_msvc6_x86

### Minimal Toolchain

If you are only using a minimal toolchain as described above, you can instead specify the location of the `msvc6` and `plat2003sp1` folders like this:

    make -f Makefile.griffin platform=windows_msvc6_x86 VCDIR="c:\\mini-msvc\\msvc6\\VC98" INETSDK="c:\\mini-msvc\\plat2003sp1"

Also, any of the paths can optionally be left out to use the system version instead.

### Finished

After the build is finished you should be able to find retroarch.exe in the current directory. To start the newly compiled retroarch, copy the .exe file to a new folder where its configuration files and folders will be automatically created on first run. Running the .exe file inside of the source directory is not recommended as it will overwrite existing files.
