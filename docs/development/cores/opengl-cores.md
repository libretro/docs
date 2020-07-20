# Use case for Libretro OpenGL API

### What do most modern platforms have in common?

**Answer**: OpenGL or OpenGL ES.

These APIs allow us to write 3D graphics-based applications:
  * In a platform-agnostic way
  * With hardware acceleration
  * Using a standard language/API

### What do these platforms not have in common?

  * Audio
  * Input
  * Shader
  * Windowing implementations
  * User interfaces
  * Touchscreen overlays
  * Camera
  * Sensors
  * Development environments

### What is not portable about OpenGL?
  * Symbol wrapper lookup (necessary on Windows)
  * Divergent subsets of API functionality (GLES 1/2/3, GL 1.5/2/3/4)
  * Windowing interfacing context drivers per platform
  * Display frontend for each platform
  * Post-processing by way of shaders

Libretro's OpenGL implementation is designed specifically to address the practicalities of extending OpenGL and OpenGL ES hardware acceleration to the wide variety of architectures and environments supported by the libretro ecosystem.

# Implementing OpenGL accelerated cores

Libretro GL provides a portable solution for OpenGL-based hardware acceleration along with the rest of libretro's simple but comprehensive API. The Libretro API allows cores to use OpenGL (GL2+ or GLES2) directly in addition to frontend features, such as multi-pass shaders. This is accomplished by letting cores render to frame buffer objects (FBOs) instead of the back buffer.

!!! important
    GL drivers must support render-to-texture extensions for this to work.


## Application model

Using OpenGL in a libretro context is somewhat different than when you use libraries like SDL, GLFW or SFML. In libretro, the frontend owns the OpenGL context. For an application using conventional libraries like SDL, the application will do this:

  - Initialize, create a window of specific size
  - Initialize OpenGL resources
  - Per frame, handle window events (resize), handle input, render as desired, swap buffers
  - Tear down context and window

Using libretro API, platform specifics like managing windows, rendering surfaces and input are all handled by the frontend. The core will only deal with rendering to a surface. The core renders to an FBO of fixed size, determined by the core. The frontend takes this rendered data and stretches to screen as desired by the user. It can apply shaders, change aspect ratio, etc. This model is equivalent to software rendering where `retro_video_refresh_t_callback` is called.

## Using OpenGL in libretro

  - Use `RETRO_ENVIRONMENT_SET_PIXEL_FORMAT` and request a 32-bit format. This is the format that the resulting framebuffer will have. In reality, RetroArch converts all 16-bit data (`RETRO_PIXEL_FORMAT_RGB565`) to 32-bit (`XRGB8888`) when running desktop GL for performance reasons. In GLES mode, this is not done, however. Do not rely on this behavior, and be explicit about it.
  - Use `RETRO_ENVIRONMENT_SET_HW_RENDER` environment callback in `retro_load_game()`, notifying frontend that core is using hardware rendering. An OpenGL 2+ or GLES2 context can be specified here. If this is not supported the callback will return false, and you can fallback to software rendering or refuse to start.
  - In `retro_get_system_av_info()`, as normal, `max_width` and `max_height` fields specify the maximum resolution the core will render to.
  - When the frontend has created a context or reset the context, `retro_hw_context_reset_t` is called. Here, OpenGL resources can be initialized. The frontend can reset the context at will (e.g. when changing from fullscreen to windowed mode and vice versa). The core should take this into account. It will be notified when reinitialization needs to happen.
  - A callback to grab OpenGL symbols is exposed via `retro_hw_get_proc_address_t`. Use this to retrieve symbols and extensions.
  - In `retro_run()`, use `retro_hw_get_current_framebuffer_t` callback to get which FBO to render to, e.g. `glBindFramebuffer(GL_FRAMEBUFFER, get_current_framebuffer())`. This is your "backbuffer". Do not attempt to render to the real backbuffer. You must call this every frame as it can change every frame. The dimensions of this FBO are at least as big as declared in `max_width` and `max_height`. If desired, the FBO also has a depth buffer attached (see `RETRO_ENVIRONMENT_SET_HW_RENDER`).
  - When done rendering, call `retro_video_refresh_t` with the macro `RETRO_HW_FRAMEBUFFER_VALID` as argument for buffer. Width and height should be specified as well, but pitch argument is irrelevant and will be ignored. If the frame is duped (see `RETRO_ENVIRONMENT_CAN_DUPE`), the buffer argument takes`NULL` as normal.

## Important considerations in the OpenGL code

The frontend and libretro core share OpenGL context state. Some considerations have to be taken into account for this cooperation to work nicely.

  - Don’t leave buffers and global objects bound when calling `retro_video_refresh_t`. Make sure to unbind everything, i.e. VAOs, VBOs, shader programs, textures, etc. Failing to do this could potentially hit strange bugs. The frontend will also follow this rule to avoid clashes. Being tidy here is considered good practice anyway.
  - The GL viewport will be modified by frontend as well as libretro core. Set this every frame.
  - `glEnable()` state like depth testing, etc, is likely to be disabled in frontend as it's just rendering a quad to screen. Enable this per-frame if you use depth testing. There is no need to disable this before calling `retro_video_refresh_t`.
  - Avoid VAOs. They tend to break on less-than-stellar drivers, such as AMD drivers on Windows as of 2013
  - Try to write code which is GLES2 as well as GL2+ (w/ extensions) compliant. This ensures maximum target surface for the libretro core.
  - Libretro treats top-left as origin. OpenGL treats bottom-left as origin. To be compatible with the libretro model, top-left semantics are preserved. Rendering normally will cause the image to be flipped vertically. To avoid this, simply scale the final projection matrix by `[1,− 1 , 1 ,1]`.

## Test implementations

  * [Several OpenGL demonstrations are available in `libretro-samples`](https://github.com/libretro/libretro-samples/tree/master/video/opengl)
  * [A demonstration OpenGL core is available](https://bitbucket.org/Themaister/libretro-gl) which uses instanced rendering of a textured cube, with FPS-style fly-by camera and libretro’s mouse API as well. It is valid GLES and GL2 at the same time.

## Building a libretro core

Libretro is an interface, and not a utility library. Libretro cores are built as standalone dynamic or static libraries, and as they use GL symbols here,
they must link against GL symbols themselves. An example of how this can be done is shown in [the test implementation](https://github.com/Themaister/RetroArch/blob/master/libretro-test-gl/Makefile).
