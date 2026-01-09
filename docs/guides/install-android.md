# Downloading, Installing and Updating RetroArch for Android devices.

## Non-Google Play sources

### Installation via Sideloading
When referring to Android apps, "sideloading" involves installing APK files on Android devices from sources outside official app stores. These APKs can be obtained manually or automatically via apps like Obtainium.

To sideload successfully, complete these two steps:
* The first time you attempt to install an APK via an app (e.g. via any file manager, or Obtainium), enable the [install unknown apps](#install-unknown-apps) permission for it.
* If Play Protect warnings appear on Android, follow the installation notes for [allowing APK installations blocked by Google Play Protect](#allowing-apk-installations-blocked-by-google-play-protect).

#### From RetroArch.com Downloads

#### Installation via Obtainium (recommended)
"Obtainium allows you to install and update apps directly from their releases pages, and receive notifications when new releases are made available." - Obtainium

* Install Obtainium: The most recent stable release can be found [in its F-Droid repository]([https://f-droid.org/packages/com.retroarch/](https://f-droid.org/en/packages/dev.imranr.obtainium.fdroid/))
* Visit https://apps.obtainium.imranr.dev/
  * Search for "RetroArch"
  * Click on the "Add to Obtainium" link.

##### Manual Downloads
___
1. Visit the retroarch.com [Downloads page](https://www.retroarch.com/?page=platforms) and select **Download Stable** or **Download Nightly**.
2. Open the downloaded APK (via a file manager if your browser does not prompt you when the download is completed).
3. Select Install.

###### From Buildbot Archives
___
All [stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/android/) and [nightly](https://buildbot.libretro.com/nightly/android/) bundles are available via BuildBot If you need a specific architecture or build for testing. Builds are named with an architecture suffix: `aarch64` is a 64-bit build, `ra32` is a 32-bit build, and no suffix is a universal build that opts for 64-bit if your system supports it.
> 32-bit support on Android is slowly being phased out by the industry, but these builds remain available for older devices or specific use cases.

### Installation via F-Droid (incomplete)
___
RetroArch's most recent stable release can be found [in its F-Droid repository](https://f-droid.org/packages/com.retroarch/) for easier automatic updating.

Note that the F-Droid package lacks many resources ([GitHub issue #16126](https://github.com/libretro/RetroArch/issues/16126); see also [F-Droid RFP #1933](https://gitlab.com/fdroid/rfp/-/issues/1933#note_1731005305)). Both issues are now closed but the resource problems persist.

### Installation via Google Play servers (obsolete)
___
RetroArch is available on the Google Play Store, but has not been updated for years due to Play Store policy changes. You may choose to use this older version, but it is not recommended.

[RetroArch Plus on the Play Store](https://play.google.com/store/apps/details?id=com.retroarch.aarch64&hl=en_US "RetroArch64") (Only for 64 bit devices, additional cores)

[RetroArch on the Play Store](https://play.google.com/store/apps/details?id=com.retroarch&hl=en "RetroArch") (For 32 or 64 bit devices, fewer cores)

A more detailed difference between the Play Store versions can be found in [this libretro blog post](https://www.libretro.com/index.php/retroarch-android-new-versions-for-play-store-please-read/).

DeGoogle notice: Google Play requires sign-in with a Google account. Aurora Store, avalible from its [F-droid](https://f-droid.org/en/packages/com.aurora.store/) repository, offers a free alternative enabling anonymous downloads and updates from Google Play servers without a Google account.

## Installation notes

### Sideloading

#### Install unknown apps

The first time you attempt to install an APK via an app (e.g. via any file manager, or Obtainium), Android displays a prompt: `For your security, your phone currently isn't allowed to install unknonw apps from this source. You can change this in Settings`.
* Click the available `Settings` button in that prompt.
* In the `Install unknown apps` menu, toggle on `Allow from this source` to permit the app to install APKs.
* `Hit the back button` to return to your installation.

#### Allowing APK installations blocked by Google Play Protect

To install RetroArch from non-Google Play sources (F-Droid, retroarch.com, etc), ensure Google Play Protect either approves it or disable the service entirely.

##### Method 1: "Install anyway" in Google Play Protect

This procedure must be repeated each time you sideload an app:

![google-play-protect_-_install-anyway-1.png](../image/guides/google-play-protect_-_install-anyway-1.png)

![google-play-protect_-_install-anyway-2.png](../image/guides/google-play-protect_-_install-anyway-2.png)

When you select “Install anyway”, Google Play Protect prompts for identity authentication (password or fingerprint). For security reasons, this step cannot be screenshotted, so it's described textually here. This method requires no Google account—unlike [disabling Google Play Protect](#method-2-disable-google-play-protect), needed if authentication still fails after entering the correct password.

##### Method 2: Disable Google Play Protect

If Google Play Protect still blocks the app installation even after you entered the correct password in Method 1 (a common issue on older Android versions), you'll need to disable Play Protect to proceed.

* Open the Google Play Store app.
* Tap the menu icon in the top right corner.
  * You don’t need to be signed in to adjust Play Protect settings. But if you’re signed in to a Google account, An icon will show the first letter of your name (for example, “F” for “Foo”) instead of a hamburger button.
* Tap "Play Protect".
* Tap the gear icon (Settings).
* Toggle off "Scan apps with Play Protect".
* Install the APK — Play Protect will no longer interfere with the process.
* Android may prompt you to enable Play Protect each time you sideload an APK; always select "No" to maintain this habit.
