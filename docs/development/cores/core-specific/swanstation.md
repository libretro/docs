# Sony PlayStation (SwanStation)

## Requirements

- CMake

## How to compile (for Windows x64 - Visual Studio 2019)

In addition to the requirement(s) listed above, you will also need Visual Studio 2019 installed in order for the following to work.

Enter the following commands (from the SwanStation source directory):

    mkdir build
    cd build
    cmake -G "Visual Studio 16 2019" -A "x64" -DCMAKE_BUILD_TYPE=Release ..
    cmake --build . --target swanstation_libretro --config Release

!!! Warning
    If it says 'Could not find named generator' or something to that effect, it means you might be using
    the wrong cmake version on Msys2/Mingw. Remove the regular 'cmake' package and try to install 'mingw-w64-x86_64-cmake' instead.
