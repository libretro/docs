# Nintendo - Game Boy Advance (mGBA Splitscreen)

## Background

mGBA Splitscreen is a fork of the mGBA libretro core that runs 2 to 4 linked Game Boy Advance emulator instances inside a single core. The players' screens are composited into one image (480x160 or 480x320) and their audio is mixed or taken from one player. The instances are linked over mGBA's lockstep link-cable driver, so games use their own normal multiplayer menus — no frontend netplay layer is involved.

There are two ways to link players:

- **Same-cartridge multiplayer**: load one ROM; every player runs the same cartridge and gets its own screen (the way real-world GBA single-cart multiplayer works for games that support it, e.g. Mario Kart: Super Circuit).
- **Per-player ROMs**: start the content through one of the core's link subsystems and select one ROM per player, like the classic link-cable setup.

The mGBA Splitscreen core has been authored by

- Spuds0588 (mgba-splitscreen), building on mGBA by endrift

The mGBA Splitscreen core is licensed under

- [MPLv2.0](https://github.com/Spuds0588/mgba-splitscreen/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Requirements

- An optional GBA BIOS file (`gba_bios.bin`) in the frontend's system directory, same entry as upstream mGBA.

## How to start the mGBA Splitscreen core (same-cartridge multiplayer):

- Load Content and select your GBA ROM with the 'mGBA Splitscreen' core.
- Open the Quick Menu → Core Options and set **Players per ROM** to the number of players (2–4).
- Restart the content (Quick Menu → Restart). Each player now runs the same cartridge on its own screen.

## How to start the mGBA Splitscreen core (per-player ROMs):

- In RetroArch's Main Menu, select Load Content and pick one of the core's subsystem entries — **GBA Link 2 Player**, **GBA Link 3 Player** or **GBA Link 4 Player** (shown under the core's content-loading options once the core is installed).
- Select one GBA ROM per player when prompted. The first ROM is player 1; the rest follow in order.

## Core options

- **Players per ROM (requires reload)** – 1 to 4; shares one cartridge across players.
- **Screen layout (restart required)** – 2x1, 1x2 or 2x2.
- **Audio source** – player 1–4 or mixed.
- **Four Swords link handshake assist** – off/on; eases The Legend of Zelda: Four Swords past its multiplayer handshake (matches the companion app's default of off).

## External Links

- [mgba-splitscreen repository](https://github.com/Spuds0588/mgba-splitscreen)
- [Upstream mGBA](https://github.com/mgba-emu/mgba)
- [libretro mGBA core](https://github.com/libretro/mgba)
