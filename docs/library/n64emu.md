---
title: "n64emu - Nintendo 64 core for RetroArch"
description: "n64emu's accuracy-focused Nintendo 64 emulation, supported features, controller mapping, and complete core option reference."
---

# Nintendo 64 (n64emu)

## Background

n64emu is an accuracy-focused Nintendo 64 emulator derived from the ParaLLEl N64 and Mupen64Plus codebase. Its focus is minutely emulating the console's CPU, RSP, RDP, memory behavior, and component timing, including behavior exercised by many hardware tests and custom microcode.

The CPU uses a JIT where supported, with an interpreter fallback. The RSP executes graphics, audio, and custom microcode directly. SoftRDP provides multithreaded, vectorized software rendering and Nintendo 64 VI output processing. Accurate cycle timing is the default; an optional timing compromise is available for performance.

The project uses many CPU, cache, RSP, and RDP test suites together with recorded console sequences and bounded gameplay checks. This testing does not imply that every game or every hardware detail is fully accurate.

The core's library name is **n64emu**. The project's main license is **BSD 3-Clause**; bundled components retain their respective license notices.

## Features

| Feature | Support |
| --- | --- |
| Save states | Supported |
| Rewind | Available through frontends that use the core's save-state interface |
| Core options | Supported; listed below |

CPU and RSP recompilers are selected by the build. Renderer thread count and performance-core affinity are automatic. The current core uses native internal resolution; these are not user-selectable core options.

The repository also provides a native Windows standalone application and separate USF playback targets. The standalone application shares the emulation engine and core settings, while providing its own controller, audio DSP, shader, and window settings. USF playback is a separate audio-only build with its own timing policy.

## Content and firmware

### Cartridge formats

The libretro core advertises the following extensions:

- `.n64`
- `.v64`
- `.z64`
- `.bin`
- `.u1`

A frontend may extract a supported ROM from an archive before loading it. Ordinary cartridge boot does not require a separately supplied Nintendo 64 BIOS.

### Nintendo 64DD

The **N64 Disk Drive** subsystem accepts an `.ndd` disk and a companion cartridge or explicit IPL image. When the IPL is resolved from the frontend's system directory, the recognized filenames are `IPL.n64` and `64DD_IPL.bin`. A valid IPL dump is required.

The core also checks for a disk sidecar by appending `.ndd` to the full cartridge filename, for example `game.z64.ndd`. Available loading workflows depend on the frontend's subsystem support.

### Transfer Pak

Select **transfer** for the relevant controller before loading the game. The **N64 Transferpak** subsystem accepts Game Boy RAM (`.ram` or `.sav`), a Game Boy/Game Boy Color ROM (`.rom`, `.gb`, or `.gbc`), and the Nintendo 64 cartridge.

Sidecar loading is also supported: the core appends `.gb` and `.sav` to the full Nintendo 64 cartridge filename, for example `game.z64.gb` and `game.z64.sav`. These paths are resolved when content is loaded; restart content after adding or replacing the files.

## Core options

This is the complete game-core option list. **Bold values are defaults.** The option keys are included for configuration files. Existing `wtfn64_` and `mupen64plus-` prefixes are retained by n64emu.

### Cycle timing

**Cycle timing (restart required)**  
Key: `n64emu_cycle_timing`  
Values: **on**, off

**On** uses the more accurate CPU timing policy, including detailed CPU memory scheduling and operand-dependent floating-point instruction timing. Use this setting when prioritizing hardware behavior and compatibility.

**Off** simplifies CPU memory scheduling for performance. On x86, x64, ARMv7, and AArch64 it also allows an inexact-status update to be omitted when the floating-point inexact exception is disabled. Software that inspects those status bits may observe a difference.

Both settings retain CPU cache contents and tags, dirty writeback, dependency interlocks, arithmetic results, enabled floating-point exceptions, native RSP execution, and RCP component deadlines. Off retains operand-dependent floating-point latency; it does not switch to fixed per-opcode FP latencies or overclock the console. Performance gains depend on the workload.

Close and reopen content after changing this option. It is not exposed by the separate USF playback build.

### VI deinterlacing

**VI deinterlacing**  
Key: `wtfn64_angrylion_deinterlace`  
Values: **weave**, bob

**Weave** combines alternating fields, preserving interlaced vertical detail. Motion can show combing between fields. **Bob** expands the current field, avoiding that combing at the cost of vertical detail and possible vertical shimmer. This affects interlaced video modes; ordinary progressive output does not need deinterlacing.

Changes apply while content is running.

### VI filtering

**VI filtering**  
Key: `wtfn64_vi_filter`  
Values: **enabled**, disabled

Enables normal VI reconstruction filtering. Disabling it selects color-only scanout, producing a sharper, less processed image and potentially reducing presentation cost. It changes the displayed image without changing emulated CPU or RDP timing.

Changes apply while content is running.

### VI dedithering

**VI dedithering**  
Key: `wtfn64_vi_dedither`  
Values: **enabled**, disabled

Enables the VI's dither-removal filter, reducing visible color-dither patterns in the framebuffer. Disabling it leaves those patterns more visible. This controls output filtering, not whether the RDP writes dithered pixels to emulated memory.

Changes apply while content is running.

### VI divot filter

**VI divot filter**  
Key: `wtfn64_vi_blur`  
Values: **enabled**, disabled

Enables the VI divot filter, which reduces small edge artifacts and can soften the image. Disable it for less filtering. It is effective when normal **VI filtering** is enabled.

Changes apply while content is running.

### Crop overscan

**Crop overscan**  
Key: `wtfn64_crop_overscan`  
Values: **enabled**, disabled

Removes the VI overscan border from the output area. Disable it to retain the full scanout area. Cropping changes the visible image area and may change the dimensions presented to the frontend.

Changes apply while content is running.

### Controller Paks

Each player has an independent accessory selection:

| Option | Key | Default | Available values |
| --- | --- | --- | --- |
| Player 1 controller pak | `mupen64plus-pak1` | **memory** | memory, none, rumble, transfer |
| Player 2 controller pak | `mupen64plus-pak2` | **none** | none, memory, rumble, transfer |
| Player 3 controller pak | `mupen64plus-pak3` | **none** | none, memory, rumble, transfer |
| Player 4 controller pak | `mupen64plus-pak4` | **none** | none, memory, rumble, transfer |

- **memory:** Attaches a Memory Pak for games that save to a controller accessory. Its data is retained through the frontend's save-memory handling.
- **none:** Leaves the accessory slot empty. The controller itself remains connected.
- **rumble:** Attaches a Rumble Pak. Vibration requires frontend rumble support and a compatible physical controller.
- **transfer:** Attaches a Transfer Pak for games that communicate with a Game Boy/Game Boy Color cartridge. Supply the associated ROM and save data as described above, and select this accessory before loading content.

Accessory selection updates while content is running. A game may only check its accessory at particular points. Transfer Pak content is initialized at load time, so restart content when setting up or replacing its files.

## Controls

The core supports four controller ports. Use the frontend's input configuration to bind physical controls or disconnect a port. The libretro input descriptors use the following RetroPad mapping:

| RetroPad input | Nintendo 64 control |
| --- | --- |
| Left analog stick | Control Stick |
| D-pad | D-pad |
| B | A Button |
| Y | B Button |
| X | C-Up |
| A | C-Down |
| L | C-Left |
| R | C-Right |
| L2 | Z Trigger |
| R2 | R Shoulder |
| Select | L Shoulder |
| Start | Start |

These are RetroPad names, not the lettering printed on a particular controller. The frontend can remap them to suit an N64-style pad or another controller layout.
