---
title: Downloading, Installing and Updating RetroArch on GNU/Linux
description: Instructions for setting up RetroArch on GNU/Linux systems.
icon: fontawesome/brands/linux
status: stable
---

# Installing RetroArch on Linux

This page contains descriptions of several officially-supported methods of
installing RetroArch on systems running the GNU/Linux kernel.

<iframe allow="accelerometer 'self'; clipboard-write *; display-capture 'self'; encrypted-media 'src';
  fullscreen *; geolocation 'src'; gyroscope 'self'; hid 'self'; picture-in-picture *; screen-wake-lock *;
  web-share *;" aria-label="YouTube video" height="315" width="560" loading="lazy" role="application"
  name="YouTube embedded player" title="RetroArch - How to Install: Linux" referrerpolicy="strict-origin-when-cross-origin"
  sandbox="allow-orientation-lock allow-popups allow-presentation allow-same-origin allow-scripts"
  src="https://www.youtube-nocookie.com/embed/7ZSPR2eYULU?origin=docs.libretro.com&playsinline=1"
  style="border-collapse: collapse; border-style: hidden; display: block; margin: 1.5rem auto 2rem; position: relative;"></iframe>

---

## Flatpak (suitable for most Linux distributions)

Flatpak is a distribution-agnostic packaging format with broad support
throughout the Linux ecosystem. An official [RetroArch
flatpak][retroarch-flatpak] is published in the Flathub repository, and can be
installed in just three easy steps:

### Installation

1. Ensure that Flatpak is [enabled on your system][flatpak-setup] by opening the
   terminal and confirming that the following command exits with no errors:

    ``` shell
    flatpak --installations
    ```

1. Confirm that the Flathub repository is configured as a [flatpak
   remote][flatpak-remote], so that packages from it may be installed. You can
   examine the flatpak remotes currently enabled on your system with this
   terminal command (shown with default output):

    ``` shell-session hl_lines="4"
    ra@libretro:~$ flatpak remotes --columns=name,url,homepage

    Name    URL                          Homepage
    flathub https://dl.flathub.org/repo/ https://flathub.org/
    ```

    If Flathub is not among the remotes shown, this command will add it to your
    system:

    ``` shell
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    ```

1. Finally, install the RetroArch Flatpak. You have the option of making it
   available to only the current user, with this command:

    ``` shell
    flatpak install -y --user --from https://dl.flathub.org/repo/appstream/org.libretro.RetroArch.flatpakref
    ```

    Or for all users with this command:

    ``` shell
    sudo flatpak install -y --from https://dl.flathub.org/repo/appstream/org.libretro.RetroArch.flatpakref
    ```

### Launching the Flatpak

RetroArch should now be listed in your app launcher and can also be executed
from the terminal with the command:

``` shell
flatpak run org.libretro.RetroArch
```

### Updates

You should keep RetroArch updated by running this command periodically from the
terminal:

``` shell
flatpak update -y --app org.libretro.RetroArch
```

## Ubuntu(-based)

Ubuntu provides RetroArch as a Debian [package in their official "universe"
archive][ubuntu-package], which is maintained by the community with no promise
of support or regular update schedule. Nevertheless, for the casual user of
Ubuntu or a derivative distribution, it represents the simplest method for
installing RetroArch. All that is required is to open a terminal and issue this
single command:

``` shell
sudo apt --upgrade --yes install retroarch
```

### Personal Package Archives (PPAs)

In an effort to improve the experience of RetroArch users on Ubuntu, official
[Ubuntu flavors][ubuntu-flavors], and all of the many Linux distributions based
on Ubuntu (such as Linux Mint, Zorin OS, Pop! OS, elementary OS, etc.), the
Libretro Team has long been committed to producing its own Debian packages as an
alternative to the ones supplied by Ubuntu in the "universe" package archive.
These packages are updated much faster to keep pace with each new RetroArch
version, and compiled with a greater range of features than the Ubuntu package.
In addition, Debian packages are created for the vast majority of popular
Libretro cores, simplifying their installation and allowing them to be updated
by the system package manager on the same schedule as all other package updates.

These packages are built and distributed using the [Launchpad
platform][launchpad-team] operated by Canonical itself (the company which
distributes Ubuntu), and split into two channels called "Personal Package
Archives" (PPAs) that each cater to a specific type of user. By simply [enabling
one (or both) the PPAs][help-ppas] listed below, users can seamlessly replace
the Ubuntu RetroArch package on their system with those provided by the Libretro
team.

- [**Stable**][ppa-stable] (recommended) — includes only official releases
  (as announced on libretro.com / retroarch.com)

- [**Testing**][ppa-testing] — builds of RetroArch and most Libretro cores from
  the latest source code, for test new fixes and features as soon as they're
  added

### Installation

Follow these steps to enable the Libretro PPAs on your Ubuntu(-based) system.

1. In order to add PPAs to your system's package sources, some tools from the
   official package repositories are needed. Open the terminal and run this
   command to ensure they are installed:

    ``` shell
    sudo apt --update --yes install software-properties-common
    ```

1. Just a single command is needed to add a PPA to your system's package
   sources.

    - To add the [**Stable PPA**][ppa-stable], run this command in your
      terminal:

        ``` shell
        sudo add-apt-repository --yes --no-update --ppa libretro/stable
        ```

    - Or to add the [**Testing PPA**][ppa-testing], run:

        ``` shell
        sudo add-apt-repository --yes --no-update --ppa libretro/testing
        ```

