<!-- Scope: Basic saving and restarting procedures only. Do not add general settings or retroarch.cfg options here. -->

# Save and Restart

## Save Config

### Manual Save (All Platforms)

To manually save your configuration at your discretion:

- Navigate to **Main Menu** → **Configuration File** → **Save Current Configuration**.

### Automatic Save on Quit

> **Note:** The automatic saving methods in this guide assume the default value (**ON**) is enabled for **Settings** → **Configuration** → **Save Configuration on Quit**.

#### Mobile and TV

##### Android and Android TV

To trigger an automatic configuration save on Android (any release) and Android TV, you don't need to completely close the app—returning to the system dashboard or switching away flushes the configuration to disk:

* **Android (Mobile/Tablet) and Android TV:** Return to the home screen or dashboard by pressing the **HOME** button, activating the virtual home button, or switching to another app.
> **Tip:** To verify that the configuration file was written, immediately reopen RetroArch after returning to the app. RetroArch will display the confirmation notification: `Saved config to ".../retroarch.cfg"`.
* **Android (Mobile/Tablet) alternative:** You can also close RetroArch completely from the system **Overview** / **Recents** screen to ensure an immediate flush.

#### Desktop

##### GNU/Linux

Use any of the following methods:

1. Navigate to **Main Menu** → **Quit RetroArch**.

2. Navigate to **Main Menu** → **Restart**.
3. Close the RetroArch application window.

---

## Export Config

### Mobile and TV

#### Android-Based OSes (Android and Android TV)

Because Google tightened Android's storage security model in Android 14 and 15 to block standard file managers and Storage Access Framework (SAF) prompts from accessing `Android/data/`, users cannot directly copy `retroarch.cfg` via standard GUI file managers without root, Shizuku, or PC-linked tools.

##### Built-in Workaround (No External Tools Required)

Use RetroArch's built-in export option to write a timestamped copy of your configuration to shared storage, which remains accessible to standard file managers:

1. Navigate to **Main Menu** → **Configuration File** → **Save New Configuration**.

2. RetroArch will generate a file at `/storage/emulated/0/RetroArch/config/RetroArch-MMDD-HHMMSS.cfg`.

##### Android (Mobile/Tablet) Limitations

Android's application sandbox restricts direct ADB access to internal private app data directories (`/data/user/0/...` or `/data/data/...`) on standard user builds. Even with USB debugging enabled, your user account does not have permission to read files inside another app's private internal storage.

##### Android TV (via ADB)

Android TV devices run 32-bit RetroArch builds, which use either the package name `com.retroarch` (official `RetroArch.apk` or F-Droid APK) or `com.retroarch.ra32` (`com.retroarch.ra32`).

Because Google's storage restrictions block standard GUI file managers and Storage Access Framework (SAF) prompts from opening or copying files inside `Android/data/`, you cannot extract the configuration file via an on-device file browser. Instead, you must pull it over ADB.

Once paired and connected to your device via ADB, pull the active configuration file from external app storage using the command matching your installed APK:

- **`RetroArch.apk` or F-Droid APK (`com.retroarch`):**

  ```bash
  adb pull /storage/emulated/0/Android/data/com.retroarch/files/retroarch.cfg

```

* **`RetroArch_ra32.apk` (`com.retroarch.ra32`):**
```bash
adb pull /storage/emulated/0/Android/data/com.retroarch.ra32/files/retroarch.cfg

```



### Desktop

#### GNU/Linux

On GNU/Linux, RetroArch stores its configuration in standard user-accessible directories, allowing you to copy `retroarch.cfg` directly using any file manager or terminal:

* **Standard / Native packages:** `~/.config/retroarch/retroarch.cfg`
* **Flatpak:** `~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg`

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
