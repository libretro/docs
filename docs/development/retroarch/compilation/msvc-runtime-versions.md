# MSVC Runtime Versions

|VC++ version |_MSC_VER|Alternative name         |C runtime      |C++ runtime   |
|-------------|--------|-------------------------|---------------|--------------|
|1.0          |800     |                         |MSVCRT10.DLL   |              |
|2.0          |900     |                         |MSVCRT20.DLL   |              |
|4.0          |1000    |                         |MSVCRT40.DLL   |              |
|4.2          |1020    |                         |MSVCRT.DLL     |              |
|5.0          |1100    |Visual Studio 97         |MSVCRT.DLL     |MSVCP50.DLL   |
|6.0          |1200    |Visual Studio 6.0, VC98  |MSVCRT.DLL     |MSVCP60.DLL   |
|7.0          |1300    |Visual Studio .NET (2002)|MSVCR70.DLL    |MSVCP70.DLL   |
|7.1          |1310    |Visual Studio .NET 2003  |MSVCR71.DLL    |MSVCP71.DLL   |
|8.0          |1400    |Visual Studio 2005       |MSVCR80.DLL    |MSVCP80.DLL   |
|9.0          |1500    |Visual Studio 2008       |MSVCR90.DLL    |MSVCP90.DLL   |
|10.0         |1600    |Visual Studio 2010       |MSVCR100.DLL   |MSVCP100.DLL  |
|11.0         |1700    |Visual Studio 2012       |MSVCR110.DLL   |MSVCP110.DLL  |
|12.0         |1800    |Visual Studio 2013       |MSVCR120.DLL   |MSVCP120.DLL  |
|14.0         |1900    |Visual Studio 2015       |See notes      |MSVCP140.DLL  |
|14.1*        |1910*   |Visual Studio 2017       |See notes      |MSVCP140.DLL  |

!!! Note "Note for VC2003"
    The runtime does not have its own redist, it is instead only bundled with .NET Framework 1.1, or you can manually extract it from KB932298 (2007 DST Update).

!!! Note "Note for VC2015/2017"
    The runtime was split into 4 external libraries: concrt140.dll, msvcp140.dll, vccorlib140.dll and vcruntime140.dll, as well as an OS-local component named ucrtbase.dll included with Windows 10 and up.

!!! Note "Note for VC2017"
    The version numbers increment with each update (VC++ versions 14.1/14.11/14.12, _MSC_VER 1910/1911/1912, Visual Studio versions 15.0/15.3/15.5 etc.). And yes, the C++ runtime is still called VCP140 and not VCP141...

## What does my Windows version ship with?

|Version    |NT3  |95   |NT4  |98   |2000 |ME   |XP   |2003 |2003R2|Vista|2008 |7    |2008R2|2012 |8    |8.1  |2012R2|10   |2016 |
|:---------:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:---:|:---:|:---:|:----:|:---:|:---:|:---:|:----:|:---:|:---:|
|1.0        |X    |     |     |     |     |     |     |     |      |     |     |     |      |     |     |     |      |     |     |
|2.0        |X    |X    |X    |X    |X    |     |X    |X    |X     |X    |X    |X    |X     |X    |X    |X    |X     |X    |X    |
|4.0        |     |X*   |X    |X    |X    |     |X    |X    |X     |X    |X    |X    |X     |X    |X    |X    |X     |X    |X    |
|5.0        |     |     |     |X*   |X    |     |X    |X    |X     |     |     |     |      |     |     |     |      |     |     |
|6.0        |     |     |     |     |     |     |X    |X    |X     |X    |X    |X    |X     |X    |X    |X    |X     |X    |X    |
|2002       |     |     |     |     |     |     |     |     |      |     |     |     |      |     |     |     |      |     |     |
|2003       |     |     |     |     |     |     |     |X*   |X*    |     |     |     |      |     |     |     |      |     |     |
|2005       |     |     |     |     |     |     |     |     |      |X    |X    |X    |X     |X    |X    |X    |X     |X    |X    |
|2008       |     |     |     |     |     |     |     |     |      |     |     |X    |X     |X    |X    |X    |X     |X    |X    |
|2010       |     |     |     |     |     |     |     |     |      |     |     |     |      |X    |     |     |X     |     |X    |
|2012       |     |     |     |     |     |     |     |     |      |     |     |     |      |     |     |     |      |     |X    |
|2013       |     |     |     |     |     |     |     |     |      |     |     |     |      |     |     |     |      |     |     |
|2015       |     |     |     |     |     |     |     |     |      |     |     |     |      |     |     |     |      |     |     |
|2017       |     |     |     |     |     |     |     |     |      |     |     |     |      |     |     |     |      |     |     |

