# Compiling for Android

## Compiling from Windows

You need a complete Android development environment, including the **Android SDK** and **Android NDK**.

**Other dependencies:**

* Cygwin (base settings for Bash scripts)
* Git

### Installing OpenJDK or Oracle JDK


### Installing cygwin

Download the setup tool from the official webpage and install the base distribution.

### Installing git

You can install Windows git or add the cygwin git version from the cygwin installer.

### Next step: From here, follow the instructions for compiling Android from Linux.

## Compiling from Linux

You need a complete android development environment ready to develop native apps. That means you have:

* [Android SDK](http://developer.android.com/sdk/index.html)
* [Android NDK](https://developer.android.com/tools/sdk/ndk/index.html)

Use Google to figure out how to install that and make sure the appropriate executables from the above are in your path variable.

These instructions have been tested under Linux (Fedora 20 and Ubuntu 18.04). They may also work in windows with cygwin.

### Getting the code

    git clone https://github.com/libretro/libretro-super.git
    cd libretro-super
    ./libretro-fetch.sh


`./libretro-fetch.sh` can fail on `fork()` calls, repeat until all are up to date. For `./libretro-build-android-mk.sh`, some cores may fail to compile (g++ "Argument list too long" error).

### Building the cores

For the core building portion of this tutorial, you'll need to put at least your NDK dir in the PATH variable for the build script to work. Just for the heck of it, I also like to throw in the tools folder from SDK as well as the build-tools (adjust to your situation):

    export PATH=/home/boo/Android/Sdk/ndk-bundle/build:/home/boo/Android/Sdk/tools:/home/boo/Android/Sdk/build-tools/28.0.3:$PATH

### Run build script ( read notes below before running the script):
    NOCLEAN=1 ./libretro-build-android-mk.sh

You can omit `NOCLEAN=1` if you'd like to perform make clean on every core's repo before building each.

For a variety of reasons, some of the cores may not be compiled by the script. These reasons can range from: core folder doesn't have a libretro/jni folder setup yet, core's libretro/jni folder is in a place that the script does not expect, core has been recently added to project and has not yet been added to script or you're missing some essential dependencies and the build script failed. Some cores (like snes9x2002) need an older NDK. Some core don't use jni but use make or cmake instead.

In the event you are missing a core that you want, you can build it in most cases by going to its subfolder (libretro-corename) and performing this series of commands:

    #for example
    cd libretro-flycast

    #get corename for later
    corename=$(echo ${PWD##*/}|cut -d "-" -f 2)

    #now try to find the libretro/jni folder
    cd $(find . -iname "jni" -type d | grep --color=NEVER "libretro/jni")

    #if it exists and you don't get an error, build the core:
    ndk-build

    #if it succeeds, do this to copy built .so files to dist folder:
    for arch in "arm64-v8a" "armeabi-v7a" "x86" "x86_64"; do if [ -f "$arch/libretro.so" ]; then cp -v  $arch/libretro.so $SRC/dist/android/$arch/"$corename"_libretro_android.so; else echo "$arch" build HAS FAILED!; fi; done

You may also want to check this repo for a list of dependencies needed to build the cores:

    https://github.com/libretro/libretro-deps/

    #these deps can usually be installed via apt-get install (don't forget to append -dev at the end). for example:

    sudo apt-get install libfaac-dev

more info about core building can be had here:

    https://github.com/thebunnyrules/docs/blob/master/docs/development/cores/developing-cores.md



### Building RetroArch


###     PREP WORK

The RetroArch repo is fetched into the libretro-super folder by `./libretro-fetch.sh` above.

You first need to fetch the submodules for it.

    cd retroarch
    git submodule update --init

Now go to the project folder:

    cd pkg/android/phoenix

Within this folder, edit `local.properties` to point to the location of your sdk and ndk directories by adding lines that look like this:

    ndk.dir=/complete/path/to/android-ndk-r20
    sdk.dir=/complete/path/to/Sdk

   Eg. if you have Android Studio, your dirs should be in :

    ndk.dir=/home/yourUSERNAME/Android/Sdk/ndk-bundle
    sdk.dir=/home/yourUSERNAME/Android/Sdk

If you want to build a release apk (aka an apk with none of the debug layers), you'll have to self sign it. Make a file called `keystore.properties` with the following content:

    storePassword=YOURPASS
    keyPassword=YOURPASS
    keyAlias=KEY_ALIAS
    storeFile=/full/path/to/keystore-file_NO_RELATIVE_PATHS.jks

Next, generate a keystore file and be sure to put it where `keystore.properties` says it is:

    keytool -genkey -alias KEY_ALIS -keyalg RSA -keypass YOURPASS -keystore keystore-file.jks

Now all the generated release apk will be automatically signed by gradle.

Next, copy the cores, assets and overlays to an assets folder you create here:

    mkdir -p assets/cores
    mkdir assets/overlays
    cp ../../../../dist/android/arm64-v8a/* assets/cores/ #replace arm64-v8a here by the  archetecture of the device you will be using. Google your phone's specs.
    cp -r ../../../../dist/info/ assets/
    cp -r ../../../../retroarch/media/overlays/* assets/overlays/

Optionally, you may want to include the assets for the front-end (menu icons, fonts, images etc), shader caches, dbs, cheats, etc... These assets can be downloaded at any time during run time via the updater but if you want to bundle them into the build you may do so by downloading bundle.zip / cheats.zip and extracting them to assets folder:

        wget https://buildbot.libretro.com/assets/frontend/bundle.zip
        unzip -n bundle.zip -d assets
        wget https://buildbot.libretro.com/assets/frontend/cheats.zip
        mkdir assets/cheats
        unzip cheats.zip -d assets/cheats

*NOTE ABOUT BUNDLED ASSETS AND CORES*

I've sometimes noticed a bug where the built apk does not unpack the bundled assets and cores on first install. My workaround was to re-install the apk a second time. On the second install, the assets and cores get unpacked. This is a bug in 1.7.7 and 1.7.8.

###     BUILD

Now run gradlew and let it configure and sync itself and download all it's dependencies:

    ./gradlew

Optionally: You can get a list of available tasks by doing:

     ./gradlew tasks

Now, if all went smoothly with config step, you can proceed to build the apk

     #Builds release variants: Normal, ra32 and aarch64
     ./gradlew assembleRelease

     #Build debug variants:
     ./gradlew assembleDebug

     #Builds all variants
    ./gradlew buildNeeded

If all goes well, this will spit out an .apk. For example `build/outputs/apk/normal/debug/phoenix-normal-debug.apk`. Put it on your device with

    adb install -r build/outputs/apk/normal/debug/phoenix-normal-debug.apk

You can find all the apks built by gradle with this command (execute from the same dir as gradlew)"

    find . -iname "*.apk"

This should give you a list of all the outputted apks.
