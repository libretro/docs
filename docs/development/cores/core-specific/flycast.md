# Sega Dreamcast/NAOMI (Flycast)

## Requirements

- CMake

## How to compile (for Windows)

Enter the following commands (from the Flycast source directory):

```
mkdir build
cd build
cmake -DLIBRETRO=ON -G "MinGW Makefiles"
```

## How to compile (for Linux)

Enter the following commands (from the Flycast source directory):

```
mkdir build
cd build
cmake -DLIBRETRO=ON -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
```

## How to debug
To debug the Flycast core in GDB, you need to insert the following inside gdb before running RetroArch:

```
handle SIGSEGV nostop noprint
```
