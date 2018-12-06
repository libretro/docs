##**Verifying that you have the right BIOS**

It is very important that the following requirements are met:

1. Location
2. Name
3. File Hash (md5sum)

###**Location**
Ensure that you have placed the BIOS file(s) in the correct location.

Usually is the system folder, which can be located in RetroArch by going to:

Settings->Directory->System/BIOS (look at the right column).

The specific core information page will tell you where exactly. (you may need to create a subfolder)

###**Name**
Verify that the file(s) have the same name and extension that appears in the core info/docs page.

Remember that some operating systems are case sensitive.

###**File Hash (md5sum)**
Last, but probably the most important part of all, the hash of your BIOS should match the one in the docs.

####*What is a hash?*
A File Hash is a string of characters that uniquely identifies a file.

####*Why should i care?*
If i rename *dog.jpg* to *bios.bin*, how would you know?

If the dump is not the version that the core needs, or if the file integrity is compromised (corrupted), unexpected things (**bad**) can happen.

A file can become corrupted by errors in transmission, write errors during copying or moving, faulty storage media, software bugs, etc. 

####*How do i check it?*
You need two things, a piece of software that can generate a hash from your file and a known valid file hash for the comparison, you will find the correct hash in the corresponding core information page (links below)

As for the software, some operating systems have tools integrated in the commandline that can do the job, but if you prefer a graphical interface look for something like Open-Hashtool, HashMyFiles, etc

##Links to the core specific BIOS information

