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
These instructions have been tested under Linux (Fedora 20). They may also work in windows with cygwin.

### Getting the code

    git clone https://github.com/libretro/libretro-super.git
    cd libretro-super
    ./libretro-fetch.sh  

    
`./libretro-fetch.sh` can fail on `fork()` calls, repeat until all are up to date. For `./libretro-build-android-mk.sh`, some cores may fail to compile (g++ "Argument list too long" error).

### Building the cores

### You'll need to put your NDK dir in the PATH variable for the build script to work. Just for the heck of it, I also like to throw in the tools folder from SDK as well as the build-tools (adjust to your situation):

    export PATH=/home/boo/Android/Sdk/ndk-bundle/build:/home/boo/Android/Sdk/tools:/home/boo/Android/Sdk/build-tools/28.0.3:$PATH

### Run build script
    NOCLEAN=1 ./libretro-build-android-mk.sh 

#You can omit `NOCLEAN=1` if you'd like to perform make clean on every core's repo before building each.
#Check to make sure all the cores built correctly

#You can also build individual cores by going to <core git>/jni and doing:
    
    ndk-build

### Building RetroArch


###     PREP WORK
The RetroArch repo is fetched into the libretro-super folder by `./libretro-fetch.sh` above.

You first need to fetch the submodules for it.

    cd retroarch
    git submodule update --init

Then set up the android projects.

    cd pkg/android/phoenix

Now edit `local.properties` to point to the location of your sdk and ndk directories by adding lines that look like this: 

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

Now, generate a keystore file and be sure to put it where `keystore.properties` says it is:

    keytool -genkey -alias KEY_ALIS -keyalg RSA -keypass YOURPASS -keystore keystore-file.jks

Now all the generated release apk will be automatically signed.


Finally, copy the cores, assets and overlays to the right place and build it.

    mkdir -p assets/cores
    mkdir assets/overlays
    cp ../../../../dist/android/arm64-v8a/* assets/cores/ #replace arm64-v8a here by archetecture of your choosing
    cp -r ../../../../dist/info/ assets/
    cp -r ../../../../retroarch/media/overlays/* assets/overlays/

###     BUILD

Now run gradlew and let it config itself and download all it's dependencies:

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
