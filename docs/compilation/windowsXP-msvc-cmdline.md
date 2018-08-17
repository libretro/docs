# Windows (XP and later) Command-line Compilation / Development Guide

## Environment configuration

To compile RetroArch on the command-line targeting Windows XP or later, we will use a combination of the MSYS2 shell and Microsoft Visual Studio 2010.

This guide assumes the host OS is Windows Vista or later, as MSYS2 cannot be installed on anything older.

Prerequisites:

[DirectX SDK June 2010](https://www.microsoft.com/en-us/download/details.aspx?id=6812)

[Visual Studio 2010 Express](http://web.archive.org/web/20161014172355/http://download.microsoft.com/download/1/E/5/1E5F1C0A-0D5B-426A-A603-1798B951DDAE/VS2010Express1.iso) (or Pro)

!!! Note
    The Express version does not come with a 64-bit compiler.

[Visual Studio 2010 Service Pack 1](http://web.archive.org/web/20160401071422/http://download.microsoft.com/download/E/B/A/EBA0A152-F426-47E6-9E3F-EFB686E3CA20/VS2010SP1dvd1.iso) (needed for the multi-language support in RetroArch)

!!! Note
    In lieu of having to install the full Visual Studio suite, a minimal toolchain can be created by copying the `Common7` and `VC` folders from an installation on another machine (usually located at `C:\Program Files (x86)\Microsoft Visual Studio 10.0`). For this example we will use a root folder of `C:\mini-msvc` to hold everything, and those two folders from the MSVC installation will be copied into a directory under the root folder called `msvc2010`.

!!! Note
    The same thing can be done with the DirectX SDK, just copy the `Include` and `Lib` folders from an existing installation (usually located at `C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)`) into a folder in the root such as `dx9_june2010`.

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

    make -f Makefile.griffin platform=windows_msvc2010_x86

Replace x86 with x64 if you would like a 64-bit build instead of 32-bit. If you do not want to compile in DirectX support, you can add `HAVE_DIRECTX=0` to the end of the command line.

### Minimal Toolchain

If you are only using a minimal toolchain as described above, you can instead specify the location of the `msvc2010` and `dx9_june2010` folders like this:

    make -f Makefile.griffin platform=windows_msvc2010_x86 VS100COMNTOOLS="c:\\mini-msvc\\msvc2010\\Common7\\Tools\\" DXSDK_DIR="c:\\mini-msvc\\dx9_june2010"

!!! Note
    The trailing slash at the end of the COMNTOOLS variable is mandatory.

Also, any of the paths can optionally be left out to use the system version instead.

### Finished

After the build is finished you should be able to find retroarch.exe in the current directory. To start the newly compiled retroarch, copy the .exe file to a new folder where its configuration files and folders will be automatically created on first run. Running the .exe file inside of the source directory is not recommended as it will overwrite existing files.
