# Windows (2000 and later) Command-line Compilation / Development Guide

## Environment configuration

To compile RetroArch on the command-line targeting Windows 2000 or later, we will use a combination of the MSYS2 shell and Microsoft Visual C++ 2008.

This guide assumes the host OS is Windows Vista or later, as MSYS2 cannot be installed on anything older.

Prerequisites:

[Visual C++ 2008 Express](http://download.microsoft.com/download/A/9/1/A91D6B2B-A798-47DF-9C7E-A97854B7DD18/VC.iso) (or Pro)

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

    make -f Makefile.griffin platform=windows_msvc2008_x86

If you do not want to compile in DirectX support, you can add `HAVE_DIRECTX=0` to the end of the command line. Currently it is necessary to disable DirectX support when targeting NT4.

### Finished

After the build is finished you should be able to find retroarch.exe in the current directory. To start the newly compiled retroarch, copy the .exe file to a new folder where its configuration files and folders will be automatically created on first run. Running the .exe file inside of the source directory is not recommended as it will overwrite existing files.
