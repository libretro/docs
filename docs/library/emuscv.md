# Super Cassette Vision (EmuSCV)

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/UZbd3gxj2XU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Background

Super Cassette Vision is a home video game console made by EPOCH CO. and released in Japan on July 17, 1984. It was released in France later in 1984 under the YENO brand. The two machines differ in more than their badge: the French one runs at 50 Hz and its CPU is slower in the same proportion, so the core emulates them as separate consoles rather than as one console with two frame rates.

The EmuSCV core has been authored by:

- MARCONATO Maxime
- TAKEDA Toshiya

The EmuSCV core is licensed under [GPLv3](https://github.com/libretro/). A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the EmuSCV core have the following file extensions:

- `.cart` (Native)
- `.bin`
- `.rom`
- `.0` (with `.1`, `.2`, `.3` beside it)
- `.zip`

A cartridge dumped in one piece loads from its `.cart`, `.bin`, `.rom` or `.0` file. A cartridge dumped in several pieces loads from its `.0` file, and the core reads the other parts from the same directory.

Inside a zip archive, the ROM file must carry the same name as the archive.

`.cart` is the core's own format: a 32 byte header followed by the ROM data. The header records how the cartridge wires its banks and whether it carries RAM, which a raw dump cannot express. When content is loaded from any other format, the core writes the converted `.cart` into the save directory, so a `.cart` file appearing there after a launch is expected.

## Features

Frontend-level settings or features that the EmuSCV core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✕         |
| Core Options      | ✔         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

Cartridge RAM is not exposed to the frontend, so RetroArch does not manage it. The core writes it itself, in a `.save` file beside the converted cartridge, which is why **Saves** is marked unsupported while battery-backed cartridges still keep their contents.

Rewind and fast forward both work, and are in daily use on the distributions that ship this core. Rewind steps back through save states; fast forward simply runs the core more often.

## Geometry and timing

- The EmuSCV core's core provided FPS is 60, or 50 when the YENO console is emulated.
- The EmuSCV core's core provided sample rate is 44100 Hz.
- The EmuSCV core's core provided aspect ratio is 4:3.

The frame buffer size depends on the RESOLUTION and DISPLAY options, so there is no single base width and height. With the default DISPLAY setting the three resolutions give 288x216, 576x432 and 1152x864. The EPOCH and YENO framings are wider, 1200x900 and 1408x1056 at the highest resolution.

## Usage

Load any supported content file. Content type will be autodetected, and if possible, started.

The core also starts with no content at all. It then shows the BIOS test screen, *VIDEO GAME TEST DISPLAY* with its balloons, as a real console does without a cartridge. If *GAME NOT LOADED* appears in green in the top right corner, a content file was given but could not be loaded.

## Core options

The EmuSCV core has the following options that can be tweaked from the core options menu. The default setting is bolded.

- CONSOLE (**AUTO**|EPOCH|YENO|EPOCHLADY) - which machine to emulate. YENO is the French console, which runs slower than the Japanese ones, as was common at the time because of the 60 Hz / 50 Hz difference. EPOCHLADY emulates the same machine as EPOCH, with its own logo and keypad artwork. AUTO uses EPOCH.
- DISPLAY (**AUTO**|EMUSCV|EPOCH|YENO) - the visible area. EPOCH and YENO reproduce the framing of each real console, edge artefacts included. EMUSCV is a third framing, chosen by the author rather than taken from hardware, which trims those artefacts across the whole game library; it is the default.
- PIXELASPECT (**AUTO**|RECTANGULAR|SQUARE) - the console's pixels are not square. RECTANGULAR reproduces their real shape, SQUARE draws them square.
- RESOLUTION (**AUTO**|LOW|MEDIUM|HIGH) - internal render scale. It only changes how sharp the overlays are, not the emulated picture. AUTO times the drawing when a game loads and picks the highest resolution the machine can afford.
- PALETTE (**AUTO**|STANDARD|OLDNTSC) - colour table. OLDNTSC uses the warmer set an early NTSC set would show.
- FPS (**AUTO**|EPOCH60|YENO50) - frame rate, when it needs to be forced independently of the console setting.
- DISPLAYFULLMEMORY (**AUTO**|YES|NO) - draws the whole drawn area, borders included, instead of what a television showed.
- DISPLAYINPUTS (**AUTO**|YES|NO) - overlays the state of the two controllers.
- KEYBOARDATSTART (**AUTO**|YES|NO) - shows the console keypad overlay as soon as a game is loaded, so a player does not have to know that SELECT opens it. Only YES shows it; AUTO and NO keep it hidden until SELECT is pressed.
- LANGUAGE (**AUTO**|JP|FR|EN) - reserved for a later version, for cartridge labels and manuals. It has no effect yet.
- CHECKBIOS (**AUTO**|YES|NO) - whether to verify the BIOS checksum before starting.

## Control device types

## Joypad

Each console controller carries a joystick and two buttons. Both controllers are
emulated, on ports 1 and 2.

| RetroPad | Console |
|---|---|
| D-Pad, left analog stick, right analog stick | Joystick |
| A (right face button), R1 | Right button |
| B (bottom face button), L1 | Left button |
| Start | Both buttons at once, and the EN key of the keypad |
| Select | Shows and hides the console keypad |

The face buttons are named after the RetroPad, and pads label them differently: A is the
button on the right, B the one at the bottom, X at the top and Y on the left. On a
PlayStation pad, A and B are Circle and Cross; on an Xbox pad, B and A.

Start is there to make starting a game easier. The console has no start button, yet many
games say "press START", and what actually starts a game varies from one to the next. So
Start presses both fire buttons and the keypad's EN key at once, which gets every game
past its title screen. X, Y, L2, R2, L3 and R3 are declared so that they can be remapped,
but the core does not use them.

## Keyboard

The console has a numeric keypad, which the core reaches through an on-screen overlay.
SELECT opens and closes it.

```
  POWER    7   8   9
  RESET    4   5   6
           1   2   3
  PAUSE    0   CL  EN
```

The D-Pad moves the cursor. A or R1 press the selected key and leave the overlay open;
B or L1 press it and close the overlay; Start presses EN and closes it. While the
overlay is shown the pad drives the keypad, not the game, so it has to be closed to
play again.

Holding RESET keeps the console in reset with a blue screen, as the real machine does,
until the key is released.

A PC keyboard works as well: `0` to `9` (top row or numeric keypad), `Enter` for EN,
`Backspace` or `Delete` for CL, `F12` for POWER, `F11` for RESET and `F9` for PAUSE.

## BIOS

EmuSCV require a Super Cassette Vision BIOS to run.

There is only one version of the BIOS that can use different names:

- upd7801g.s01 (standard)
- upd7801g.bin
- upd7801g.bios
- bios.rom
- bios.bin

MD5: 635a978fd40db9a18ee44eff449fc126

The MD5 Checksum control for the BIOS can be disabled in core options to permit use of custom BIOS.

## External Links
