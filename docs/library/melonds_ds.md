# Nintendo - DS (melonDS DS)

## Background

A Nintendo DS emulator (with DSi support) by Arisotura and friends,
ported to libretro by Jesse Talavera.

!!! info "This is the newer version!"
    This version of the melonDS core is based on a newer version of the original emulator,
    and has more features than the older [melonDS core](melonds.md).
    Use this one unless you're not ready to migrate.


### Author/License

The melonDS DS core has been authored by

- Jesse Talavera

The melonDS DS core is licensed under

- [GPLv3](https://github.com/JesseTG/melonds-ds/blob/main/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the melonDS core has one of the following file extensions:

- .nds
- .dsi
- .ids

## Databases

RetroArch database(s) that are associated with the melonDS DS core:

- [Nintendo - Nintendo DS](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DS.rdb)
- [Nintendo - Nintendo DSi](https://github.com/libretro/libretro-database/blob/master/rdb/Nintendo%20-%20Nintendo%20DSi.rdb)

## BIOS

Required or optional firmware files go in the frontend's `system` directory.

|     Filename     |             Description              |              md5sum              |
|:----------------:|:------------------------------------:|:--------------------------------:|
|    bios7.bin     |       NDS ARM7 BIOS - Optional       | df692a80a5b1bc90728bc3dfc76cd948 |
|    bios9.bin     |       NDS ARM9 BIOS - Optional       | a392174eb3e572fed6447e956bde4b25 |
|   firmware.bin   |       NDS Firmware - Optional        |              Varies              |
|  dsi_bios7.bin   | DSi ARM7 BIOS - Required in DSi mode |                                  |
|  dsi_bios9.bin   | DSi ARM9 BIOS - Required in DSi mode |                                  |
| dsi_firmware.bin | DSi Firmware - Required in DSi mode  |              Varies              |
|   dsi_nand.bin   |   DSi NAND - Required in DSi mode    |              Varies              |

## Features

Frontend-level settings or features that melonDS DS respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✔         |
| States            | ✔[^1]     |
| Rewind            | ✔[^1]     |
| Netplay           | ✔[^2]     |
| Core Options      | ✔         |
| RetroAchievements | ✔         |
| RetroArch Cheats  | ✔         |
| Native Cheats     | ✔         |
| Controls          | ✔         |
| Remapping         | ✔         |
| Multi-Mouse       | ✕         |
| Rumble            | ✔         |
| Sensors           | ✔         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✔         |
| [Softpatching](../guides/softpatching.md) | ✔       |
| Disk Control      | ✕         |
| Username          | ✔         |
| Language          | ✔         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The melonDS DS core's library name is 'melonDS DS'

The melonDS DS core saves/loads to/from these directories.

#### Frontend's Save directory

|         File         |         Description         |
|:--------------------:|:---------------------------:|
|        *.srm         |   Cartridge battery save    |
|   dldi_sd_card.bin   |   Homebrew SD card image    |
| dldi_sd_card.bin.idx | Homebrew SD card file index |
|   dsi_sd_card.bin    |      DSi SD card image      |
| dsi_sd_card.bin.idx  |   DSi SD card file index    |
|     *.public.sav     |  DSiWare public save data   |
|    *.private.sav     |  DSiWare private save data  |
|     *.banner.sav     |   DSiWare icon save data    |

#### Frontend's System directory

|         File         |              Description               |
|:--------------------:|:--------------------------------------:|
| melonDS DS/tmd/*.tmd |         DSiWare title ID file          |
|   wfcsettings.bin    | DS Wi-Fi settings (built-in BIOS only) |

#### Frontend's State directory

|   File   | Description |
|:--------:|:-----------:|
| *.state# |    State    |

### Geometry and timing

- The melonDS DS core's core provided FPS is 59.898307800293 FPS.
- The melonDS DS core's core provided sample rate is 32768 Hz.
- The melonDS DS core's base width depends on the screen layout and configured renderer.
- The melonDS DS core's base height depends on the screen layout and configured renderer.
- The melonDS DS core's max width depends on the screen layout and configured renderer.
- The melonDS DS core's max height depends on the screen layout and configured renderer.
- The melonDS DS core's core-provided aspect ratio depends on the screen layout and configured renderer.

## Subsystems

melonDS DS uses subsystems to enable inserting GBA ROMs into the emulated Slot-2.
GBA save data (if any) must be loaded explicitly.
Subsystems are not used for DSi mode.

| Subsystem | Description                                                  |
|:---------:|--------------------------------------------------------------|
|    gba    | NDS ROM in Slot-1, GBA ROM in Slot-2 with optional save data |
| gbanosav  | NDS ROM in Slot-1, GBA ROM in Slot-2 with no GBA save data   |

!!! info "Not for playing GBA games."
    melonDS can load Game Boy Advance ROMs and save data for the purpose of Slot-2 connectivity,
    but it cannot actually play GBA games.
    Use a GBA core instead.

Additional BIOS images are not required.

## Wi-Fi

melonDS DS fully supports emulating Nintendo WFC services on all platforms.
You can choose from one of several preconfigured servers in the core options menu,
with [Kaeru WFC](https://kaeru.world/projects/wfc) being the default.

If there's another server you'd like to use, you can set its DNS address from within the emulated console's Wi-Fi settings menu.

!!! info "Not related to netplay!"
    Wi-fi emulation is not related to LAN-based netplay.

## LAN Netplay

melonDS DS supports emulating LAN multiplayer via netplay. See below for instructions and details.

### What is LAN Multiplayer?
The Nintendo DS has several forms of multiplayer,
including local Wi-Fi (also called LAN), Nintendo Wi-Fi Connection (WFC) and infrared.
You'll know when games use local Wi-Fi if the game mentions "Wi-Fi" and "players nearby",
while games using WFC mention "players around the world" and use friend codes.
The Nintendo DS local Wi-Fi does not use friend codes.
This page only explains local Wi-Fi multiplayer.

Now, the Nintendo DS local Wi-Fi isn't the normal Wi-Fi in your house,
it is a [mesh network that uses specialized hardware](https://melonds.kuribo64.net/comments.php?id=25).
This means that games expect extremely low latency,
which is achievable between two consoles directly connected with special hardware,
but harder to achieve with two computers with a router in-between,
and simply **impossible** to achieve through the Internet.
**LAN multiplayer does not work through the Internet and neither with VPNs or tunnels such as Hamachi**.
This is not something that can be fixed easily.
**The only way to use emulated LAN Multiplayer is on an actual, low latency, wired LAN connection**.

The latency requirements are so extreme that even in LAN, you might still have issues.
That is why using Wi-Fi in your LAN connection is not recommended,
Wi-Fi simply adds too much latency,
and the connection will drop frequently.
The recommended way to use the emulated Wi-Fi LAN connection is with a wired LAN connection between the computers.

### What is a MAC address?
Every Nintendo DS (and every device capable of Wi-Fi) comes with an identifier built-in in its firmware called a "MAC address".
For three or more Nintendo DS consoles to connect in a local Wi-Fi multiplayer network,
all three need to have different MAC addresses.
You can see the emulated console's MAC address in a game with Nintendo WFC
by going to "Nintendo WFC Settings", "Options", "System Information".

Some games will refuse to load save files
that were created on a console with a different MAC address
than the console loading the file.
That is why it is important to pay attention to your MAC address when sharing save files across devices.

So how does the emulated console obtain a MAC address?
It depends on the core option "MAC address mode", in the "Network" category:

* Set from firmware:
The default setting.
The emulator will use the firmware file's MAC address for the emulated console.
If there is no firmware file, then a default MAC address of "00-09-BF-11-22-33" will be used.
This setting will cause issues on LAN multiplayer with more than 2 players
if the same firmware (or the default firmware) is used on more than one device.

* Derive from libretro username:
The emulator will use your username as set on the libretro frontend to automatically generate a MAC address.
Such generated MAC addresses will start with "00-08-BF".
Devices with the same username set will always generate the same MAC address.
Useful when syncing save files across devices
to guarantee the emulated console's MAC address is the same on all devices.
This setting will cause issues on LAN multiplayer
if more than one player has the same username.
The username can be set on RetroArch by going to "Settings", "User", "Username".

### Starting a multiplayer session (RetroArch)
Before starting a multiplayer session,
it is recommended that all set a proper username in "Settings", "User", "Username", in RetroArch,
and set the MAC address mode to "Derive from libretro username".

In RetroArch, such a multiplayer session can be started through the "Netplay" menu either before starting a game or during a game.
One player should host and the others should use the "Refresh Netplay LAN List" option to join.
In game, you'd look for something mentioning local multiplayer and "players nearby".
In Pokémon games, this can be accessed on the top floor of Pokémon centers,
in Mario Kart DS, it is the "Multiplayer" option in the menu etc.
There are a ton of pages online saying that "Netplay is not network emulation".
For various reasons, these pages are wrong when it comes to melonDS DS.

Again, emulated LAN multiplayer only works if all players are on the same real local network.
This means the same house, apartment etc.
For better results, a wired connection is recommended.

## DSi

melonDS DS supports DSi mode, which allows you to play DSi-enhanced games and DSiWare.
**There is no need to prepare a NAND image externally;**
when selecting a DSiWare game from RetroArch,
it (and its previously-exported save data) will be
temporarily installed on the configured NAND image.
At the end of the session,
the save data will be exported to the frontend's save directory
and the DSiWare will be uninstalled.

## Screen Layouts

melonDS DS supports a variety of screen layouts, including sideways rotation;
you can configure a particular sequence of available layouts in the core options,
and cycle through them with the `Next Screen Layout` button.
Best used with per-game core option overrides.

## Controllers

The melonDS DS core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input. There's no reason to switch to this.
- **Nintendo DS** - Joypad - Stay on this.

Future device types may be added
to include peripherals that provided additional inputs.

### Device tables

#### Joypad

![](../image/controller/nds.png)

| User 1 input descriptors | RetroPad Inputs                             |
|--------------------------|---------------------------------------------|
| B                        | ![](../image/retropad/retro_b.png)          |
| Y                        | ![](../image/retropad/retro_y.png)          |
| Select                   | ![](../image/retropad/retro_select.png)     |
| Start                    | ![](../image/retropad/retro_start.png)      |
| Up                       | ![](../image/retropad/retro_dpad_up.png)    |
| Down                     | ![](../image/retropad/retro_dpad_down.png)  |
| Left                     | ![](../image/retropad/retro_dpad_left.png)  |
| Right                    | ![](../image/retropad/retro_dpad_right.png) |
| A                        | ![](../image/retropad/retro_a.png)          |
| X                        | ![](../image/retropad/retro_x.png)          |
| L                        | ![](../image/retropad/retro_l1.png)         |
| R                        | ![](../image/retropad/retro_r1.png)         |
| Microphone               | ![](../image/retropad/retro_l2.png)         |
| Next Screen Layout       | ![](../image/retropad/retro_r2.png)         |
| Move Virtual Cursor      | ![](../image/retropad/retro_right_stick.png) |
| Close Lid                | ![](../image/retropad/retro_l3.png)         |
| Touch Virtual Cursor     | ![](../image/retropad/retro_r3.png)         |

## Migrating from melonDS 2021

melonDS DS is intended to replace the [legacy melonDS core](melonds.md).
If you have existing data you'd like to migrate, follow these steps.

### Save Files

The save data format is unchanged between the legacy core and melonDS DS.
However, the method used to save game data internally has changed.

You'll need to do two things:

1. Go to the RetroArch save directory and rename the "melonDS" folder to "melonDS DS" (if it exists)
2. Rename the save files from `.sav` to `.srm`.

### Savestates

**Savestates taken in the legacy core cannot be migrated to melonDS DS.**
In the time since the last release of the legacy core,
the savestate format has changed upstream.
_Save your game normally before migrating your data to melonDS DS._

### Config Files

Rename the following directories to `melonDS DS`:

- `$RETROARCH_ROOT/config/melonDS` to `melonDS DS`.
- `$RETROARCH_ROOT/config/remaps/melonDS` to `melonDS DS`.
- Rename any files inside these directories named `melonDS.opt` to `melonDS DS.opt`.

### Cheats

Rename `$RETROARCH_ROOT/cheats/melonDS` to `melonDS DS`.
Cheat support is unchanged.

### System Files

melonDS DS will detect system files (BIOS, firmware, NAND) in the system directory,
so no action is required from you.
However, melonDS DS will prefer system files in the "melonDS DS" subdirectory.

## Compatibility

- [Upstream melonDS Forums Compatibility section](http://melonds.kuribo64.net/board/forum.php?id=3)

## External Links

- [Official melonDS Website](http://melonds.kuribo64.net/)
- [Official melonDS GitHub Repository](https://github.com/melonDS-emu/melonDS)
- [Libretro melonDS DS Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/melondsds_libretro.info)
- [Libretro melonDS DS Github Repository](https://github.com/JesseTG/melonds-ds)
- [Report Libretro melonDS DS Core Issues Here](https://github.com/JesseTG/melonds-ds/issues)

### See also

#### Nintendo - Nintendo DS + Decrypted + (Download Play)

- [Nintendo - DS (DeSmuME 2015)](desmume_2015.md)
- [Nintendo - DS (DeSmuME)](desmume.md)
- [Nintendo - DS (melonDS 2021)](melonds.md)

[^1]: Not available in DSi mode.
[^2]: LAN only. (No, VPNs won't work.)
