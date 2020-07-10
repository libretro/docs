# Sega Dreamcast Core Compatibility

## FlyCast

General FlyCast Issues

- The date and time do not seem to get properly saved, as the system will ask you to set the clock every time you start. 
- Once you save to a VMU slot with any game, that VMU becomes inaccessible the next time you load the emulator. 
- Polygon/Alpha sorting issues can make objects appear distorted in regular Flycast core. Use Per-Pixel Alpha sorting if you want complete/accurate emulation instead. 
- When using an Xbox 360 Controller, analog triggers don't work properly. Use the bumpers instead. 
- Changing games without closing and reloading RetroArch often leads to RetroArch crashing. 

| Game                                        | Issue                                                                                                                                                                                                                                                                  |
|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|                                                                                                 
| Sonic Adventure (PAL)                       | Must be set to use "VGA" output in core options, as "TV" mode will cause all subsequent FMV to make RetroArch become unresponsive.                                                                                                                                     |
| The Typing of the Dead (NTSC-J)             | Must have real BIOS for kanji, hiragana, and katakana to show up since HLE BIOS only has US/ASCII characters.            |
