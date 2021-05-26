# CRTSwitchRes

## Setup

### Windows 

Windows required CRTEmuDriver available [here](https://geedorah.com/eiusdemmodi/forum/viewtopic.php?id=295). Once you have this setup and running, it is a simple case of turning SRTSwitchRes on and choosing your settings.

### Linux

No pre setup required here. Although X11 is a requirment at the momnet. Simply install/compile RetroArch choose you CRTSwitchRes setting and your off.

This is also compatibale with Raspberry Pi, X11 is not a reauiment here.

## Enabling and Changing Settings

CRTSwitchRes now using Switchres by Calamity. This is available on both Windows and Linux.

To enable CRTSwitchRes or change settings
- Navigate to **Settings**
- Navigate to **Video**
- Navigate to **CRT Swicthres**

!!! tip
    CRTSwitchRes is hidden behind advanced settings. Please enable advenced settings in User Interface first.

## CRTSwitchRes Options

| Option                  | Available Values                                |
| ----------------------- |:-----------------------------------------------:|
| CRT Swicthres           | off, 15KHz, 31KHZ Standard, 31KHZ- 120Hz, INI   |
| CRT Super resolution    | Native, Dynamic, 1920, 2560, 3840               |
| X Centering             | Currently not in use                            |
| Porch Adjust            | Currently not in use                            |
| Use Custom refresh rate | Currently not in use                            |

## Option 1. CRT SwithRes

This option is where you will turn on Switchres and choose your main ouput hardware. 

| CRT SwithRes Value      | Description                                                                              |
| ----------------------- |:----------------------------------------------------------------------------------------:|
| off                     | This setting turns Swicthres off                                                         |
| 15KHz                   | This will request SR to be setup for 15KHz monitors/TVs output                           |
| 31KHz                   | This will request SR to be setup to output for 31KHz monitors/TVs output                 |
| 31KHz, 120z             | This will request SR to be setup to output for 31KHz @120HZ monitors/TVs output for 240p |
| INI                     | Thsi will request SR to look at the switchres.ini for the monitors/TVs output            |

!!! tip
    This can not be changed on-the-fly once Switchres is active. A restart is required for this setting to take effect.

## Option 2. CRT Super Resolution

| CRT Super resolution values | Desctriotion                                           |
| --------------------------- |:------------------------------------------------------:|
| Native                      | This will pass the cores native resolution to SR       |
| Dynamic                     | Currently not in use                                   |
| 1920                        | This will pass a hard set super width of 1920 to SR    |
| 2560                        | This will pass a hard set super width of 2560 to SR    |
| 3840                        | This will pass a hard set super width of 3840 to SR    |

!!! note
    All resolution are integer scaled and aspect ratio corrected to match the original resolution. Unless you realy need a locked super width only choose native and let SR do all the work. Even if you monitor does not support native reoluitons the best optopn to choose will be Native. For windows Swicthres will look for compatibale modes with an dwithout super widths. Fo Linux you can add the swithres.ini **(see Adnavced Settings below)** into you retroarch folder. Edit this file and change the dotclock_min form 0 to 25.0. This will then calculate dynamic super widths for cards that do not support low dotclocks (native width produce low dotclocks).

## Adnavced Settings

As CRTSwitchRes is now using Switchres by Calamity. There are many options to customise you enviroment within the switchres.ini. However, some options are available with the CRTSwicthres settings menu in RetroArch. Although more setting can been set in theswitchres.ini it is not a required. It does however allow for more customisation. For more details on how to configure and use the [swicthre.ini go here](https://gitlab.com/groovyarcade/support/-/wikis/3-Post-Installation-and-Maintenance/3.9-Configure-System-Wide-Switchres).

Currently, the switchres.ini is not supplied with RetoArch. This will change in the near future. In the meantime you can downlaod this file from [here](https://raw.githubusercontent.com/antonioginer/switchres/master/switchres.ini).

## CRTSwitchRes Options Via retroarch.cfg

| Config Option Name                              | Desctriotion                                           | Values                           | 
| ----------------------------------------------- |:------------------------------------------------------:|:--------------------------------:|
| crt_switch_center_adjust                        | Currently not in use                                   |                                  |
| crt_switch_porch_adjust                         | Currently not in use                                   |                                  |
| crt_switch_resolution                           | Same as above **CRT SwithRes**                         | 0,1,2,3,4 - off, 15KHz, 31KHZ Standard, 31KHZ- 120Hz, INI  respectivly |
| crt_switch_resolution_super                     | Same as above **CRT Super Resolution**                 | Native, Dynamic, 1920, 2560,3840 |
| crt_switch_resolution_use_custom_refresh_rate   | Not currently in use                                   | false                            |
| crt_switch_timings                              | Do not Chnage                                          |                                  |
| crt_video_refresh_rate                          | Do not change                                          | Set by Switchres                 |
