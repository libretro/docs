## **Verifying that you have the right BIOS**

It is very important that the following requirements are met:

1. Location
2. Name
3. File Hash (md5sum)

### **Location**
Ensure that you have placed the BIOS file(s) in the correct location.

Usually is the system folder, which can be located in RetroArch by going to:

Settings->Directory->System/BIOS (look at the right column).

The specific core information page will tell you where exactly. (you may need to create a subfolder)

### **Name**
Verify that the file(s) have the same name and extension that appears in the core info/docs page.

Remember that some operating systems are case sensitive.

###**File Hash (md5sum)**
Last, but probably the most important part of all, the hash of your BIOS should match the one in the docs.

#### *What is a hash?*
A File Hash is a string of characters that uniquely identifies a file.

#### *Why should i care?*
If i rename *dog.jpg* to *bios.bin*, how would you know?

If the dump is not the version that the core needs, or if the file integrity is compromised (corrupted), unexpected things (**bad**) can happen.

A file can become corrupted by errors in transmission, write errors during copying or moving, faulty storage media, software bugs, etc.

#### *How do i check it?*
You need two things, a piece of software that can generate a hash from your file and a known valid file hash for the comparison, you will find the correct hash in the corresponding core information page (links below)

As for the software, some operating systems have tools integrated in the commandline that can do the job, but if you prefer a graphical interface look for something like Open-Hashtool, HashMyFiles, etc

## Links to the core specific BIOS information

