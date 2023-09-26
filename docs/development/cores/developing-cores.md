# Developing Libretro Cores

### Libretro API

The Libretro API is a lightweight C-based Application Programming Interface (API) that exposes generic audio, video, and input callbacks. Developers of "cores" such as standalone games, game emulators, media players, and other applications don’t have to worry about writing different video drivers for Direct3D, OpenGL or worrying about catering to all possible input APIs, sound APIs, gamepads, etc.

When you choose to use the libretro API, your program gets turned into a single library file (called a ‘libretro core’). A frontend that supports the libretro API can then load that library file and run the app. The frontend’s responsibility is to provide all the implementation-specific details. The libretro core’s responsibility is solely to provide the main program.

Any project that is ported to work with this API can be made to run on ANY libretro frontend – now and forever. You maintain a single codebase that only deals with the main program, and you then target one single API (libretro) in order to port your program over to multiple platforms at once. A libretro core written in portable C or C++ can run seamlessly on many platforms with very little or no porting effort. Libretro bindings for other languages are growing increasingly common and comprehensive as well.

!!! info "Licensing"
    Libretro is an open specification that is 100% free to implement, with no licensing fees or strings attached. Our reference frontend is RetroArch. The two projects are not the same, and this is reflected in the licensing. RetroArch is licensed via GPLv3 whereas the libretro API is a MIT-licensed API.

## Resources for core development

### Canonical `libretro.h`

