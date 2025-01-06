# RetroAchievements In RetroArch

## **What are RetroAchievements?**

[retroachievements.org](https://retroachievements.org/) is a service that provides a trophy/achievement unlocking mechanism similar to modern consoles, for retro games.

!!! Warning
    The service is not maintained by RetroArch or the Libretro team.

!!! Warning
    In order to get better compatibility with the RetroAchievements feature it's recommended to always use the latest version of RetroArch and the cores.

## **How to setup achievements**

1. Register an account on [retroachievements.org](https://retroachievements.org/) (don't forget to confirm your account creation with the email they send to you).
2. Open Retroarch and go to Settings->Achievements.
3. Enable the functionality and fill in your retroachievements credentials.

!!! Note
    The hardcore mode prevents you from using emulation features like savestates, slow motion, and cheats, **BUT** it gives you double points.

![](../image/retroarch/retroachievements/achievements_settings.jpg)

## **Check your connection to the service**

**You need an active internet connection.**

In this example, we are using the game Chrono Trigger (USA) with the Snes9x core.

Launch the game and trigger the Quick Menu.

Go to Achievements and you should see a list of the unlockable trophies for this game.

![](../image/retroarch/retroachievements/achievements_list.png)

## **Check your progress**

On the retroachievements website, you can login and access your account page.

You should be able to check your progress in the games and see which trophies you unlocked.

Trophies unlocked in hardcore mode are marked with a special color.

You can also check the progress of your friends and add comments on their trophies.

![](../image/retroarch/retroachievements/achievements_progress.png)

## **Cores Compatibility**

### Arcade (various manufacturers)

#### Arcade

| Core                                               | Supported | Notes |
|----------------------------------------------------|:---------:|:------|
| [FinalBurn Neo](https://github.com/libretro/FBNeo) | ✔         | AES bios is required for many Neo Geo achievements. AES Asia (neo-epo.bin) is generally English. |
| [MAME](https://github.com/libretro/mame)           | ✕         | Support is not likely to ever be possible. The same is true for all MAME variants. |

### Apple

#### Apple II

| Core                                            | Supported | Notes |
|-------------------------------------------------|:---------:|:------|
| [AppleWin](https://github.com/audetto/AppleWin) | ✕         |       |

#### Arduboy

| Core                                            | Supported | Notes |
|-------------------------------------------------|:---------:|:------|
| [Arduous](https://github.com/Arduboy/Arduboy) |   ✔         |  RetroArch 1.10.2 or higher required |

### Atari

#### 2600

| Core                                                           | Supported | Notes |
|----------------------------------------------------------------|:---------:|:------|
| [Stella](https://github.com/libretro/stella-libretro)          | ✔         |       |
| [Stella 2014](https://github.com/libretro/stella2014-libretro) | ✕         |       |

#### 7800

| Core                                                        | Supported | Notes |
|-------------------------------------------------------------|:---------:|:------|
| [ProSystem](https://github.com/libretro/prosystem-libretro) | ✔         |       |

#### Jaguar

| Core                                                                 | Supported | Notes |
|----------------------------------------------------------------------|:---------:|:------|
| [Virtual Jaguar](https://github.com/libretro/virtualjaguar-libretro) | ✔         | Due to vast core issues, support of this system is extremely limited. |

#### Lynx

| Core                                                             | Supported | Notes |
|------------------------------------------------------------------|:---------:|:------|
| [Beetle Lynx](https://github.com/libretro/beetle-lynx-libretro)  | ✔         |       |
| [Handy](https://github.com/libretro/libretro-handy)              | ✔         | |
| [Holani](https://github.com/LLeny/holani-retro)              | ✔         | |

### Bandai

#### Wonderswan / Wonderswan Color

| Core                                                              | Supported | Notes |
|-------------------------------------------------------------------|:---------:|:------|
| [Beetle Cygne](https://github.com/libretro/beetle-wswan-libretro) | ✔         |       |

### Coleco

#### ColecoVision

| Core                                                    | Supported | Notes |
|---------------------------------------------------------|:---------:|:------|
| [SMS Plus GX](https://github.com/libretro/smsplus-gx)   | ✕         |       |
| [blueMSX](https://github.com/libretro/blueMSX-libretro) | ✔         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)      | ✕         |       |
| [Gearcoleco](https://github.com/drhelius/Gearcoleco)    | ✕         |       |

### GCE

#### Vectrex

| Core                                              | Supported | Notes |
|---------------------------------------------------|:---------:|:------|
| [vecx](https://github.com/libretro/libretro-vecx) | ✔         |       |

### Magnavox

#### Odyssey 2

| Core                                              | Supported | Notes |
|---------------------------------------------------|:---------:|:------|
| [o2em](https://github.com/libretro/libretro-o2em) | ✔         |       |

### Mattel

#### Intellivision

| Core                                             | Supported | Notes |
|--------------------------------------------------|:---------:|:------|
| [FreeIntV](https://github.com/libretro/FreeIntv) | ✔         | Controls involve an on-screen overlay that may not be easy to use for all games. |

### Microsoft

#### MSX / MSX2

| Core                                                    | Supported | Notes |
|---------------------------------------------------------|:---------:|:------|
| [blueMSX](https://github.com/libretro/blueMSX-libretro) | ✔         |       |
| [fMSX](https://github.com/libretro/fmsx-libretro)       | ✕         | Some games may require mapper adjustment in core options to run. |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)      | ✕         | MSX2 is not supported. |

### NEC

#### PC Engine - TurboGrafx-16 / PC Engine CD - TurboGrafx-CD

| Core                                                                        | Supported | Notes |
|-----------------------------------------------------------------------------|:---------:|:------|
| [Beetle PCE FAST](https://github.com/libretro/beetle-pce-fast-libretro)     | ✔         | Highest speed. Does not support SuperGrafx games. |
| [Beetle SuperGrafx](https://github.com/libretro/beetle-supergrafx-libretro) | ✔         | High speed. Supports SuperGrafx games. |
| [Beetle PCE](https://github.com/libretro/beetle-pce-libretro)               | ✕         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)                          | ✕         |       |

#### PC-FX

| Core                                                             | Supported | Notes |
|------------------------------------------------------------------|:---------:|:------|
| [Beetle PC-FX](https://github.com/libretro/beetle-pcfx-libretro) | ✔         |       |

#### PC-8000 / PC-8800

| Core                                                    | Supported | Notes |
|---------------------------------------------------------|:---------:|:------|
| [QUASI88](https://github.com/libretro/quasi88-libretro) | ✕         |       |

### Nintendo

#### Nintendo DS

| Core                                                    | Supported | Notes |
|---------------------------------------------------------|:---------:|:------|
| [MelonDS 2021](https://github.com/libretro/melonDS)          | ✔         | External BIOS recommended, but no longer required. RetroArch 1.9.14 nightly or newer required for hashing to work. DSi mode currently is not supported for achievements. |
| [MelonDS DS](https://github.com/JesseTG/melonds-ds)          | ✔         | Achievements supported for DS and DSi mode. |
| [DeSmuME](https://github.com/libretro/desmume)          | ✔         | External BIOS recommended, needs to be enabled in core options |
| [DeSmuME 2015](https://github.com/libretro/desmume2015) | ✔         |       |

#### Game Boy / Game Boy Color

| Core                                                      | Supported | Notes |
|-----------------------------------------------------------|:---------:|:------|
| [Gambatte](https://github.com/libretro/gambatte-libretro) | ✔         | Preferred core. |
| [SameBoy](https://github.com/libretro/SameBoy)            | ✕         |       |
| [Gearboy](https://github.com/drhelius/Gearboy)            | ✔         |       |
| [mGBA](https://github.com/libretro/mgba)                  | ✔         | Robust feature set. Currently the only core with GB Camera support. |
| [VBA-M](https://github.com/libretro/vbam-libretro)        | ✔         | Currently the only core with gyro support via analog sticks |
| [Mesen-S](https://github.com/SourMesen/Mesen-S)           | ✕         |       |
| [Emux GB](https://github.com/libretro/emux)               | ✕         |       |
| [TGB Dual](https://github.com/libretro/tgbdual-libretro)  | ✕         |       |
| [bsnes](https://github.com/libretro/bsnes-libretro)       | ✕         | SGB only |
| [bsnes-hd](https://github.com/DerKoun/bsnes-hd)           | ✕         | SGB only |
| [higan Accuracy](https://gitlab.com/higan/higan)          | ✕         | SGB only, [Achievement support isn't going to be added](https://forums.libretro.com/t/is-higan-105-accuracy-supposed-to-be-slow-on-a-3-ghz-ivy-bridge-i7/13405/7?u=esoptron) |
| [nSide Balanced](https://github.com/libretro/nSide)       | ✕         | SGB only, [Achievement support isn't going to be added](https://forums.libretro.com/t/is-higan-105-accuracy-supposed-to-be-slow-on-a-3-ghz-ivy-bridge-i7/13405/7?u=esoptron) |

#### Game Boy Advance

| Core                                                          | Supported | Notes |
|---------------------------------------------------------------|:---------:|:------|
| [mGBA](https://github.com/libretro/mgba)                      | ✔         |       |
| [VBA-M](https://github.com/libretro/vbam-libretro)            | ✔         |       |
| [VBA Next](https://github.com/libretro/vba-next)              | ✔         |       |
| [gpSP](https://github.com/libretro/gpsp)                      | ✕         | Very high speed, but has not been thoroughly tested with achievements. A few games will fail to start or crash frequently. Please prefer other cores when device performance allows. |
| [Beetle GBA](https://github.com/libretro/beetle-gba-libretro) | ✔         | Experimental core, should not be used without good reason. |
| [Meteor](https://github.com/libretro/meteor-libretro)         | ✕         |       |

#### NES

| Core                                                  | Supported | Notes |
|-------------------------------------------------------|:---------:|:------|
| [Mesen](https://github.com/SourMesen/Mesen)           | ✔         | Supports FDS, very high accuracy, relatively high performance cost |
| [FCEUmm](https://github.com/libretro/libretro-fceumm) | ✔         | Supports FDS |
| [QuickNES](https://github.com/libretro/QuickNES_Core) | ✔         |       |
| [Nestopia](https://github.com/libretro/nestopia)      | ✕         | [**Achievements are not fully supported yet**](https://github.com/libretro/docs/pull/10) |
| [bnes](https://github.com/libretro/bnes-libretro)     | ✕         |       |
| [Emux NES](https://github.com/libretro/emux)          | ✕         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)    | ✕         |       |

#### Nintendo 64

| Core                                                                 | Supported | Notes |
|----------------------------------------------------------------------|:---------:|:------|
| [Mupen64Plus-Next](https://github.com/libretro/mupen64plus-libretro) | ✔         | Preferred core. Supports greater graphic customization and upscaling. |
| [ParaLLEl N64](https://github.com/libretro/parallel-n64)             | ✔         | Supports 64DD games. Can play -some- hacks reliant on low accuracy via alternate plugins. |

#### Pokemon Mini

| Core                                             | Supported | Notes |
|--------------------------------------------------|:---------:|:------|
| [PokeMini](https://github.com/libretro/PokeMini) | ✔         |       |

#### SNES

| Core                                                                         | Supported | Notes |
|------------------------------------------------------------------------------|:---------:|:------|
| [Snes9x](https://github.com/libretro/snes9x)                                 | ✔         | Preferred core. High speed, moderate accuracy. Actively maintained. |
| [Snes9x 2010](https://github.com/libretro/snes9x2010)                        | ✕         | Has many issues with achievements, unlikely to ever be supported. |
| [Snes9x 2005 Plus](https://github.com/libretro/snes9x2005)                   | ✕         |       |
| [Snes9x 2005](https://github.com/libretro/snes9x2005)                        | ✕         |       |
| [Snes9x 2002](https://github.com/libretro/snes9x2002)                        | ✕         |       |
| [Mesen-S](https://github.com/SourMesen/Mesen-S)                              | ✔         | High accuracy, high performance cost. |
| [Beetle Supafaust](https://github.com/libretro/supafaust)                    | ✕         | Only SRAM is exposed currently. |
| [Beetle bsnes](https://github.com/libretro/beetle-bsnes-libretro)            | ✕         |       |
| [bsnes](https://github.com/libretro/bsnes-libretro)                          | ✕         |       |
| [bsnes-hd](https://github.com/DerKoun/bsnes-hd)                              | ✕         |       |
| [bsnes-mercury Accuracy](https://github.com/libretro/bsnes-mercury)          | ✕         | [SRAM is not exposed currently](https://github.com/libretro/bsnes-mercury/issues/88) |
| [bsnes-mercury Balanced](https://github.com/libretro/bsnes-mercury)          | ✕         | [SRAM is not exposed currently](https://github.com/libretro/bsnes-mercury/issues/88) |
| [bsnes-mercury Performance](https://github.com/libretro/bsnes-mercury)       | ✕         | [SRAM is not exposed currently](https://github.com/libretro/bsnes-mercury/issues/88) |
| [bsnes 2014 Accuracy](https://github.com/libretro/bsnes-libretro)            | ✕         |       |
| [bsnes 2014 Balanced](https://github.com/libretro/bsnes-libretro)            | ✕         |       |
| [bsnes 2014 Performance](https://github.com/libretro/bsnes-libretro)         | ✕         |       |
| [bsnes C++98 (v085)](https://github.com/libretro/bsnes-libretro-cplusplus98) | ✕         | Has some color rendering issues |
| [higan Accuracy](https://gitlab.com/higan/higan)                             | ✕         | [Achievement support isn't going to be added](https://forums.libretro.com/t/is-higan-105-accuracy-supposed-to-be-slow-on-a-3-ghz-ivy-bridge-i7/13405/7?u=esoptron) |
| [nSide Balanced](https://github.com/libretro/nSide)                          | ✕         | [Achievement support isn't going to be added](https://forums.libretro.com/t/is-higan-105-accuracy-supposed-to-be-slow-on-a-3-ghz-ivy-bridge-i7/13405/7?u=esoptron) |

#### Virtual Boy

| Core                                                        | Supported | Notes |
|-------------------------------------------------------------|:---------:|:------|
| [Beetle VB](https://github.com/libretro/beetle-vb-libretro) | ✔         |       |

### Sega

#### Dreamcast/Naomi

| Core                                               | Supported | Notes |
|----------------------------------------------------|:---------:|:------|
| [Flycast](https://github.com/libretro/flycast) | ✔         | Must disable threaded rendering to use save states. RetroArch 1.10.1 or higher required. |

#### Master System / MegaDrive - Genesis

| Core                                                           | Supported | Notes |
|----------------------------------------------------------------|:---------:|:------|
| [Genesis Plus GX](https://github.com/libretro/Genesis-Plus-GX) | ✔         | Preferred core. |
| [BlastEm](https://github.com/libretro/blastem)                 | ✕         | Cycle accurate. Genesis/MegaDrive only. Has known issues with game RAM and is incompatible with achievements. |
| [Picodrive](https://github.com/libretro/picodrive)             | ✔         |       |
| [SMS Plus GX](https://github.com/libretro/smsplus-gx)          | ✔         | Master System only |
| [Gearsystem](https://github.com/drhelius/Gearsystem)           | ✔         | Master System only |
| [Emux SMS](https://github.com/libretro/emux)                   | ✕         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)             | ✕         |       |

#### 32X / 32X CD

| Core                                               | Supported | Notes |
|----------------------------------------------------|:---------:|:------|
| [Picodrive](https://github.com/libretro/picodrive) | ✔         | Emulation quality can be dodgy. |

#### Game Gear

| Core                                                           | Supported | Notes |
|----------------------------------------------------------------|:---------:|:------|
| [Genesis Plus GX](https://github.com/libretro/Genesis-Plus-GX) | ✔         |       |
| [SMS Plus GX](https://github.com/libretro/smsplus-gx)          | ✕         |       |
| [Gearsystem](https://github.com/drhelius/Gearsystem)           | ✔         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)             | ✕         |       |

#### SG-1000

| Core                                                           | Supported | Notes |
|----------------------------------------------------------------|:---------:|:------|
| [Genesis Plus GX](https://github.com/libretro/Genesis-Plus-GX) | ✔         | Preferred core. |
| [SMS Plus GX](https://github.com/libretro/smsplus-gx)          | ✕         |       |
| [Gearsystem](https://github.com/drhelius/Gearsystem)           | ✕         |       |
| [blueMSX](https://github.com/libretro/blueMSX-libretro)        | ✔         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)             | ✕         |       |

#### Sega CD - Mega-CD

| Core                                                           | Supported | Notes |
|----------------------------------------------------------------|:---------:|:------|
| [Genesis Plus GX](https://github.com/libretro/Genesis-Plus-GX) | ✔         |       |
| [Picodrive](https://github.com/libretro/picodrive)             | ✔         |       |

#### Saturn

| Core                                                                  | Supported | Notes |
|-----------------------------------------------------------------------|:---------:|:------|
| [Beetle Saturn](https://github.com/libretro/beetle-saturn-libretro)   | ✔         | Preferred core. High accuracy, but low speed |
| [Yabause](https://github.com/libretro/yabause/tree/master)            | ✕         | Technically supported, but use at your own risk. Higher speed |
| [Kronos](https://github.com/libretro/yabause/tree/kronos)             | ✕         | Technically supported, but use at your own risk. High speed, supports graphic enhancements, but requires a GPU that supports at least OpenGL 4.2 |
| [YabaSanshiro](https://github.com/libretro/yabause/tree/yabasanshiro) | ✕         |       |

### SNK

#### Neo Geo Pocket / Neo Geo Pocket Color

| Core                                                             | Supported | Notes |
|------------------------------------------------------------------|:---------:|:------|
| [Beetle NeoPop](https://github.com/libretro/beetle-ngp-libretro) | ✔         |       |
| [RACE](https://github.com/libretro/RACE)                         | ✕         |       |
| [FinalBurn Neo](https://github.com/libretro/FBNeo)               | ✕         |       |

### Sony

#### PlayStation

| Core                                                             | Supported | Notes |
|------------------------------------------------------------------|:---------:|:------|
| [Beetle PSX HW](https://github.com/libretro/beetle-psx-libretro) | ✔         | Preferred core. Identical to Beetle PSX, with extra hardware features. High accuracy. |
| [Beetle PSX](https://github.com/libretro/beetle-psx-libretro)    | ✔         | Identical to Beetle PSX HW in software mode. |
| [SwanStation](https://github.com/libretro/swanstation)           | ✔         | Fork of DuckStation. Fairly high accuracy, extremely high speed. |
| [PCSX ReARMed](https://github.com/libretro/pcsx_rearmed)         | ✕         | Technically supported, but use at your own risk. Lower accuracy than Beetle PSX (HW), higher speed. |

#### PlayStation Portable

| Core                                          | Supported | Notes |
|-----------------------------------------------|:---------:|:------|
| [PPSSPP](https://github.com/hrydgard/ppsspp/) | ✔         | RetroArch 1.9.9 or higher required |

### The 3DO Company (various manufacturers)

#### 3DO

| Core                                                | Supported | Notes |
|-----------------------------------------------------|:---------:|:------|
| [Opera](https://github.com/libretro/opera-libretro) | ✔         | If you run into issues, try switching to a different BIOS. |

### WASM-4
| Core                                           | Supported | Notes |
|------------------------------------------------|:---------:|:------|
| [WASM-4](https://github.com/aduros/wasm4) | ✔         | RetroArch 1.10.2 or higher required |

### Watara

#### Supervision

| Core                                           | Supported | Notes |
|------------------------------------------------|:---------:|:------|
| [Potator](https://github.com/libretro/potator) | ✔         | RetroArch 1.9.2 or higher required |

### Misc

| Core                                           | Supported | Notes |
|------------------------------------------------|:---------:|:------|
| [VaporSpec](https://github.com/libretro/libretro-common/tree/716bb5e7b761a3b4d44e069c84491d906d32aba0) | ✕         |       |
