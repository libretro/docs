# Downloading and Installing RetroArch for PlayStation Portable

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/VXY7HjvMfnU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

==You currently need to have a custom firmware called PRO-C to run RetroArch on your PlayStation Portable. Hardware or software changes on your device may damage your device. PRO-C must be running before running RetroArch, if you run RetroArch before running PRO-C, the device will say the executable is corrupted..==

## Prerequisites

- Pro CFW(latest version)[^1]

## Downloading, Installing and Updating

### Downloading

You can download a bundle with the **Stable** version of RetroArch, all the supported cores and all the assets by clicking [here](http://buildbot.libretro.com/stable/{{ unit.stable }}/playstation/psp/RetroArch.7z). You can download the **Nightly** version of RetroArch with all the same extras by clicking [here](https://buildbot.libretro.com/nightly/playstation/psp/RetroArch.7z).

!!! info
	Nightly builds will give you the latest development changes. This is sometimes unstable! We will use the Stable version for this guide.

### Installing

Installation is also very simple. Just create a `RetroArch` folder under `PSP/Game` directory on your Memory Stick and transfer the archive files to the `PSP/Game/RetroArch` folder, then go to `Memory Stick™` under **Game** press **X**, and then select RetroArch. Press **X** again to open.

!!! note
  The PSP Go uses a Memory Stick Micro (M2) card slot instead of the full-size Memory Stick slot in addition to it's built-in internal storage (`ef0:`). You can install RetroArch to either storage location. An M2 card appears as `ms0:` like a regular PSPs memory stick, and the internal storage as `ef0:`. RetroArch stores its user data (config, saves, save states, system files) on the same drive it is installed to. Installing to internal storage keeps everything on `ef0:` without needing an M2 card.

!!! warning
  User data and libretro cores live on the drive RetroArch is installed to (`ms0:` or `ef0:`). RetroArch does not migrate data when you move it. If you relocate RetroArch to another drive you must copy your `PSP/RetroArch` and the `PSP/GAME/retroarch/cores` folder to the new drive and resolve any config conflicts yourself. Otherwise RetroArch will start with a fresh configuration.

### Updating

Download the latest version and extract it into 'PSP/Game/RetroArch' on the Memory Stick. Accept when prompted to overwrite.

[^1]: https://code.google.com/archive/p/procfw/downloads
