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

Here is the complete, final version of the documentation, incorporating all the structural updates, streamlined explanations, deduplication, and clarity improvements:

---

## HDMI-CEC Remote Control Pass-Through

> Note: This section applies only to Digital Media Players. TV remotes cannot operate on PCs at all; even basic navigation commands will not function, as standard computer graphics cards do not support HDMI-CEC communication.

Most modern Smart TVs and Digital Media Players include built-in HDMI-CEC hardware, though budget or older models on either side may lack this feature. Both the TV and the Digital Media Player must support HDMI-CEC for remote control pass-through to work.

### Enable TV Remote (Optional / TV Remotes Only)

If you are using a **standalone Digital Media Player remote**, you can skip this step because your remote communicates directly with your streaming device. However, if you plan to use your **TV remote** to control the Digital Media Player, you must enable HDMI-CEC pass-through on your television:

1. **Configure Your TV:** Open your TV’s system or input settings and enable **HDMI-CEC** (note that manufacturers often use different proprietary brand names for this feature, such as *Anynet+* on Samsung, *Simplink* on LG, or *Bravia Sync* on Sony).
2. **Configure Your Digital Media Player:** Open your streaming device's system settings and ensure that HDMI-CEC control pass-through is turned on.

### Understanding TV Remotes and HDMI-CEC Integration

Unlike standard game controllers or dedicated media remotes, TV remotes operate through your television's consumer electronics control protocol, introducing specific behavioral quirks:

* **Signal Path:** When you press a button on your TV remote, the signal goes to the TV first. The TV then translates and passes specific commands through the HDMI cable to your Digital Media Player.
* **Hardware Limitations:** Because TV remotes are designed primarily for television menus, they lack the analog sticks, shoulder buttons, and numerous inputs found on standard gamepads, meaning they can only ever serve as a navigation alternative rather than a full gaming input device.
* **Operating System Separation:** The physical **HOME** button on almost all TV remotes is hardwired directly to the television's native operating system (such as Google TV, webOS, or Tizen). It intercepts home commands locally and cannot communicate directly through the HDMI cable to wake up or close apps on an external streaming box. *(Instead, commands like `...` or `123` must be used to access virtual shortcuts via the TV's on-screen overlay).*

### Supported Buttons via HDMI-CEC

Enabling this feature allows you to use your remote's standard buttons to control your Digital Media Player. Depending on your remote type and TV brand, these buttons will typically function as follows:

* **In-App Navigation:** The physical **Arrows, OK, Back, and Exit** buttons are passed through to RetroArch for menu navigation on both TV remotes and standalone Digital Media Player remotes. *(Note: Because HDMI-CEC remotes register as standard system navigation keys rather than a game controller, they work automatically for menu navigation without needing a RetroArch controller autoconfig profile, though they also cannot be remapped like a gamepad.)*
* **HOME:**
* **Digital Media Player Remotes:** Standalone media player remotes feature a dedicated hardware **HOME** button that communicates directly through the HDMI cable, allowing you to instantly exit RetroArch and return to your streaming device's main dashboard.
* **TV Remotes:** Due to the operating system separation described above, the physical **HOME** button cannot close or wake up your streaming device.
* **The Workaround:** Press buttons often labeled as **`...`** or **`123`** on your TV remote to open the **TV's on-screen overlay** (independent of RetroArch), which provides a virtual **"HOME"** shortcut specifically for your digital media player.
* *Note:* Because users instinctively press the physical HOME button out of habit, this virtual shortcut inside the TV menu is frequently overlooked.


### Use Cases for Remote Controls in RetroArch

While remotes cannot be used to play actual games due to the lack of action buttons, enabling HDMI-CEC pass-through unlocks several practical use cases:

1. **Exiting RetroArch and Managing Apps:**
* Using your remote's **HOME** button (or the TV system overlay's virtual home shortcut), you can cleanly exit RetroArch and return to your media player's dashboard, especially in scenarios where your Bluetooth gamepad has disconnected and standard menu quitting options are unavailable.


2. **Configuring and Studying RetroArch:**
* The directional arrows and **OK** button work instantly out-of-the-box without requiring an autoconfig profile. This makes a remote ideal for casual menu browsing, tweaking system settings, managing playlists, downloading assets/thumbnails, or studying RetroArch's extensive options without needing to juggle a physical gamepad.


3. **Controlling RetroArch as a Media Player:**
* RetroArch is capable of running media-centric cores (such as image viewers, music players, or video playback tools). Using a standard remote allows you to comfortably sit back and control media playback using familiar directional and confirmation inputs.



### Exiting RetroArch Without a Gamepad

While **In-App Navigation** buttons (**Arrows, OK, Back, and Exit**) on the remote work flawlessly via HDMI-CEC for navigating menus inside RetroArch, pressing **Back** or **Exit** will not exit the app or return you to the Digital Media Player dashboard, unlike standard streaming apps. In addition, the `Main Menu → Quit` option does not exist in RetroArch Android releases. Consequently, if your Bluetooth gamepad controller disconnects, you cannot exit RetroArch using the **In-App Navigation** buttons—making this the exact scenario where using the **TV System Overlay (Menu/Options Button)** workaround becomes essential.

#### The Workaround

1. **Open the TV Menu:** Press your remote's **TV System Overlay (Menu/Options Button)** to bring up the on-screen digital overlay.
2. **Trigger the Virtual Home Button:** Use the same **In-App Navigation** buttons (**Arrows** and **OK**) to navigate inside that overlay and select the virtual **"HOME"** shortcut. This sends a command through the HDMI cable, forcing RetroArch to close and bringing you straight back to your streaming device's main dashboard.
3. **Reconnect Your Gamepad:** Now that you are back on the main dashboard, navigate to your device's Bluetooth settings and re-pair your gamepad.
4. **Resume Playing:** Once your controller is connected, simply relaunch RetroArch and get back to your game.

## Frame rate fluctuations

### Frame rate fluctuations fix: Use RetroArch Synchronization features

The Settings → Video → Synchronization menu in RetroArch provides several options to reduce screen tearing and stuttering by aligning frame output with the display’s refresh rate. These options—Vertical Sync (VSync) (default: On), Hard GPU Sync (default: Off), and Adaptive VSync (default: Off)—offer software-level synchronization that approximates some of the benefits of Variable Refresh Rate (VRR) found in many gaming TVs. This is necessary because RetroArch does not support native HDMI signaling to automatically enable VRR on compatible displays.
