# Downloading, Installing and Updating RetroArch

## Nintendo Switch

!!! Note
	You need to have Atmosphère custom firmware to run RetroArch on your Switch.

!!! Warning
    Hardware or software changes on your device may damage your device.

### Downloading and installing

There are multiple ways of downloading RetroArch for your Switch.

#### Using the stable bundle (recommended)

You can find a bundle with RetroArch, all the cores and all the assets [here](https://buildbot.libretro.com/stable/) - pick the latest version, go to `nintendo/switch/libnx` and download `RetroArch.7z`.

Just extract the archive to the root of your SD card to install or update your copy of RetroArch (overwrite any existing file).

#### Using the nightlies and/or the online updater (advanced users)

If you don't want to download all cores at once, you can go [here](https://buildbot.libretro.com/nightly/nintendo/switch/libnx/latest/) and only pick the ones you want. Put the downloaded NROs in `retroarch/cores` on your SD card. You can run them directly using the homebrew menu.

Alternatively, you can download only one core and use the Online Updater inside of RetroArch to download or update additional cores later.

### Running RetroArch using title takeover

The preferred way of running RetroArch is to use Atmosphère's title takeover feature. This allows you to (temporarily) replace a game with the homebrew loader, which will then be used to load RetroArch. Make sure to use the latest version of Atmosphère before continuing.

**Note:** You need at least one title on the console (whether it's a digitally puchased game or a demo or a cartridge game or even an homebrew NSP). If you can pick an up to date game that's better as you won't be nagged everytime you run it.

Atmosphère now contains everything needed to run homebrews out of the box. To do so, simply run any game while holding the R key. Make sure to hold the key until you can actually see the homebrew menu. Select RetroArch in the list to start!

If you wish to change the key, you can edit `/atmosphere/loader.ini` and change `override_key` here. You can add a `!` in front of the key to flip the condition ("run homebrew if the key is pressed" versus "run homebrew if the key isn't pressed").

### Video Tutorial

[![Quick Video Demonstration](http://img.youtube.com/vi/8onZ4H8h3iE/0.jpg)](http://www.youtube.com/watch?v=8onZ4H8h3iE)