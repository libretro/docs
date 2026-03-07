# TV

## The default picture mode may cause controller-to-screen latency

Most TVs—both smart and non‑smart—ship with preconfigured picture modes that are not intended for gaming (for example, “Standard“/“Default“, or “Eco”). These modes introduce screen latency during gameplay. The delay between pressing a controller button and seeing the corresponding action on-screen can disrupt gameplay rhythm and offset any system or emulator optimizations for low latency. Budget LED models typically have the highest latency (around 40–70 ms), whereas OLED panels perform better. Note that this latency issue is TV related; Computer monitors (LCD/LED, CRT, etc.) avoid this issue entirely, as they are designed for interactive use with inherently minimal input lag across all modes.

### Picture mode fix

#### Modern TVs: Switch to "Game" picture mode

On the TV, navigate to **Settings → Picture Mode/Style**, and select “Game”. This addresses the root cause of input lag.

Even if you don't notice any latency on the TV model, it's still good practice to enable this mode to ensure minimal input lag.

Note that TVs with Auto Low Latency Mode (ALLM), often found in gaming TVs, automatically detect gaming signals (such as from a console or streaming device) and switch to their low-latency preset. This means you can keep any picture mode active—such as Cinema or Sports—since ALLM will temporarily enable Game Mode optimizations during gameplay and then revert to your original mode once the signal changes (for example, when watching a movie).

| Manufacturer | Common Name(s) for ALLM              |
|--------------|--------------------------------------|
| LG           | Instant Game Response, Game Optimizer |
| Sony         | Auto Genre Picture Mode              |
| Samsung      | Auto Game Mode                       |
| Vizio        | Auto Game Mode, ProGaming Engine     |
| TCL          | Auto Game Mode, Game Master          |
| Hisense      | Game Mode Pro                        |
| Panasonic    | Auto Low Latency Mode                |
| Philips      | Auto Low Latency Mode                |

#### Older TVs: Enable RetroArch `Run-Ahead`

For older TVs without a "Game" picture mode, use RetroArch's `Settings` → `Latency` → `Run-Ahead` feature to reduce latency effectively.

### Optionally: Use RetroArch's Shaders and Overlays

Shaders and overlays in RetroArch may be used instead of TV picture modes to apply authentic retro display effects and decorative elements directly to the emulated image, bypassing the hardware-dependent post-processing in non-Game picture modes that introduces input lag.

## Frame rate fluctuations

### Frame rate fluctuations fixes

#### Variable Refresh Rate (VRR)
TVs with Variable Refresh Rate (VRR), often found in gaming TVs, independently eliminates screen tearing and stuttering from frame rate fluctuations, which Game picture mode/ALLM alone can't fix—resulting in noticeably smoother gameplay during intense scenes, which becomes increasingly important as graphics demands and refresh rates rise.

#### Non-VRR TVs: Use RetroArch Synchronization features
RetroArch's `Settings → Video → Synchronization` section provides `Vertical Sync (VSync)` (default: On), `Hard GPU Sync` (default: Off), and `Adaptive VSync` (default: Off) options that reduce tearing and stuttering by synchronizing frames to the display's refresh rate, mimicking some VRR benefits at the software level.
