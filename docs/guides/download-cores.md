# Cores

Cores are essentially other programs and games that run through RetroArch. RetroArch requires cores to run any content.

!!! tip 
    Many game console may have multiple emulator cores, the question of which one is the best may come up. Emulators can be designed to be more accurate at the cost of a performance hit, check out the Emulation General Wiki for a good look at what will suit your needs and hardware.

## Installing cores through RetroArch interface

!!! tip
    If you do not see the "Core Updater" option, you may have installed RetroArch using a package manager. If so, see [Installing cores through package manager (Ubuntu PPA only)](#installing-cores-through-package-manager-ubuntu-ppa-only). Otherwise, to enable it:

    - Navigate to **Settings**
    - Navigate to **User Interface**
    - Navigate to **Views**
    - Enable **Show Core Updater**

![Core Updater](../image/retroarch/ozone/core_updater.gif)

- Navigate to **Online Updater**
- Navigate to **Select Core Updater**
- Select the core you want to download

!!! note
    If you're using the Ubuntu PPA version of RetroArch and have enabled "Show Core Updater" manually, your changes will not be reflected unless your the Cores directory setting is set to a writable location in the [Directory Cofiguration](change-directories.md#cores).

## Installing cores through package manager (Ubuntu PPA only)

!!! note
    Installing RetroArch through the Ubuntu PPA will disable the "Core Updater" option in RetroArch's interface, therefore core installation needs to happen through the Ubuntu package manager.

- Open a terminal
- Start typing **sudo apt-get install libretro-**
- Press tab a few times until all available possibilities show, press space to expand the list.
- Now type the full name of the core you want to install *Example: sudo apt-get install libretro-nestopia*
- Press enter and follow the process to install
