# Downloading, Installing and Updating RetroArch for Android devices.

## Non-Google Play sources

For installations from outside Google Play, you may need to follow the [Allowing APK installations blocked by Google Play Protect](#allowing-apk-installations-blocked-by-google-play-protect) guide.

### Installation via Website
___
1. Visit the retroarch.com [Downloads page](https://www.retroarch.com/?page=platforms) and select **Download Stable** or **Download Nightly**.
2. Open the downloaded APK (via a file manager if your browser does not prompt you when the download is completed).
3. Select Install.
> * Android may tell you that `the app doesn’t have permission to install APKs`. Click the available `Settings` button in that prompt.
> * In the next menu, turn on the toggle allowing the app install APKs.
> * `Hit the back button` to return to your installation.

#### Other Versions via Buildbot
___
All [stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/android/) and [nightly](https://buildbot.libretro.com/nightly/android/) bundles are available via BuildBot If you need a specific architecture or build for testing. Builds are named with an architecture suffix: `aarch64` is a 64-bit build, `ra32` is a 32-bit build, and no suffix is a universal build that opts for 64-bit if your system supports it.
> 32-bit support on Android is slowly being phased out by the industry, but these builds remain available for older devices or specific use cases.

### Installation via F-Droid
___
RetroArch's most recent stable release can be found [in the F-Droid repository](https://f-droid.org/packages/com.retroarch/) for easier automatic updating.

### (NOT RECOMMENDED) Installation via Google Play
___
RetroArch is available on the Google Play Store, but has not been updated for years due to Play Store policy changes. You may choose to use this older version, but it is not recommended.

[RetroArch Plus on the Play Store](https://play.google.com/store/apps/details?id=com.retroarch.aarch64&hl=en_US "RetroArch64") (Only for 64 bit devices, additional cores)

[RetroArch on the Play Store](https://play.google.com/store/apps/details?id=com.retroarch&hl=en "RetroArch") (For 32 or 64 bit devices, fewer cores)

A more detailed difference between the Play Store versions can be found in [this libretro blog post](https://www.libretro.com/index.php/retroarch-android-new-versions-for-play-store-please-read/).

# Installation notes

## Allowing APK installations blocked by Google Play Protect

To install RetroArch from non-Google Play sources (F-Droid, retroarch.com, etc), ensure Google Play Protect either approves it or disable the service entirely.

### Method 1: "Install anyway" in Google Play Protect

<img width="433" height="469" alt="2" src="https://github.com/user-attachments/assets/fb450071-c260-4e4d-947e-2ccbbcf6e3c7" /><br />

<img width="433" height="195" alt="1" src="https://github.com/user-attachments/assets/18026f64-4266-40e9-8fbe-94ae7ebb9100" />

* When you select “Install anyway”, Google Play Protect will ask you to authenticate your identity. For security reasons, this step cannot be captured in a screenshot, which is why it's described here instead. If Play Protect still fails to install the app even after you’ve entered the correct password, you’ll need to disable Google Play Protect. For instructions, see [Method 2: Disable Google Play Protect](#method-2-disable-google-play-protect).

### Method 2: Disable Google Play Protect

If Google Play Protect still prevents the app from installing even after you entered the correct password in Method 1 above, which is problematic in older Android versions, you’ll need to disable Play Protect, as it is blocking APK installations.

* Disable Google Play Protect:
  - Open the Play Store app first.
  - Tap your profile icon
  - Select Play Protect
  - Tap the gear icon in settings
  - Toggle off "Scan apps with Play Protect"
* Install the apk
