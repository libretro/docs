# Downloading and Installing RetroArch for PlayStation Vita

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/K8iP_L49QdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

==You need to have custom firmware(HENkaku) to run RetroArch on your PlayStation Vita. Hardware or software changes on your device may damage your device.== 

## Prerequisites

This is probably the most straightforward way to install RetroArch.

- HENkaku (latest version)[^1]
- VitaShell[^2]

## Downloading and Installing

We're gonna download two files to get the full experience. One of these files is the `.vpk` version of RetroArch and the other is the `bundle` package with assets.

### Downloading

You can download a stable RetroArch by clicking [here](http://buildbot.libretro.com/stable/1.9.0/playstation/vita/RetroArch.vpk). If you want to install the Nightly version, you can also use [this link](http://buildbot.libretro.com/nightly/playstation/vita/RetroArch.vpk).

From now on, there are two ways to download our assets. This option will affect your setup method. We're going use the **bundle** this time.

**RetroArch's data**

You can download `RetroArch's data` file from [this link](http://buildbot.libretro.com/stable/1.9.0/playstation/vita/RetroArch_data.7z) or [nightly](http://buildbot.libretro.com/nightly/playstation/vita/RetroArch_data.7z).

**Bundle**

You can download `bundle` file from [this link](http://buildbot.libretro.com/assets/frontend/bundle.zip).

### Installing

Both installation methods will give you the same result. Nightly files will give you the latest developments. This is sometimes dangerous and sometimes innovative. We will use the Stable version and recommend it.

#### Installing with RetroArch's Data

Connect your PS Vita with your PC via _VitaShell_. Just move `RetroArch` folder inside downloaded `data` archive to PS Vita `data` directory. Move your `RetroArch.vpk` to root of your sdcard. Disconnect PS Vita from your PC. Enter the `ux0:` directory, you will see a lot of files, scroll down to the bottom until you see `RetroArch.vpk`. Press your selection key, it can be _O_ or _X_. You may receive a warning asking for the reliability of the file you downloaded, if you downloaded this file from our channels, you can accept and continue.

#### Installing with Bundle

Connect your PS Vita with your PC via _VitaShell_. Move your `RetroArch.vpk` to root of your sdcard. Disconnect PS Vita from your PC. Enter the `ux0:`directory, you will see a lot of files, scroll down to the bottom until you see `RetroArch.vpk`. Press your selection key, it can be _O_ or _X_. You may receive a warning asking for the reliability of the file you downloaded, if you downloaded this file from our channels, you can accept and continue.

Once the installation is complete, run the **RetroArch** once and you will see that Fonts and Images are missing. Close `RetroArch` and connect PS Vita to PC with `VitaShell`. Once you have made the connection, move the files of the downloaded `Bundle` archive to` data/retroarch/`. After successful file transfers, close the application and run RetroArch again.

[^1]: https://github.com/henkaku
[^2]: https://github.com/TheOfficialFloW/VitaShell
