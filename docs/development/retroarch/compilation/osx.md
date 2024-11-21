# macOS/OSX Compilation / Development Guide

This compilation guide will teach you how to build RetroArch for macOS/OSX.

All versions of the operating system since 10.5 are supported. RetroArch can work on PPC, Intel, and ARM processor-powered Macs.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/fPO-9jescmo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video covers a quick demonstration of these subjects;

1. Environment Configuration

2. Fetching the code

3. Building RetroArch

4. (Optional) Building the cores

Be sure to read instructions that are given on this page.

## Environment configuration

### Xcode

The only requirement for building is Xcode, which is only available for macOS. You can get Xcode from the App Store. If you have never used Xcode before, you will need to open the Xcode preferences, and in Accounts, log in with your Apple ID.

### retroarch-apple-deps (optional but recommended)

RetroArch optionally will automatically link with supporting libraries (including MoltenVK) that are provided by the retroarch-apple-deps repo. By default Xcode will look for these dependencies in `/usr/local/share/retroarch-apple-deps`.

To get retroarch-apple-deps, run:

```shell
git clone https://github.com/warmenhoven/retroarch-apple-deps.git retroarch-apple-deps
sudo ln -s $PWD/retroarch-apple-deps /usr/local/share
```

## Fetching the code

### libretro-super

The recommended way of fetching RetroArch source code, as well as the source code for all of the cores, is to use libretro-super.

To get libretro-super, run:

```shell
git clone https://github.com/libretro/libretro-super.git libretro-super
cd libretro-super
```

Now you can run the following command to download the source for RetroArch:

```shell
./libretro-fetch.sh --retroarch
```

You can run the following command to download the source for RetroArch as well as all of the cores:

```shell
./libretro-fetch.sh
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

!!! Note
    Versions of git available for OSX PowerPC might not come with the necessary SSL/TLS support that Github now requires. If you happen to find that you can not clone or pull from Github, perform the following command:
    git config --global http.sslVerify false.

For subsequent builds you only need to pull the changes from the repo

```shell
cd retroarch
git pull
```

To update your local copy from the repository run git pull

## RetroArch Compilation

There are several Xcode projects and workspaces in the `pkg/apple` directory in RetroArch, to choose from based on your needs:

| Xcode&nbsp;Project/Workspace&nbsp;File&nbsp;Name | OS support | Purpose |
-----------------------------------------|-|-
| `RetroArch.xcworkspace`      | 10.13+ | The primary workspace for the latest Metal build. Most active development happens here. |
| `RetroArch_Metal.xcodeproj`  | 10.13+ | The project for the latest Metal build. You can use this directly but typically it's preferred to use the Workspace. |
| `RetroArch.xcodeproj`        | 10.6+ | The outdated non-Metal build, only for Intel processor-powered Macs. |
| `RetroArch_PPC.xcodeproj`    | 10.5+ | Building for PowerPC processor-powered Macs. |
| `RetroArch_OSX107.xcodeproj` | 10.7+ | An old development line that is no longer in use. |

### Building RetroArch separately

Open Xcode. Open your chosen project file in the Xcode IDE and build (**&#8984;-B**) and run (**&#8984;-R**) it there. The default scheme should be `RetroArch` and that is what is used for building the DMG image available on the buildbot.

## Core Compilation (optional)

RetroArch on OSX by default will be configured to download cores from the buildbot; you do not need to build the cores yourself.

### libretro-super (deprecated)

If you choose to build the cores yourself, the easiest way to build all the cores is to use libretro-super.

To build all cores for OSX, run

```shell
./libretro-build.sh
```

In case you only want to build one and/or more cores instead of all, you can specify the cores you want to build after the first command in no particular order. E.g.:

```shell
./libretro-build.sh snes9x2010 fceumm
```

Once finished, you can find the libretro cores inside directory `dist/osx`.

### GitLab CI mimicry

Cores on the buildbot are built using the GitLab CI infrastructure. Each core provides its own `.gitlab-ci.yml` file with instructions for how to build it. Almost all cores reference one of the [CI Templates](https://git.libretro.com/libretro-infrastructure/ci-templates). Between the `.gitlab-ci.yml` file and the templates, you should have complete instructions for how to build each core.

## Store Builds

### Steam Build

Building for Steam differs from the normal app build in two ways: the scheme is `RetroArchSteam`, and it requires bundling [mist](https://git.libretro.com/libretro-steam/mist) and linking against libmist. Simply download the latest artifacts for mist from GitLab, and set the `MIST_PATH` variable in the Xcode project with its location.

Once the Steam app is built, it is no different from the app available in the Steam store, and will communicate with Steam to fetch cores and update presence.

### Mac App Store Build

Building for the Mac App Store requires being logged into Xcode with the Apple Developer account associated with the Bundle ID for the app. The app also builds with Push Notification and CloudKit entitlements for the iCloud cloud sync driver. Once all of the signing and entitlements are set up, creating the build is simply changing the scheme to `RetroArch AppStore`.

There is an automated [fastlane](http://docs.fastlane.tools) script available in pkg/apple/fastlane that will update the build numbers and upload the built prodduct to TestFlight using an [App Store Connect API Key](http://docs.fastlane.tools/app-store-connect-api/).
