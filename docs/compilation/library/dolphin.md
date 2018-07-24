# Nintendo Gamecube/Wii (Dolphin)

## Requirements

- CMake
- Vulkan for the Vulkan renderer.
- Direct3D 11 for the Direct3D 11 renderer.

## How to compile (for Windows x64)

Enter the following commands (from the Dolphin source directory):

mkdir build
cd build
cmake .. -DLIBRETRO=ON -DCMAKE_BUILD_TYPE=Release -G"Visual Studio 15 2017 Win64"
cmake --build . --target dolphin_libretro --config Release
