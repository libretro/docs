# Windows (XP and later) Compilation / Development Guide

## Environment configuration

To compile RetroArch targeting Windows XP or later, we will use Microsoft Visual Studio 2010.

This guide assumes the host OS is Windows XP.

Prerequisites:

[Windows XP Service Pack 3](https://support.microsoft.com/en-us/help/936929/information-about-windows-xp-service-pack-3) (requires SP1 or SP2 installed first)

[DirectX SDK June 2010](https://www.microsoft.com/en-us/download/details.aspx?id=6812)

[Visual Studio 2010 Express](http://web.archive.org/web/20161014172355/http://download.microsoft.com/download/1/E/5/1E5F1C0A-0D5B-426A-A603-1798B951DDAE/VS2010Express1.iso) (or Pro)

[Visual Studio 2010 Service Pack 1](http://web.archive.org/web/20160401071422/http://download.microsoft.com/download/E/B/A/EBA0A152-F426-47E6-9E3F-EFB686E3CA20/VS2010SP1dvd1.iso) (needed for the multi-language support in RetroArch)

## RetroArch Compilation
### Building RetroArch

The first step is to obtain RetroArch's source tree.

If you need a git shell to work in, [msysgit 1.8.5.2](https://github.com/msysgit/msysgit/releases/download/Git-1.8.5.2-preview20131230/Git-1.8.5.2-preview20131230.exe) is known to work.

You can clone the repository directly from [GitHub](https://github.com/libretro/RetroArch):

    git clone https://github.com/libretro/RetroArch.git retroarch

For subsequent builds you will need to pull the changes from the repo

    cd retroarch
    git pull

To compile RetroArch, first open the solution file located at pkg/msvc/RetroArch-msvc2010.sln with Visual Studio 2010.

Next we select the desired solution configuration:

![configurations](https://s3.amazonaws.com/retroarch/msvc2010-targets.png)

The choices are:

    Debug
    Debug Cg
    Release
    Release Cg

For development purposes you can use the Debug configurations, otherwise use Release. The "Cg" versions also include support for Cg shaders used with the OpenGL video driver. These will require a separate installation of the [Nvidia Cg Toolkit](https://developer.nvidia.com/cg-toolkit).

Now press F7 to build the solution, or go to Build -> Build Solution.

After the build is finished you should be able to find RetroArch-msvc2005.exe in the pkg/msvc/&lt;configuration&gt; directory, where `<configuration>` is the one you chose earlier such as Debug or Release. To start the newly compiled retroarch you can press F5 in Visual C++ or simply navigate to the .exe file and run it there.
