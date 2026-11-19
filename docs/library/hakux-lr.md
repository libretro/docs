---
title: "hakuX-lr – Microsoft Xbox core for RetroArch"
description: "Requirements, installation, disc formats and saves for the hakuX-lr core."
---

# Microsoft - Xbox (hakuX-lr)

[hakuX-lr](https://github.com/portare-ch/hakuX-lr) is an original Xbox emulator for RetroArch, based on hakuX. The combined core is licensed under [GPL-3.0-or-later](https://github.com/portare-ch/hakuX-lr/blob/master/COPYING).

## Requirements

Use 64-bit RetroArch and a GPU driver with Vulkan 1.2 or later. In RetroArch, set **Settings → Drivers → Video** to **vulkan**, save the configuration, and restart.

| Platform | CPU backend | Additional requirements |
| --- | --- | --- |
| Linux x86-64 | KVM | Linux 5.16 or later, access to `/dev/kvm`, and CPU support for TSC scaling and UMIP. |
| Linux ARM64 (AArch64) | FEX | See the Linux runtime library requirements in the [installation guide](https://github.com/portare-ch/hakuX-lr#install). |
| Android ARM64 | FEX | Android 9 (API 28) or later. |

The core handles startup internally and creates Xbox storage on first launch. BIOS, MCPX ROM, and hard disk image files are unnecessary.

## Installation

Download and extract the archive for your platform. [hakuX-lr releases](https://github.com/portare-ch/hakuX-lr/releases)

- On Linux, copy `hakux-lr_libretro.so` from `lib/libretro/` to RetroArch’s **Cores** directory.
- On Android, select **Load Core → Install or Restore a Core** and choose `hakux-lr_libretro_android.so`.
- Copy the bundled `hakux-lr_libretro.info` to the **Core Info** directory. RetroArch lists both directory paths under **Settings → Directory**.

Select **Load Core → Microsoft - Xbox (hakuX-lr)**, then open a disc image with **Load Content**.

## Disc formats

| Extension | Image format |
| --- | --- |
| `.iso` | Xbox XISO or full Redump ISO |
| `.chd` | Standalone DVD CHD |

## Saves

Save through the game’s own menu. The core stores game saves in `hdd/` under RetroArch’s **Save Files** directory and uses `cache/` for generated data. Back up `hdd/` before moving to another installation.

Save states, rewind, and run-ahead are unavailable.