System                        | Core               | Link |
|:----------------------------|:-------------------|:--------------------------------------------------------------------|
3DO                           | 4DO                | [BIOS information](https://docs.libretro.com/library/4do/#bios)
5200/Atari 8-bit computers    | Atari800           | [BIOS information](https://docs.libretro.com/library/atari800/#bios)
7800                          | ProSystem          | [BIOS information](https://docs.libretro.com/library/prosystem/#bios)
Arcade                        | MAME2003           | [BIOS information](https://docs.libretro.com/library/mame_2003/#bios)
Arcade                        | MAME2003+          | [BIOS information](https://docs.libretro.com/library/mame2003_plus/#bios)
Arcade                        | MAME2010           | [BIOS information](https://docs.libretro.com/library/mame_2010/#bios)
Dreamcast                     | Reicast            | [BIOS information](https://docs.libretro.com/library/reicast/#bios)
DS                            | DeSmuME            | [BIOS information](https://docs.libretro.com/library/desmume/#bios)
GameBoy/GameBoy Color         | Emux GB            | [BIOS information](https://docs.libretro.com/library/emux_gb/#bios)
GameBoy/GameBoy Color         | Gambatte           | [BIOS information](https://docs.libretro.com/library/gambatte/#bios)
GameBoy/GameBoy Color         | Gearboy            | [BIOS information](https://docs.libretro.com/library/gearboy/#bios)
GameBoy/GameBoy Color         | SameBoy            | [BIOS information](https://docs.libretro.com/library/sameboy/#bios)
GameBoy Advance               | Beetle GBA         | [BIOS information](https://docs.libretro.com/library/beetle_gba/#bios)
GameBoy Advance               | gpSP               | [BIOS information](https://docs.libretro.com/library/gpsp/#bios)
GameBoy Advance               | mGBA               | [BIOS information](https://docs.libretro.com/library/mgba/#bios)
GameBoy Advance               | VBA Next           | [BIOS information](https://docs.libretro.com/library/vba_next/#bios)
Gamecube/Wii                  | Dolphin            | [BIOS information](https://docs.libretro.com/library/dolphin/#bios)
Intellivision                 | FreeIntv           | [BIOS information](https://docs.libretro.com/library/freeintv/#bios)
Lynx                          | Beetle Handy       | [BIOS information](https://docs.libretro.com/library/beetle_handy/#bios)
Lynx                          | Handy              | [BIOS information](https://docs.libretro.com/library/handy/#bios)
Master System                 | Emux SMS           | [BIOS information](https://docs.libretro.com/library/emux_sms/#bios)
MS/GG/MD/CD                   | Genesis Plus GX    | [BIOS information](https://docs.libretro.com/library/genesis_plus_gx/#bios)
MS/MD/CD/32X                  | PicoDrive          | [BIOS information](https://docs.libretro.com/library/picodrive/#bios)
MSX/SVI/ColecoVision/SG-1000  | blueMSX            | [BIOS information](https://docs.libretro.com/library/bluemsx/#bios)
MSX                           | fMSX               | [BIOS information](https://docs.libretro.com/library/fmsx/#bios)
NES/Famicom                   | FCEUmm             | [BIOS information](https://docs.libretro.com/library/fceumm/#bios)
NES/Famicom                   | Nestopia UE        | [BIOS information](https://docs.libretro.com/library/nestopia_ue/#bios)
NES/Famicom                   | Mesen              | [BIOS information](https://docs.libretro.com/library/mesen/#bios)
Odyssey2/Videopac+            | O2EM               | [BIOS information](https://docs.libretro.com/library/o2em/#bios)
PC-98                         | Neko Project II Kai| [BIOS information](https://docs.libretro.com/library/neko_project_ii_kai/#bios)
PC Engine/CD                  | Beetle PCE FAST    | [BIOS information](https://docs.libretro.com/library/beetle_pce_fast/#bios)
PCE SuperGrafx                | Beetle SGX         | [BIOS information](https://docs.libretro.com/library/beetle_sgx/#bios)
PC-FX                         | Beetle PC-FX       | [BIOS information](https://docs.libretro.com/library/beetle_pc_fx/#bios)
PlayStation                   | Beetle PSX         | [BIOS information](https://docs.libretro.com/library/beetle_psx/#bios)
PlayStation                   | Beetle PSX HW      | [BIOS information](https://docs.libretro.com/library/beetle_psx_hw/#bios)
PlayStation                   | PCSX ReARMed       | [BIOS information](https://docs.libretro.com/library/pcsx_rearmed/#bios)
Pokémon Mini                  | PokeMini           | [BIOS information](https://docs.libretro.com/library/pokemini/#bios)
PSP                           | PPSSPP             | [BIOS information](https://docs.libretro.com/library/ppsspp/#bios)
Saturn                        | Beetle Saturn      | [BIOS information](https://docs.libretro.com/library/beetle_saturn/#bios)
Saturn                        | Yabause            | [BIOS information](https://docs.libretro.com/library/yabause/#bios)
Sharp - X68000                | PX68k              | [BIOS information](https://docs.libretro.com/library/px68k/#bios)
SNES/Super Famicom            | bsnes Accuracy     | [BIOS information](https://docs.libretro.com/library/bsnes_accuracy/#bios)
SNES/Super Famicom            | bsnes Balanced     | [BIOS information](https://docs.libretro.com/library/bsnes_balanced/#bios)
SNES/Super Famicom            | bsnes Performance  | [BIOS information](https://docs.libretro.com/library/bsnes_performance/#bios)
SNES/Super Famicom            | bsnes-mercury Acc  | [BIOS information](https://docs.libretro.com/library/bsnes_mercury_accuracy/#bios)
SNES/Super Famicom            | bsnes-mercury Bal  | [BIOS information](https://docs.libretro.com/library/bsnes_mercury_balanced/#bios)
SNES/Super Famicom            | bsnes-mercury Perf | [BIOS information](https://docs.libretro.com/library/bsnes_mercury_performance/#bios)
SNES/Super Famicom            | nSide Balanced     | [BIOS information](https://docs.libretro.com/library/nside_balanced/#bios)
SNES/Super Famicom            | higan Accuracy     | [BIOS information](https://docs.libretro.com/library/higan_accuracy/#bios)
ST/STE/TT/Falcon              | Hatari             | [BIOS information](https://docs.libretro.com/library/hatari/#bios)
Thomson - TO8D                | Theodore           | [BIOS information](https://docs.libretro.com/library/theodore/#bios)
Vectrex                       | vecx               | [BIOS information](https://docs.libretro.com/library/vecx/#bios)
ZX Spectrum                   | Fuse               | [BIOS information](https://docs.libretro.com/library/fuse/#bios)
