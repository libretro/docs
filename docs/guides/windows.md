# Getting Started with RetroArch

## Starting RetroArch

On the first run you will be greeted by this screen:

![Screenshot](/image/retroarch/xmb/first_run.png)

From here you can launch content, change settings and build up your content collection.

## Keyboard Controls

The RetroArch user interface is designed with gamepad navigation in mind but it also features robust keyboard and mouse support. Learn more about keyboard input at [RetroArch Keyboard Controls](https://buildbot.libretro.com/.docs/guides/retroarch-keyboard-controls/).
      
## Gamepad Controls

XINPUT controllers should work out of the box. If the controller can be autoconfigured the OSD will inform you of the autoconfiguration event. We also include autoconf profiles for many popular controllers. If your controller doesn't auto configure you can follow this procedure:

![Screenshot](/image/retroarch/xmb/autoconf.gif)

- Navigate to **Settings**
- Navigate to **Input**
- Navigate to **Input User 1 Binds**
- Select **User 1 Bind All**
- Press the buttons as required

!!! tip
    If you have several different controller types you may want to use the **User 1 Save Autoconfig** followed by **User 1 Bind Default All** options after binding in order to achieve hotplug functionality

### Directory Configuration

Configuring directories is an important aspect to get the best RetroArch experience possible.
To configure the directories follow these steps:

- Navigate to **Settings**
- Navigate to **Directories**
- Select the directory you want to changed
- Navigate to the desired location

You should always configure the following paths:

- System Directory for *system files*
- Savefile Directory for *save files*
- Savestate Directory *save state files*
- Browser Directory for *your content*

!!! tip
    The **Browser Directory** is used as a startup location which allows easy access to your content library.

### Installing Cores

RetroArch requires cores to run any content. You can download cores directly from RetroArch's interface by following this procedure:

![Screenshot](/image/retroarch/xmb/core_updater.gif)

- Navigate to **Online Updater**
- Navigate to **Select Core Updater**
- Select the core you want to download

### Running Content

After you have installed one or more cores you can run your content following this procedure:

- Navigate to **Load Content**
- Browse to the folder that contains the content you want to run
- Select the content that you want to run
- If you have more than one compatible core you will be asked to select the core you want to use for that purpose

![Screenshot](/image/retroarch/xmb/run_content.gif)

!!! tip
    By default loading content will trigger a content scan. If your content matches with any of our databases it will be added to a playlist for easy access. You can find the playlists by navigating to the right of the main menu.

!!! tip
    Every content you launch is added to a history playlist that you can use to load it again quickly at any time

## Glossary

#### frontend
A frontend is a program designed to run libretro cores such as Kodi's RetroPlayer, RetroArch, Phoenix, Minir

#### core
A core is a program that has been ported to the libretro API and runs inside a libretro frontend

#### content
Content can be a game, an image, a video, an audio file that is executed by a core. In most cases contents are the ROMs of an emulated platform

#### retropad
RetroPad is libretro’s input abstraction controller, it’s the interface between the physical controller and the core inputs

#### save files
Save files are saves that are made from within a game, usually cross platform and should work across emulators in most cases

#### save states
Save states are snapshots of the content menory at a particular moment, these are not always cross platform and most certainly won’t work on a different emulator that the one used to create them

#### system files
Additional files that might or not be part of the romset that might be needed to get some content to work (usually referred to by the BIOS term)

#### autoconf
A configuration file that has button definitions for a particular gamepad

