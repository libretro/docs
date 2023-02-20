# LED drivers for RetroArch

Libretro cores can have extra on/off outputs, that can provide simple visual feedback such as disk activity happening inside the emulated system.

Available LED drivers:
   * `overlay` - control individual elements of a RetroArch overlay
   * `rpi` - control physical LEDs connected to GPIO pins
   * `keyboard` - control keyboard state LEDs
   * `sysled` - control built-in LEDs under Linux

## Configuration

In case of all drivers, the LED driver type and the individual LED mapping needs to be added to `retroarch.cfg`. At present, this is not possible via the RetroArch menu system, the configuration file needs to be edited directly.
Note: first LED is referred as `led1_map` in configuration file, but indexing starts from 0 on core side. There is no common mapping of LEDs for cores, but some of them use first LED for indicating power status, and second for disk drive activity.

## Overlay driver
For overlay driver to have effect, make sure to activate a compatible overlay. The driver will set the visibility of `overlay0_desc0_overlay`, `overlay0_desc1_overlay` etc. items according to the input from the core.

#### Example: overlay driver with 2 LEDs
    led_driver = "overlay"
    led1_map = "0"
    led2_map = "1"

## RPi driver
The RPi driver will set the specified GPIO pins to `out` direction and then set the value via filesystem entry `/sys/class/gpio/gpio%d/value`. This entry is present typically on Raspberry Pi single board computers.

#### Example: RPi driver with first LED assigned for GPIO pin 18
    led_driver = "rpi"
    led1_map = "18"

## Keyboard driver
The keyboard driver will utilize the keyboard Num Lock (0), Caps Lock (1), and Scroll Lock (2) LEDs. It works under Windows, and X11 (since RetroArch 1.9.1).

#### Example: keyboard driver with second LED assigned for Scroll Lock, while leaving first LED explicitly unassigned.
    led_driver = "keyboard"
    led1_map = "-1"
    led2_map = "2"

## Sysled driver
The sysled driver will set the brightness of supported mainboard LEDs via filesystem entry `/sys/class/leds/led%d/brightness`. This entry is present typically on Raspberry Pi single board computers, where led0 is the green LED usually indicating MMC card activity, and led1 is the red LED.
Note that these filesystem entries may be writable by root only, enable access with e.g. `sudo chmod a+w /sys/class/leds/led*/trigger /sys/class/leds/led*/brightness` before running RetroArch. This driver was added after RetroArch 1.14.0.

#### Example: sysled driver with first led output from core assigned to led1, second to led0
    led_driver = "sysled"
    led1_map = "1"
    led2_map = "0"