The [most current canonical copy of `libretro.h`](https://raw.githubusercontent.com/libretro/libretro-common/master/include/libretro.h) can be found in the master branch of the libretro-common repository.

!!! tip
    `libretro.h` is the single most important technical reference for developers of libretro cores and frontends


### `skeletor` sample core

RetroArch contributor **bparker06** created [`skeletor`](https://github.com/libretro/skeletor) as a minimal libretro core implementation. `skeletor` can also be useful by furnishing the stub libretro `Makefile` and `Makefile.common` files.


### Development log of Libretro cores

Thank you for those blog posts :

**Beardypig** published a two-part guide ([Part 1](https://web.archive.org/web/20190219134430/http://www.beardypig.com/2016/01/15/emulator-build-along-1/), [Part 2](https://web.archive.org/web/20190219134028/http://www.beardypig.com/2016/01/22/emulator-build-along-2/)) describing the process of implementing `libretro.h` as part of creating [Vectrexia](https://github.com/beardypig/vectrexia-emulator/), an original emulator core designed for libretro from the ground up.

**James Roeder** has written a seven parts blog posts entitled [An Arduous Endeavor](https://www.jroeder.net/2021/08/10/arduous-endeavor-part-1/).

**Natesh** has written a blog post about [GameboyCore as a libretro core](https://nnarain.github.io/2017/07/13/GameboyCore-as-a-libretro-core!.html).

### `libretro-common`

[`libretro-common`](https://github.com/libretro/libretro-common/) is a collection of essential cross-platform coding blocks useful for libretro core and frontend development, written primarily in C. Permissively licensed.


### `libretro-deps`

[`libretro-deps`](https://github.com/libretro/libretro-deps/) is a collection of third-party dependencies, pre-modified for use by libretro cores.


### `libretro-samples`

[`libretro-samples`](https://github.com/libretro/libretro-samples) is a set of illustrations of the libretro API.

### OpenGL hardware accelerated cores

[A guide for developing OpenGL accelerated cores](opengl-cores.md) is available.


## Implementing the API

The libretro API consists of several functions outlined in libretro.h, found in the RetroArch source package. A libretro implementation should be compiled into a dynamically loadable executable (.dll/.so/.dylib) or a static library (.a/.lib) that exports all the functions outlined in libretro.h. These will be called by the frontend. Implementations are designed to be single-instance, so global state is allowed. Should the frontend call these functions in wrong order, undefined behavior occurs. The API header is compatible with C99 and C++. From C99, the bool type and <stdint.h> are used.

The program flow of a frontend using the libretro API can be expressed as follows:

### Startup

#### `retro_api_version()`

This function should return RETRO_API_VERSION, defined in libretro.h. It is used by the frontend to determine if ABI/API are mismatched. The ver- sion will be bumped should there be any non- compatible changes to the API. Changes to retro_* structures, as well as changes in publically visible functions and/or their arguments will warrant a bump in API version.

#### `retro_set_*()`

Libretro is callback based. The frontend will set all callbacks at this stage, and the implementation must store these function pointers somewhere. The frontend can, at a later stage, call these.

#### `retro_init()`

This function is called once, and gives the implementation a chance to initialize data structures.

#### Environment callback

While libretro has callbacks for video, audio and input, there’s a callback type dubbed the environment callback. This callback (`retro_environment_t`) is a generic way for the libretro implementation to access features of the API that are considered too obscure to deserve its own symbols. It can be extended without breaking ABI. The callback has a return type of `bool` which tells if the frontend recognized the request given to it.


#### `retro_set_controller_port_device()`

By default, gamepads will be assumed to be inserted into the implementation. If the engine is sensitive to which type of input device is plugged in, the frontend may call this function to set the device to be used for a certain player. The implementation should try to auto-detect this if possible.


#### `retro_get_system_info()`

The frontend will typically request statically known information about the core such as the name of the implementation, version number, etc. The information returned must be allocated statically.


#### `retro_load_game()`

This function will load content. If the implementation is an emulator, this would be a game ROM image, if it is a game engine, this could be packaged upassets for the game, etc. The function takes a structure that points to the path where the ROM was loaded from, as well as a memory chunk of the already loaded file.

**There are two modes of loading files with libretro.** If the game engine requires to know the path of where the ROM image was loaded from, the `need_fullpath` field in `retro_system_info` must be set to true. If the path is required, the frontend will not load the file into the data/size fields, and it is up to the implementation to load the file from disk. The path might be both relative and absolute, and the implementation must check for both cases. This is useful if the ROM image is too large to load into memory at once. It is also useful if the assests consist of many smaller files, where it is necessary to know the path of a master file to infer the paths of the others.

If `need_fullpath` is set to `false`, the frontend will load the ROM image into memory beforehand. In this mode, the path field is not guaranteed to be non-`NULL`. It should point to a valid path if the file was indeed, loaded from disk, however, it is possible that the file was loaded from `stdin`, or similar, which has no well-defined path. It is recommended that `need_fullpath` is set to `false` if possible, as it allows more features, such as soft-patching to work correctly.


#### `retro_get_system_av_info()`

This function lets the frontend know essential audio/video properties of the game. As this information can depend on the game being loaded, this info will only be queried after a valid ROM image has been loaded. It is important to accurately report FPS and audio sampling rates, as FFmpeg recording relies on exact information to be able to run in sync for several hours.


### Running

#### `retro_run()`

After a game has been loaded successfully, retro_run() will be called repeatedly as long as the user desires. When called, the implementation will perform its inner functionality for one video frame. During this time, the implementation is free to call callbacks for video frames, audio samples, as well as polling input, and querying current input state. The requirements for the callbacks are that video callback is called exactly once, i.e. it does not have to come last. Also, input polling must be called at least once.

#### Input
Abstracting gamepad and other input devices is the hardest part of defining a multi-system API as it differs across every system. The libretro API therefore provides the RetroPad -- a gamepad/joystick abstraction available with digital and analog controls -- to allow cores to be written without platform-specific input code.

Input device abstractions are also available for keyboards, mice, pointers, and lightguns.

**Learn more in the [Input API](../input-api.md) docs.**

#### Video/Audio synchronization considerations

Libretro is based on fixed rates; video FPS and audio sampling rates are always assumed to be constant. Frontends will have control of the speed of playing, typically using VSync to obtain correctspeed. The frontend is free to "fast-forward", i.e. play as fast as possible without waiting, or slow-motion. For this reason, the engine should not rely on system timers to perform arbitrary synchronization. This is common and often needed in 3D games to account for varying frame rates while still maintaining a playable game.

However, libretro targets classic systems where one can assume that 100% real-time performance will always be met, thus avoiding the need for careful timing code. By default, the libretro implementation should replace any arbitrary `sleep()` and `time()` patterns with simply calling video/audio callbacks. The frontend will make sure to apply the proper synchronization. This is mostly a problem with game ports, such as PrBoom. For the libretro port of PrBoom, which heavily relied on timers and sleeping patterns, sleeping was replaced with simply running for one frame, and calling the video callback. After that, enough audio was rendered to correspond to one frames worth of time, 1/fps seconds. All sleeping and timing patterns could be removed, and synchronization was correct.


#### Audio callback options

The libretro API has two different audio callbacks. Only one of these should be used; the implementation must choose which callback is best suited.

One _audio frame_ is always made up of 2 int16_t samples, corresponding to the left and right channels, respectively.

##### Per-sample audio
The first audio callback is called _per-sample_, but actually deals with a single _audio frame_. It has the prototype `void (*retro_audio_sample_t)(int16_t left, int16_t right)`. This should be used if the implementation generates a single audio frame at a time. The frontend will make sure to partition the audio data into suitable chunks to avoid incurring too much syscall overhead.


##### Batch audio
If audio is output in a "batch" fashion, i.e. 1 / fps seconds worth of audio data at a time, the batch approach should be considered. Rather than looping over all audio frames and calling the per-sample callback every time, the _batch callback_ should be used instead. Its prototype is `size_t (*retro_audio_sample_batch_t)(const int16_t * samples, size_t num_frames)`. The number of samples should be `2 * num_frames`, with left and right channels interleaved every frame. Using the batch callback, audio will not be copied in a temporary buffer, which can buy a slight performance gain. Also, all data will be pushed to audio driver in one go, saving some slight overhead.

It is not recommended to use the batch callback for very small (< 32 frames) amounts of data. The data passed to the batch callback should, if possible, be aligned to 16 bytes (depends on platform), to allow accelerated SIMD operations on audio.

#### `retro_serialize_size()`, `retro_serialize()`, and `retro_unserialize()`

Serialization is optional to implement. Serialization is better known as "save states" in emulators, and these functions are certainly more useful in emulators which have a fixed amount of state. It allows the frontend to take a snapshot of all internal state, and later restore it. This functionality is used to implement e.g. rewind and netplay.

Some important considerations must be taken to implement these functions well:

  * If serialization is not supported, `retro_serialize_size()` should return 0. If retro_serialize_size() returns non-zero, it is assumed that serialization is properly implemented.
  * The frontend should call `retro_serialize_size()` before calling `retro_serialize()` to determine the amount of memory needed to correctly serialize.
  * The size eventually passed to `retro_serialize()` must be at least the size of the value returned in `retro_serialize_size()`. If too large a buffer is passed to `retro_serialize()`, the extra data should be ignored (or `memset` to 0).
  * It is valid for the value returned by `retro_serialize_size()` to vary over time, however, it cannot ever increase over time. If it should ever change, it must decrease. This is rationalized by the ability to predetermined a fixed save state size right after `retro_load_game()` that will always be large enough to hold any following serialization. This certainty is fundamental to the rewind implementation. This requirement only holds between calls to `retro_load_game()` and `retro_unload_game()`.

If possible, the implementation should attempt to serialize data at consistent offsets in the memory buffer. This will greatly help the rewind implementation in RetroArch to use less memory. Both `retro_serialize()` and `retro_unserialize()` return a boolean value to let the frontend know if the implementation succeeded in serializing or unserializing.

### Tear-down

#### `retro_unload_game()`

After the user desired to stop playing, `retro_unload_game()` will be called. This should free any internal data related to the game, and allow `retro_load_game()` to be called again.

#### `retro_deinit()`

This function should free all state that was initialized during `retro_init()`. After calling this function, the frontend can again call `retro_init()`.

### Thread safety

The libretro API does not make guarantees about thread safety. Therefore the core developer should assume the functions declared in the libretro header are neither reentrant nor safe to be called by multiple threads at the same time.
If a core is multi-threaded then the core developer is responsible for thread safety when making libretro API calls. 

It is discouraged to do libretro API calls outside of `retro_run()` i.e. outside of the main thread.

## Add your core to Libretro infrastructure

There are several steps before your core can be available to user via the Online Updater > Core Downloader :

 1. Add your Libretro core info to [libretro-super repository](https://github.com/libretro/libretro-super/tree/master/dist/info)
    - As a test, place info file to `libretro_info_path`, load core, and validate if information shows up correctly: Information / Core Information
 2. Add [.gitlab-ci.yml](https://github.com/search?q=org%3Alibretro+.gitlab-ci.yml&type=commits) to the root directory of your source code so it can be added to Libretro CI/CD.
 3. If you want your core to be compatible with [RetroArch's playlist](/guides/roms-playlists-thumbnails) :
    - Add at least icons playlist and content for your core in [RetroArch assets repository](https://github.com/libretro/retroarch-assets/tree/master/src/xmb/monochrome)
    - Add your games to [Libretro database](https://github.com/libretro/libretro-database).
 4. Add documentation of your core following the instructions in [libretro-docs](https://github.com/libretro/docs#adding-a-new-core).
