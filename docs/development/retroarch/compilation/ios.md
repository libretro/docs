# iOS Compilation / Development Guide

The following is a non-developer guide to install RetroArch on non-jailbroken iOS or tvOS devices.

The minimum version of iOS supported is iOS 6.0. However, older versions have fewer features and worse core support.

!!! note
    If you just want to sideload from an IPA file, then you can find a working build (version {{ unit.stable }}) [here for tvOS](http://buildbot.libretro.com/stable/{{ unit.stable }}/apple/tvos-arm64/RetroArchTV.ipa) and [here for iOS](http://buildbot.libretro.com/stable/{{ unit.stable }}/apple/ios-arm64/RetroArch.ipa). Instructions for installing the IPA are [here](/guides/install-ios/).

Because iOS requires that all code be signed, iOS does not support installing/updating cores at runtime. Instead, all cores must be built and added to the RetroArch source tree before building RetroArch.

## Environment configuration

The following software needs to be installed:

- Xcode (macOS only)

You can get Xcode from the Mac App Store.

### Sign in with your Apple ID

- Open Xcode Preferences (Xcode -> Preferences)
- Click the "Accounts" tab
- Hit the "+" at the bottom left and choose "Apple ID" and sign in with your Apple ID
- Once you’ve successfully logged in, a new team called "(Your Name) Personal Team" with the role "User" will appear beneath your Apple ID.

### Pair Xcode with your iOS or tvOS Device

Connect your iPhone to your computer. For AppleTV, because you cannot connect it directly, follow the [instructions in this Apple support article](https://support.apple.com/en-gb/HT208088) to pair your device in Xcode. When finished, you should see your specific device when you go, in Xcode, to Windows -> Devices & Simulators.

## Fetching the code

### libretro-super

The easiest way to fetch the source code for RetroArch and all the cores is to use libretro-super. Open Terminal (it's in `/Applications/Utilities`) and run the following commands:

```shell
git clone https://github.com/libretro/libretro-super.git libretro-super
cd libretro-super
```

You can run the following command to download the source for RetroArch as well as all of the cores:

```shell
./libretro-fetch.sh
```

Or you can run the following command to download the source for RetroArch only:

```shell
./libretro-fetch.sh --retroarch
```

Or specify just the cores that you want:

```shell
./libretro-fetch.sh snes9x2010 fceumm
```

### RetroArch repo

If you choose not to use libretro-super, you can clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

```shell
git clone https://github.com/libretro/RetroArch.git retroarch
cd retroarch
```

For subsequent builds you only need to pull the changes from the repo

```shell
cd retroarch
git pull
```

To update your local copy from the repository run `git pull`.

## Cores

Emulator cores are needed to use RetroArch as they contain the code that drives the emulation of the system of the game you want to play. All of the cores should have the extension `.dylib` and be placed in the RetroArch source tree in the directory `pkg/apple/iOS/modules` (`pkg/apple/tvOS/modules` for tvOS).

### Downloading Pre-Built Cores

Pre-built cores are available from the buildbot [for iOS here](https://buildbot.libretro.com/nightly/apple/ios-arm64/latest/) and [for tvOS here](https://buildbot.libretro.com/nightly/apple/tvos-arm64/latest/). You can also use the update-cores.sh script in the RetroArch source tree to fetch the cores from the buildbot for you:

```shell
./pkg/apple/update-cores.sh [--tvos] [core name]...
```

Without any arguments, it will try to update all of the cores in `pkg/apple/iOS/modules`. If there are no cores already downloaded, it will list the cores that are available to download. Any arguments are treated as core names and it will try to download that core if it is not already available.

### Building Cores

Instead of downloading pre-built cores, you can build the cores yourself. The easiest way to build all the cores is to use libretro-super.

To build for iOS 11 and up, run:

```shell
./libretro-build-ios-arm64.sh
```

To build cores for iOS 9 and up, run:

```shell
./libretro-build-ios9.sh
```

To build cores for iOS 6 to 8, run:

```shell
./libretro-build-ios.sh
```

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

```shell
./libretro-build-ios-arm64.sh snes9x2010 fceumm
```

Once finished, you can find the libretro cores inside directory `dist/ios-arm64`, `dist/ios9` or `dist/ios` depending on which build script you ran.

### Code Signing the Cores

Note that you *must code sign the dylib cores* in order for you to use them.

#### In iOS 9 and above

Starting from iOS 9, the cores must be packaged as part of the application, even if they are code-signed. This was an additional security measure introduced in iOS 9. Fortunately, the code signing is handled as part of the Xcode build/archive process, so all you need to do is place your compiled `.dylib` cores in the `pkg/apple/iOS/modules` folder. Running the application via Xcode or archiving the application for an adhoc distribution will codesign the cores as long as they are placed in the aforementioned `pkg/apple/iOS/modules` folder.

#### In iOS 6 to 8

You need to manually code sign the cores, and then you can copy them to the `Documents/RetroArch/cores` directory using an application like "iFunBox" or "iExplorer".

```shell
cd [path where the dylib cores are]
codesign -fs '[Your Full Developer Certificate Name]' *.dylib
```

## Building RetroArch

There are multiple Xcode project files in `pkg/apple`, based on minimum iOS version. The following will use `pkg/apple/RetroArch_iOS13.xcodeproj` (the latest as of this writing) as an example.

1. Open Xcode.
2. Open the following project file `pkg/apple/RetroArch_iOS13.xcodeproj`
3. In the Navigator Pane on the left, select the `Retroarch_iOS13` project
4. In the Project and Targets list on the left side, choose the `RetroArchiOS` (or `RetroArchTV` for tvOS) target. Select the Target (the one with the RetroArch icon), not the project.
5. In the `Signing & Capabilities` tab, change the "Team" under Signing to be your developer name.
6. Set the active scheme to `RetroArch iOS Release` (or `RetroArch tvOS Release` for tvOS), and select your connected iOS/tvOS device as the device.
6. Run (**&#8984;-R**)

![Xcode Steps](/image/guides/ios-install-pic-1.png)

Once the application has been built, installed, and run on your device, it can be run again directly from the device without needing Xcode.

## Additional Tips:

### Cores

- When you run RetroArch and try to run a game, and see the message "Failed to load libretro core", that means the core is not code signed. See the above "Code Signing the Cores" section on making sure your cores are signed. You can manually check the code signature on a file by doing: `codesign -dvv mednafen_psx_libretro_ios.dylib`. The Authority entry has your certificate - make sure it's your dev or adhoc distribution certificate.

- To see if your core is valid and usable in RetroArch, you can also try Load Core and selecting the core. If you see the core name appear at the top (in the GUI menu), then it is properly codesigned and loaded. If you still see "No Core", then your core is not codesigned and cannot be used.

### Development

#### Where do I start?

The RetroArch codebase can be daunting, especially if you're used to iOS development in Objective C or Swift. Objective C is a subset of C so the syntax should look somewhat familiar to you.

The first and main entrypoint you should look at is in `core/griffin/griffin.c`. This is where all the code is included, with compiler flags used to bring in code specific to the platform. For iOS, you should pay attention to the compiler flags like `__APPLE__`, `TARGET_OS_IPHONE`, `HAVE_COCOATOUCH`.

Note that you can Cmd-click into the `#include` paths to peer into the source code. You can also Cmd-Shift-O and type in the source file as well. And, breakpoints work as well!

The iOS specific code is in `core/griffin/griffin_objc.m`. Here you'll find the include to `./ui/drivers/ui_cocoatouch.m`, which contains the application delegate - the main entry point for the iOS application lifecycle. From there everything should look familiar to you as an iOS developer, and you should be able to hook in any iOS specific objective c code. Although you can use Objective C data structures and code, you'll probably be having to use C data structures since you'll have to call methods in C to hook back into RetroArch, and they will expect C data structures. The great thing is you can mix C code with Objective C, as long as you do the necessary conversions to the data structures that RetroArch expects.
