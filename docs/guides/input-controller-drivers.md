# RetroArch input and controller drivers

RetroArch makes use of two input systems in order to support the full range of input devices available across RetroArch's supported platforms.

- **Input Drivers** provide access to keyboards, mice, and mouse-like devices such as lightguns or touch screens. Input drivers are typically set up automatically, and are either not changeable or there is only a limited selection.
- **Controller Drivers** provide access to gamepads and joysticks. On desktop platforms, controller drivers can be usually changed. The autoconfiguration profile database is different per controller driver.

!!! Note
    Controller drivers were previously referred to as joypad drivers. Some documentation may still use the older "joypad" terminology.

- **Multi-mouse** indicates if it is possible to select a separate mouse-type device (such as a lightgun) for each player. If multi-mouse is not supported, typically all pointing devices are controlling the same default cursor.
- **Pointer device** indicates if it is possible for the core to query the absolute coordinates of the pointer, as opposed to the default (relative) mouse. Certain cores may only support one or the other.
- **Lightgun device** indicates if it is possible for the core to query a specific lightgun device, which has a different button set compared to a RetroPad. A few platforms support physical lightguns natively, or lightguns may appear as pointer devices.
- **Rumble support** indicates if the driver can pass on haptic feedback (vibration) signals.
- **Autoconfig support** indicates if the driver can read the controller vendor/product identifiers and apply an automatic mapping for [RetroPad](../../guides/input-and-controls/#what-is-a-retropad).

The listing below is not complete, but on the rest of the platforms, there is usually only 1 valid driver.

---
## Apple OSes

**Apple Input Drivers**

| Input driver | Conditions | Multi-mouse support | Pointer device | Lightgun device |
|--------------|------------|---------------------|----------------|-----------------|
| `cocoa` | - | No | Yes | No |

**Apple Controller Drivers[^1]**

| Controller driver | Conditions | Rumble support | Autoconfig support |
|-------------------|------------|----------------|--------------------|
| `mfi` | - | Yes | Yes |
| `sdl2` | - | Yes | Yes |

---
## Linux

**Linux Input Drivers**

| Input driver | Conditions | Multi-mouse support | Pointer device | Lightgun device |
|--------------|------------|---------------------|----------------|-----------------|
| `x` | Desktop environment is X11, video driver is OpenGL (any version) or Vulkan | Yes | Yes | Yes |
| `wayland` | Desktop environment is Wayland, video driver is OpenGL (any version) or Vulkan | No | Yes | Yes, button map is fixed |
| `sdl` | Video driver is sdl or sdl2 | No | Yes | Yes, button map is fixed |
| `udev` | No desktop environment (KMS) or X11 | Yes | Yes | Yes |
| `linuxraw` | No desktop environment (KMS) | No mouse support at all | No | No |

Multi-mouse support for X11 was added after RetroArch 1.20.0 and requires that RetroArch is compiled with XInput library. Use `xinput create-master` and `xinput reattach` commands to set up a second pointer and assign the physical device.

**Linux Controller Drivers**

| Controller driver | Conditions | Rumble support | Autoconfig support |
|-------------------|------------|----------------|--------------------|
| `udev` | Access to the udev interface (see below) | Yes | Yes (+[physical ID support](../../guides/controller-autoconfiguration/#physical-identifier-customization)) |
| `sdl2` | - | Yes | Yes |
| `linuxraw` | - | No | Yes |
| `parport` | [Special adapter](../../development/retroarch/input/parallel-port-controllers/) on physical parallel port | No | No |
| `hid` | Only if enabled during compilation | Yes | Yes |

### udev drivers
udev is the newest input driver and uses the evdev joypad interface at `/dev/input`. It supports hotplugging and force feedback (if supported by device). udev reads evdev events directly and supports keyboard callback, mice, and touchpads. `libudev` is used to discover devices and support hotplugging.

The `libudev` and `libxkbdcommon` packages are required. udev does not require X11, but udev does depend on X11 keyboard layout files being installed.

### Setting up udev permissions
Most Linux distributions prevent users from capturing keyboard/mouse information by default. Only root and users in the group "input" are able to access raw input. This is a security feature in case the system is used by multiple users.

The easiest way to gain access to this input is to:

* **Step 1:** Add your user to the group "input" with the command: ``sudo usermod -a -G input `whoami` ``
* **Step 2:** Log out, and then log back in

If adding your user to the input group does not succeed, you may also set up a udev rule which makes this input accessible to non-root users:

* **Step 1:** Add to `/etc/udev/rules.d/99-evdev.rules` the following text: `KERNEL=="event*", NAME="input/%k", MODE="666"`
* **Step 2:** Reload the rules with `sudo udevadm control --reload-rules`.
* **Step 3:** Reboot

### linuxraw drivers
The linuxraw controller driver uses the legacy joystick API at `/dev/input/js*`. The linuxraw input driver requires an active TTY in order to read keyboard events.

### hid driver
The hid driver on Linux platform detects Human Interface Devices via libusb. By default it is not enabled during compilation.

---
## Windows

**Windows Input Drivers**

| Input driver | Conditions | Multi-mouse support | Pointer device | Lightgun device |
|--------------|------------|---------------------|----------------|-----------------|
| `dinput` | Video driver is not sdl(2) | No | Yes | Yes |
| `raw` | Video driver is not sdl(2) | Yes | Yes | Yes |
| `sdl` | Video driver is sdl or sdl2 | No | Yes | Yes, button map is fixed |

**Windows Controller Drivers**

| Controller driver | Conditions | Rumble support | Autoconfig support |
|-------------------|------------|----------------|--------------------|
| `dinput` | Controller is connected as a DirectInput device | Yes | Yes |
| `xinput` | Controller is connected as an XInput device | Yes | Yes |
| `sdl2` | - | Yes | Yes |
| `hid` | Only if enabled during compilation | Yes | Yes |

### hid driver
The hid driver on Windows platform detects Human Interface Devices via libusb. By default it is not enabled during compilation.

---
## Auxiliary sensor support

The libretro API provides a possibility to pass extra sensor inputs to cores: 3 axes of accelerometer/tilt sensor, 3 axes of gyroscope, and an illumination sensor. The following input drivers support extra sensors:

- `linuxraw`: illumination
- `sdl`: illumination (only on Linux)
- `android`: accelerometer and gyroscope
- `cocoa`: accelerometer and gyroscope
- `vita`: accelerometer and gyroscope
- `switch`: accelerometer, gyroscope and illumination
- `udev`: illumination
- `x`: illumination

---
## Footnotes
[^1]: MFi controllers are primarily supported on Apple devices, which means that the operating systems supporting this configuration would include:
- iOS: Used on iPhones and iPads.
- macOS: Used on Mac computers.
- tvOS: Used on Apple TV devices.
