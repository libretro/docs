# Downloading, Installing and Updating RetroArch for macOS

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/H2Fv29vMpcY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Downloading and installing

Download one of the .dmg files from here:

* [Stable Metal](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/osx/universal/RetroArch_Metal.dmg)
* [Nightly Metal](https://buildbot.libretro.com/nightly/apple/osx/universal/RetroArch_Metal.dmg)
* [Stable non-Metal](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/osx/x86_64/RetroArch.dmg)
* [Nightly non-Metal](https://buildbot.libretro.com/nightly/apple/osx/x86_64/RetroArch.dmg)

The install follows the standard process of opening the .dmg file and copying RetroArch.app into the Applications folder.

### Metal vs non-Metal builds

Most people should start with the Metal build. The Metal has more features, and is a Universal binary. The non-Metal build is x86_64-only and only includes the OpenGL graphics driver. However, the Metal build only supports macOS 10.13+, whereas the non-Metal build supports 10.9+.

It is possible to build RetroArch for older versions of macOS, though due to resource constraints these are not provided. See the [instructions for building on macOS](../development/retroarch/compilation/osx/) to build it yourself.

### Stable vs nightly builds

Most people should start with the Stable build. The Nightly build contains the latest commits available on GitHub, and the latest enhancements and features that are added daily. The Nightly build may not be as stable as the Stable version.

## Updating

There are no automatic updates in RetroArch. When updating, simply download and open the new .dmg file, and copy RetroArch.app into Applications. When prompted, choose to overwrite the old version.
