
![](/image/branding/netplay-logo.gif)

## Setup Multiple Controllers on One (1) Computer

###Request Device

**Request Device** is an advance network option used for netplay. **Request Device** allows the computer to request device(s) / controller(s) to control. This allows the capablitiy to allow two (2) computers with four (4) players. To allow this option to be visible RetroArch must have **Show Advanced Settings** set to _ON_.

###Turning on Show Advance Settings
- Navigate to **Settings**
- Navigate to **User Interface**
- Toggle **Show Advanced Settings** to _ON_

Once **Show Advanced Settings** is on proceed to the **Network** configurations in the **Settings** menu (**Netplay** menu also has a path to **Network** configurations). Scroll down through **Network** Configuration and advance configuration options are now visible. **Request Device #** _(where # is any number from 1 to 16)_ option will allow the computer to control two (2) or more controllers.

##Setup Guide

The example that will be used is creating four (4) player Super Bomberman on SNES where the Host will be controlling players one (1) and three (3) and client will be controlling players two (2) and four (4).

### Host
#### Input Devices
- Connect two (2) controllers
- Start SNES Super Bomberman 2 game
- Set **Inputs** for each controller 1 and 2:
    - Navigate to **Settings**
    - Navigate to **Inputs**
    - Navigate to **Port 1 Binds**
    - Ensure **Device Index** is set to *_Controller Name 1_
    - Back to **Inputs** configuration menu
    - Navigate to **Port 2 Binds**
    - Ensure **Device Index** is set to *_Controller Name 2_
    - Set **Device Type** to _MultiTap_
        - _MultiTap_ is only available when SNES core is loaded. This plugs in a virtual SNES MultiTap into the SNES so more than two (2) controllers can connect to the SNES.

    \* Controller Name 1 and 2 is unique to the computer and controllers connected to it (ie. PS4 controller shows as "Wireless Controller \#1")
#### Network Request Device
Set Host computer's RetroArch Netplay to request control of the running core's devices/controllers

- Navigate to **Settings** -or- **Netplay**
- Navigate to **Network**
- Set to **Request Device 1** to _YES_
- Set to **Request Device 3** to _YES_
- Ensure all other **Request Device #** are set to _NO_

Host is now able to start a netplay game controlling controllers 1 and 3. See [Getting Started Guide](netplay-getting-started) for more details.

![Screenshot](/image/retroarch/netplay/netplay_multiple_controllers_host.png)

###Client
#### Input Devices
- Connect two (2) controllers
- Start SNES Super Bomberman 2 game
- Set **Inputs** for each controller 1 and 2:
    - Navigate to **Settings**
    - Navigate to **Inputs**
    - Navigate to **Port 1 Binds**
    - Ensure **Device Index** is set to *_Controller Name 1_
    - Back to **Inputs** configuration menu
    - Navigate to **Port 2 Binds**
    - Ensure **Device Index** is set to *_Controller Name 2_

    \* Controller Name 1 and 2 is unique to the computer and controllers connected to it (ie. PS4 controller shows as "Wireless Controller \#1")

#### Network Request Device
Set Client computer's RetroArch Netplay to request control of the running core's devices/controllers

- Navigate to **Settings** -or- **Netplay**
- Navigate to **Network**
- Set to **Request Device 2** to _YES_
- Set to **Request Device 3** to _YES_
- Ensure all other **Request Device #** are set to _NO_

Client is now able to join the host in a netplay game controlling controllers 2 and 4. See [Getting Started Guide](netplay-getting-started) for more details.

![Screenshot](/image/retroarch/netplay/netplay_multiple_controllers_client.png)
