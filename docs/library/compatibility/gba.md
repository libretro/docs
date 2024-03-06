# Nintendo Game Boy Advance Core Compatibility

Please notice that [only certain cores support libretro save interface](https://github.com/libretro/RetroArch/issues/16323#issuecomment-1977792161), meaning even if you set option "SaveRAM Autosave Interval" on settings, some cores will only write down internal save game data when you gracefully close emulation. That might lead to loss of data.

## Beetle GBA

[Does not support SaveRAM Autosave Interval.](https://github.com/libretro/RetroArch/issues/16323#issuecomment-1980460281)

## gpSP

[Does not support SaveRAM Autosave Interval.](https://github.com/libretro/RetroArch/issues/16323#issuecomment-1980460281)

| Game                                  | Issue                          |
|---------------------------------------|--------------------------------|
| ~~Activision Anthology~~                |~~Freezes when entering a game.~~ |
| ~~Banjo-Kazooie - Grunty's Revenge~~    |~~Black screen during developer logo. Resets when Banjo leaves his house.~~|
| Boktai Trilogy                      |The solar sensor is not emulated. |
| ~~DemiKids - Light/Dark Version~~   |~~Crashes when entering a battle.~~ |
| ~~Digimon Racing (Europe)~~             |~~Freezes during the intro.~~   |
| ~~Dragon Ball Z - The Legacy of Goku~~  |~~Graphics glitches.~~ |
| Final Fantasy VI                    |Background/tiling order issues.  |
| Golden Sun 1 and 2                    |Background/tiling order issues (GS1 Carpet on Ship / GS2 Ice shards in cave).  |
| ~~Game Boy Advance Video - Dragon Ball GT - Volume 1~~ |~~White screen.~~     |
| ~~Grand Theft Auto Advance~~        |~~Crashes after first dialog. Works on some platforms.~~ |
| ~~Harry Potter - Quidditch World Cup~~  |~~Crashes when going ingame.~~       |
| Koro Koro Puzzle Happy Panechu!     |The tilt sensor is not emulated. |
| ~~Mario & Luigi - Superstar Saga~~      |~~Sometimes crashes when entering a battle.~~  |
| Phantasy Star Collection            |Phantasy Star 1 flickers  - turn on Interframe Blending in core options to fix.|
| ~~R-Type III - The Third Lightning~~    |~~Softlocks at Irem startup screen.~~|
| ~~Rock 'n Roll Racing~~             |~~Corrupted graphics, not playable.~~|
| ~~Rockman & Forte~~                     |~~Doesn't continue after GBA BIOS screen.~~|
| Sims 2, The - Pets |Graphics glitches. Heavy flickering, black objects. |
| Street Racing Syndicate             |Crashes at startup screen, after pressing Start (Works in Interpreter Mode in lr-gpsp v1.0.0).|
| ~~Super Monkey Ball Jr.~~               |~~Softlocks at startup screen.~~|
| ~~Super Street Fighter II Turbo/X Revival~~ |~~Small graphics glitch. Selecting speed 'Turbo 1' and beyond on the character select screen makes the game speed window not fully visible.~~ |
| ~~Tales of Phantasia (USA version)~~    |~~Softlocks during the introduction sequence (just before the small guy hits the tall guy in the right).~~|
| WarioWare: Twisted!                 |The tilt sensor is not emulated.|
| ~~Wolfenstein 3D~~                      |~~Softlocks at id Software startup screen.~~|
| Yoshi’s Universal Gravitation       |The tilt sensor is not emulated.|

## mGBA

[Supports SaveRAM Autosave Interval.](https://github.com/libretro/RetroArch/issues/16323#issuecomment-1980460281)

## VBA-M

[Supports SaveRAM Autosave Interval.](https://github.com/libretro/RetroArch/issues/16323#issuecomment-1980460281)

| Game                                  | Issue                          |
|---------------------------------------|--------------------------------|
| ~~Boktai Trilogy~~                        | ~~The solar sensor is not emulated~~|
| ~~Digimon Racing (Europe)~~               |~~Freezes during the intro. This can be avoided by enabling linking in the standalone VBA-M release~~  |
| ~~Koro Koro Puzzle Happy Panechu!~~       |	~~The tilt sensor is not emulated~~|
| ~~Phantasy Star Collection~~              | ~~Digital Eclipse logo sound effect is missing. Phantasy Star 1 flickers~~ |
| ~~WarioWare: Twisted!~~                   |  	~~The tilt sensor is not emulated~~   |
| ~~Yoshi’s Universal Gravitation~~         |   ~~The tilt sensor is not emulated~~   |

## VBA Next

[Supports SaveRAM Autosave Interval.](https://github.com/libretro/RetroArch/issues/16323#issuecomment-1980460281)

| Game                                              | Issue                                                                                              |
|---------------------------------------------------|----------------------------------------------------------------------------------------------------|
| Boktai Trilogy 	                                | The solar sensor is not emulated.                                                                  |
| Croket! 2 – Yami no Bank to Banqueen              | Heavy slowdown when approaching the snowman in the beginning.                                      |
| Digimon Racing (Europe) 	                        | Freezes during the intro. This can be avoided by enabling linking in the standalone VBA-M release. |
| Drome Racers 	                                    | Only shows a black screen after the THQ logo.                                                      |
| Hamtaro: Ham-Ham Games 	                        | Locks up if the opening cinematics aren’t skipped.                                                 |
| Hot Wheels - Stunt Track Challenge                | Resets itself when trying to go in-game.                                                           |
| Jurassic Park III: Park Builder 	                | Unreadable glitched text.                                                                          |
| Koro Koro Puzzle Happy Panechu! 	                | The tilt sensor is not emulated.                                                                   |
| Moto GP 	                                        | Black screen, loud screeching noise.                                                               |
| Sanrio Puroland: All Characters                   | Loads Indefinitely. Very slow.                                                                     |
| Phantasy Star Collection 	                        | Digital Eclipse logo sound effect is missing. Phantasy Star 1 flickers.                            |
| SSX 3 	                                        | Graphics glitches. Seems pitch-related.                                                            |
| Super Mario Advance 2: Super Mario World (Europe) | The program crashes during the final fight, when Bowser approaches (zoom mode 7)                   |
| WarioWare: Twisted!                               | The tilt sensor is not emulated.                                                                   |
| Yoshi’s Universal Gravitation                     | The tilt sensor is not emulated.                                                                   |
