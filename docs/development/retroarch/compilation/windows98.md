# Windows (98/2000) Compilation / Development Guide

## Environment configuration

To compile RetroArch targeting Windows 98 and 2000, we will use Microsoft Visual C++ 2005. This is the last version of Visual C++ that can target 98/2000.

This guide assumes the host OS is Windows 2000 Professional. VC2005 does run on Windows XP and Vista but this has not been tested with RetroArch.

Prerequisites:

[Windows 2000 Service Pack 4](https://web.archive.org/web/20051022095019/http://download.microsoft.com/download/e/6/a/e6a04295-d2a8-40d0-a0c5-241bfecd095e/w2ksp4_en.exe)

[Windows 2000 Update Rollup 1](https://web.archive.org/web/20060320020710/http://download.microsoft.com/download/2/7/b/27b1d1a3-0299-4336-b88a-22b9f09817e2/Windows2000-KB891861-v2-x86-ENU.EXE)

[Internet Explorer 6](https://s3.amazonaws.com/bparker/ie60.exe)

[Internet Explorer 6 Service Pack 1](https://s3.amazonaws.com/bparker/IE6.0SP1-KB2722913-WINDOWS2000-X86-ENU.EXE) (required by VC2005)

[DirectX SDK February 2005](https://s3.amazonaws.com/bparker/dxsdk_feb2005.exe) (versions after this date will not install on Windows 2000)

[Windows Server 2003 SP1 Platform SDK](https://www.microsoft.com/en-us/download/details.aspx?id=12261)

[Visual C++ 2005 Express](http://download.microsoft.com/download/A/9/1/A91D6B2B-A798-47DF-9C7E-A97854B7DD18/VC.iso) (or Pro)

!!! Note
    Windows 98 Second Edition is supported, but First Edition has not been tested. If you do try to target it, make sure that your DirectX SDK is no newer than July 2004.

## RetroArch Compilation
### Building RetroArch

!!! Note
    Setting up a working git shell is beyond the scope of this document. [msysgit 1.8.5.2](https://github.com/msysgit/msysgit/releases/download/Git-1.8.5.2-preview20131230/Git-1.8.5.2-preview20131230.exe) is known to work locally but is unable to communicate with any remote servers on Windows 2000, and the github website does not load in IE6 either.

The first step is to obtain RetroArch's source tree.
You can clone the repository directly from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch

For subsequent builds you will need to pull the changes from the repo

    cd retroarch
    git pull

To compile RetroArch, first open the solution file located at pkg/msvc/RetroArch-msvc2005.sln with Visual C++ 2005.

Next we select the desired solution configuration:

![configurations](https://s3.amazonaws.com/retroarch/msvc2005-targets.png)

The choices are:

    Debug
    Debug NoAccel
    Release
    Release NoAccel

For development purposes you can use the Debug configurations, otherwise use Release. The "NoAccel" versions do not include Direct3D or OpenGL support (but keeps DirectInput and DirectSound support).

Now press F7 to build the solution, or go to Build -> Build Solution.

After the build is finished you should be able to find RetroArch-msvc2005.exe in the pkg/msvc/msvc-2005/&lt;configuration&gt; directory, where `<configuration>` is the one you chose earlier such as Debug or Release. To start the newly compiled retroarch you can press F5 in Visual C++ or simply navigate to the .exe file and run it there.
