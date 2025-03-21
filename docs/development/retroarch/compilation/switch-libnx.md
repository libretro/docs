# Nintendo Switch Compilation / Development Guide (libnx)

## Environment configuration

You need the homebrew Nintendo Switch SDK libnx and DevkitA64 toolchain installed. You can find instructions on how to install it on the [switchbrew wiki](https://switchbrew.org/wiki/Setting_up_Development_Environment).

Then, install all the required libraries:
    - use the devkitpro MSYS2 terminal on Windows
    - replace `dkp-pacman` by `pacman` on Linux and Mac OS

```
dkp-pacman -Sy devkit-env devkitA64 libnx switch-tools switch-mesa switch-zlib switch-bzip2 switch-liblzma switch-freetype switch-libpng switch-libvpx switch-ffmpeg switch-libopus
```

## RetroArch Compilation

All commands must be issued in the devkitpro environment (MSYS2 on Windows).

### Fetching RetroArch

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

```
git clone https://github.com/libretro/RetroArch.git retroarch
cd retroarch
```

For subsequent builds you only need to pull the changes from the repo

```
cd retroarch
git pull
```

### Building Cores

The easiest way to build all the cores (for Switch) is to use [libretro-super](https://github.com/libretro/libretro-super). `git clone` and `cd` into the base directory, then run:

```
make -f Makefile.libnx
```

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build using the commands below. E.g.:

```
./libretro-fetch.sh snes9x2010 fceumm
platform=libnx ./libretro-build.sh snes9x2010 fceumm
```

Once finished, you can find the libretro cores inside directory `dist/libnx`.

### Building RetroArch

Each NRO of RetroArch has one and only one core, and each core is a standalone homebrew by itself. That means that building multiple cores means building RetroArch multiple times, once for each core.

The cores you previously built will be called `<corename>_libretro_libnx.a`, where `<corename>` is the name of the core that was used to build it.

For each core you wish to build, you will need to copy it to the `retroarch` directory, and rename it to `libretro_libnx.a`.

Once the core has been moved and renamed, move to the `retroarch` directory using `cd` and run this command:

```
make -f Makefile.libnx
```

That will output `retroarch_switch.nro`: this is your home built copy of RetroArch! It is recommended to rename your '.nro' file so you can remember which core it contains.

You can then use `nxlink` to send the homebrew to your Switch over Wi-Fi.
