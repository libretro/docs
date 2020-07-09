# Softpatching ROMs with RetroArch

RetroArch currently supports UPS, IPS and BPS patching formats. If you load `rom.bin` and one of the following is present, the ROM will be autopatched: `rom.ups`, `rom.ips` or `rom.bps`. Autopatching only takes place if the libretro implementation supports loading ROMs from memory.

## **Cores Compatibility**

### Bandai - WonderSwan/Color

| Core                                       | Supported |
|--------------------------------------------|:---------:|
| [Beetle Cygne](../library/beetle_cygne.md) | ✔         |

### Nintendo - Game Boy / Color

| Core                               | Supported |
|------------------------------------|:---------:|
| [Gambatte](../library/gambatte.md) | ✔         |
| [Gearboy](../library/gearboy.md)   | ✔         |
| [Mesen-S](../library/mesen-s.md)   | ✔         |
| [mGBA](../library/mgba.md)         | ✔         |
| [SameBoy](../library/sameboy.md)   | ✕         |
| [TGB Dual](../library/tgb_dual.md) | ✔         |
| [VBA-M](../library/vba_m.md)       | ✔         |

### Nintendo - Game Boy Advance

| Core                               | Supported |
|------------------------------------|:---------:|
| [Meteor](../library/meteor.md)     | ✔         |
| [mGBA](../library/mgba.md)         | ✔         |
| [VBA-M](../library/vba_m.md)       | ✔         |
| [VBA Next](../library/vba_next.md) | ✔         |

### Nintendo - NES / Famicom

| Core                                     | Supported |
|------------------------------------------|:---------:|
| [bnes](../library/bnes.md)               | ✔         |
| [FCEUmm](../library/fceumm.md)           | ✔         |
| [Mesen](../library/mesen.md)             | ✔         |
| [Nestopia UE](../library/nestopia_ue.md) | ✔         |
| [QuickNES](../library/quicknes.md)       | ✔         |

### Nintendo - SNES / Famicom

| Core                                                                 | Supported |
|----------------------------------------------------------------------|:---------:|
| [Beetle bsnes](../library/beetle_bsnes.md)                           | ✔         |
| [bsnes-mercury Accuracy](../library/bsnes_mercury_accuracy.md)       | ✔         |
| [bsnes-mercury Balanced](../library/bsnes_mercury_balanced.md)       | ✔         |
| [bsnes-mercury Performance](../library/bsnes_mercury_performance.md) | ✔         |
| [bsnes Accuracy](../library/bsnes_accuracy.md)                       | ✔         |
| [bsnes Balanced](../library/bsnes_balanced.md)                       | ✔         |
| [bsnes C++98 (v085)](../library/bsnes_cplusplus98.md)                | ✔         |
| [bsnes Performance](../library/bsnes_performance.md)                 | ✔         |
| [higan Accuracy](../library/higan_accuracy.md)                       | ✔         |
| [nSide Balanced](../library/nside_balanced.md)                       | ✔         |
| [Mesen-S](../library/mesen-s.md)                                     | ✔         |
| [Snes9x](../library/snes9x.md)                                       | ✔         |
| [Snes9x 2002](../library/snes9x_2002.md)                             | ✔         |
| [Snes9x 2005](../library/snes9x_2005.md)                             | ✔         |
| [Snes9x 2005 Plus](../library/snes9x_2005_plus.md)                   | ✔         |
| [Snes9x 2010](../library/snes9x_2010.md)                             | ✔         |

### Sega - Master System

| Core                                             | Supported |
|--------------------------------------------------|:---------:|
| [SMS Plus GX](../library/smsplus.md)             | ✔         |
| [Gearsystem](../library/gearsystem.md)           | ✔         |
| [Genesis Plus GX](../library/genesis_plus_gx.md) | ✕         |
| [PicoDrive](../library/picodrive.md)             | ✕         |

### Sega - MegaDrive / Genesis

| Core                                             | Supported |
|--------------------------------------------------|:---------:|
| [BlastEm](../library/blastem.md)                 | ✔         |
| [Genesis Plus GX](../library/genesis_plus_gx.md) | ✕         |
| [PicoDrive](../library/picodrive.md)             | ✕         |

### SNK - Neo Geo Pocket / Neo Geo Pocket Color

| Core                                         | Supported |
|----------------------------------------------|:---------:|
| [Beetle NeoPop](../library/beetle_neopop.md) | ✔         |
| [RACE](../library/race.md)                   | ✕         |
