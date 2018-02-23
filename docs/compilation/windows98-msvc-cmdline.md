# Windows (98 SE/ME/2000) Command-line Compilation / Development Guide

## Environment configuration

To compile RetroArch on the command-line targeting Windows NT4, Windows 98SE, Windows Millenium Edition or Windows 2000, we will use a combination of the MSYS2 shell and Microsoft Visual C++ 2005.

This guide assumes the host OS is Windows Vista or later, as MSYS2 cannot be installed on anything older.

Prerequisites:

[DirectX SDK February 2005](https://s3.amazonaws.com/bparker/dxsdk_feb2005.exe) (any version up to December 2006 should work to target 98SE)

[Visual C++ 2005 Express](http://download.microsoft.com/download/A/9/1/A91D6B2B-A798-47DF-9C7E-A97854B7DD18/VC.iso) (or Pro)

[Windows Server 2003 SP1 Platform SDK](https://www.microsoft.com/en-us/download/details.aspx?id=12261)

!!! Note
    Windows 98 Second Edition is supported, but First Edition has not been tested. If you do try to target it, make sure that your DirectX SDK is no newer than July 2004.

!!! Note
    In lieu of having to install the full Visual Studio suite, a minimal toolchain can be created by copying the `Common7` and `VC` folders from an installation on another machine (usually located at `C:\Program Files (x86)\Microsoft Visual Studio 8`). For this example we will use a root folder of `C:\mini-msvc` to hold everything, and those two folders from the MSVC installation will be copied into a directory under the root folder called `msvc2005`.

!!! Note
    The same thing can be done with the DirectX and Platform SDKs, just copy the `Include` and `Lib` folders from an existing installation (usually located at `C:\Program Files (x86)` in `Microsoft DirectX SDK (June 2010)` and `Microsoft Platform SDK` respectively) into folders in the root such as `dx9_june2010` and `plat2003sp1`.

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

    make -f Makefile.griffin platform=windows_msvc2005_x86

If you do not want to compile in DirectX support, you can add `HAVE_DIRECTX=0` to the end of the command line. Currently it is necessary to disable DirectX support when targeting NT4.

### Minimal Toolchain

If you are only using a minimal toolchain as described above, you can instead specify the location of the folders `msvc2005`, `dx9_feb2005` and `plat2003sp1` like this:

    make -f Makefile.griffin platform=windows_msvc2005_x86 VS80COMNTOOLS="c:\\mini-msvc\\msvc2005\\Common7\\Tools\\" INETSDK="c:\\mini-msvc\\plat2003sp1" DXSDK_DIR="c:\\mini-msvc\\dx9_feb2005"

!!! Note
    The trailing slash at the end of the COMNTOOLS variable is mandatory.

Also, any of the paths can optionally be left out to use the system version instead.

### Finished

After the build is finished you should be able to find retroarch.exe in the current directory. To start the newly compiled retroarch, copy the .exe file to a new folder where its configuration files and folders will be automatically created on first run. Running the .exe file inside of the source directory is not recommended as it will overwrite existing files.
