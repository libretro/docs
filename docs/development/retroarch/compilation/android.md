# Compiling for Android

## Compiling from Windows

You need a complete Android development environment, including the **Android SDK** and **Android NDK**.

**Other dependencies:**

* The ant tool from [ant.apache.org](http://ant.apache.org/)
* OpenJDK or Oracle JDK
* Cygwin (base settings for Bash scripts)
* Git

### Installing ant

Install ant in the location your prefer, then add that new bin/ PATH to the route. Remember declare %JAVA_HOME% before, or on the top of the scripts on /bin/ JDK base dir Path.

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
* [The ant tool](http://ant.apache.org/)

Use Google to figure out how to install that and make sure the appropriate executables from the above are in your path variable.
These instructions have been tested under Linux (Fedora 20). They may also work in windows with cygwin.

### Getting the code

    git clone https://github.com/libretro/libretro-super.git
    cd libretro-super
    ./libretro-fetch.sh  
    
`./libretro-fetch.sh` can fail on `fork()` calls, repeat until all are up to date. For `./libretro-build-android-mk.sh`, some cores may fail to compile (g++ "Argument list too long" error).

### Building the cores

    NOCLEAN=1 ./libretro-build-android-mk.sh 

You can omit `NOCLEAN=1` if you'd like to perform make clean on every core's repo before building each.

### Building RetroArch

The RetroArch repo is fetched into the libretro-super folder by `./libretro-fetch.sh` above.

You first need to fetch the submodules for it.

    cd retroarch
    git submodule update --init

Then set up the android projects.

    cd pkg/android/phoenix
    android update project --path .
    android update project --path libs/googleplay/
    android update project --path libs/appcompat/ # this doesn't seem to exist anymore

Now edit `local.properties` to point to the location of your ndk directory by adding a line like this: `ndk.dir=/complete/path/to/android-ndk-r9d`

Finally, copy the cores, assets and overlays to the right place and build it.

    mkdir -p assets/cores
    mkdir assets/overlays
    cp ../../../../dist/android/armeabi-v7a/* assets/cores/ #replace armeabi-v7a here by mips or x86 for those targets
    cp -r ../../../../dist/info/ assets/
    cp -r ../../../../retroarch/media/overlays/* assets/overlays/
    ant clean
    ant debug
   
If all goes well, this will spit out an .apk: `bin/retroarch-debug.apk`. Put it on your device with

    adb install -r bin/retroarch-debug.apk
