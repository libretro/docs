# Downloading, Installing and Updating RetroArch for Android devices.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/dqx5c28pT3o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Installation via Website
___
1. Visit the retroarch.com [Downloads page](https://www.retroarch.com/?page=platforms) and select **Download Stable** or **Download Nightly**.
2. Open the downloaded APK (via a file manager if your browser does not prompt you when the download is completed).
3. Select Install.
> * Android may tell you that `the app doesn’t have permission to install APKs`. Click the available `Settings` button in that prompt.
> * In the next menu, turn on the toggle allowing the app install APKs.
> * `Hit the back button` to return to your installation.

### Installation via F-Droid
___
RetroArch's most recent stable release can be found [in the F-Droid repository](https://f-droid.org/packages/com.retroarch/) for easier automatic updating.

### Other Versions via Buildbot
___
All [stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/android/) and [nightly](https://buildbot.libretro.com/nightly/android/) bundles are available via BuildBot If you need a specific architecture or build for testing. Builds are named with an architecture suffix: `aarch64` is a 64-bit build, `ra32` is a 32-bit build, and no suffix is a universal build that opts for 64-bit if your system supports it.
> 32-bit support on Android is slowly being phased out by the industry, but these builds remain available for older devices or specific use cases.

### (NOT RECOMMENDED) Installation via Google Play
___
RetroArch is available on the Google Play Store, but has not been updated for years due to Play Store policy changes. You may choose to use this older version, but it is not recommended.

[RetroArch Plus on the Play Store](https://play.google.com/store/apps/details?id=com.retroarch.aarch64&hl=en_US "RetroArch64") (Only for 64 bit devices, additional cores)

[RetroArch on the Play Store](https://play.google.com/store/apps/details?id=com.retroarch&hl=en "RetroArch") (For 32 or 64 bit devices, fewer cores)

A more detailed difference between the Play Store versions can be found in [this libretro blog post](https://www.libretro.com/index.php/retroarch-android-new-versions-for-play-store-please-read/).
