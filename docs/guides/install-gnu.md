# Downloading, Installing and Updating RetroArch

<iframe allow="accelerometer; ambient-light-sensor; autoplay; clipboard-write;
  display-capture; encrypted-media; execution-while-out-of-viewport; fullscreen;
  geolocation; gyroscope; hid; magnetometer; picture-in-picture;
  screen-wake-lock; speaker-selection; web-share;" aria-label="YouTube video"
  height="315" loading="lazy" name="YouTube embedded player"
  referrerpolicy="strict-origin-when-cross-origin" role="application"
  sandbox="allow-orientation-lock; allow-presentation;"
  src="https://www.youtube-nocookie.com/embed/kCyTlMjvzWA"
  style="border-collapse: collapse; border-style: hidden; margin: 1rem auto;"
  title="RetroArch - How to Install : Sega Genesis Mini" width="560"></iframe>

## GNU/Linux

### Flatpak

Flatpak is a distribution-agnostic packaging format with broad support
throughout the Linux ecosystem. An official
[RetroArch flatpak][retroarch-flatpak] is published in the Flathub repository,
and can be installed in just three easy steps:

#### Installation

1. Ensure that Flatpak is [enabled on your system][flatpak-setup] by opening the
   terminal and confirming that the following command exits with no errors:

   ```sh
   flatpak --installations
   ```

1. Confirm that the Flathub repository is configured as a
   [flatpak remote][flatpak-remote], so that packages may be installed from it.
   You can examine the flatpak remotes currently enabled on your system with
   this terminal command (shown with default output):

   ```console
   $ flatpak remotes --columns=name,url,homepage

   Name    URL                          Homepage
   flathub https://dl.flathub.org/repo/ https://flathub.org/
   ```

   If Flathub is not among the remotes shown, this command will add it to your
   system:

   ```sh
   sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
   ```

1. Finally, install the RetroArch Flatpak. You have the option of making it
   available to only the current user, with this command:

   ```sh
   flatpak install -y --user --from https://dl.flathub.org/repo/appstream/org.libretro.RetroArch.flatpakref
   ```

   Or for all users with this command:

   ```sh
   sudo flatpak install -y --from https://dl.flathub.org/repo/appstream/org.libretro.RetroArch.flatpakref
   ```

#### Launching the Flatpak

RetroArch should now be listed in your app launcher and can also be executed
from the terminal with the command:

```sh
flatpak run org.libretro.RetroArch
```

#### Updates

You should keep RetroArch updated by running this command periodically from the
terminal:

```sh
flatpak update -y --app org.libretro.RetroArch
```

### Ubuntu-based

If you're using Ubuntu, an official [Ubuntu flavor][ubuntu-flavors], or one of
the many Linux distributions based on Ubuntu (such as Linux Mint, Zorin OS, Pop!
OS, elementary OS, etc.), you can install RetroArch and many of the most popular
Libretro cores as native APT packages by simply enabling one (or both) of the
two official Libretro [Personal Package Archives (PPAs)][help-ppas] hosted on
[Launchpad](https://launchpad.net/~libretro), namely:

- [**Stable**][ppa-stable] (recommended), which includes only official releases
  (as announced on libretro.com / retroarch.com), and
- [**Testing**][ppa-testing], which provides nightly builds of RetroArch and
  most Libretro cores that allow you to test new features as soon as they're
  added.

#### Installation

In order to add PPAs to your system's package sources, some tools from the
official package repositories are needed. Open the terminal and run this command
to ensure they are installed:

```sh
sudo apt -y install software-properties-common
```

One command is needed to add a PPA to your system's package sources. To add the
[**Stable PPA**][ppa-stable], use:

```sh
sudo add-apt-repository -ysnP libretro/stable
```

Or to add the [**Testing PPA**][ppa-testing], use:

```sh
sudo add-apt-repository -ysnP libretro/testing
```

You can now install the RetroArch package from the PPAs with this command:

```sh
sudo apt -Uy install retroarch
```

You can verify that the PPA package was installed rather than the one from the
official distribution repositories with the `apt show` command (shown with
expected output for the Testing PPA package):

```console
$ apt show retroarch
Package: retroarch
Version: 1.19.1+r202408170734~bf25bd9149-179~ubuntu24.04.1
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

Look at the **`APT-Sources:`** line in the output. If one of the PPA packages is
installed, its value will begin with
`https://ppa.launchpadcontent.net/libretro/`.

#### Updates

With this installation method, RetroArch updates will automatically be included
with your systems regular package upgrades. However, you are always able to
trigger an update specifically for RetroArch with the terminal command:

```sh
sudo apt -y upgrade retroarch
```

### Arch Linux-based

Arch Linux provides a [`retroarch`][arch-package] package for x86_64 systems in
their official [Extra repository][arch-extra-repo]. You can install it by
searching for RetroArch by name in a graphical package manager like
[Octopi][octopi], or from the terminal with the command:

```sh
sudo pacman -S retroarch
```

A "git" package named [`retroarch-git`][aur-git-package] which offers prerelease
builds (similar to the Testing PPA described above) is also available on the
[AUR][arch-aur]. As above, it can be installed from a package manager GUI or in
the terminal using an "[AUR helper][aur-helpers]" like [`yay`][aur-yay], as in:

```sh
yay retroarch-git
```

[arch-aur]: https://aur.archlinux.org/ "Arch User Repository (AUR)"
[arch-extra-repo]: https://wiki.archlinux.org/title/Official_repositories#extra
[arch-package]: https://archlinux.org/packages/extra/x86_64/retroarch/
[aur-git-package]: https://aur.archlinux.org/packages/retroarch-git
[aur-helpers]: https://wiki.archlinux.org/title/AUR_helpers
[aur-yay]: https://github.com/Jguer/yay
[flatpak-remote]: https://docs.flatpak.org/en/latest/flatpak-command-reference.html#flatpak-remotes
[flatpak-setup]: https://flatpak.org/setup/
[help-ppas]: https://help.launchpad.net/Packaging/PPA/InstallingSoftware
[octopi]: https://tintaescura.com/projects/octopi/
[ppa-stable]: https://launchpad.net/~libretro/+archive/ubuntu/stable
[ppa-testing]: https://launchpad.net/~libretro/+archive/ubuntu/testing
[retroarch-flatpak]: https://flathub.org/apps/org.libretro.RetroArch
[ubuntu-flavors]: https://ubuntu.com/desktop/flavours
