<!-- zesarpcw-publisher: page -->
# Amstrad - PCW (ZEsarPCW)

## Background

ZEsarPCW emulates the Amstrad PCW 8256 and 8512. It is a libretro port
derived from ZEsarUX 13.0 by Cesar Hernandez Bano, maintained by retrodiv.
The core and port are distributed under GPLv3; bundled components retain
their own notices. See the [source repository](https://github.com/retrodiv/ZEsarPCW-libretro),
[license](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/LICENSE) and [component notices](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/licenses/PROVENANCE.md).

## Content and firmware

Supported content extensions are `.dsk` and `.m3u`. No external BIOS is
required. A native C bootstrap and the embedded OpenPCW-OS helper provide
the startup environment. Supply your own compatible software disks.
The core does not support starting without content.

Load a `.dsk` through **Load Content**. For multiple disks, load a `.m3u`
playlist; paths may be relative to the playlist. For example:

```text
Game - Side A.dsk|Side A
Game - Side B.dsk|Side B
```

Use **Quick Menu → Disc Control** in eject, select, insert order.

## Controls

Enable **Game Focus** to type using the physical keyboard; Scroll Lock is
RetroArch's default toggle. Disable it again to restore frontend hotkeys.
The core offers automatic RetroPad mappings selected by disk fingerprint
and an on-screen keyboard, toggled with Select by default. The toggle is
configurable in the core options.

**Port 1 Controls → Device Type → Custom Keyboard Bindings** exposes
RetroArch's keyboard selector for explicit button assignments. Save a game
remap to retain them. The [input guide](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/README.md#input-and-core-options)
documents physical PCW key equivalents and the optional default remap.

## Core options

**Quick Menu → Core Options** exposes the PCW model, video mode/palette,
phosphor colour, crop, audio rate, AY/beeper, drive sound, physical keyboard
mapping and input behavior. Follow each option's restart requirements.
See the [project guide](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/README.md#input-and-core-options) for details.

## Features and saved data

| Feature | Support |
|---|---|
| Save states | Yes |
| Rewind | Yes |
| Core options | Yes |
| Disk control | Yes |
| Cheats | Yes, logical Z80 address/value POKEs |
| External BIOS | Not required |
| Hardware rendering | No, software video |

Save states include the mounted disk buffer and its guest writes. The core
does not rewrite the original host `.dsk` file. Restore a state using the
same PCW model that created it; states do not switch the running model.
Release 13.0.1 uses state format v1. Earlier development formats are rejected.
Save-state support does not establish deterministic netplay or runahead.

See the [disk/state guide](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/README.md#content-and-discs) and
[cheat syntax](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/README.md#cheats) for behavior and limitations.

## Support

Report problems in the [core issue tracker](https://github.com/retrodiv/ZEsarPCW-libretro/issues), including the
core revision, RetroArch version, OS/CPU, PCW model, reproduction steps and
a relevant log excerpt. See [CONTRIBUTING.md](https://github.com/retrodiv/ZEsarPCW-libretro/blob/3b44002b61dd0e6f11e766e00e71c56963b9e00b/CONTRIBUTING.md).
