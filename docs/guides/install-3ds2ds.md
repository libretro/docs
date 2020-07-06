# Downloading, Installing and Updating RetroArch for both 3DS and 2DS Family

## Prerequisites

- **CFW** You must have custom firmware to run RetroArch on your 3DS or 2DS.
- **Installer** You can either use `FBI installer` or `Rosalina Menu` from `Luma`.

!!! Warning
    Hardware or software changes on your device may damage your device.

### Downloading and installing

There are multiple ways of downloading RetroArch for your 3DS or 2DS.

#### Installation

You can either choose `Nightlies` or `Stable` bundle, you can find a bundle with RetroArch, all the cores and all the assets [here](https://buildbot.libretro.com/stable/) - pick the latest version, go to `nintendo/3ds` and download `RetroArch_3dsx.7z` or `RetroArch_cia.7z`.

For Nightlies [here](http://buildbot.libretro.com/nightly/nintendo/3ds/) - pick the latest version(based on date), and download `...RetroArch_3dsx.7z` or `...RetroArch_cia.7z`.

Just extract `RetroArch` folder to the root of your SD card `RetroArch.cia` anywhere else, to install cores use `FBI installer`. Go to the `RetroArch`folder and open the `Cores` folder. Select and install the Cores you want to use. For example; install `pcsx_rearmed_libretro.cia` for Playstation 1 Roms.

#### Reduce Core and Content loading times

By default, all Cores are installed in the directory `/RetroArch/Cores`.  With this configuration,  RetroArch Cores on 3DS take nearly 30 seconds to start, as each Core in `/RetroArch/Cores` must be initialized - including Cores which may not be needed.  The same delay is experienced when loading Content (games) as well; roughly 30 seconds to finish loading.  Slow MicroSD random access/transfer speeds on the 3DS may be a likely cause.

To reduce loading time for Cores and Content to under 5 seconds each, complete the following steps:

- **Determine Cores to be used**.  These Cores will remain in the `/RetroArch/Cores` directory.
- **Create directory for unused cores**. A directory name such as `/RetroArch/Cores-Notused` could be created for unused Cores.
- **Move the unused Cores**. Finally, move unused Cores from `/RetroArch/Cores` to `/RetroArch/Cores-Notused`

After moving unused Cores as outlined above, RetroArch Cores should start in about 5 seconds.  Content should load in about 5 seconds as well.  

As additional Cores are needed, simply move them from `/RetroArch/Cores-Notused` to `/RetroArch/Cores`.  This ensures only the required Cores are initialized by RetroArch, minimizing start times for Cores and Content.

#### Additional Notes for MAME Cores

MAME Content numbers in the thousands of items for MAME Cores.  To help reduce loading time for MAME Content, consider creating two directories for MAME Content.  This ensures frequently loaded Content is able to start faster.

- **A directory for favorite MAME Content**, containing Content which will be loaded often.
- **A directory for all remaining MAME Content**, containing Content which would be loaded infrequently.

This approach will work fine as long as the MAME Content romset is a **Full Non-Merged romset**.  If the romset is **not Full Non-Merged**, then all MAME content will need to remain in the same directory.

**Full Non-Merged romsets are the simplest romset format to get started with because each romset zip contains all necessary files for one game.**  For more information, please refer to [Getting started with arcade emulation](arcade-getting-started.md).

#### Control Configuration for MAME Cores

Much of the Content loaded by the RetroArch MAME Cores uses a `Vertical display perspective` for the top 3DS screen, requiring the user to rotate the 3DS counter-clockwise in order to properly see the game content and access the game controls.  When using Content in this configuration, the default controls won't be suitable (as the controls are typically configured for `Horizontal display perspective`).

One approach to address the issue is to configure `Global Options` for controls, which would apply to the majority of games (such as `Vertical display perspective`).  For games which have a different layout (`Horizontal display perspective`), the MAME menu may be used to configure a game controller configuration for that specific Content.  

A simple configuration example follows, in case the majority of Content uses a Vertical configuration.  Load `RetroArch`, then:

- **Bind a Menu hotkey** From `Main Menu` navigate to `Settings->Input->Hotkeys`.  Scroll down to `Menu Toggle Gamepad Combo` or `Menu (Toggle)` and configure as desired, to display the `Menu` within Content.
- **Configure Global Control for Vertical Content** From Main Menu navigate to `Settings->Input->Port 1 Controls`.  Configure as desired.  
- **Configure In-Game Control for a piece of Horizontal Content** Load the content, then press the defined `Hotkey` to display the `Quick Menu`. Scroll down and select `Options`, then scroll down to select `Display MAME menu`; change to `ON`, then resume content.  On the `MAME menu` select `Input (this game)` and adjust the settings as desired. Finally, use the previous steps to set `Display MAME menu` back to `OFF`.  Controls are now set properly for the game.

Following the above ensures all Content may use the proper control configuration.

### Video Tutorial

[![Quick Video Demonstration](http://img.youtube.com/vi/4TnjFE9t1a4/0.jpg)](http://www.youtube.com/watch?v=4TnjFE9t1a4)