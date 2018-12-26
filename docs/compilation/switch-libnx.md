# Nintendo Switch Compilation / Development Guide (libnx)

## Environment configuration

You need the homebrew Nintendo Switch SDK libnx and DevkitA64 toolchain installed. You can find instructions on how to install it on the [switchbrew wiki](https://switchbrew.org/wiki/Setting_up_Development_Environment).

Then, install all the required libraries:
    - use the devkitpro MSYS2 terminal on Windows
    - replace `dkp-pacman` by `pacman` on Linux and Mac OS

```
dkp-pacman -Sy devkit-env devkitA64 libnx switch-tools switch-mesa switch-zlib switch-bzip2 switch-freetype switch-libpng
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

### Fetching a core

Each NRO of RetroArch has one and only one core, and each core is a standalone homebrew by itself. That means that building multiple cores means building RetroArch multiple times, once for each core.

Clone the core you want to build from its git repository. 

Then, build it:

```
make platform=libnx
```

That will give you a file called `<corename>_libretro_libnx.a`, where `<corename>` is the name of the core you just built. Take it and copy it to the `retroarch` directory, and rename it to `libretro_libnx.a`.

### Building RetroArch

Now that you have your core in the RetroArch directory, move here using `cd` and run this command:

```
make -f Makefile.libnx
```

That will output `retroarch_switch.nro`: this is your home built copy of RetroArch!

You can then use `nxlink` to send the homebrew to your Switch over Wi-Fi.

