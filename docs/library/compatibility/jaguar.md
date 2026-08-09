# Atari Jaguar Core Compatibility

## Virtual Jaguar

As of core v3.2.0, the full commercial cartridge library and every Jaguar CD
title boot and run, in both the HLE and real-BIOS boot paths.

Rather than duplicating a game list here that goes stale, per-game issues are
tracked live on the core's
[issue tracker](https://github.com/libretro/virtualjaguar-libretro/issues)
and in the repository's triage notes
([`docs/cd-known-issues.md`](https://github.com/libretro/virtualjaguar-libretro/blob/master/docs/cd-known-issues.md),
[`docs/cart-issue-triage.md`](https://github.com/libretro/virtualjaguar-libretro/blob/master/docs/cart-issue-triage.md)).
Known game-specific bugs range from minor visual or audio glitches to a few
severe issues. If a game misbehaves, please file a report on the tracker.

Additional references:

- Per-title Jaguar CD boot matrix (HLE and real-BIOS mode):
  [`docs/cd-boot-matrix.md`](https://github.com/libretro/virtualjaguar-libretro/blob/master/docs/cd-boot-matrix.md)
  in the core repository.
- The core's project site, with evidence-linked feature and test
  documentation: [jaguar.provenance-emu.com](https://jaguar.provenance-emu.com)
  (not a complete per-title support matrix).

Known classes of content that do **not** work:

- Some homebrew built with incorrect load addresses (much of it also fails on
  real hardware or relies on quirks of a specific flash cartridge).
- Bad or damaged rips. Some known-damaged CDI V2 images are repaired
  automatically at load; others are missing data no emulator can reconstruct.

The historical issue table that used to live on this page (Doom, Iron
Soldier, Wolfenstein 3D, Ruiner Pinball, and others failing to boot or
hanging) described core versions prior to v3.0.0 — all of those titles boot
and play in current releases.
