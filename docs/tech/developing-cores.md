# Libretro core development

### Libretro API

The Libretro API is a lightweight C-based Application Programming Interface (API) that exposes generic audio, video, and input callbacks. Developers of "cores" such as standalone games, game emulators, media players, and other applications don’t have to worry about writing different video drivers for Direct3D, OpenGL or worrying about catering to all possible input APIs, sound APIs, joypads, etc.

A frontend for libretro (such as RetroArch) handles video output, audio output, input and application lifecycle. A libretro core written in portable C or C++ can run seamlessly on many platforms with very little or no porting effort. Libretro bindings for other languages are growing increasingly common and comprehensive as well.

[Read more about the API in the developer documentation](api.md) or by [browsing the source of libretro.h itself](https://raw.githubusercontent.com/libretro/libretro-common/master/include/libretro.h) .

## Resources for core development

### Canonical `libretro.h`

The [most current canonical copy of `libretro.h`](https://raw.githubusercontent.com/libretro/libretro-common/master/include/libretro.h) can be found in the master branch of the libretro-common repository.

!!! tip
    `libretro.h` is the single most important technial reference for developers of libretro cores and frontends


### libretro-common

[`libretro-common`](https://github.com/libretro/libretro-common/] is a collection of essential cross-platform coding blocks useful for libretro core and frontend development, written primarily in C. Permissively licensed.

### libretro-deps

[`libretro-deps`](https://github.com/libretro-libretro-deps/] is a collection of third-party dependencies, pre-modified for use by libretro cores.

