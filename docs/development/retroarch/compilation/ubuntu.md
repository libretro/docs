# Ubuntu Compilation / Development Guide

## Environment configuration

The easiest route to get into building RetroArch and libretro cores on Ubuntu linux is to use libretro's PPA.
For stable releases you can add the PPA like this:

    # add-apt-repository ppa:libretro/stable
    # apt-get update

For development work we recommend the testing PPA instead:

    # add-apt-repository ppa:libretro/testing
    # apt-get update

You will need **git** and a few build tools at least to proceed which you can install by issuing the following command:

    # apt-get install git build-essential

## RetroArch Compilation
### Building RetroArch

The first step is to obtain RetroArch's source tree.

    $ git clone https://github.com/libretro/RetroArch.git retroarch

You can get RetroArch's dependenencies by running the following command:

    # apt-get build-dep retroarch

!!! Note
    Depending on your configuration you may need to uncomment the *deb-src* repositories in */etc/apt/sources.list*, */etc/apt/sources.list.d/libretro-ubuntu-testing-$version.list* and then run **apt-get update** before running **apt-get build-dep**

For subsequent builds you will need to pull the changes from the repo

    $ cd retroarch
    $ git pull

To compile RetroArch run the following commands inside RetroArch's source tree:

    $ ./configure
    $ make clean
    $ make -j4

For development purposes you might want to run a debug build instead. In such case use the following commands:

    $ ./configure
    $ make clean
    $ make DEBUG=1 GL_DEBUG=1 -j4

You can then start RetroArch by running:

    $ ./retroarch

Local builds do not contain assets. On a clean build, assets will be located by default at *$HOME/.config/retroarch/assets*, and can be downloaded from the Main Menu via Online Updater > Update Assets

!!! tip
    If you're building frequently you may want to add **ccache** to the mix to speed up the build process.
    Install ccache via apt and the prepend the ccache symlink directory to your build environment path as shown below.

    For further instructions check the [documentation](https://ccache.samba.org/manual.html#_run_modes)

Install **ccache**:

    # apt-get install ccache

Configure paths:

    $ export PATH=/usr/lib/ccache/bin/:$PATH

!!! tip
    You can add that last line to your *~/.bashrc* to avoid having to type that every time you start your working environment.
## Core Compilation

### Fetching Cores

You can find the cores on libretro's [GitHUB organization](https://github.com/libretro/).

We have an all-in-one tool to fetch and compile cores which you can use to streamline the process.
You can obtain the tool by using these commands:

    $ git clone https://github.com/libretro/libretro-super.git
    $ cd libretro-super

Then you can fetch one or all the cores by using **libretro-fetch.sh**

Fetch all cores:

    $ ./libretro-fetch.sh

Fetch one core:

    $ ./libretro-fetch.sh *corename*

!!! Note
     Replace *corename* with the name of the core you want to fetch, for example gambatte

### Building Cores

#### LibRetro Super

The easiest way to build all the cores is to use **libretro-build.sh** from within libretro-super's source tree:

    $ ./libretro-build.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order:

    $ ./libretro-build.sh snes9x2010 fceumm

Once compilation has finished, you can find the libretro cores inside *dist/unix*.

#### Manual Fetching and Compilation

Get the core's source tree. As an example we'll use [fceumm](https://github.com/libretro/libretro-fceumm/)

    $ git clone https://github.com/libretro/libretro-fceumm.git

Then compile the core:

    $ cd libretro-fceumm
    $ make -f Makefile.libretro

Optionally strip the build product:

    $ strip fceumm_libretro.so

Most cores will build with these instructions. You might need to browse to a subdirectory in some cases.
