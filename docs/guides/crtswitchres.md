# CRTSwitchRes

[Switchres](https://github.com/antonioginer/switchres) is a modeline generation engine for emulation.

Its purpose is on-the-fly creation of fully customized video modes that accurately reproduce those of the emulated systems. Based on a monitor profile, it will provide the best video mode for a given width, height, and refresh rate.

The usual motivation is to connect a CRT display and have it driven in the original resolution (at least vertically), which is otherwise too low for modern display systems. The connection is typically from a digital connector (such as HDMI) on the computer side and needs an external converter for the CRT.

## Setup

### Windows 

AMD video card is needed. Windows works the best with CRT Emudriver, available [here](http://geedorah.com/eiusdemmodi/forum/viewtopic.php?id=295). Once you have this setup and running, it is a simple case of turning CRTSwitchRes on and choosing your settings.

Other options are available. It's a simple case of getting the resolutions installed on you Windows PC.

### Linux

Switchres can work in the following environments:
- X11
- KMS mode
- Raspberry Pi with legacy graphics drivers

!!! note
    In some cases your distribution may be missing some X libraries in this case make sure you install the 
    following `libx11-dev libxrandr-dev`

!!! note
    The composite output of RPi has fixed resolution and is unsuitable for custom modelines.

## Enabling and Changing Settings

CRTSwitchRes now using Switchres by Calamity. This is available on both Windows and Linux.

To enable CRTSwitchRes or change settings
- Navigate to **Settings**
- Navigate to **Video**
- Navigate to **CRT SwitchRes**

!!! tip
    CRTSwitchRes is hidden behind advanced settings. Please enable advanced settings in User Interface first.

## CRTSwitchRes Options

| Option                  | Available Values                                |
| ----------------------- |:-----------------------------------------------:|
| CRT SwitchRes           | off, 15KHz, 31KHZ Standard, 31KHZ- 120Hz, INI   |
| CRT Super resolution    | Native, Dynamic, 1920, 2560, 3840               |
| X Centering             | Currently not in use                            |
| Porch Adjust            | Currently not in use                            |
| Use Custom refresh rate | Currently not in use                            |

## Option 1. CRT SwitchRes

This option is where you will turn on SwitchRes and choose your main output hardware. 

| CRT SwitchRes Value     | Description                                                                              |
| ----------------------- |:----------------------------------------------------------------------------------------:|
| off                     | This setting turns SwitchRes off                                                         |
| 15KHz                   | This will request SR to be setup for 15KHz monitors/TVs output                           |
| 31KHz                   | This will request SR to be setup to output for 31KHz monitors/TVs output                 |
| 31KHz, 120z             | This will request SR to be setup to output for 31KHz @120HZ monitors/TVs output for 240p |
| INI                     | This will request SR to look at the switchres.ini for the monitors/TVs output            |

!!! tip
    This can not be changed on-the-fly once SwitchRes is active. This setting will take effect after a restart.

## Option 2. CRT Super Resolution

| CRT Super resolution values | Description                                            |
| --------------------------- |:------------------------------------------------------:|
| Native                      | This will pass the cores native resolution to SR       |
| Dynamic                     | Currently not in use                                   |
| 1920                        | This will pass a hard set super width of 1920 to SR    |
| 2560                        | This will pass a hard set super width of 2560 to SR    |
| 3840                        | This will pass a hard set super width of 3840 to SR    |

!!! note
    All resolution are integer scaled and aspect ratio corrected to match the original resolution. Unless you really need a locked super width only choose native and let SR do all the work. Even if your monitor does not support native resolutions, the best option to choose will be Native. For Windows, SwitchRes will look for compatible modes with and without super widths. For Linux, you can add the switchres.ini **(see Advanced Settings below)** into you RetroArch folder. Edit this file and change the dotclock_min form 0 to 25.0. This will then calculate dynamic super widths for cards that do not support low dotclocks (native widths produce low dotclocks).

## Advanced Settings

As CRTSwitchRes is now using Switchres by Calamity, there are many options to customise you environment within the switchres.ini. However, some options are available with the CRTSwitchRes settings menu in RetroArch. Although more settings can be set in the switchres.ini, it is not a required step. It does however allow for more customisation. For more details on how to configure and use the switchres.ini, [go here](https://gitlab.com/groovyarcade/support/-/wikis/3-Post-Installation-and-Maintenance/3.9-Configure-System-Wide-Switchres).

Currently, the switchres.ini is not supplied with RetoArch. This will change in the near future. In the meantime you can download this file from [here](https://raw.githubusercontent.com/antonioginer/switchres/master/switchres.ini).

!!! Note
    A default switchres.ini file will be searched in the current working directory, then in .\ini on Windows, ./ini then /etc on Linux. The repo has a switchres.ini example.

## CRTSwitchRes Options Via retroarch.cfg

| Config Option Name                              | Description                                            | Values                           | 
| ----------------------------------------------- |:------------------------------------------------------:|:--------------------------------:|
| crt_switch_center_adjust                        | Currently not in use                                   |                                  |
| crt_switch_porch_adjust                         | Currently not in use                                   |                                  |
| crt_switch_resolution                           | Same as above **CRT SwitchRes**                        | 0,1,2,3,4 - off, 15kHz, 31kHz Standard, 31kHz- 120Hz, INI respectively |
| crt_switch_resolution_super                     | Same as above **CRT Super Resolution**                 | Native, Dynamic, 1920, 2560, 3840|
| crt_switch_resolution_use_custom_refresh_rate   | Not currently in use                                   | false                            |
| crt_switch_timings                              | Do not change                                          |                                  |
| crt_video_refresh_rate                          | Do not change                                          | Set by SwitchRes                 |

## Core and directory overrides

If you are using a `switchres.ini` configuration file and wish to fine-tune specific setting for certain cores or directories, it is possible to use core and directory overrides for this. These files can be placed at the same locations as the usual `.cfg` files for RetroArch's core and directory overrides, only replacing the `.cfg` with `.switchres.ini`.

For example, if you are using native resolution on your configuration but want to user a 2560 super resolution on the Gambatte core, you can create the file `CONFIG_DIR/config/Gambatte/Gambatte.switchres.ini` with the content `user_mode    2560x0` in it. This setting will override the one on the original switchres.ini file when running this specific core. When closing this core, or switching to a different core, the default `switchres.ini` file will be re-loaded to undo the change.

The same works for directory overrides.
Example: If you want to use a super resolution of 2560 for roms in the "Sega - Game Gear" directory, while using the Genesis Plus GX core, you can create an override.
Create the file `CONFIG_DIR/config/Genesis Plus GX/Sega - Game Gear.switchres.ini` and add the user mode to that file.

!!! note
    You have to be using a full, complete `switchres.ini` base file for the overriding files to work properly, otherwise overriding settings will persist until you restart RetroArch.
