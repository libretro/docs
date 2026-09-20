<!-- anygm-publisher: page -->
# GameMaker (AnyGM)

## Background

AnyGM is a portable runtime and libretro core for supported GameMaker content
formats. It provides one shared execution engine for classic containers and
Studio bytecode, maintained by retrodiv as an independent project: it is not
affiliated with, or endorsed by, YoYo Games Ltd, and it contains no game
content and no proprietary runtime components.

All first-party code is available under the MIT License; bundled third-party
components retain their own terms. See the [source
repository](https://github.com/retrodiv/AnyGM-libretro), [license](https://github.com/retrodiv/AnyGM-libretro/blob/f18d67fbe8fd164094fc1477ff7692d6ff8fc67b/LICENSE) and
[third-party notices](https://github.com/retrodiv/AnyGM-libretro/blob/f18d67fbe8fd164094fc1477ff7692d6ff8fc67b/THIRD_PARTY_NOTICES.md).

## Content

The core recognizes classic container revisions 530, 600, 701, 702, 800 and
810; Studio data containers with bytecode revisions 14 through 17; and the
path formats it declares: `.win`, `.droid`, `.zip`, `.port`, `.apk`, `.yyp`,
`.yyz`, `.gmd`, `.gmk`, `.gm6`, `.gm81`, `.exe` and `.anygm`. Executables may
carry an embedded normalized Studio payload or a single-runtime LZX Cabinet,
or be paired with an adjacent `data.win`; native machine code is never
executed. An `.anygm` file is a small text anchor naming the payload to load,
optionally with override directives and external patch pipelines.

Format recognition does not promise that every built-in operation a game uses
is implemented: unsupported or malformed input is rejected with a diagnostic
instead of selecting a different engine. Supply content you are authorised to
use; the core ships no game data.

## Controls

The `RetroPad behavior` option decides how a game sees the pad. `Game gamepad`
hands the RetroPad to games with joystick or gamepad support and falls back to
keyboard emulation for games without it; `Keyboard emulation` always presents
the RetroPad as the game's keyboard controls, including both classic action
rows (ZXCV and ASDF), the arrows, Enter, Space and Shift. Pointer movement
follows the `Mouse input` option: `Auto` follows what the content expects,
with `Absolute (pointer)` and `Relative (delta)` available explicitly.

## Core options

Options are grouped as Video, Input, System and Development; frontends without
category support receive the same options as a flat list.

**Video**: `Transparency culling` (**High**), `Render at game resolution`
(**On**), `Adjust for 4:3 CRT TV` (**Off**), `Monitor width` and
`Monitor height` (**Game Base**), `Aspect Ratio force (Experimental)`
(**None**), `Game shaders (GLSL)` (**Off, but report available**) and
`Hybrid GPU rendering (Experimental)` (**None**).

**Input**: `RetroPad behavior` (**Game gamepad**) and `Mouse input` (**Auto**).

**System**: `Language` and `Region`, both **Auto** and both applied on
restart.

**Development**: `Content override directives` (**On**), `Start room` and
`Start room range`, `Clear current game saved data on load` (**Off**),
`Clear current game cache on unload` (**On**) and
`Clear all game caches on load` (**On**).

## Features and saved data

| Feature | Support |
|---|---|
| Save states | Yes, `serialized` (state format 29) |
| Rewind | Yes, through save states |
| Cheats | Yes, host cheat entries run as GML expression overrides |
| Core options | Yes, version 2 with categories |
| Memory descriptors | No, `retro_get_memory_data` returns NULL |
| Disk control, subsystems | Not used |
| Hardware rendering | Optional, on OpenGL or OpenGL ES frontends |

Save states carry the runtime's own random seed, so rewind and save/load are
exact, while two fresh runs of the same content are not bit-identical; the
core therefore does not advertise deterministic netplay or run-ahead.
Persistent game data lives under the frontend's save directory, and
rebuildable loader data under its `AnyGM-cache/` subdirectory. Maximum
geometry is fixed at 3840x2160, and the frontend frame rate is 60 Hz with
44,100 Hz audio.

## Support

Report problems in the [core issue tracker](https://github.com/retrodiv/AnyGM-libretro/issues) with the core
revision, frontend and version, OS/CPU, the content format and a reproduction
you can share. See [CONTRIBUTING.md](https://github.com/retrodiv/AnyGM-libretro/blob/f18d67fbe8fd164094fc1477ff7692d6ff8fc67b/CONTRIBUTING.md).
