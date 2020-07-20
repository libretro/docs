# Windows (2000 and later) Compilation / Development Guide

## Environment configuration

To compile RetroArch targeting Windows 2000 or later, we will use Microsoft Visual C++ 2008. This is the last version of Visual C++ that can target 2000.

Prerequisites:

[Visual C++ 2008 Express](http://download.microsoft.com/download/A/9/1/A91D6B2B-A798-47DF-9C7E-A97854B7DD18/VC.iso) (or Pro)

## RetroArch Compilation
### Building RetroArch

!!! Note
    Setting up a working git shell is beyond the scope of this document.

The first step is to obtain RetroArch's source tree.
You can clone the repository directly from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch

For subsequent builds you will need to pull the changes from the repo

    cd retroarch
    git pull

To compile RetroArch, first open the solution file located at pkg/msvc/RetroArch-msvc2008.sln with Visual C++ 2008.

Next we select the desired solution configuration:

![configurations](https://s3.amazonaws.com/retroarch/msvc2005-targets.png)

The choices are:

    Debug
    Debug NoAccel
    Release
    Release NoAccel

For development purposes you can use the Debug configurations, otherwise use Release. The "NoAccel" versions do not include Direct3D or OpenGL support (but keeps DirectInput and DirectSound support).

Now press F7 to build the solution, or go to Build -> Build Solution.

After the build is finished you should be able to find RetroArch-msvc2008.exe in the pkg/msvc/msvc-2008/&lt;configuration&gt; directory, where `<configuration>` is the one you chose earlier such as Debug or Release. To start the newly compiled retroarch you can press F5 in Visual C++ or simply navigate to the .exe file and run it there.
