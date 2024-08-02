# Sony PlayStation2 (LRPS2)

## Requirements

- CMake
- xxd (optional)

## How to compile (for Windows x64 - Visual Studio 2017)

In addition to the requirement(s) listed above, you will also need Visual Studio 2017 installed in order for the following to work.

Enter the following commands (from the PCSX2 source directory):

    mkdir build
    cd build
    cmake .. -DLIBRETRO=ON -DCMAKE_BUILD_TYPE=Release -G"Visual Studio 15 2017 Win64"
    cmake --build . --target pcsx2_libretro --config Release
    
!!! Warning
    If it says 'Could not find named generator' or something to that effect, it means you might be using
    the wrong cmake version on Msys2/Mingw. Remove the regular 'cmake' package and try to install 'mingw-w64-x86_64-cmake' instead.
    
!!! Warning
    If you get this error 'Visual Studio 15 2017 could not find any instance of Visual Studio', your installation of Visual Studio 2017
    is most likely missing 'Visual C++ tools for CMake'. This can be found under 'Desktop development with C++'. Go back to Visual Studio
    2017 and install this, then try again.

## How to compile (for Windows x64 - Visual Studio 2019)

In addition to the requirement(s) listed above, you will also need Visual Studio 2019 installed in order for the following to work.

Enter the following commands (from the PCSX2 source directory):

    mkdir build
    cd build
    cmake .. -DLIBRETRO=ON -G"Visual Studio 16 2019"
    cmake --build . --target pcsx2_libretro --config Release

!!! Warning
    If it says 'Could not find named generator' or something to that effect, it means you might be using
    the wrong cmake version on Msys2/Mingw. Remove the regular 'cmake' package and try to install 'mingw-w64-x86_64-cmake' instead.
    
## How to compile (for Windows x64 - Visual Studio 2022)

In addition to the requirement(s) listed above, you will also need Visual Studio 2022 installed in order for the following to work.

Enter the following commands (from the PCSX2 source directory):

    cmake -B build -G "Visual Studio 17 2022" -DCMAKE_BUILD_TYPE=Release -DLIBRETRO=ON
    cmake --build build --config Release --target pcsx2_libretro

## How to compile (for Linux)

Enter the following commands (from the PCSX2 source directory):

    mkdir build
    cd build
    cmake ..
    make
