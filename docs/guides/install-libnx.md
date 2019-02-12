# Downloading, Installing and Updating RetroArch

## Nintendo Switch

**Note:** you currently need the Atmosphère custom firmware to run RetroArch on your Switch.

### Downloading and installing

There are multiple ways of downloading RetroArch for your Switch.

#### Using the stable bundle (recommended)

You can find a bundle with RetroArch, all the cores and all the assets [here](https://buildbot.libretro.com/stable/) - pick the latest version, go to `nintendo/switch/libnx` and download `RetroArch.7z`.

Just extract the archive to the root of your SD card to install or update your copy of RetroArch (overwrite any existing file).

#### Using the nightlies and/or the online updater (advanced users)

If you don't want to download all cores at once, you can go [here](https://buildbot.libretro.com/nightly/nintendo/switch/libnx/latest/) and only pick the ones you want. Put the downloaded NROs in `retroarch/cores` on your SD card. You can run them directly using the homebrew menu.

Alternatively, you can download only one core and use the Online Updater inside of RetroArch to download or update additional cores later.

### Running RetroArch using title takeover

The preferred way of running RetroArch is to use Atmosphère's title takeover feature. This allows you to (temporarly) replace a game with the homebrew loader, which will then be used to load RetroArch.

**Note:** You need at least one title on the console (whether it's a digitally puchased game or a demo or a cartridge game or even an homebrew NSP). If you can pick an up to date game that's better as you won't be nagged everytime you run it.

This guide will not cover the custom firmware part and assume that you are able to boot a fully functionnal copy of Atmosphère.

**TL;DR:** update hbmenu and hbloader, then in `atmosphere/loader.ini` set `tid` and `override_key` to any game and key - this will tell the system to run homebrew instead of this game when launching it while pressing the key.

#### 1. Install (or update) hbloader and hbmenu

1. Download the latest release of the homebrew menu from [here](https://github.com/switchbrew/nx-hbmenu/releases) and copy `hbmenu.nro` to the root of your SD card
2. Download the latest release of the homebrew loader from [here](https://github.com/switchbrew/nx-hbloader/releases) and copy `hbl.nsp` to the `atmosphere` folder on your SD card

#### 2. Prepare Atmosphère

1. Go to [this webpage](https://switchbrew.org/wiki/Title_list/Games) and copy the title ID of the game you want to override.
2. Edit the `atmosphere/loader.ini` file on your SD card
3. Set the `hlb_tid` value to the title ID of your target game (for example `hbl_tid=0100000000010000` for Super Mario Odyssey)
4. Set the `override_key` value to `R` like so: `override_key=R`
    * Note: you can use any key here instead of R
    * Note: you can add `!` in front of the key name to invert the condition ("the key must be pressed to override" vs "the key must not be pressed to override")
5. Save the file, eject your SD card

You can now run homebrew by launching your chosen game while pressing the `override_key` key (R by default). Make sure to hold the key until you can actually see the homebrew menu. Select RetroArch in the list to start!