!!! Note "Note for Windows 95"
    The VC40 runtime is only bundled with Windows 95B (OSR2) and up.

!!! Note "Note for Windows 98"
    The VC50 runtime is not always installed, but is available on the install CD (in WIN98/WIN98_36.CAB for First Edition and 37.CAB for Second Edition).

!!! Note "Note for Server 2003 and 2003R2"
    The VC2003 runtime requires installing the .NET Framework via the Windows Components Wizard after installation.

## Which runtime is supported by my Windows version?

From [Minimum service pack levels for Microsoft VC++ Redistributable Packages](https://support.microsoft.com/en-us/help/2661358/minimum-service-pack-levels-for-microsoft-vc-redistributable-packages):

|Version    |95   |NT4  |98   |2000 |ME   |XP   |2003 |2003R2|Vista|2008 |7    |2008R2|2012 |8    |8.1  |2012R2|10   |2016 |
|:---------:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:---:|:---:|:---:|:----:|:---:|:---:|:---:|:----:|:---:|:---:|
|2003       |X*   |SP6a*|X*   |X*   |X*   |X*   |X*   |X*    |X*   |X*   |     |      |     |     |     |      |     |     |
|2005       |     |     |     |     |     |SP2+ |SP1+ |      |     |     |     |      |     |     |     |      |     |     |
|2005 SP1   |     |     |     |     |     |SP2+ |SP1+ |X     |X    |X    |X    |X     |X    |X    |X    |X     |X    |     |
|2008       |     |     |     |SP4  |     |SP2+ |SP1+ |X     |X    |     |     |      |     |     |     |      |     |     |
|2008 SP1   |     |     |     |     |     |SP2+ |SP1+ |X     |X    |X    |X    |X     |X    |X    |X    |X     |X    |     |
|2010       |     |     |     |     |     |SP3  |SP2+ |X     |SP2+ |SP2+ |X    |X*    |     |     |     |      |     |     |
|2010 SP1   |     |     |     |     |     |SP3  |SP2+ |X     |SP2+ |SP2+ |X    |X*    |X*   |X*   |X*   |X*    |X*   |     |
|2012 Upd. 4|     |     |     |     |     |SP3  |SP2+ |X     |SP2+ |SP2+ |SP1+ |SP1+  |X    |X    |X    |SP1+* |X    |     |
|2013       |     |     |     |     |     |SP3  |SP2+ |X     |SP2+ |SP2+ |SP1+ |SP1+  |X    |X    |X    |X     |X    |     |
|2015       |     |     |     |     |     |SP3  |SP2+ |X     |SP2+ |SP2+ |SP1+ |SP1+  |X    |X    |X    |X     |X    |     |
|2017       |     |     |     |     |     |SP3  |SP2+ |      |SP2+ |SP2+ |SP1+ |SP1+  |X    |     |X*   |      |X*   |X    |

!!! Note "Note for VC2003"
    The VC2003 runtime is not provided as a separate download and requires installing the .NET Framework 1.1 (requires IE 5.01 or later).

!!! Note "Note for VC2010"
    Server 2008R2 requires SP1 if using the x64 version.

!!! Note "Note for VC2010 SP1"
    MS Documentation is conflicting about whether or not 2008R2/2012 x86 is supported, or if 8/2012 or higher is even supported at all.

!!! Note "Note for VC2012 Update 4/VC2013"
    MS Documentation is conflicting about the exact service pack levels and architectures supported for each OS version.

!!! Note "Note for VC2013"
    For 8.1 and 2012R2, KB2883200 is required.

!!! Note "Note for VC2017"
    For 8.1 and 2012R2, KB2919355 is required. For 10, build 1507 or later is required. Requirements were taken from [here](https://docs.microsoft.com/en-us/visualstudio/productinfo/vs2017-system-requirements-vs).

!!! Note "Note for Windows 7/8/2012 and higher"
    While some runtimes may not be documented as officially supported, testing shows that all the above versions appear to work.
