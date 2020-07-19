
![](../image/branding/netplay-logo.gif)

## Setup Multiple Controllers on One (1) Computer

###Request Device

**Request Device** is an advance network option used for NetPlay. **Request Device** allows the computer to request device(s)/controller(s) to control. This allows the capablitiy to allow two (2) computers with four (4) players. To make this option visible, RetroArch must have **Show Advanced Settings** set to _ON_.

###Turning on **Show Advanced Settings**:
- Navigate to **Settings**
- Navigate to **User Interface**
- Toggle **Show Advanced Settings** to _ON_

Once **Show Advanced Settings** is on, proceed to the **Network** configurations in the **Settings** menu (**NetPlay** menu also has a path to **Network** configurations). Scroll down through **Network** configuration, and the advance configuration options are now visible. **Request Device #** _(where # is any number from 1 to 16)_ options will allow the computer to control two (2) or more controllers.

##Setup Guide

The following example of Super Bomberman 2 on the SNES will be used to demonstrate four (4) players using two (2) computers. The host will be controlling players one (1) and three (3), and the client will be controlling players two (2) and four (4). 

### Host
#### Input Devices

Set up **Input Devices** while the game is loaded:

- Connect two (2) controllers
- Start SNES Super Bomberman 2 game
- Set **Inputs** for each controller 1 and 2:
    - Navigate to **Settings**
    - Navigate to **Inputs**
    - Navigate to **Port 1 Binds**
    - Ensure **Device Index** is set to *_Controller Name 1_
    - Return to **Inputs** configuration menu
    - Navigate to **Port 2 Binds**
    - Ensure **Device Index** is set to *_Controller Name 2_
    - Set **Device Type** to _MultiTap_
        - _MultiTap_ is only available when SNES core is loaded. This plugs in a virtual SNES MultiTap into the SNES so more than two (2) controllers can connect to the SNES.

    \* Controller Name 1 and 2 are unique to the computer and to the controllers connected to it (e.g. PS4 controller shows as "Wireless Controller \#1")

#### Network Request Device

Set host computer's RetroArch NetPlay to request control of the running core's devices/controllers:

- Navigate to **Settings** -or- **NetPlay**
- Navigate to **Network**
- Set **Request Device 1** to _YES_
- Set **Request Device 3** to _YES_
- Ensure all other **Request Device #** are set to _NO_

Host is now able to start a NetPlay game controlling controllers one (1) and three (3). See [Getting Started Guide](netplay-getting-started) for more details.

![Screenshot](../image/retroarch/netplay/netplay_multiple_controllers_host.png)

###Client
#### Input Devices

Set up **Input Devices** while the game is loaded:

- Connect two (2) controllers
- Start SNES Super Bomberman 2 game
- Set **Inputs** for each controller 1 and 2:
    - Navigate to **Settings**
    - Navigate to **Inputs**
    - Navigate to **Port 1 Binds**
    - Ensure **Device Index** is set to *_Controller Name 1_
    - Return to **Inputs** configuration menu
    - Navigate to **Port 2 Binds**
    - Ensure **Device Index** is set to *_Controller Name 2_

    \* Controller Name 1 and 2 are unique to the computer and to the controllers connected to it (e.g. PS4 controller shows as "Wireless Controller \#1")

#### Network Request Device

Set client computer's RetroArch Netplay to request control of the running core's devices/controllers:

- Navigate to **Settings** -or- **Netplay**
- Navigate to **Network**
- Set **Request Device 2** to _YES_
- Set **Request Device 3** to _YES_
- Ensure all other **Request Device #** are set to _NO_

Client is now able to join the host in a NetPlay game controlling controllers two (2) and four (4). See [Getting Started Guide](netplay-getting-started) for more details.

![Screenshot](../image/retroarch/netplay/netplay_multiple_controllers_client.png)


!!! Warning
    RetroArch **Network** typically has all **Request Device #** set to _NO_. When all **Request Device #** are set to _NO_, this allows NetPlay to automatically set host as device/controller one (1). Then when the client connects to the host, the client will connect to device/controller two (2) for the NetPlay session. Each subsequent client that connects will continue connect to the next available device/controller.
    RetroArch NetPlay requires all **Request Device #** set to _NO_ for RetroArch Netplay to automatically assign device/controller for the NetPlay session.
