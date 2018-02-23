# Libretro API

The Libretro API is a lightweight C-based Application Programming Interface.

Libretro is an API that exposes generic audio/video/input callbacks. You therefore don’t have to worry about writing different video drivers for Direct3D, OpenGL or worrying about catering to all possible input APIs/sound APIs/supporting all known joypads/etc. A frontend for libretro (such as RetroArch) handles video output, audio output, input and application lifecycle. A libretro core written in portable C or C++ can run seamlessly on many platforms with very little/no porting effort.

When you choose to use the libretro API, your program gets turned into a single library file (called a ‘libretro core’). A frontend that supports the libretro API can then load that library file and run the app. While RetroArch is the reference frontend for libretro, several other projects have used the libretro interface to include support for emulators and/or game engines. libretro is completely open and free for anyone to use.

## Implementing the API

The libretro API consists of several functions outlined in libretro.h, found in the RetroArch source package. 

A libretro implementation should be compiled into a dynamically loadable executable (.dll/.so/.dylib) or a 
static library (.a/.lib) that exports all the functions outlined in libretro.h. These will be called by the
frontend. Implementations are designed to be single-instance, so global state is allowed. Should the frontend 
call these functions in wrong order, undefined behavior occurs.

The API header is compatible with C99 and C++. From C99, the bool type and `<stdint.h>` are used. The latest version of this file can be found [here](https://github.com/libretro/RetroArch/blob/master/libretro-common/include/libretro.h).

### Libretro GL
Aside from retro-style games and emulators that depend on software rendering and where you’d typically need nothing more than the ability to render to a framebuffer, the Libretro API also allows you to target OpenGL. This subset of GL functionality (that we call libretro GL) allows you to create libretro ports that use OpenGL as part of their internal rendering. There are two subsets that can be targeted – either OpenGL 2.0 or OpenGL ES 2.0.

From a portability perspective, we highly recommend that you try to target both so that your libretro GL port will work on both mobile and desktop computers.


## Program flow

The program flow of a frontend using the libretro API can be expressed as follows:

### Startup

#### retro_api_version()

This function should return RETRO_API_VERSION, defined in libretro.h. It is used by the frontend to determine if 
ABI/API are mismatched. The version will be bumped should there be any non- compatible changes to the API.

Changes to retro_* structures, as well as changes in publically visible functions and/or their arguments will 
warrant a bump in API version.

Libretro is a simple API that allows for the creation of games, emulators and multimedia applications.

Popular examples of implementations for this API includes videogame system emulators and game engines, but also 
more generalized 3D programs. These programs are instantiated as dynamic libraries. We refer to these as 
"libretro cores".

#### retro_init()

This function is called once, and gives the implementation a chance to initialize
data structures. This is sometimes implemented as a no-op.

#### retro_set_*()

Libretro is callback based. The frontend will set all callbacks at this stage,
and the implementation must store these function pointers somewhere. The
frontend can, at a later stage, call these.

### Environment callback

While libretro has callbacks for video, audio and input, there's a callback type dubbed the environment callback. 
This callback (retro_environment_t) is a generic way for the libretro implementation to access features of 
the API that are considered too obscure to deserve its own symbols. It can be extended without breaking ABI. 

The callback has a return type of bool which tells if the frontend recognized the request given to it.
Most implementations of libretro will not use this callback at all.

#### retro_set_controller_port_device()

By default, joypads will be assumed to be inserted into the implementation. If the engine is sensitive 
to which type of input device is plugged in, the frontend may call this function to set the device to 
be used for a certain player. The implementation should try to auto-detect this if possible.

#### retro_get_system_info()

The frontend will typically request statically known information about the core such as the name of 
the implementation, version number, etc. The information returned should be stored statically. If 
dynamic allocation must take place, the implementation must make sure to free this storage in 
retro_deinit() later.

### Running

#### retro_run()

After a game has been loaded successfully, retro_run() will be called repeatedly as long as the 
user desires. When called, the implementation will perform its inner functionality for one video frame. 

During this time, the implementation is free to call callbacks for video frames, audio samples, 
as well as polling input, and querying current input state. The requirements for the callbacks are that
video callback is called exactly once, i.e. it does not have to come last. Also, input polling 
must be called at least once.

### Video/Audio synchronization considerations

Libretro is based on fixed rates. Video FPS and audio sampling rates are always assumed to be 
constant. Frontends will have control of the speed of playing, typically using VSync to obtain 
correct speed. The frontend is free to "fast-forward", i.e. play as fast as possible without 
waiting, or slow- motion. 

For this reason, the engine should not rely on system timers to perform arbitrary
synchronization. This is common and often needed in 3D games to account for
varying frame rates while still maintaining a playable game. However, libretro targets classic 
systems where one can assume that 100 % real-time performance will always be met, 
thus avoiding the need for careful timing code.

By default, the libretro implementation should replace any arbitrary sleep()/time()
patterns with simply calling video/audio callbacks. The frontend will make sure
to apply the proper synchronization.

This is mostly a problem with game ports, such as PrBoom. For the libretro
port of PrBoom, which heavily relied on timers and sleeping patterns, sleeping
was replaced with simply running for one frame, and calling the video callback.
After that, enough audio was rendered to correspond to one frames worth of
time, 1 / fps seconds. All sleeping and timing patterns could be removed, and
synchronization was correct.

### Audio callback considerations

The libretro API has two different audio callbacks. Only one of these should be
used; the implementation must choose which callback is best suited.

The first audio callback is per-sample, and has the type void (*)(int16_t,
int16_t). This should be used if the implementation outputs audio on a per-
sample basis. The frontend will make sure to partition the audio data into
suitable chunks to avoid incurring too much syscall overhead.

If audio is output in a "batch" fashion, i.e. 1 / fps seconds worth of audio
data at a time, the batch approach should be considered. Rather than looping
over all samples and calling per-sample callback every time, the batch callback
should be used instead, size_t (*)(const int16_t *, size_t).

Using the batch callback, audio will not be copied in a temporary buffer,
which can buy a slight performance gain. Also, all data will be pushed to audio
driver in one go, saving some slight overhead. It is not recommended to use the
batch callback for very small (< 32 frames) amounts of data.
The data passed to the batch callback should, if possible, be aligned to 16
bytes (depends on platform), to allow accelerated SIMD operations on audio.
RetroArch implements SSE/AltiVec optimized audio processing for conversions
and resampling.

### Input device abstraction

Abstracting input devices is the hardest part of defining a multi-system API as
it differs across every system. The common input devices are:

- Joypad (with or without analogs)
- Mouse
- Keyboard (e.g. Commodore, Amiga)
- Lightguns (e.g. SNES SuperScope)

The joypad abstraction is the most interesting. Rather than complicating things
by mapping input arbitrarily in terms of the implementation, which would make input 
configuration very complex with careful configuration on a per-
implementation basis, an abstract joypad device, the RetroPad, was devised.
This joypad is essentially the Super Nintendo controller, widely considered
the pinnacle of retro game controllers. 

To account for more modern systems with additional buttons, additions from the 
PlayStation DualShock are incorporated, with extra shoulder buttons (L2/R2), 
as well as depressable analogs (L3/R3).

In addition, the RETRO_DEVICE_ANALOG is used for analog stick data.
An implementation should map its idea of a joypad in terms of the RetroPad,
which is what most users will have to use with their frontend.

### State

#### retro_serialize_size()

#### retro_serialize()

#### retro_unserialize()

Serialization is optional to implement. Serialization is better known as "save
states" in emulators, and these functions are certainly more useful in emulators
which have a fixed amount of state. It allows the frontend to take a snapshot of
all internal state, and later restore it. This functionality is used to implement
e.g. rewind and netplay. Some important considerations must be taken to
implement these functions well.

If serialization is not supported, retro_serialize_size() should return 0. If
retro_serialize_size() returns non-zero, it is assumed that serialization is prop-
erly implemented.

The frontend should call retro_serialize_size() before calling retro_serialize()
to determine the amount of memory needed to correctly serialize. The size even-
tually passed to retro_serialize() must be at least the size of the value returned
in retro_serialize_size(). If too large a buffer is passed to retro_serialize(), the
extra data should be ignored (or memset to 0).

It is valid for the value returned by retro_serialize_size() to vary over time,
however, it cannot ever increase over time. If it should ever change, it must
decrease. This is rationaled by the ability to pre- determined a fixed save state
size right after retro_load_game() that will always be large enough to hold any
following serialization. This certainty is fundamental to the rewind implemen-
tation. This requirement only holds between calls to retro_load_game() and
retro_unload_game().

If possible, the implementation should attempt to serialize data at consistent
offsets in the memory buffer. This will greatly help the rewind implementation
in RetroArch to use less memory.

Both retro_serialize() and retro_unserialize() return a boolean value to let
the frontend know if the implementation succeeded in serializing or unserializing.

### Tear-down

#### retro_unload_game()

After the user desired to stop playing, retro_unload_game() will be called. This
should free any internal data related to the game, and allow retro_load_game()
to be called again.

#### retro_deinit()

This function should free all state that was initialized during retro_init(). After
calling this function, the frontend can again call retro_init().
