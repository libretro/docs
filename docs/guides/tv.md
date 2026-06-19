# TV

## The default picture mode may cause controller-to-screen latency

Most TVs—both smart and non‑smart—ship with preconfigured picture modes that are not intended for gaming (for example, “Standard“/“Default“, or “Eco”). These modes introduce screen latency during gameplay. The delay between pressing a controller button and seeing the corresponding action on-screen can disrupt gameplay rhythm and offset any system or emulator optimizations for low latency. Budget LED models typically have the highest latency (around 40–70 ms), whereas OLED panels perform better. Note that this latency issue is TV related; Computer monitors (LCD/LED, CRT, etc.) avoid this issue entirely, as they are designed for interactive use with inherently minimal input lag across all modes.

### Picture mode fix

#### Modern TVs: Switch to "Game" picture mode

On the TV, navigate to **Settings → Picture Mode/Style**, and select “Game”. This addresses the root cause of input lag.

Even if you don't notice any latency on the TV model, it's still good practice to enable this mode to ensure minimal input lag.

Auto Low Latency Mode (ALLM) is not helpful for RetroArch. While ALLM—often found in gaming TVs—automatically detects gaming signals (such as from a console or streaming device) and switches to a low-latency preset, allowing you to keep picture modes like Cinema or Sports active during gameplay before reverting when the signal changes (e.g., to a movie), RetroArch typically does not send the required HDMI ALLM gaming flag. Manual activation of Game Mode remains essential for emulation setups.

Thus, understanding that the manufacturer ALLM features with various names listed below are useless for RetroArch saves you from wasting time evaluating them:

| Manufacturer | Common Name(s) for ALLM              |
|--------------|--------------------------------------|
| Hisense      | Game Mode Pro                        |
| LG           | Instant Game Response, Game Optimizer |
| Panasonic    | Auto Low Latency Mode                |
| Philips      | Auto Low Latency Mode                |
| Samsung      | Auto Game Mode                       |
| Sony         | Auto Genre Picture Mode              |
| TCL          | Auto Game Mode, Game Master          |
| Vizio        | Auto Game Mode, ProGaming Engine     |

#### Older TVs: Enable RetroArch `Run-Ahead`

For older TVs without a "Game" picture mode, use RetroArch's `Settings` → `Latency` → `Run-Ahead` feature to reduce latency effectively.

### Optionally: Use RetroArch's Shaders and Overlays

Shaders and overlays in RetroArch may be used instead of TV picture modes to apply authentic retro display effects and decorative elements directly to the emulated image, bypassing the hardware-dependent post-processing in non-Game picture modes that introduces input lag.

## HDMI-CEC Remote Control Pass-Through

> Note: This section is for Digital Media Players only. TV remotes cannot operate on PCs at all; even basic navigation commands will not function, as standard computer graphics cards do not support HDMI-CEC communication.

Most modern Smart TVs include built-in HDMI-CEC hardware. To use it, you just need to turn on **HDMI-CEC Remote Control Pass-Through** in your TV’s settings (the exact name changes depending on the brand). 

### **Supported Buttons via HDMI-CEC**

Enabling this feature allows you to use your TV remote to control your Digital Media Player. Depending on your TV brand, the buttons will typically function as follows:

* **Basic Navigation:** The physical **Arrows, OK, and Back/Exit** buttons.
* **The Menu/Options Button:** Often labeled as **`...`** or **`123`**, this button brings up the TV's on-screen overlay. It adds a virtual **"HOME"** shortcut specifically for your digital media player.
  - **Note:** This virtual shortcut is necessary because the physical **HOME** button on your remote is hardwired directly to the TV's own operating system and cannot communicate with your streaming device.

### The Problem: RetroArch Lockout

While basic buttons like the arrows and OK key work perfectly in standard apps, they will fail inside RetroArch. Because the app lacks a configuration profile for your specific TV remote, it won't map the inputs correctly, resulting in a `Virtual (0/0) not configured, using fallback` error. If your Bluetooth controller disconnects, you will find yourself completely locked out of navigating the RetroArch menus.

#### The Workaround

1. **Open the TV Menu:** Press your TV remote's Menu button to bring up the on-screen digital overlay.
2. **Trigger the Virtual Home Button:** Select the virtual **"HOME"** shortcut from that overlay. This sends a command through the HDMI cable, forcing RetroArch to close and bringing you straight back to your streaming device's main dashboard.
3. **Reconnect Your Controller:** Now that you are back on the main dashboard, your TV remote's arrow keys and OK button will work normally again. Use them to navigate to your device's Bluetooth settings and re-pair your gamepad.
4. **Resume Playing:** Once your controller is connected, simply relaunch RetroArch and get back to your game.

## Frame rate fluctuations

### Frame rate fluctuations fix: Use RetroArch Synchronization features
The Settings → Video → Synchronization menu in RetroArch provides several options to reduce screen tearing and stuttering by aligning frame output with the display’s refresh rate. These options—Vertical Sync (VSync) (default: On), Hard GPU Sync (default: Off), and Adaptive VSync (default: Off)—offer software-level synchronization that approximates some of the benefits of Variable Refresh Rate (VRR) found in many gaming TVs. This is necessary because RetroArch does not support native HDMI signaling to automatically enable VRR on compatible displays.
