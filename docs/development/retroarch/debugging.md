# Debugging

## Dr.MinGW

Windows debug builds now have an integrated crash handler.
If you find any recurrent crashes you can start the retroarch_debug.exe executable, reproduce the crash and you should find a time-stamped crash log in the retroarch directory.

## GDB (All platforms)

The [GNU Debugger](https://www.gnu.org/software/gdb/) is the most widely available debugging tool for many platforms.

!!! note "Windows users"
    This guide assumes you have already installed the MSYS2/MinGW environment as detailed [here](../../compilation/windows/) and that you are running in the appropriate "MSYS2 MinGW" (32 or 64-bit) shell (not "MSYS2 MSYS").

If you observe a crash with RetroArch and would like to get more information, navigate to the folder where your RetroArch installation is and run:

> gdb retroarch

!!! note "Windows users"
    If you have not compiled RetroArch yourself with debugging enabled (`make DEBUG=1`), please specify `retroarch_debug.exe` here instead of `retroarch` to use the debug version that ships with our binary package. In order to debug in Windows 10 when the D3D10 or D3D11 video drivers are in use, be sure that you have also [installed Microsoft's free Windows Direct3D Graphics Tools package](https://docs.microsoft.com/en-us/windows/uwp/gaming/use-the-directx-runtime-and-visual-studio-graphics-diagnostic-features).

After gdb has started, you can then start up RetroArch with `run`. If RetroArch crashes, gdb should show you a prompt with a message such as:

`Program received signal SIGSEGV, Segmentation fault.`

From here, type `bt full` to get a full backtrace of the crash. You can copy/paste this information to a pastebin site such as [dpaste](http://www.dpaste.com/) to get a link that you can provide to developers to help with your problem. Run `quit` when you are done to exit gdb.

To get a full backtrace of the crash for all threads, type `thread apply all bt full`.

For more information on using GDB, please see their online documentation [here](https://sourceware.org/gdb/current/onlinedocs/gdb/).

## ASAN (Linux/Mac/BSD/Android)

AddressSanitizer (ASAN) is a very fast memory error detector and an indispensable tool for finding issues with improper memory handling such as use-after-free, buffer overflows and general memory leaks. It is available since GCC 4.8 and Clang 3.1 for Linux (x64 and ARM) systems. Typical slowdown of runtime performance is around 2x.

There are several ways to use RetroArch in conjunction with ASAN and there are many different options that can be combined with each other. The first step is that you need to compile ASAN directly into the RetroArch binary. Here are some simple examples:

**For detecting memory errors/leaks and undefined behavior:**
> make DEBUG=1 SANITIZER=address,undefined

**For detecting threading errors such as race conditions:**
> make DEBUG=1 SANITIZER=thread

Then you can run the RetroArch binary normally with `./retroarch`. As problems are detected, they will be printed to the console either at runtime or when the program exits or crashes, depending on the type of error.

For more information, see the [gcc](https://gcc.gnu.org/onlinedocs/gcc/Instrumentation-Options.html), [Google](https://github.com/google/sanitizers/wiki/AddressSanitizer) and [clang](https://clang.llvm.org/docs/) documentation.

## Dr. Memory (Windows/Linux/Mac/Android)

Dr. Memory is another tool for detecting memory errors similar to ASAN. Its website can be found here: [http://www.drmemory.org/](http://www.drmemory.org/)

After installation, the simplest way to use Dr. Memory with RetroArch is to open the start menu shortcut under "Dr. Memory" called "Explore Dr. Memory", and then drag the `retroarch_debug.exe` file onto the `drmemory.exe` file there. No re-compilation is necessary to use this tool. Any errors encountered will be displayed in a notepad window after the program exits or crashes.

## VulnScan (Windows/Linux)

Also known as Microsoft Security Risk Detection, is a new memory error detection tool that is (at the time of writing) in closed beta status. For more information, please see its website [here](https://www.microsoft.com/en-us/security-risk-detection/).

## Valgrind (Linux)

[Valgrind](http://valgrind.org/) is probably the oldest and most well known memory error and leak detector available. Here is an example command-line usage to run valgrind with RetroArch to check for memory or threading errors:

> valgrind -v --tool=memcheck --leak-check=yes --track-origins=yes --show-reachable=yes ./retroarch

No recompilation is necessary to use this tool, but make sure to run it using a debug build of RetroArch (built with `make DEBUG=1`). Some users have reported a large number of false positives with this tool, as well as much slower runtime performance, so in general we typically recommend to use ASAN instead if that is an option for you.

## rr (Linux)

[rr](http://rr-project.org/) is a deterministic debugger that enhances gdb by supporting the recording and replay (and even reverse-replay) of your program's execution. Very useful for accurately reproducing a hard-to-trigger issue such as a race condition or crash that only occurs under certain conditions.

For more information on using rr, please see their usage guide [here](https://github.com/mozilla/rr/wiki/Usage).

## Time Travel Debugging (Windows)

[Time Travel Debugging](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/time-travel-debugging-overview) is a Windows tool for recording and replaying a program's execution, similar to [rr](http://rr-project.org/). For more information, please visit their website.

## Android Studio (Android)

See [this file](https://github.com/libretro/RetroArch/blob/master/pkg/android/phoenix-gradle/README.md) for a guide on how to build, sideload and debug a core using Android Studio.
