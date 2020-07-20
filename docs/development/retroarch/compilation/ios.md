# iOS Compilation / Development Guide

## Environment configuration

The following software needs to be installed:

- XCode
- iOS SDK

The following versions of the operating system are supported:

- iOS 6.0
- iOS 7.0+
- iOS 8.0+
- iOS 9.0+
- iOS 10.0+
- iOS 11 support is in-progress

## Get the RetroArch source

Clone RetroArch's repository from [GitHub](https://github.com/libretro/RetroArch)

    git clone https://github.com/libretro/RetroArch.git retroarch
    cd retroarch

For subsequent builds you only need to pull the changes from the repo

    cd retroarch
    git pull

To update your local copy from the repository run git pull

## Core Compilation

RetroArch needs the emulation cores compiled for it to be useful. Let's compile the cores first.

### Fetching Cores

The easiest way to fetch all the cores is to use libretro-super. Run

    git clone https://github.com/libretro/libretro-super
    cd libretro-super
    ./libretro-fetch.sh

### Building Cores

The easiest way to build all the cores (for iOS) is to use libretro-super.

To build iOS 6 to 8-compatible cores, run

    ./libretro-build-ios.sh

To build iOS 9 and up-compatible cores, run

    ./libretro-build-ios9.sh

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

    ./libretro-build-ios.sh snes9x2010 fceumm

Once finished, you can find the libretro cores inside directory `dist/ios` or `dist/ios9`.

### Code Signing the Cores

Note that you *must code sign the dylib cores* in order for you to use them.

#### In iOS 9 and above

Starting from iOS 9, the cores must be packaged as part of the application, even if they are code-signed. This was an additional security measure introduced in iOS 9. Fortunately, the code signing is handled as part of the Xcode build/archive process, so all you need to do is place your compiled `.dylib` cores in the `pkg/apple/iOS/modules` folder.  Running the application via Xcode or archiving the application for an adhoc distribution will codesign the cores as long as they are placed in the aforementioned `pkg/apple/iOS/modules` folder.

#### In iOS 6 to 8

You need to manually code sign the cores, and then you can copy them to the `Documents/RetroArch/cores` directory using an application like "iFunBox" or "iExplorer".

#### Manually Code Signing

```
cd [path where the dylib cores are]
codesign -fs '[Your Full Developer Certificate Name]' *.dylib
```

#### Known Issues with Code Signing (iOS 9 and above)

Building and running from Xcode doesn't code sign the cores the first time for some reason. This is a bug in the build process. The cores seem to get signed after the cores are copied. If you build and run again, the cores will have been signed and will be usable in RetroArch.

### Building RetroArch

#### Using the graphical interface

##### For iOS 6 to 8

