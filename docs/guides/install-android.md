# Downloading, Installing and Updating RetroArch for Android devices

## RetroArch APK Package Variants

| Package Name            | Supported application binary interface (ABI) | Architectures                                              |
|-------------------------|----------------------------------------------|------------------------------------------------------------|
| `com.retroarch`         | `arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`  | 64-bit ARM, 32-bit ARM, 32-bit Intel/AMD, 64-bit Intel/AMD |
| `com.retroarch.aarch64` | `arm64-v8a`                                  | 64-bit ARM                                                 |
| `com.retroarch.ra32`    | `armeabi-v7a`                                | 32-bit ARM                                                 |

Package names are named with an architecture suffix: `aarch64` is a 64-bit build, `ra32` is a 32-bit build, and no suffix is a universal build that opts for 64-bit if your system supports it. This suffix also appears in RetroArch.com APK filenames. 32-bit support on Android is slowly being phased out by the industry, but these builds remain available for older devices or specific use cases.

`com.retroarch` supports multiple instruction sets beyond ARM, including `x86` (32-bit Intel/AMD processors) and `x86_64` (64-bit Intel/AMD). These are used for Android-x86 projects, PC emulators, select Chromebooks, and some tablets running Android on Intel hardware. There are no standalone `x86` or `x86_64` releases of RetroArch like the 32-bit and 64-bit ARM variants; the universal package (`com.retroarch`) must be installed to access these ABIs.

### Multi-Package Installation
Android 7.0+ (Nougat) supports multi-package handling, while earlier versions treat distinct package names as conflicting upgrades. However, multi-package handling makes it possible to install the universal package (com.retroarch) alongside the appropriate architecture-specific build (com.retroarch.aarch64 **or** com.retroarch.ra32, depending on device) without forcing an upgrade.
  
For example, on a typical 64-bit device, install both RetroArch variants:
- `com.retroarch` + `com.retroarch.aarch64`

## Sources

### Overview

<table>
  <thead>
    <tr>
      <th colspan="3"></th>
      <th colspan="3">Installation</th>
    </tr>
    <tr>
      <th>Source</th>
      <th>Filename</th>
      <th>Type</th>
      <th>Title</th>
      <th>Version identifier</th>
      <th>Package name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>RetroArch official</td>
      <td><code>RetroArch.apk</code></td>
      <td><a href="https://buildbot.libretro.com/stable/">Stable</a></td>
      <td>RetroArch</td>
      <td>[version number]_GIT</td>
      <td><code>com.retroarch</code></td>
    </tr>
    <tr>
      <td>RetroArch official</td>
      <td><code>RetroArch_aarch64.apk</code></td>
      <td><a href="https://buildbot.libretro.com/stable/">Stable</a></td>
      <td>RetroArch (AArch64)</td>
      <td>[version number]_GIT</td>
      <td><code>com.retroarch.aarch64</code></td>
    </tr>
    <tr>
      <td>RetroArch official</td>
      <td><code>RetroArch_ra32.apk</code></td>
      <td><a href="https://buildbot.libretro.com/stable/">Stable</a></td>
      <td>RetroArch (32-bit)</td>
      <td>[version number]_GIT</td>
      <td><code>com.retroarch.ra32</code></td>
    </tr>
    <tr>
      <td>RetroArch official</td>
      <td><code>YYYY-MM-DD-RetroArch.apk</code></td>
      <td><a href="https://buildbot.libretro.com/nightly/android/">Nightly</a></td>
      <td>RetroArch</td>
      <td>[version number]_GIT</td>
      <td><code>com.retroarch</code></td>
    </tr>
    <tr>
      <td>RetroArch official</td>
      <td><code>YYYY-MM-DD-RetroArch_aarch64.apk</code></td>
      <td><a href="https://buildbot.libretro.com/nightly/android/">Nightly</a></td>
      <td>RetroArch (AArch64)</td>
      <td>[version number]_GIT</td>
      <td><code>com.retroarch.aarch64</code></td>
    </tr>
    <tr>
      <td>RetroArch official</td>
      <td><code>YYYY-MM-DD-RetroArch_ra32.apk</code></td>
      <td><a href="https://buildbot.libretro.com/nightly/android/">Nightly</a></td>
      <td>RetroArch (32-bit)</td>
      <td>[version number]_GIT</td>
      <td><code>com.retroarch.ra32</code></td>
    </tr>
    <tr>
      <td>F-Droid</td>
      <td><code>com.retroarch_[UNIXTIMESTAMP].apk</code></td>
      <td><a href="https://buildbot.libretro.com/stable/">Stable</a></td>
      <td>RetroArch</td>
      <td>[version number]</td>
      <td><code>com.retroarch</code></td>
    </tr>
    <tr>
      <td>Play Store</td>
      <td>-</td>
      <td><a href="https://buildbot.libretro.com/stable/">Stable</a></td>
      <td>RetroArch</td>
      <td>[version number] (YYYY-MM-DD)</td>
      <td><code>com.retroarch</code></td>
    </tr>
    <tr>
      <td>Play Store</td>
      <td>-</td>
      <td><a href="https://buildbot.libretro.com/stable/">Stable</a></td>
      <td>RetroArch Plus</td>
      <td>[version number] (YYYY-MM-DD)</td>
      <td><code>com.retroarch.aarch64</code></td>
    </tr>
  </tbody>
