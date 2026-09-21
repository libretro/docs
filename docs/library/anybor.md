<!-- anybor-publisher: page -->
# OpenBOR (AnyBOR)

## Background

AnyBOR is an independent libretro core for OpenBOR games. It combines engine
builds 3400, 3842, 4086, 4432, 6412 and 8020 in one library and selects an
engine for each game. OpenBOR and Beats of Rage originate with the Senile Team
and the OpenBOR Team; the port is maintained by retrodiv and identifies
upstream work without implying endorsement.

The port's own code is [BSD-3-Clause-licensed](https://github.com/retrodiv/AnyBOR-libretro/blob/ca0cc73eac6c2bc83c15b7006dffc1435620a3d0/LICENSE); bundled
engines and dependencies retain their own terms, including OpenBOR 3400's
no-sale condition. Read the [license scope](https://github.com/retrodiv/AnyBOR-libretro/blob/ca0cc73eac6c2bc83c15b7006dffc1435620a3d0/LICENSES.md) and the
[full notices](https://github.com/retrodiv/AnyBOR-libretro/blob/ca0cc73eac6c2bc83c15b7006dffc1435620a3d0/NOTICE.txt).

## Content

Load a `.pak` game archive, an unpacked game's `data/models.txt`, or a ZIP
containing one game; the core handles ZIP extraction and needs the frontend's
writable save directory. `.spk` is accepted only for an ordinary PACK archive
misnamed with that extension: a genuine SPAK/protected archive is recognized
and rejected with an explicit error, never decoded. The core does not start
without content and includes no third-party game data, artwork, music,
firmware or executables; a nearby engine executable is read only as data for
version selection.

Automatic selection uses filename version tags, nearby engine-version data and
PAK content markers, with build 6412 as the current fallback; an explicit
engine choice takes precedence. Games predating or postdating the available
source history receive best-effort coverage through the nearest pinned
engine.

## Controls

Frontend ports 1 through 4 each control the matching player; press Start on a
controller to join, up to the game's player limit.

| RetroPad input | Default OpenBOR action |
|---|---|
| D-pad | Movement |
| Left analog stick | Movement when the analog option is enabled |
| Y | Attack |
| B | Jump |
| A | Special |
| X | Attack 2 |
| L / R | Attack 3 / Attack 4 |
| Start | Start |
| Select | Escape/menu |
| L2 / R2 / L3 / R3 | Special-move macros when enabled and available |

Games can assign different meanings to the engine's attack inputs; the core
can derive controller labels and move macros from the game's own metadata,
including the active character's facing direction.

## Core options

| Option | Default and effect |
|---|---|
| Adjust for 4:3 CRT TV | **Off**. Fits images wider than 364 or taller than 244 pixels into 640x480 with sharp-bilinear scaling and borders; smaller images outside 4:3 +/-10% receive native-pixel padding. Applies during play. |
| Left analog stick as D-pad | **On**. Adds movement with the left stick. |
| Rumble | **On**. Forwards the game's hit vibration. |
| Special move macros (L2/R2/L3/R3) | **On**. Executes supported character move sequences. |
| Engine build | **Auto**. Selects an explicit pinned engine when needed; changes apply on Restart. |
| Forward game log | **Off**. Mirrors the engine log into the frontend log. |
| Clear current game saved data on load | **Off**. Deletes the game's `AnyBOR/<game>/` folder before loading. |
| Clear current game cache on unload | **On**. Deletes this game's cache directories after unloading or closing the core. |
| Clear all game caches on load | **On**. Empties `AnyBOR-cache/` before each load; saved data is unaffected. |

## Features and saved data

| Feature | Support |
|---|---|
| Save states and rewind | Yes; states require the same core build and content |
| In-game saves/settings | Engine-managed files in the frontend save directory |
| Players and remapping | Up to four RetroPads, subject to the game's limit |
| Core options | Yes, version 2.0 with categories |
| RetroArch cheats | Not implemented |
| Disk control, subsystems, hardware rendering | Not used; software XRGB8888 video |

Saves use `AnyBOR/<game>/<engine build>/` under the frontend's save
directory, and extracted or prepared content is cached under
`AnyBOR-cache/`. Save states retain the running engine's writable state, heap
and coroutine stack: a frontend that supports variable serialization sizes may
receive a larger state while content is loaded, and on fixed-capacity
frontends a game that exceeds its allowance needs a restart to use its learned
peak. Saving, loading and rewind are unavailable during threaded video
playback. The frame rate is 60 Hz, audio is 44,100 Hz, and the declared
maximum geometry is 4096x4096.

The combined core has multiple licenses. Engine 3400 prohibits sale of its
source and binaries, including modified versions, without the OpenBOR Team's
specific prior written permission; free redistribution must retain its terms
and all other applicable notices. The port's BSD-3-Clause license does not
replace engine or dependency licenses, and redistributors should include
`NOTICE.txt` and `LICENSES/` with their downloads.

## Support

Report problems in the [core issue tracker](https://github.com/retrodiv/AnyBOR-libretro/issues) with the core
revision, platform, selected engine and a small reproduction you can share.
See [CONTRIBUTING.md](https://github.com/retrodiv/AnyBOR-libretro/blob/ca0cc73eac6c2bc83c15b7006dffc1435620a3d0/CONTRIBUTING.md) for development and
[SECURITY.md](https://github.com/retrodiv/AnyBOR-libretro/blob/ca0cc73eac6c2bc83c15b7006dffc1435620a3d0/SECURITY.md) for private reports; avoid attaching
third-party PAKs or memory dumps.
