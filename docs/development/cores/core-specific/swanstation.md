# Sony PlayStation (SwanStation)

## Requirements

- CMake

## How to compile (for Windows x64 - Visual Studio 2019)

In addition to the requirement(s) listed above, you will also need Visual Studio 2019 installed in order for the following to work.

Enter the following commands (from the SwanStation source directory):

    cmake -G"Visual Studio 16 2019" -A "x64" -DBUILD_LIBRETRO_CORE=ON -DCMAKE_BUILD_TYPE=Release -DENABLE_CHEEVOS=OFF . -B"build\windows-x86_64"
