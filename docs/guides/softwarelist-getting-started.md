# Getting started with software emulation in Libretro MAME cores

Multi software emulation requires a different planning approach than arcade emulation. Terminology can also differ from the terms used in other kinds of emulation.
The terms software and software list are used to define non-arcade machines emulated by MAME.

### Process
  1. **Understand the core variants**
  2. **Use the correct version romsets for that emulator**

The libretro core ecosystem currently includes many multi software emulators, that support software emulation. Arcade (MAME), Arcade (MAME 2016) will be the main focus of this guide but the MULTI (MESS 2015) and MULTI (UME 2015) cores have this ability. Each requiring its own distinct version of "romsets" which the emulator supports.

!!! tip
    Matching emulator and game versions is advised for maximum compatibility but you may find mis-matched combinations also work.  

---

## Step 1: Understand the core variants

There are three families of multi-system software emulators available as libretro cores: MAME, MESS and UME. These emulators are in turn available in multiple versions to allow users to best match a core to their preference.


#### MAME
Arcade (MAME) & Arcade (MAME 2016) are currently the only MAME cores that support the emulation of software & arcade system. The Arcade (MAME) core is updated regulary and most inline with the official MAME project release. Arcade (MAME 2016) is an archived snapshot of MAME from the 0.174 release.

#### MESS
Multi (MESS 2015) is a snapshot of the MESS project from v0.160. The MESS project later merged with the MAME project in MAME v0.162

#### UME
Multi (UME 2015) is a snapshot of the Universal Machine Emulator. This was a precursor to the MAME/MESS merger, released by David Haywood (haze). The MAME and MESS project codebases co-existed in the MESS SVN development tree before they official merged. This allowed haze to build and release the eumlator with unmodified code from both projects under the name UME

---

## Step 2: Use the correct version romsets for that emulator
**For best results, start with a full software list ROM collection with a version that matches the emulator you're using.**

In general, you will only get good results with a full collection of software list romsets for your chosen emulator.Individual romset zip files may not include BIOS ROMs, "Parent" romsets, necessary audio sample files, etc.


| Emulator | Required ROM Version |
| :---: | :---: |
| MAME 2016 | MAME 0.174 |
| MAME (latest version) | MAME (latest version) |
| MESS 2015 | - |
| UME 2015 | - |

---

## Running software list machines
There are two common methods of configuring Retroarch to launch software list machines and games with MAME cores.

  1. **MAME Frontend direct**
  2. **Libretro CMD file**

**Method 1** uses the inbuilt MAME logic and hash files to launch your games.
**Method 2** uses an extra Libretro feature to pass command line functions to the core. This replicates sending command line functions directly to MAME like you would on a PC.

### MAME Frontend direct


NOTES:-
Method 1:- Authentic MAME
Using the internal Software List functions of MAME.

For this you will need some supporting files from the mainline MAME emulator. Download the windows MAME emulator here(link). Making sure to get the correct version you require.

Extract the contents and remove the “hash” folder and it’s contents. If your device has limited storage just take the files relating to the system you want to emulate.

Folder structure:-
Folder structure/naming is very important for this use of the MAME Cores. The naming will depend on the machine you are trying to emulate but the folder structure will be the same. The example below is for the Atari 5200.

“YourPath” is the location of your Retroarch and games folders.

Create the following folders in your Retroarch installation or your specified “system” folder

YourPath/Retroarch/System/mame

Copy the hash folder acquired earlier to the above location.

YourPath/Retroarch/system/mame/hash

So for Atari 5200 you would have

YourPath/Retroarch/system/mame/hash/a5200.xml

(Check about .hsi file or use another example)

Create the following folders in your games directory (these will be mame naming dependent)

YourPath/Games/Atari 5200/a5200

(The last folder MUST be named as MAME requires, in this case “a5200”)

Place any .zip games and .zip bios files required here

YourPath/Games/Atari 5200/a5200/a5200.zip
YourPath/Games/Atari 5200/a5200/boogie.zip

(You May also extract the bios file to their own folder within the games directory)
YourPath/Games/Atari 5200/a5200/a5200/5200.rom)

Now Load Content and browse to the game files and launch with a compatible core.
————————————————
Need to do a fresh install and confirm minimum files needed

Add note about SoftList xml specifying the game names and crc and only supporting only those specific file names.
————————————————

Method2: Frontend Friendly

CMD or command line file launching.

This method follows the same folder structure as above but you can use custom naming outside of the hash file included with MAME.
It utilises some custom additions to the Libretro MAME Cores. Specifically the use of text files (.cmd) to replicate sending command line actions as you can with mainline MAME.

To do
Deciding on contents of the cmd file

Cmd file example

Test on clean install
