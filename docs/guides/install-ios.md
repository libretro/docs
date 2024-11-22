# Downloading, Installing and Running RetroArch on iOS

## Installation

### App Store

As of May 15th 2024, RetroArch is available on the App Store worldwide.

App Store : https://apps.apple.com/us/app/retroarch/id6499539433

### Sideloading

You can still sideload the app onto your devices if you want. There are 4 ways of sideloading:

- Jailbreaking, not something covered here
- Build RetroArch from source using Xcode, as described [here](../development/retroarch/compilation/ios.md)
- Using a third party tool such as [AltStore](https://altstore.io/) that can install a built application by performing many of the same actions Xcode performs.
- Use Xcode with a developer account to load the IPA file directly, employing a signing tool like [iOS App Signer](https://www.iosappsigner.com/)

<!-- prettier-ignore -->
!!! Warning
    RetroArch or Libretro is not affiliated with AltStore or iOS App Signer in any way. You can also use alternative applications that can perform this function.

#### App Store vs Sideloading

There are very few differences between the App Store and sideload builds. Installing via the App Store is easier, and sideload builds expire and need to be refreshed; for these reasons it is preferable to use the App Store version, and new users should start with that. However, there are a few reasons you may prefer to sideload:

- Additional cores. We only include cores we maintain in-house or whose upstream teams have given us explicit approval to distribute it via marketplaces. This includes most but not all cores.
- Dynamic Recompilation (a.k.a. dynarec or JIT). This will speed up some cores (e.g. ppsspp) and enable other cores (e.g. flycast).

#### Downloading

Download one of the following IPA files depending on your needs:

|                                                             |                                                                                                   |                                                                                   |
| ----------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| iOS 12+                                                     | [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/ios-arm64/RetroArch.ipa)    | [Nightly](https://buildbot.libretro.com/nightly/apple/ios-arm64/RetroArch.ipa)    |
| iOS 9+ (reduced feature set; may not work on newer devices) | [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/ios9/RetroArchiOS9.ipa)     | [Nightly](https://buildbot.libretro.com/nightly/apple/ios9/RetroArchiOS9.ipa)     |
| tvOS 13+                                                    | [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/tvos-arm64/RetroArchTV.ipa) | [Nightly](https://buildbot.libretro.com/nightly/apple/tvos-arm64/RetroArchTV.ipa) |

Most people should start with the Stable build. The Nightly build contains the latest commits available on GitHub, and the latest enhancements and features that are added daily. The Nightly build may not be as stable as the Stable version.

It is possible to build RetroArch for older versions of iOS, though due to resource constraints these are not provided. See the [instructions for building iOS](../development/retroarch/compilation/ios.md) to build it yourself.

#### Installation for non-Jailbreak devices

In order to install the RetroArch on your non-Jailbreak device, we need to use a third-party application.

You cannot add or update cores after installation as they are signed executables and can only be updated by updating and resigning the entire application. The IPA files linked above contain [all of the available iOS/tvOS cores](https://buildbot.libretro.com/nightly/apple/ios/latest/).

##### iOS App Signer

1. Download and launch iOS App Signer, and add the downloaded `.ipa` file.
2. Use an existing Apple Development certificate or sign up for a free or paid developer account.
3. Ensure your device is registered. Refer to [link](https://developer.apple.com/help/account/register-devices/register-a-single-device) for details.
4. Create a provisioning profile for your device. Follow these [instructions](https://developer.apple.com/help/account/manage-profiles/create-a-development-provisioning-profile).
5. Use reverse-domain formatting, e.g., `com.myname.retroArch` (replace 'myname' with your name).
6. Click start and save the new `.ipa` file.
7. Open Xcode, go to `Window -> Devices and Simulators`, and select your device.
8. In the right pane under 'INSTALLED APPS,' either drag and drop the new `.ipa` file or click '+' to navigate to the file.

##### AltStore

1. Install and launch AltServer.
1. Hold Option (macOS) or Left Shift (Windows) when clicking the AltServer icon to reveal new "Sideload .ipa…" menu option
1. Select the device you want to install RetroArch on (must be on the same Wi-Fi network as AltServer)
1. Enter the email and password for your Apple ID

## Using RetroArch

On an iPhone, you'll be presented with the "GLUI" touch interface; in versions after 1.19.1 on iPad the default switched to the "Ozone" interface. If you have an mFi controller, you can control both interfaces that way as well.

On the Apple TV, you'll be shown the "Ozone" interface. You need to use an mFi controller with an Apple TV. The Siri Remote only functions as an LRUD interface; it will not work as a controller.

When you first start RetroArch, you'll notice that you're missing images. You'll want to run the Online Updater:

- From the main menu, choose "Online Updater"
- Choose:
  - Update Core Info Files
  - Update Assets
  - Update Databases
  - Update Overlays
  - Update GLSL Shaders

### Adding Content

#### iOS

The easiest way to add content into RetroArch's sandbox is through the Apple Files app. Run RetroArch first and it will create several folders. After running RetroArch, open the Files app, and in Browse -> On My iPhone, you should now see a RetroArch folder. You can place your content in any directory or subdirectory in that folder (including creating your own subdirectories). You can use the Files app to copy the content from iCloud to the folder on your phone.

Additionally, in the `Load Content` menu, selecting `Open...` will open the system file chooser screen, and from there you can select files to copy. Copied files go into the `downloads` folder by default.

#### tvOS

RetroArch on tvOS has a built-in webserver. While RetroArch is running, open a browser on your computer and open the URL that RetroArch displays. You can use the web-based UI to create subdirectories and upload or download files. You can place your content in any directory or subdirectory in that folder (including creating your own subdirectories).

Additionally, on versions newer than 1.19.1, there is a built-in WebDAV server that listens on port 8080. You can connect to it using Finder on macOS by choosing "Connect to Server..." in the "Go" menu (**&#8984;-K**) and entering `http://appletv.local:8080`, replacing "appletv.local" with the name of your AppleTV or its IP address.

<!-- prettier-ignore -->
!!! Warning
    tvOS does not provide apps with a persistent storage area; instead it allows for up to 500kb meant for configuration data. The disk space shown through the web UI is a cache space. If the OS needs to reclaim disk space, it will delete files from that cache space without warning. This includes state and saves! When this happens, you will immediately see that the appearance of RetroArch is wrong, as the assets will need to be re-downloaded.

### JIT

Several cores are improved by enabling JIT, while others will not work at all without it. The only way to enable JIT is to convince the OS that RetroArch is being debugged. One way of doing this is to build with Xcode, launch the app from Xcode with the debugger attached, and leave Xcode running. Another way is to use AltServer to enable JIT on RetroArch after it has been opened (but before a core has been loaded).

Note: JIT is not enabled on the App Store version of RetroArch. Apple doesn't allow apps to run with JIT. Some core will not function as intended.
