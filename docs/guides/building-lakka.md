# Building Lakka
___
Lakka is the official Linux distribution of RetroArch and the libretro ecosystem. Each game system is implemented as a libretro core, while the frontend RetroArch takes care of inputs and display. This clear separation ensures modularity and centralized configuration. Lakka is a lightweight Linux distribution that transforms a small computer into a full blown retrogaming console.

| :warning: DISCLAIMER          |
|:---------------------------|
| Lakka is still under heavy development. In its current state, the project allows you to play most games on most platforms. However, expect bugs, missing features or features not working as intended, and hardware that is yet to be supported. If you find a bug, you can declare it in our [tracker](https://github.com/libretro/Lakka-LibreELEC/issues), unless already reported.      |

## Compiling Lakka
___

This page is for developers who want to customize their build and/or contribute to Lakka. You will need Linux (we usually build on Debian, Arch or Crux) and the base development packages (base-devel on Arch, build-essential on Debian). You may also need a local HTTP server to host Lakka packages if you plan to do packaging.

### Building Lakka the first time

First, clone Lakka?

```sh
$ git clone https://github.com/libretro/Lakka-LibreELEC
```

Lakka is organized by projects, the Generic project targets PCs, while other projects like RPi targets very specific hardware like the Raspberry Pi.
The full list of projects can be listed like this:

```sh
$ ls -l Lakka-LibreELEC/projects
```

You can now launch make, set the PROJECT and ARCH variables to fit your needs:

```sh
$ cd Lakka-LibreELEC
$ DISTRO=Lakka PROJECT=RPi ARCH=arm make image         # for the Raspberry Pi
$ DISTRO=Lakka PROJECT=RPi2 ARCH=arm make image        # for the Raspberry Pi2/ Pi3
$ DISTRO=Lakka PROJECT=imx6 ARCH=arm make image        # for the Hummingboard and Cubox-i
$ DISTRO=Lakka PROJECT=Generic ARCH=x86_64 make image  # for 64 bits PCs
$ DISTRO=Lakka PROJECT=Generic ARCH=i386 make image    # for 32 bits PCs
```
Building Lakka the first time takes a lot of time, you can go grab a coffee or two :)
If the build fails, make sure you have at least 10 GB of free space and try to figure out which package is missing, install it, and make again.

You will find the result in Lakka-LibreELEC/target:

```sh
$ ls -l target
```

The .kernel and .system can be used to upgrade an existing Lakka system.
The .img.gz is the final result, it contains the image that can be flashed to an SD card or a USB pen drive.

Please follow this [tutorial](http://www.lakka.tv/get) to know how to flash Lakka on a drive.

### Upgrading your Lakka build

If some time passed and you want to rebuild from newer sources:

```sh
$ cd Lakka-LibreELEC
$ git pull
$ rm -rf target
$ DISTRO=Lakka PROJECT=RPi ARCH=arm make image
```
But if you just want to rebuild a particular package, for example a package you are trying to port to Lakka, you can just remove it like this and rebuild.

```sh
$ DISTRO=Lakka PROJECT=RPi ARCH=arm scripts/clean yourpackage
$ DISTRO=Lakka PROJECT=RPi ARCH=arm scripts/build yourpackage
```

If you want to rebuild all from scratch, remove the build* folders

## Conclusion
___
Lakka is still under heavy development. In its current state, the project allows you to play most games on most platforms. More information can be found in the [Lakka documents](http://www.lakka.tv/doc/Home/). You may also want to check the [Official Forum](https://forums.libretro.com/c/libretro/lakka-tv-general).