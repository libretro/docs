# CRTSwitchRes

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

This option is where you will turn on Switchres and choose you main ouput hardware. 

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
| 1920                        | This will pass thea hard set super width of 1920 to SR |
| 2560                        | This will pass thea hard set super width of 2560 to SR |
| 3840                        | This will pass thea hard set super width of 3840 to SR |

!!! note
    All resolution are integer scaled and aspect ratio correct to match the original resiolution
    Unless you realy need a locked super width only choose native and let SR do all the work.

## Adnavced Settings

As CRTSwitchRes is now using Switchres by Calamity. There are many options to customise you enviroment within the switchres.ini. 
However, some options are available with the CRTSwicthres settings menu in RetroArch. Although more setting can been set in the
switchres.ini it is not a required. It does however allow for more customisation. For more details on how to configure and use the 
[swicthre.ini go here](https://gitlab.com/groovyarcade/support/-/wikis/3-Post-Installation-and-Maintenance/3.9-Configure-System-Wide-Switchres)

## CRTSwitchRes Options Via retroarch.cfg

| Config Option Name                              | Desctriotion                                           | Values                           | 
| ----------------------------------------------- |:------------------------------------------------------:|:--------------------------------:|
| crt_switch_center_adjust                        | Not currently in use                                   |                                  |
| crt_switch_porch_adjust                         | Not currently in use                                   |                                  |
| crt_switch_resolution                           | Same as above **CRT SwithRes**                         | 0,1,2,3,4 - off, 15KHz, 31KHZ Standard, 31KHZ- 120Hz, INI  respectivly |
| crt_switch_resolution_super                     | Same as above **CRT Super Resolution**                 | Native, Dynamic, 1920, 2560,3840 |
| crt_switch_resolution_use_custom_refresh_rate   | Not currently in use                                   | false                            |
| crt_switch_timings                              | Do not Chnage                                          |                                  |
| crt_video_refresh_rate                          | Do not change                                          | Set by Switchres                 |