1. You can now install the RetroArch package from the PPAs with this command:

    ``` shell
    sudo apt --update --yes install retroarch
    ```

#### Verifying PPA package installation

You can verify that the PPA package is installed (rather than the one from the
official distribution repositories) with the `apt show retroarch` command (shown
with expected output for the Testing PPA package):

``` shell-session hl_lines="14"
ra@libretro:~$ apt show retroarch
Package: retroarch
Version: {{ unit.stable }}+r202408170734~bf25bd9149-179~ubuntu24.04.1
Priority: optional
Section: games
Maintainer: Libretro Team <libretro@gmail.com>
Original-Maintainer: Debian Games Team <pkg-games-devel@lists.alioth.debian.org>
Installed-Size: 25.2 MB
Provides: retroarch-dbg
Depends: fonts-dejavu-core, libretro-core-info, libegl1, libgl1, […]
Recommends: libgamemode0, retroarch-assets
Suggests: xdg-utils
Download-Size: 6,349 kB
APT-Sources: https://ppa.launchpadcontent.net/libretro/testing/ubuntu […]
Description: Simple frontend for the libretro library
 RetroArch is an open source, multi-platform frontend for the libretro API. It
 can be used as a modular multi-emulator system, game engine, media player and
 3-D technical demonstration. These features are available through libretro
 cores.
 .
 It provides four built-in graphical user interface flavors: RGUI, XMB, Ozone
 and GLUI.

Notice: There is 1 additional record. Please use the '-a' switch to see it
```

!!! tip "What to look for"
    Look at the **`APT-Sources:`** line in the output. If one of the PPA
    packages is installed, its value will begin with
    `https://ppa.launchpadcontent.net/libretro/`.

### Updates

With this installation method, RetroArch updates will automatically be included
with your system's regular package upgrades. However, you are always able to
trigger an update specifically for RetroArch (if one is available) with the
command:

``` shell
sudo apt --update --yes upgrade retroarch
```

## Arch Linux(-based)

### Installation

#### Official package

Arch Linux provides a [**`retroarch`**][arch-package] package for x86_64 systems
in their official [Extra repository][arch-extra-repo]. You can install it by
searching for RetroArch by name in a graphical package manager like
[Octopi][octopi], or from the terminal with the command:

``` shell
sudo pacman -S retroarch
```

#### Arch User Repository (AUR) package

A "git" package named [**`retroarch-git`**][aur-git-package] which offers
prerelease builds (similar to the Testing PPA described above) is also available
in the [AUR][arch-aur]. As above, it can be installed from a package manager GUI
or in the terminal using an "[AUR helper][aur-helpers]" like [`yay`][aur-yay],
as in:

``` shell
yay retroarch-git
```

!!! tip "Installing an AUR helper"
    If you wish to install the AUR package but don't yet have an AUR helper
    installed on your system, the following shell "one-liner" will download,
    compile and install `yay` for you:

    ``` shell
    pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git &&
      cd yay-bin && makepkg -si
    ```

### Updates

With this installation method, RetroArch updates will automatically be included
with your system's regular package upgrades. However, you are always able to
trigger an update specifically for RetroArch (if one is available) with the
following commands.

#### Official package

``` shell
pacman -Syyuu retroarch
```

#### AUR package

``` shell
yay -Syyuu retroarch-git
```

[arch-aur]: https://aur.archlinux.org/ "Arch User Repository (AUR)"
[arch-extra-repo]: https://wiki.archlinux.org/title/Official_repositories#extra "Official repositories - ArchWiki"
[arch-package]: https://archlinux.org/packages/extra/x86_64/retroarch/ "Arch Linux - retroarch {{ unit.stable }}-1 (x86_64)"
[aur-git-package]: https://aur.archlinux.org/packages/retroarch-git "AUR (en) - retroarch-git"
[aur-helpers]: https://wiki.archlinux.org/title/AUR_helpers "AUR helpers - ArchWiki"
[aur-yay]: https://github.com/Jguer/yay "Jguer/yay: Yet another Yogurt - An AUR Helper written in Go (GitHub)"
[flatpak-remote]: https://docs.flatpak.org/en/latest/flatpak-command-reference.html#flatpak-remotes "Flatpak Command Reference - Flatpak documentation"
[flatpak-setup]: https://flatpak.org/setup/ "Flatpak—the future of application distribution"
[help-ppas]: https://help.launchpad.net/Packaging/PPA/InstallingSoftware "Packaging/PPA/Installing Software - Launchpad Help"
[launchpad-team]: https://launchpad.net/~libretro "Libretro in Launchpad"
[octopi]: https://tintaescura.com/projects/octopi/ "Octopi - Tinta escura"
[ppa-stable]: https://launchpad.net/~libretro/+archive/ubuntu/stable "Libretro Stable : “Libretro” team"
[ppa-testing]: https://launchpad.net/~libretro/+archive/ubuntu/testing "Libretro Testing/Nightly : “Libretro” team"
[retroarch-flatpak]: https://flathub.org/apps/org.libretro.RetroArch "Install RetroArch on Linux &verbar; Flathub"
[ubuntu-flavors]: https://ubuntu.com/desktop/flavours "Ubuntu flavours &verbar; Ubuntu"
[ubuntu-package]: https://packages.ubuntu.com/search?keywords=retroarch&searchon=names "Ubuntu – Package Search Results -- retroarch"
