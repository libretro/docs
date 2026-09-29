# PC (PCem)

## Background

A port of the PCem IBM/PC emulator to libretro. This core is still very preliminary and most users will have better luck with the DOSBox-SVN/Pure cores in most cases.

The PCem core has been authored by

- PCem Team

The PCem core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the PCem core have the following file extensions:

- .exe
- .com
- .bat
- .conf

The PCem core can also be started without content.

## Features

Frontend-level settings or features that the PCem core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✕         |
| Rewind            | ✕         |

## Core options

The PCem core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **CPU Core** [pcem_cpucore] (**interpreter**|dynarec)

- **Model (restart)** [pcem_model] (**auto**|IBM PC|IBM XT|IBM PCjr|Generic XT clone|AMI XT clone|DTK XT clone|VTech Laser Turbo XT|VTech Laser XT3|Phoenix XT clone|Juko XT clone|Tandy 1000|Tandy 1000 HX|Tandy 1000 SL/2|Amstrad PC1512|Sinclair PC200|Euro PC|Olivetti M24|Amstrad PC1640|Amstrad PC2086|Amstrad PC3086|IBM AT|Commodore PC 30 III|AMI 286 clone|DELL System 200|IBM PS/1 model 2011|Compaq Deskpro 386|Acer 386SX25/N|DTK 386SX clone|Phoenix 386 clone|Amstrad MegaPC|AMI 386 clone|AMI 486 clone|AMI WinBIOS 486|DTK PKM-0038S E-2|Award SiS 496/497|Rise Computer R418|Intel Premiere/PCI|Intel Premiere/PCI II|Intel Advanced/EV|PC Partner MB500N|ASUS P/I-P53TP4XE|Acer M3a|Acer V35N|ASUS P/I-P55T2P4|Award 430VX PCI|Epox P55-VA)

- **Graphics card (restart)** [pcem_gfxcard] (**auto**|CGA|New CGA|MDA|Hercules|EGA|Compaq EGA|Super EGA|Trident TVGA8900D|Tseng ET4000|Tseng ET4000/W32p (Diamond Stealth 32)|S3 Vision864 (Paradise Bahamas 64)|S3 764/Trio64 (Number Nine 9FX)|S3 Virge|Trident TGUI9440|IBM VGA|Compaq/Paradise VGA|ATI VGA Edge-16|ATI VGA Charger|Oak OTI-067|ATI Graphics Pro Turbo (Mach64)|Cirrus Logic CL-GD5429|S3 Virge/DX|S3 732/Trio32 (Phoenix)|S3 764/Trio64 (Phoenix)|nVidia Riva TNT|Incolor|nVidia Riva 128)

- **Sound card (restart)** [pcem_sndcard] (**auto**|AdLib (No DSP)|Soundblaster 1 (DSP v1.05)|Soundblaster 1.5 (DSP v2.00)|Soundblaster 2 (DSP v2.01)|Soundblaster Pro (DSP v3.00)|Soundblaster Pro 2 (DSP v3.02 + OPL3)|Soundblaster 16 (DSP v4.05 + OPL3)|AdLib Gold|Windows Sound System|Pro Audio Spectrum 16)

- **Video timing speed** [pcem_video_timing_speed] (**Slow VLB/PCI**|Mid VLB/PCI|Fast VLB/PCI|8-bit|Slow 16-bit|Fast 16-bit)

- **Enable overscan** [pcem_overscan_enable] (**disabled**|enabled)

- **Enable flash** [pcem_flash_enable] (**enabled**|disabled)

- **CPU Floating Point Unit support (restart)** [pcem_fpu_enabled] (**disabled**|enabled)

- **Gravis UltraSound audiocard (restart)** [pcem_gus_enabled] (**disabled**|enabled)

- **SSI 2001 add-on audiocard (restart)** [pcem_ssi2001_enabled] (**disabled**|enabled)

- **GameBlaster audiocard (restart)** [pcem_gameblaster_enabled] (**disabled**|enabled)

- **3Dfx Voodoo add-on card (restart)** [pcem_voodoo_enabled] (**disabled**|enabled)

## External Links

- [PCem Repository](https://github.com/libretro/libretro-pcem)
- [Report PCem Core Issues Here](https://github.com/libretro/libretro-pcem/issues)

