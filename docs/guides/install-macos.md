# Downloading, Installing and Updating RetroArch for macOS

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/H2Fv29vMpcY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Downloading and installing

Download one of the .dmg files from here:

* [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/osx/universal/RetroArch_Metal.dmg)
* [Nightly](https://buildbot.libretro.com/nightly/apple/osx/universal/RetroArch_Metal.dmg)

The install follows the standard process of opening the .dmg file and copying RetroArch.app into the Applications folder.

### About the "Metal" build name

The downloadable builds are named "Metal" for historical reasons. This build is a Universal binary (supporting both Intel and Apple Silicon Macs) and includes multiple video drivers: Vulkan, glcore (OpenGL 3/4), and an experimental Metal driver. Most users should use the Vulkan or glcore video drivers.

!!! warning "Metal video driver is experimental"
    The metal video driver within RetroArch is experimental, largely untested, and not well supported. If you encounter issues, switch to the Vulkan or glcore video driver instead.

The Metal build requires macOS 10.13 or later. It is possible to build RetroArch for older versions of macOS, though due to resource constraints these are not provided. See the [instructions for building on macOS](../development/retroarch/compilation/osx.md) to build it yourself.

### Stable vs nightly builds

Most people should start with the Stable build. The Nightly build contains the latest commits available on GitHub, and the latest enhancements and features that are added daily. The Nightly build may not be as stable as the Stable version.

## Updating

There are no automatic updates in RetroArch. When updating, simply download and open the new .dmg file, and copy RetroArch.app into Applications. When prompted, choose to overwrite the old version.
