# Save and Restart

> **Note:** The automatic saving methods in this guide assume the default value (**ON**) is enabled for **Settings** → **Configuration** → **Save Configuration on Quit**.

## Save Config

### Manual Save (All Platforms)

To manually save your configuration at any time:

* Navigate to **Main Menu** → **Configuration File** → **Save Current Configuration**.

### Automatic Save on Exit

#### Mobile and TV

##### Android and Android TV

To trigger an automatic configuration save on Android (any release), exit RetroArch so the configuration flushes to disk:

* **Android (Mobile/Tablet):** Close RetroArch completely from the system **Overview** / **Recents** screen.
* **Android TV:** Return to the Android TV home dashboard by pressing the **HOME** button (or activating the virtual home button).
  > **Tip:** To verify that the configuration file was written, immediately reopen RetroArch after returning to the home dashboard. RetroArch will display the confirmation notification: `Saved config to ".../retroarch.cfg"`.

#### Desktop

##### GNU/Linux

Use any of the following methods:

1. Navigate to **Main Menu** → **Quit RetroArch**.
2. Navigate to **Main Menu** → **Restart**.
3. Close the RetroArch application window.

---

## Apply Settings That Require a Restart

Certain changes—such as switching the menu driver—require RetroArch to be restarted before taking effect. For example, to switch the menu driver:

1. In RetroArch, navigate to **Settings** → **Driver**.
2. Select **Menu** (`Menu driver to use. (Restart required)`) and change the value to `rgui` (or your preferred driver).
3. Restart RetroArch using the method for your platform below:

### Mobile and TV

#### Android TV (e.g., Google TV Streamer)

1. Press the **HOME** button on the remote to exit to the Android TV dashboard.
2. Navigate to Android TV **Settings** → **Apps** → **See all apps** → **RetroArch**.
3. Select **Force stop**, then select **Open** to relaunch RetroArch and apply the change.

#### Android (Mobile/Tablet)

1. Open Android's **Overview** / **Recents** screen (tap the **Overview** button in Three-Button Navigation, or swipe up from the bottom and hold if using gesture navigation).
2. Swipe up on the RetroArch app card to close it completely.
3. Reopen RetroArch from your app drawer or home screen to apply the change.

### Desktop

#### GNU/Linux

Use either of the following methods:

1. Navigate to **Main Menu** → **Restart**.
2. Close the RetroArch application window, then start RetroArch again.
