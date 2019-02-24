# Windows (95/98/NT4) Command-line Compilation / Development Guide

## Environment configuration

To compile RetroArch on the command-line targeting Windows 95, Windows 98 or Windows NT4, we will use a combination of the MSYS2 shell and Microsoft Visual Studio .NET 2003.

This guide assumes the host OS is Windows Vista or later, as MSYS2 cannot be installed on anything older.

Prerequisites:

Visual Studio .NET 2003

[Windows Server 2003 SP1 Platform SDK](https://www.microsoft.com/en-us/download/details.aspx?id=12261)

!!! Note
    Windows 95 does not support DirectX 9.0, and NT4 does not support DirectX higher than 3.0a.

!!! Note
    In lieu of having to install the full Visual Studio suite, a minimal toolchain can be created by copying the `Common7` and `Vc7` folders from an installation on another machine (usually located at `C:\Program Files (x86)\Microsoft Visual Studio .NET 2003`). For this example we will use a root folder of `C:\mini-msvc` to hold everything, and those two folders from the MSVC installation will be copied into a directory under the root folder called `msvc2003`.

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

    make -f Makefile.griffin platform=windows_msvc2003_x86

DirectX support is disabled by default since 95/NT do not support DirectX 9.0, but if you will only be running on higher versions of Windows, you can re-enable it by adding `HAVE_DIRECTX=1` to the end of the command line.

### Minimal Toolchain

If you are only using a minimal toolchain as described above, you can instead specify the location of the `msvc2003` and `plat2003sp1` folders like this:

    make -f Makefile.griffin platform=windows_msvc2003_x86 VS71COMNTOOLS="c:\\mini-msvc\\msvc2003\\Common7\\Tools\\" INETSDK="c:\\mini-msvc\\plat2003sp1"

!!! Note
    The trailing slash at the end of the COMNTOOLS variable is mandatory.

Also, any of the paths can optionally be left out to use the system version instead.

### Finished

After the build is finished you should be able to find retroarch.exe in the current directory. To start the newly compiled retroarch, copy the .exe file to a new folder where its configuration files and folders will be automatically created on first run. Running the .exe file inside of the source directory is not recommended as it will overwrite existing files.
