# Downloading, Installing and Running RetroArch for iOS and tvOS devices

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/QMCXXabUR5k" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Prerequisites

RetroArch is not available on the App Store. Instead, you must sideload the app onto your devices. There are three ways of sideloading:

* Jailbreaking, not something covered here;
* Using Xcode to build RetroArch from source, described [here](../development/retroarch/compilation/ios.md);
* Using a third party tool such as [AltStore](https://altstore.io/) that can install a built application by performing many of the same actions Xcode performs. That process is described below.

!!! Warning
    RetroArch or Libretro is not affiliated with AltStore in any way. You can also use alternative applications that can do this function.

## Downloading

Download one of the following IPA files depending on your needs:

| | | |
---|---|---
| iOS 13+ | [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/ios-arm64/RetroArch.ipa) | [Nightly](https://buildbot.libretro.com/nightly/apple/ios-arm64/RetroArch.ipa) |
| iOS 9+ (reduced feature set; may not work on newer devices) | [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/ios9/RetroArchiOS9.ipa) | [Nightly](https://buildbot.libretro.com/nightly/apple/ios9/RetroArchiOS9.ipa) |
| tvOS 11+ | [Stable](https://buildbot.libretro.com/stable/{{ unit.stable }}/apple/tvos-arm64/RetroArchTV.ipa) | [Nightly](https://buildbot.libretro.com/nightly/apple/tvos-arm64/RetroArchTV.ipa) |

Most people should start with the Stable build. The Nightly build contains the latest commits available on GitHub, and the latest enhancements and features that are added daily. The Nightly build may not be as stable as the Stable version.

It is possible to build RetroArch for older versions of iOS, though due to resource constraints these are not provided. See the [instructions for building iOS](/development/retroarch/compilation/ios/) to build it yourself.

## Installation for non-Jailbreak devices

In order to install the RetroArch on your non-Jailbreak device, we need to use a third-party application. The steps below describe using AltStore, which is not associated with LibRetro or RetroArch. You need to provide AltStore yourself.

1. Install and launch AltServer.
1. Hold Option (macOS) or Start (Windows) when clicking the AltServer icon to reveal new "Sideload .ipa…" menu option
1. Select the device you want to install RetroArch on (must be on the same Wi-Fi network as AltServer)
1. Enter the email and password for your Apple ID

You cannot add or update cores after installation as they are signed executables and can only be updated by updating and resigning the entire application. The IPA files linked above contain [all of the available iOS/tvOS cores](https://buildbot.libretro.com/nightly/apple/ios/latest/).

## Using RetroArch

On an iOS device, you'll be presented with a touch interface. If you have an mFi controller, you can control the interface that way as well.

On the Apple TV, you'll be shown the "Ozone" interface. You need to use an mFi controller with an Apple TV. The Siri Remote only functions as an LRUD interface; it will not work as a controller.

When you first start RetroArch, you'll notice that you're missing images. You'll want to run the Online Updater:

- From the main menu, choose "Online Updater"
- Choose:
  - Update Core Info Files
  - Update Assets
  - Update Databases
  - Update Overlays
  - Update GLSL Shaders

## Adding Content

### iOS

The RetroArch app is sandboxed and does not have access to iCloud. The easiest way to add content into RetroArch's sandbox is through the Apple Files app. Run RetroArch first and it will create several folders. After running RetroArch, open the Files app, and in Browse -> On My iPhone, you should now see a RetroArch folder. You can place your content in any directory or subdirectory in that folder (including creating your own subdirectories). You can use the Files app to copy the content from iCloud to the folder on your phone.

### tvOS

RetroArch on tvOS has a built-in webserver. While RetroArch is running, open a browser on your computer and open the URL that RetroArch displays. You can use the web-based UI to create subdirectories and upload or download files.

!!! Warning
    tvOS does not provide apps with a persistant storage area; instead it allows for up to 500kb meant for configuration data. The disk space shown through the web UI is a cache space. If the OS needs to reclaim disk space, it will delete files from that cache space without warning. This includes state and saves! When this happens, you will immediately see that the appearance of RetroArch is wrong, as the assets will need to be re-downloaded.

## JIT

Several cores are improved by enabling JIT, while others will not work at all without it. The only way to enable JIT is to convince the OS that RetroArch is being debugged. One way of doing this is to build with Xcode, launch the app from Xcode with the debugger attached, and leave Xcode running. Another way is to use AltServer to enable JIT on RetroArch after it has been opened (but before a core has been loaded). RetroArch will also use AltKit to search on the network for a running AltServer and ask it to turn on JIT automatically.
