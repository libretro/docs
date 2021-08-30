# Sega Dreamcast/NAOMI (Flycast)

## Requirements

- CMake

## How to compile (for Windows x64)

## How to debug
To debug the Flycast core in GDB, you need to insert the following inside gdb before running RetroArch:

```
handle SIGSEGV nostop noprint
```