System                        | Core               | Link |
|:----------------------------|:-------------------|:--------------------------------------------------------------------|
3DO                           | Opera              | [BIOS information](opera.md#bios)
5200/Atari 8-bit computers    | Atari800           | [BIOS information](atari800.md#bios)
7800                          | ProSystem          | [BIOS information](prosystem.md#bios)
Apple                         | minivmac           | [BIOS information](minivmac.md#bios)
Arcade                        | MAME2003           | [BIOS information](mame_2003.md#bios)
Arcade                        | MAME2003+          | [BIOS information](mame2003_plus.md#bios)
Arcade                        | MAME2010           | [BIOS information](mame_2010.md#bios)
Arcade                        | SAME_CDI           | [BIOS information](same_cdi.md#bios)
ColecoVision                  | Gearcoleco         | [BIOS information](gearcoleco.md#bios)
Dreamcast                     | Flycast            | [BIOS information](flycast.md#bios)
DS                            | DeSmuME            | [BIOS information](desmume.md#bios)
DS                            | melonDS DS         | [BIOS information](melonds_ds.md#bios)
Elektronika - BK-0010/BK-0011 | bk                 | [BIOS information](bk.md#bios)
Enterprise 128                | ep128emu           | [BIOS information](ep128emu.md#bios)
GameBoy/GameBoy Color         | Emux GB            | [BIOS information](emux_gb.md#bios)
GameBoy/GameBoy Color         | Gambatte           | [BIOS information](gambatte.md#bios)
GameBoy/GameBoy Color         | Gearboy            | [BIOS information](gearboy.md#bios)
GameBoy/GameBoy Color         | SameBoy            | [BIOS information](sameboy.md#bios)
GameBoy Advance               | Beetle GBA         | [BIOS information](beetle_gba.md#bios)
GameBoy Advance               | gpSP               | [BIOS information](gpsp.md#bios)
GameBoy Advance               | mGBA               | [BIOS information](mgba.md#bios)
GameBoy Advance               | VBA Next           | [BIOS information](vba_next.md#bios)
Gamecube/Wii                  | Dolphin            | [BIOS information](dolphin.md#bios)
Intellivision                 | FreeIntv           | [BIOS information](freeintv.md#bios)
Lynx                          | Beetle Lynx        | [BIOS information](beetle_lynx.md#bios)
Lynx                          | Handy              | [BIOS information](handy.md#bios)
Lynx                          | Holani             | [BIOS information](holani.md#bios)
Master System                 | Emux SMS           | [BIOS information](emux_sms.md#bios)
MS/GG                         | SMS Plus GX        | [BIOS information](smsplus.md#bios)
MS/GG/MD/CD                   | Genesis Plus GX    | [BIOS information](genesis_plus_gx.md#bios)
MS/GG/SG-1000                 | Gearsystem         | [BIOS information](gearsystem.md#bios)
MS/MD/CD/32X                  | PicoDrive          | [BIOS information](picodrive.md#bios)
MSX/SVI/ColecoVision/SG-1000  | blueMSX            | [BIOS information](bluemsx.md#bios)
MSX                           | fMSX               | [BIOS information](fmsx.md#bios)
NES/Famicom                   | FCEUmm             | [BIOS information](fceumm.md#bios)
NES/Famicom                   | Nestopia        | [BIOS information](nestopia.md#bios)
NES/Famicom                   | Mesen              | [BIOS information](mesen.md#bios)
Odyssey2/Videopac+            | O2EM               | [BIOS information](o2em.md#bios)
PC-98                         | Neko Project II Kai| [BIOS information](neko_project_ii_kai.md#bios)
PC Engine/CD                  | Beetle PCE FAST    | [BIOS information](beetle_pce_fast.md#bios)
PCE SuperGrafx                | Beetle SGX         | [BIOS information](beetle_sgx.md#bios)
PC-FX                         | Beetle PC-FX       | [BIOS information](beetle_pc_fx.md#bios)
PlayStation                   | Beetle PSX         | [BIOS information](beetle_psx.md#bios)
PlayStation                   | Beetle PSX HW      | [BIOS information](beetle_psx_hw.md#bios)
PlayStation                   | PCSX ReARMed       | [BIOS information](pcsx_rearmed.md#bios)
Pokémon Mini                  | PokeMini           | [BIOS information](pokemini.md#bios)
PSP                           | PPSSPP             | [BIOS information](ppsspp.md#bios)
Saturn                        | Beetle Saturn      | [BIOS information](beetle_saturn.md#bios)
Saturn                        | Kronos             | [BIOS information](kronos.md#bios)
Saturn                        | Yabause            | [BIOS information](yabause.md#bios)
Saturn                        | YabaSanshiro       | [BIOS information](yabasanshiro.md#bios)
Sharp - X68000                | PX68k              | [BIOS information](px68k.md#bios)
SNES/Super Famicom            | bsnes Accuracy     | [BIOS information](bsnes_accuracy.md#bios)
SNES/Super Famicom            | bsnes Balanced     | [BIOS information](bsnes_balanced.md#bios)
SNES/Super Famicom            | bsnes Performance  | [BIOS information](bsnes_performance.md#bios)
SNES/Super Famicom            | bsnes-mercury Acc  | [BIOS information](bsnes_mercury_accuracy.md#bios)
SNES/Super Famicom            | bsnes-mercury Bal  | [BIOS information](bsnes_mercury_balanced.md#bios)
SNES/Super Famicom            | bsnes-mercury Perf | [BIOS information](bsnes_mercury_performance.md#bios)
SNES/Super Famicom            | nSide Balanced     | [BIOS information](nside_balanced.md#bios)
SNES/Super Famicom            | higan Accuracy     | [BIOS information](higan_accuracy.md#bios)
SNES/Super Famicom            | Mesen-S            | [BIOS information](mesen-s.md#bios)
Super Cassette Vision         | EmuSCV             | [BIOS information](emuscv.md#bios)
ST/STE/TT/Falcon              | Hatari             | [BIOS information](hatari.md#bios)
Texas Instruments TI-83       | Numero             | [BIOS information](numero.md#bios)
Thomson - MO/TO               | Theodore           | [BIOS information](theodore.md#bios)
Vectrex                       | vecx               | [BIOS information](vecx.md#bios)
Vircon32                      | Vircon32           | [BIOS information](vircon32.md#bios)
ZX Spectrum                   | Fuse               | [BIOS information](fuse.md#bios)