</table>

### Non-Play Store Sources

#### Installation via Sideloading
Sideloading Android apps involves installing APK files from sources outside official stores. Apps like Obtainium automate APK downloads for the latest versions, avoiding issues with manual methods such as lengthy repeated downloads/installations and missed updates.

To sideload successfully:
* The first time you attempt to install an APK via an app (e.g. via any file manager, or Obtainium), enable the [install unknown apps](#install-unknown-apps) permission for it. This step is straightforward, and most Android users can complete it without consulting the detailed instructions.
* If Play Protect warnings appear on Android, follow the installation notes for [allowing APK installations blocked by Google Play Protect](#allowing-apk-installations-blocked-by-google-play-protect). This step is more complex and should be read carefully to ensure success on all Android devices.

##### RetroArch.com

###### Manual Downloads

1. Visit the retroarch.com [Downloads page](https://www.retroarch.com/?page=platforms) and select **Download Stable** or **Download Nightly**.
2. Open the downloaded APK (via a file manager if your browser does not prompt you when the download is completed).
3. Select Install.

**From Buildbot Archives**

All [stable](https://buildbot.libretro.com/stable/CURRENTVERSIONNUMBER/android/) and [nightly](https://buildbot.libretro.com/nightly/android/) bundles are available via BuildBot If you need a specific architecture or build for testing.

##### Installation via Obtainium
"Obtainium allows you to install and update apps directly from their releases pages, and receive notifications when new releases are made available." - Obtainium

Obtainium installs the latest stable RetroArch APK — whether 32‑bit, AArch64, or Universal — directly from https://buildbot.libretro.com/stable/CURRENTVERSIONNUMBER/android/, the same source used for manual downloads. The only difference is that Obtainium automates this process and provides update notifications, helping users stay current and avoid reporting issues from outdated versions. It’s also worth noting that Obtainium is Android TV–friendly, making it suitable for use across all Android devices.

To install RetroArch from Obtainium, follow these steps:

* Install [Obtainium](https://f-droid.org/en/packages/dev.imranr.obtainium.fdroid/) from F-Droid.
* Add RetroArch to Obtainium
  * Visit https://apps.obtainium.imranr.dev/.
  * Search for "RetroArch".
  * Select “Add to Obtainium” for either RetroArch (32-bit), RetroArch (AArch64), or RetroArch (Universal).
* Import and Install
  * When the “Import app” prompt appears, tap **Continue**.
* Open the newly added RetroArch entry.
* Tap **Install** to download and install the app.

##### RetroArch.com Package Installation Notes

###### Install both stable and nightly RetroArch 

This section expands on the [Multi-Package Installation](#multi-package-installation) documentation, focusing specifically on retroarch.com builds.

On a typical 64-bit device, install both stable and nightly RetroArch versions as follows:
- Stable `com.retroarch` + nightly `com.retroarch.aarch64`, or
- Stable `com.retroarch.aarch64` + nightly `com.retroarch`

###### Compatibility of `com.retroarch.ra32` on 64-bit ARM Devices

The 32‑bit `com.retroarch.ra32` package can be installed on most Android devices because they run 64‑bit ARM processors, which are still able to execute 32‑bit code. This setup is mainly useful for development and testing, since new 32‑bit ARM devices are no longer sold
The device must support 32‑bit execution, as verified by:

```
adb shell getprop ro.zygote                  # → zygote64_32
adb shell getprop ro.product.cpu.abilist     # → arm64-v8a,armeabi-v7a,armeabi
```

Note: Google Pixel 6a and newer running Android 12 (and later) ship with 64‑bit‑only system images (ro.zygote=zygote64, no 32‑bit ABI support). On such devices, pure 32‑bit APKs will fail to install with the error INSTALL_FAILED_NO_MATCHING_ABIS.

#### F-Droid

The F-Droid release of [RetroArch](https://f-droid.org/packages/com.retroarch/) offers the recent stable `com.retroarch` (32/64-bit ARM) package can be found in F-Droid for easier automatic updating.

To minimize installation size, the F-Droid release includes only a basic set of assets. For a complete setup matching the retroarch.com release it is necessary to visit `Main Menu` → `Online Updater` within the app to download all additional assets, controller profiles, overlays, shaders, and other required data.

##### F-Droid issue

The `ozone` menu driver lacks assets, impacting popular microconsoles (see [#18756](https://github.com/libretro/RetroArch/issues/18756)). Temporary workaround: Main Menu → Online Updater → Update Assets.

### Google Play servers

RetroArch is available on the Google Play Store, but is outdated and thus not recommended (see [Google Play servers issue](#google-play-servers-issue)).

Both RetroArch, and RetroArch Plus is avalaible on Play Store and. A more detailed difference between the Play Store versions can be found in [this libretro blog post](https://www.libretro.com/index.php/retroarch-android-new-versions-for-play-store-please-read/).

DeGoogle notice: Google Play requires sign-in with a Google account. Aurora Store offers a free alternative enabling anonymous downloads and updates from Google Play servers without a Google account. [Aurora Store](https://f-droid.org/en/packages/com.aurora.store/) is avalible in F-Droid.

#### RetroArch on Play servers
[RetroArch](https://play.google.com/store/apps/details?id=com.retroarch&hl=en): It uses the package `com.retroarch`, which supports both 32- and 64-bit ARM devices. It provides fewer cores than RetroArch Plus but is compatible with a broader range of devices.

#### RetroArch Plus on Play servers
[RetroArch Plus](https://play.google.com/store/apps/details?id=com.retroarch.aarch64&hl=en_US): Uses the package `com.retroarch.aarch64`, supporting only 64-bit ARM devices. It includes more cores than standard RetroArch but ~80 fewer cores than retroarch.com APKs across all variants. Note: Despite its name, RetroArch Plus isn't available on all up-to-date Android devices.

RetroArch Plus is available on Google Pixel phones because their pure Google hardware and stock OS reliably pass compatibility checks, even for legacy apps. Native Play Store prioritizes "safe" devices and hides the outdated APK on incompatible ones—like those with non-stock OS skins, slower updates, or mid-range SoCs that trigger stricter enforcement of policies like target API levels and storage access. Aurora Store bypasses these filters entirely, making it a reliable workaround for such devices.

#### Google Play servers issue
The Play Store releases of RetroArch has not been updated for years due to Play Store policy changes. You may choose to use this older version, but it is not recommended.

### Installation notes

#### Sideloading

##### Install unknown apps

The first time you attempt to install an APK via an app (e.g. via any file manager, or Obtainium), Android displays a prompt: `For your security, your phone currently isn't allowed to install unknonw apps from this source. You can change this in Settings`.
* Click the available `Settings` button in that prompt.
* In the `Install unknown apps` menu, toggle on `Allow from this source` to permit the app to install APKs.
  - On Android versions prior to 8.0, the APK installation prompt displays a pre-checked "Allow this installation only" checkbox—uncheck it to quickly install RetroArch updates, which is especially relevant when subscribing to daily RetroArch Nightly downloads via Obtainium.
* `Hit the back button` to return to your installation.

##### Allowing APK installations blocked by Google Play Protect

To install RetroArch from non-Google Play sources (such as F-Droid or retroarch.com), you may need to either allow it through Google Play Protect or disable Play Protect entirely.

Since RetroArch 1.19.1, if you skip the methods in the sub-sections below, the app may either fail to install without warning or display the message “App not installed.” This issue appears to affect some Android versions and hardware configurations, but not all. For example, the current RetroArch APK may fail to install on the standard Android version without following these methods, while it may succeed on the current Android TV version.

If you get "App not installed" your version of Play Protect may have a bug that prevents you from using the feature.[1] If so, use Method 2—disable Google Play Protect to permit blocked APK installs.

###### Method 1: Selecting ‘Install anyway’ in the Google Play Protect popup

When you tap "Install" for the APK, Google Play Protect runs a security scan and displays options similar to those shown below:

![google-play-protect_-_install-anyway-1.png](../image/guides/google-play-protect_-_install-anyway-1.png)

![google-play-protect_-_install-anyway-2.png](../image/guides/google-play-protect_-_install-anyway-2.png)

If you get "App not installed," your Play Protect version may have a bug preventing use of the "Install anyway" feature.[1] In that case, use Method 2—disable Google Play Protect to permit blocked APK installs.

###### Method 2: Disable Google Play Protect

* Open the Google Play Store app.
* Locate and tap "Play Protect" — its location depends on your Android version and whether you’re signed in:
  - Tap the hamburger menu (☰) in the upper-left or upper-right corner.
  - If you’re signed in, check both the hamburger menu (☰) and your profile icon, as Play Protect may appear under either. The profile icon shows your account initial (e.g., “F” for Foo).
* Tap the gear icon ⚙️ to open Settings.
* Toggle off "Scan apps with Play Protect":
  - You may be asked whether to "Pause" scanning temporarily or "Turn off" permanently — choose the option you prefer.
* Install the APK — Play Protect will no longer interfere with the process.
* Note: Android may prompt you to re-enable Play Protect each time you sideload an APK. If your goal is to keep it permanently turned off, always select "No" when prompted.

## References
Case Report: On Android 10 with LG G7 ThinQ (LM-G710EM), after factory reset, signing into Play Store (allowing self-update and setup), sideloading RetroArch 1.22.2 from retroarch.com and tapping "Install anyway" triggers "App not installed" before the password prompt—even with the correct password entered. Disabling Play Protect was the sole workaround to install the APK; otherwise, factory reset with offline sideloading was required.