Open Xcode. Open the following project file `pkg/apple/RetroArch_iOS.xcodeproj` in the Xcode IDE and build (**&#8984;-B**) and run (**&#8984;-R**) it there.

##### For iOS 10 and up

1. Open Xcode.
2. Open the following project file `pkg/apple/RetroArch_iOS10.xcodeproj`
3. In the Navigator Pane on the left, select the Retroarch_iOS10 project
4. In the Project and Targets list on the left side, choose the RetroArchiOS10 target. Select the Target (the one with the RetroArch icon), not the project.
5. In the "General" tab, change the "Team" under Signing to be your developer name.
6. Set the active scheme to RetroArchiOS10, and select your connected iOS device as the device.
6. Run (**&#8984;-R**)

##### Creating an IPA for adhoc distribution (or for someone else to re-sign)

You will need an adhoc distribution certificate to create an adhoc distribution. Go to developer.apple.com to create an adhoc certificate.

In Xcode, select your target (RetroArchiOS10 for iOS 10 and above, RetroArch for others), Choose "Generic iOS Device" for the device, and select Product -> Archive. After it is done archiving, the Organizer window will appear. Select the archive and then use the "Export.." button on the right pane, and select "Save for Ad Hoc Deployment". Choose your developer name and you'll create an IPA in a directory of your choosing. This IPA can be resigned for other people to use using utilities such as [iOS App Signer](http://dantheman827.github.io/ios-app-signer/).

You can install the IPA on your iOS device by dragging the IPA onto the Installed Apps section in the Devices window.

##### Notes on building and running

If you use Xcode to build and run RetroArch, and overwrite an existing RetroArch, you'll notice that your configuration will be wrong and stuff like your settings and directory locations will be missing. That's because you get a new application identifier when you do a re-install or upgrade, and the RetroArch config uses absolute paths in its configuration. You'll need to delete the app and then reinstall, or manually edit the RetroArch config file and fix the file paths by hand.

#### Using the command line

##### For iOS 6 to 8

To build a debug build :

    # Build
    xcodebuild -target RetroArch -configuration Debug -project pkg/apple/RetroArch_iOS.xcodeproj
    # Run
    open ./pkg/apple/build/Debug/RetroArch.app/

To build a release build :

    # Build
    xcodebuild -target RetroArch -configuration Release -project pkg/apple/RetroArch_iOS.xcodeproj
    # Run
    open ./pkg/apple/build/Release/RetroArch.app/

##### For iOS 10 and up

To build a debug build :

    # Build
    xcodebuild -target RetroArch -configuration Debug -project pkg/apple/RetroArch_iOS10.xcodeproj
    # Run
    open ./pkg/apple/build/Debug/RetroArch.app/

To build a release build :

    # Build
    xcodebuild -target RetroArch -configuration Release -project pkg/apple/RetroArch_iOS10.xcodeproj
    # Run
    open ./pkg/apple/build/Release/RetroArch.app/

### Packaging RetroArch

### Additional Tips:

#### Cores

- When you run RetroArch and try to run a game, and see the message "Failed to load libretro core", that means the core is not code signed. See the above "Code Signing the Cores" section on making sure your cores are signed. You can manually check the code signature on a file by doing: `codesign -dvv mednafen_psx_libretro_ios.dylib`. The Authority entry has your certificate - make sure it's your dev or adhoc distribution certificate.

- To see if your core is valid and usable in RetroArch, you can also try Load Core and selecting the core. If you see the core name appear at the top (in the GUI menu), then it is properly codesigned and loaded. If you still see "No Core", then your core is not codesigned and cannot be used.

#### Getting your ROMs/content/BIOS in RetroArch

- Use a desktop tool like "iFunBox" or "iExplorer". You can use iTunes but note that it cannot access subdirectories. BIOS files go in `RetroArch/system`

- You can also download content in Safari and "Open in.." and choose RetroArch. Currently there is a bug in that it will crash (the app delegate needs fixing), but it gets placed in the "Inbox" folder in RetroArch's Documents folder. You can choose "Load Content" and navigate to the "Inbox" directory.

### Development

#### Where do I start?

The RetroArch codebase can be daunting, especially if you're used to iOS development in Objective C or Swift. Objective C is a subset of C so the syntax should look somewhat familiar to you.

The first and main entrypoint you should look at is in `core/griffin/griffin.c`. This is where all the code is included, with compiler flags used to bring in code specific to the platform. For iOS, you should pay attention to the compiler flags like `__APPLE__`, `TARGET_OS_IPHONE`, `HAVE_COCOATOUCH`.

Note that you can Cmd-click into the `#include` paths to peer into the source code. You can also Cmd-Shift-O and type in the source file as well. And, breakpoints work as well!

The iOS specific code is in `core/griffin/griffin_objc.m`. Here you'll find the include to `./ui/drivers/ui_cocoatouch.m`, which contains the application delegate - the main entry point for the iOS application lifecycle. From there everything should look familiar to you as an iOS developer, and you should be able to hook in any iOS specific objective c code. Although you can use Objective C data structures and code, you'll probably be having to use C data structures since you'll have to call methods in C to hook back into RetroArch, and they will expect C data structures. The great thing is you can mix C code with Objective C, as long as you do the necessary conversions to the data structures that RetroArch expects.
