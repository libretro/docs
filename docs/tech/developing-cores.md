# Developing Cores

[Libretro API- An Introduction (YouTube)](https://www.youtube-nocookie.com/embed/KxJ6ZbWnAc4?start=92)

The Libretro API is a lightweight C-based Application Programming Interface (API) that exposes generic audio, video, and input callbacks. Developers of "cores" such as standalone games, game emulators, media players, and other applications don’t have to worry about writing different video drivers for Direct3D, OpenGL or worrying about catering to all possible input APIs, sound APIs, gamepads, etc.

When you choose to use the libretro API, your program gets turned into a single library file (called a ‘libretro core’). A frontend that supports the libretro API can then load that library file and run the app. The frontend’s responsibility is to provide all the implementation-specific details. The libretro core’s responsibility is solely to provide the main program.

Any project that is ported to work with this API can be made to run on ANY libretro frontend – now and forever. You maintain a single codebase that only deals with the main program, and you then target one single API (libretro) in order to port your program over to multiple platforms at once. A libretro core written in portable C or C++ can run seamlessly on many platforms with very little or no porting effort. Libretro bindings for other languages are growing increasingly common and comprehensive as well.
