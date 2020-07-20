# Shader Development Overview

## Available shader types

As the reference libretro frontend, RetroArch supports three shader languages:

| Shader Language                     | Video Context Drivers |
| ----------------------------------- | --------------------- |
| [Slang](slang-shaders.md)           | Vulkan, GL 2.x (legacy desktop), GL 3.x+ (modern desktop), GLES2 (legacy mobile), GLES3 (modern mobile), HLSL (Planned), Metal (Planned)    |
| [GLSL](glsl-shaders.md)             | GL Shading Language, OpenGL, OpenGL ES, and EGL contexts including KMS mode in Linux) |
| [Cg (deprecated)](cg-shaders.md)    | HLSL/GLSL, nVidia |
| [XML (discontinued)](xml-shaders.md)  | GLSL              |

When possible, it is recommended to use Slang shaders for supporting the widest variety of modern systems.

RetroArch is able to stack these shaders to create a combined effect. These complex effects are saved with a special extension:

 - `.slangp` for Slang
 - `.glslp` for GLSL
 - `.cpg` for Cg

## Common Shaders Repository

The Libretro organization hosts a [repository](https://github.com/libretro/common-shaders) on Github that contains a compilation of shaders. Users can contribute their own shaders to this repository by doing a Pull Request.

## Shader development: The rendering pipeline

With shaders you are able to take control over a large chunk of the GPUs inner workings by writing your own programs that are uploaded and run on the GPU. In the old days, GPUs were a big black box that was highly configurable using endless amount of API calls. In more modern times, rather than giving you endless amounts of buttons, you are expected to implement the few `«buttons»` you actually need, and have a streamlined API.

The rendering pipeline is somewhat complex, but we can in general simplify
it to:

- Vertex processing
- Rasterization
- Fragment processing
- Framebuffer blend

Shader developers can take control of what happens during vertex processing, and fragment processing.


## Frontend development: Rendering the shader chain

With all these options, the rendering pipeline can become somewhat complex. The meta-shader format greatly utilizes the possibility of off-screen rendering to achieve its effects.

In OpenGL usually this is referred to as frame-buffer objects, and in HLSL as render targets. This feature will be referred to as FBO from here. FBO texture is assumed to be a texture bound to the FBO. As long as the visual result is approximately identical, the implementation does not have to employ FBO.

With multiple passes our chain looks like this conceptually:

`|Source image| ---> |Shader 0| ---> |FBO 0| ---> |Shader 1| ---> |FBO 1| ---> |Shader 2| ---> (Back buffer)`

In the case that Shader 2 has set some scaling params, we need to first render to an FBO before stretching it to the back buffer.

`|Source image| ---> ... |Shader 2| ---> |FBO 2| ---> (Back buffer)`

Scaling parameters determine the sizes of the FBOs. For visual fidelity it is recommended that power-of-two sized textures are bound to them. This is due to floating point inaccuracies that become far more apparent when not using power-of-two textures. If the absolute maximum size of the source image is known, then it is possible to preallocate the FBOs.

Do note that the size of FBOn is determined by dimensions of `FBOn-1` when "source" scale is used, _not_ the source image size! Of course, FBO0 would use source image size, as there is no `FBO-1`.

For example, with SNES there is a maximum width of `512` and height of `478`. If a source relative scale of `3.0x` is desired for first pass, it is thus safe to allocate a FBO with size of `2048x2048`. However, most frames will just use a tiny fraction of this texture.

With "viewport" scale it might be necessary to reallocate the FBO in run-time if the user resizes the window.

## Shader compatibility with RetroArch video drivers

In RetroArch, the following table specifies which shader types work with what video contexts:

Context Driver         |    GLSL    |    CG   |    HLSL        | Slang
-----------------------|------------|---------|----------------|--------------
Android                |    Y       |    N    |    N           | Y
CGL                    |    Y       |    N    |    N           | N
D3D                    |    N       |    Y    |    N (Possible)| Y
DRM                    |    Y       |    N    |    N           | N
Emscripten             |    Y       |    N    |    N           | N
GDI                    |    N       |    N    |    N           | N
KHR                    |    N       |    N    |    N           | Y
Mali                   |    Y       |    N    |    N           | N
Opendingux             |    Y       |    N    |    N           | N
OSMesa                 |    Y       |    N    |    N           | N
PS3                    |    N       |    Y    |    N           | N
QNX                    |    Y       |    N    |    N           | N
SDL                    |    N       |    N    |    N           | N
VC                     |    Y       |    N    |    N           | N
Vivante                |    Y       |    N    |    N           | N
Wayland                |    Y       |    N    |    N           | Y
WGL                    |    Y       |    N    |    N           | Y
X                      |    Y       |    Y    |    N           | Y
XEGL                   |    Y       |    N    |    N           | N


!!! Warning
    Attempting to load unsupported shader types may result in segmentation faults because the context drivers currently do not have the behavior to declare which types of shaders it supports.
