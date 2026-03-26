# Developing Slang Shaders

## Target shader languages
 - Vulkan
 - GL 2.x (legacy desktop)
 - GL 3.x+ (modern desktop)
 - GLES2 (legacy mobile)
 - GLES3 (modern mobile)
 - HLSL
 - Metal

**Design principle: Avoid mandating high-level features which do not work for GLES2.**

RetroArch runs on GL, GL2, and GLES2. GL and GL2 are only relevant from a legacy standpoint, but GLES2 is stil a relevant target platform today and having GLES2 compatibility makes GL2 very easy. We therefore avoid a design which deliberately ruins GLES2 compatibility.

However, we also do not want to artificially limit ourselves to shader features which are only available in GLES2. There are many shader builtins, for example, which only work in GLES3/GL3 and we should not hold back support in these cases.

## Why a new spec?

The previous RetroArch shader subsystem in RetroArch is quite mature with a large body of shaders written for it. While it has served us well, it was not forward-compatible.

The current state of writing high-level shading languages that work everywhere is challenging. Up until now, we have relied on nVidia Cg to serve as a basic foundation for shaders, but Cg has been discontinued for years and is closed source. Developers cannot use Cg for newer APIs such as Vulkan, D3D12, and Metal.

Cg cross-compilation to GLSL is unmaintainable. We cannot do the Cg transform in runtime on mobile due to lack of open source Cg runtime.

Another alternative was to write straight-up GLSL, but this too has serious drawbacks. All the different GL versions and GLSL variants are different enough that it becomes painful to write portable GLSL code that works without modification.

Examples include:

 - varying/attribute vs in/out (legacy vs modern)
 - precision qualifiers (GLSL vs ESSL)
 - texture2D vs texture (legacy vs modern)
 - Lack of standard support for `#include` to reduce copy-pasta

The fundamental issue is that GLSL shaders are dependent on the runtime GL version, which makes it difficult to test all shader variants. We did not want to litter every shader with heaps of `#ifdefs` everywhere to combat this problem. We also wanted to avoid having to write pseudo-GLSL with some text-based replacement behind the scenes.

## Vulkan GLSL as the portable solution

Fortunately, there is now a forward looking and promising solution to our problems. Vulkan GLSL is a GLSL dialect designed for Vulkan and SPIR-V intermediate representation. We can use whatever GLSL version we want when writing shaders, as it is decoupled from the GL runtime.

In runtime, we can have a vendor-neutral mature compiler, [https://github.com/KhronosGroup/glslang](glslang) which compiles our Vulkan GLSL to SPIR-V. Using [https://github.com/KhronosGroup/SPIRV-Cross](SPIRV-Cross), we can then do reflection on the SPIR-V binary to deduce our filter chain layout.

We can also disassemble back to our desired GLSL dialect in the GL backend based on which GL version we're running, which effectively means we can completely sidestep all our current problems with a pure GLSL based shading system.

Another upside is that we no longer have to deal with vendor-specific quirks in the GLSL frontend. A common problem when people write for nVidia is that they mistakenly use `float2`/`float3`/`float4` types from Cg/HLSL, which is supported as an extension in their GLSL frontend.

## Why not SPIR-V directly?

This was considered, but there are several convenience problems with having a shading spec around pure SPIR-V. The first problem is metadata. In GLSL, we can quite easily extend with custom `#pragmas` or similar, but there is no trivial way to do this in SPIR-V outside writing custom tools to emit special metadata as debug information or similar with OpSource.

We could also have this metadata outside in a separate file, but juggling more files means more churn, which we should try to avoid. The other problem is convenience. If RetroArch only accepts SPIR-V, we would need an explicit build step outside RetroArch first before we could test a shader. This gets very annoying during shader development, so it is clear that we need to support GLSL anyway, making SPIR-V support largely redundant.

The main argument for supporting SPIR-V would be to allow new shading languages to be used. This is a reasonable thing to consider, which is why the goal is to not design ourselves into a corner where it's only Vulkan GLSL that can possibly work down the line. We are open to the idea that new shading languages that target SPIR-V will emerge.

## High level Overview

The RetroArch shader format outlines a filter chain/graph, a series of shader passes which operate on previously generated data to produce a final result. The goal is for every individual pass to access information from *all* previous shader passes, even across frames, easily.

 - The filter chain specifies a number of shader passes to be executed one after the other.
 - Each pass renders a full-screen quad to a texture of a certain resolution and format.
 - The resolution can be dependent on external information.
 - All filter chains begin at an input texture, which is created by a libretro core or similar.
 - All filter chains terminate by rendering to the "backbuffer".

The backbuffer is somewhat special since the resolution of it cannot be controlled by the shader. It can also not be fed back into the filter chain later because the frontend (here RetroArch) will render UI elements and such on top of the final pass output.

Let's first look at what we mean by filter chains and how far we can expand this idea.

### Simplest filter chain

The simplest filter chain we can specify is a single pass.

```text
(Input) -> [ Shader Pass #0 ] -> (Backbuffer)
```

In this case there are no offscreen render targets necessary since our input is rendered directly to screen.

### Multiple passes

A trivial extension is to keep our straight line view of the world where each pass looks at the previous output.

```text
(Input) -> [ Shader Pass #0 ] -> (Framebuffer) -> [ Shader Pass #1 ] -> (Backbuffer)
```

Framebuffer here might have a different resolution than both Input and Backbuffer. A very common scenario for this is separable filters where we first scale horizontally, then vertically.

### Multiple passes and multiple inputs

There is no reason why we should restrict ourselves to a straight-line view.

```text
     /------------------------------------------------\
    /                                                  v
(Input) -> [ Shader Pass #0 ] -> (Framebuffer #0) -> [ Shader Pass #1 ] -> (Backbuffer)
```

In this scenario, we have two inputs to shader pass #1, both the original, untouched input as well as the result of a pass in-between. All the inputs to a pass can have different resolutions.

We have a way to query the resolution of individual textures to allow highly controlled sampling. We are now at a point where we can express an arbitrarily complex filter graph, but we can do better. For certain effects, time (or rather, results from earlier frames) can be an important factor.

### Multiple passes, multiple inputs, with history

```text
    /------------------------------------------------\
   /                                                  v
(Input) -> (+feedback input) [ Shader Pass #0 ] (output) -> (Framebuffer #0) -> [ Shader Pass #1 ] -> (Backbuffer)
         ^                                      /
          \------------------------------------/
```

This diagram shows a filter chain where a shader pass can take multiple inputs: the original input texture, the output from a previous pass, and feedback from a previous frame. The feedback input allows the shader to use data from the last frame, enabling effects like motion blur, persistence, or ghosting. Each pass can combine these inputs to produce its output, which is then used by subsequent passes or rendered to the backbuffer.

For practical guidance on using feedback and history in shaders, see [Advanced Techniques: Practical Guide to Feedback and History](#advanced-techniques-practical-guide-to-feedback-and-history).

### Texture Clamping and Wrap Modes

When sampling textures in a shader, the behavior for coordinates outside the [0, 1] range is determined by the texture's wrap mode. By default, all input and intermediate textures in the filter chain use `clamp_to_border` mode, with the border color set to transparent black (`vec4(0.0)`). This means that any sampling outside the texture returns transparent black unless otherwise specified.

The wrap mode for each stage's input texture can be controlled in the preset file using the `wrap_modeN` option (where `N` is the pass index) or `NAME_wrap_mode` for external textures where `NAME` is the alias. The following wrap modes are supported:

- **clamp_to_edge**: Coordinates outside [0, 1] are clamped to the nearest edge texel. Sampling outside the texture returns the value of the closest edge pixel.
- **clamp_to_border** (default): Coordinates outside [0, 1] return the border color, which is always transparent black (`vec4(0.0)`).
- **repeat**: Texture coordinates wrap around, so sampling outside [0, 1] repeats the texture in a tiled fashion.
- **mirrored_repeat**: Texture coordinates outside [0, 1] are mirrored and then repeated, creating a seamless mirrored tiling effect.

You can set the wrap mode for each texture or pass in the preset file, for example:

```ini
wrap_mode0 = clamp_to_edge
wrap_mode1 = mirrored_repeat

foo_wrap_mode = clamp_to_edge
bar_wrap_mode = repeat
```

This allows fine-grained control over how out-of-bounds texture sampling behaves for each stage or lookup texture. For most shader passes, the default `clamp_to_border` is safe, but for effects like tiling or seamless wrapping, `repeat` or `mirrored_repeat` may be preferred. When compositing external textures, especially with alpha channels, `clamp_to_border` may have unexpected results near edges, and `clamp_to_edge` may be preferred.

From a practical standpoint, `clamp_to_border` is generally the most robust choice for filtering, while `clamp_to_edge` is generally the most robust choice for compositing.

### Runtime Resizing of Textures and Framebuffers

To enable maximum flexibility, frontends take a hands-off approach to resizing textures and framebuffers during runtime. This allows shaders and presets to adapt dynamically to changing conditions, such as window resizing, core resolution changes, or user adjustments.

There are three high-level stages for size management in the filter chain:

**Input Stage:**
- The base texture is provided by the core and is represented by the `OriginalSize` uniform.
- The input size can change from frame to frame, depending on the core's output.

**Intermediate Stages:**
- Each shader pass outputs to a framebuffer whose size is controlled by the preset.
- The size can be specified as an absolute value, as a size relative to the output of the previous shader stage (or `OriginalSize` for the first stage), or as a size relative to the viewport (the area requested by the frontend, represented by `FinalViewportSize`).
- The size of the input to a pass is represented by the `SourceSize` uniform, and the size of the output is represented by the `OutputSize` uniform.

**Output Stage:**
- The final output may be the last shader in the chain, provided the swapchain format matches the requested format in that shader pass (e.g., 8-bit when frontend HDR is off, 10-bit when HDR is on, *and* `scale_typeN` is not used for that shader).
- In all cases, the final output size is represented by the `FinalViewportSize` uniform.

This flexible sizing system allows for complex scaling, multi-pass effects, and seamless adaptation to runtime changes. Shaders should always use the provided size uniforms (`OriginalSize`, `SourceSize`, `OutputSize`, `FinalViewportSize`) to ensure correct sampling and output, especially when resolutions may change dynamically. In addition, shaders can rely on the `OriginalAspect` uniform to know the requested aspect ratio of the core for correct presentation.

No texture in the filter chain is padded at any time. It is possible for resolutions in the filter chain to vary over time, which is common with certain emulated systems. In these scenarios, the textures and framebuffers are simply resized appropriately. Older frames still keep their old resolution in the brief moment that the resolution is changing.

It is very important that shaders do not blindly sample with nearest filter with any scale factor. If naive nearest neighbor sampling is to be used, shaders must either make sure that the filter chain is configured with integer scaling factors so that ambiguous texel-edge sampling is avoided, or align texture sampling with the texture's pixel grid.

If you need to align sampling with the texture's pixel grid (for example, to avoid artifacts with nearest-neighbor sampling and non-integer scaling), see [the sampling alignment code example](#correctly-sampling-textures) later in this document.

### Deduce shader inputs by reflection

We want to have as much useful information in the shader source as possible. We want to avoid having to explicitly write out metadata in shaders wherever we can. The biggest hurdle to overcome is how we describe our pipeline layout. The pipeline layout contains information about how we access resources such as uniforms and textures.

There are six main types of inputs in this shader system.

 - Texture samplers (sampler2D)
 - Look-up textures for static input data
 - Uniform data describing dimensions of textures
 - Uniform ancillary data for render target dimensions, backbuffer target dimensions, frame count, etc
 - Uniform user-defined parameters
 - Uniform MVP for vertex shader

#### Deduction by name

There are two main approaches to deduce what a sampler2D uniform wants to sample from. The first way is to explicitly state somewhere else what that particular sampler needs, e.g.

```glsl
uniform sampler2D geeWhatAmI;

// Metadata somewhere else
SAMPLER geeWhatAmI = Input[-2]; // Input frame from 2 frames ago
```

The other approach is to have built-in identifiers which correspond to certain textures.

```glsl
// Source here being defined as the texture from previous framebuffer pass or the input texture if this is the first pass in the chain.
uniform sampler2D Source;
```

In SPIR-V, we can use `OpName` to describe these names, so we do not require the original Vulkan GLSL source to perform this reflection.
We use this approach throughout the specification. An identifier is mapped to an internal meaning (semantic). The shader backend looks at these semantics and constructs
a filter chain based on all shaders in the chain.

Identifiers can also have user defined meaning, either as an alias to existing identifiers or mapping to user defined parameters.

### Combining vertex and fragment into a single shader file

One strength of Cg is its ability to contain multiple shader stages in the same .cg file.
This is very convenient since we always want to consider vertex and fragment together.
This is especially needed when trying to mix and match shaders in a GUI window for example.
We don't want to require users to load first a vertex shader, then fragment manually.

GLSL however does not support this out of the box. This means we need to define a light-weight system for preprocessing
one GLSL source file into multiple stages.

#### Do we make vertex optional?

In most cases, the vertex shader will remain the same. This leaves us with the option to provide a "default" vertex stage if the shader stage is not defined, but at this time, a valid entry-point must always be present for both stages.

Vertex shaders are also useful for performing precomputations that can reduce the workload of the fragment shader. For more information, see [Advanced Techniques: Vertex Precomputation](#vertex-precomputation).

### #include support

With complex filter chains there is a lot of opportunity to reuse code. We therefore want light support for the #include directive.

### Required Shader Stages

Every `.slang` shader file must define both a vertex and a fragment stage. This is accomplished using the `#pragma stage` directive. The convention is to place the vertex stage first, followed by the fragment stage.

#### Universal Declarations
Any code (such as uniform declarations, function definitions, or constants) written before the first `#pragma stage` directive is considered universal. These declarations are included in both the vertex and fragment shader stages.

#### Scoped Declarations
Once a `#pragma stage` directive is encountered, all subsequent code is scoped to that shader stage until the next `#pragma stage` is found. This allows you to write stage-specific code for either the vertex or fragment shader.

#### Example Structure
```glsl
#version 450

// Universal declarations
uniform mat4 MVP;
vec2 computeUV(vec2 pos) { ... }

#pragma stage vertex
// Vertex stage-specific code
layout(location = 0) in vec2 position;
void main() {
   gl_Position = MVP * vec4(position, 0.0, 1.0);
}

#pragma stage fragment
// Fragment stage-specific code
layout(location = 0) out vec4 FragColor;
void main() {
   FragColor = vec4(1.0);
}
```

#### Supported `#pragma stage` Types
- `#pragma stage vertex`: Marks the beginning of the vertex shader stage code.
- `#pragma stage fragment`: Marks the beginning of the fragment shader stage code.

Both stages must be present for the shader to compile successfully. The order should be vertex first, then fragment. Any declarations before the first stage pragma are shared by both stages; declarations after a stage pragma are only visible to that stage until the next stage pragma.

This structure ensures clarity and separation between universal and stage-specific code, making shader development more maintainable and less error-prone.

### `#pragma` directives: Required and Optional

Most `#pragma` directives in a `.slang` file are optional and provide additional metadata or configuration for the shader system. However, there are two exceptions: `#pragma stage vertex` and `#pragma stage fragment` are required in every `.slang` file. These pragmas explicitly define the boundaries of the vertex and fragment shader stages, and both must be present for the shader to compile successfully. This requirement is closely related to the rule that both vertex and fragment stages are mandatory (see [Required shader stages](#required-shader-stages)).

Other `#pragma` directives, such as `#pragma name`, `#pragma format`, and `#pragma parameter`, are optional and only need to be included if their functionality is desired. If omitted, their associated features will not be available, but the shader will still compile as long as the required stage pragmas are present.

### User parameter support

Since we already have a "preprocessor" of sorts, we can also trivially extend this idea with user parameters. In the shader source we can specify which uniform inputs are user controlled, GUI visible name, their effective range, etc.

#### Parameter Declaration, Validation, and UI Behavior

When a `#pragma parameter` line is declared in a shader, the libretro frontend uses the information in the line to create a parameter entry in the user interface. Each entry displays the description, the current value, and the minimum and maximum values. Entries are populated in the order they appear in the shader source, and in the order of shader compilation (earlier passes compile first).

The compiler validates each `#pragma parameter` line to ensure it is complete and well-formed. The step parameter is optional, but best practice is to always include it for clarity and consistency. If duplicate parameter lines are present—either due to an `#include` or because multiple shader passes declare the same parameter—the compiler checks that all lines for a given parameter name match exactly. This means that parameter lines using the same variable name must have identical descriptions, default values, minimum and maximum values, and step sizes across all declarations. If there is a mismatch, compilation will fail.

In the RetroArch interface, parameter values are displayed to two decimal digits. However, the step size can be smaller than 0.01. If the step size is too small, users may not see the value change in the interface. Therefore, it is best practice to scale parameter values so that the step size is no smaller than 0.01 for optimal usability.

##### Examples

**Simple Example:**

```glsl
#pragma parameter Brightness "Screen brightness" 1.0 0.0 2.0 0.05
```
This creates a parameter named `Brightness` with a description, default value, minimum, maximum, and step size.

**Multiple Files Example A (Valid):**

File 1:
```glsl
#pragma parameter Sharpness "Sharpness level" 1.0 0.0 2.0 0.1
```
File 2:
```glsl
#pragma parameter Contrast "Contrast adjustment" 1.0 0.5 1.5 0.05
```
These files declare completely different parameters. This is valid.

**Multiple Files Example B (Valid):**

File 1:
```glsl
#pragma parameter Gamma "Gamma correction" 1.0 0.5 2.0 0.1
```
File 2:
```glsl
#pragma parameter Gamma "Gamma correction" 1.0 0.5 2.0 0.1
```
These files declare the same parameter with identical lines. This is valid.

**Multiple Files Example C (Invalid):**

File 1:
```glsl
#pragma parameter Saturation "Saturation adjustment" 1.0 0.0 2.0 0.1
```
File 2:
```glsl
#pragma parameter Saturation "Saturation level" 1.2 0.0 2.0 0.1
```
These files declare the same parameter name (`Saturation`) but with different descriptions and default values. This will not compile; all fields must match exactly.

**Note:** Validation is case sensitive. Parameter names, descriptions, and all values must match exactly, including letter case, for duplicate parameters across files or shader passes.

### Lookup textures

A handy feature to have is reading from lookup textures. Custom sampler uniforms are specified in the `.slangp` (preset) file using the `textures` line, where values are separated by semicolons:

```ini
textures = "foo;bar"
```
Each listed texture uniform can then be assigned a texture file and options:

```ini
foo = "relative/or/absolute/path/filename.png"
bar = "another_texture.png"
```
PNG and JPEG formats are known to be supported.

Additional options can be set for each texture uniform:

- `foo_linear = true` or `false` (enables or disables bilinear sampling; corresponds to shader option `filter_linearN`)
- `foo_wrap_mode = clamp_to_edge` or other valid wrap mode strings (corresponds to shader option `wrap_modeN`)
- `foo_mipmap = true` or `false` (enables or disables mipmapping; corresponds to shader option `mipmap_inputN`)

Option values are case sensitive. Valid boolean values are `true` and `false`. It's recommended to enable mipmapping if your texture is simply going to be composited on screen (whether to mipmap LUTs warrants its own discussion entirely).

This mechanism allows shader authors to bind custom textures to uniforms and control their sampling behavior and wrapping modes directly from the preset file, providing flexibility for advanced shader effects.

For more information on the uniforms and aliases automatically provided when using lookup textures, see the [Aliases](#aliases) section.

**Shader Example:**

To use a custom texture declared in the preset file, declare the sampler uniform in your shader code:

```glsl
#pragma stage fragment
...
layout(binding = 2) uniform sampler2D foo;
```
Then, sample from the texture in your shader:

```glsl
vec4 texColor = texture(foo, vTexCoord);
```
This will use the texture file and options specified for `foo` in the preset file. The binding number must match the preset's texture order. Explicit binding is mandatory for all samplers and UBOs. `sampler2D` objects can only be declared in the fragment shader stage.

## Slang specification

This part of the spec considers how Vulkan GLSL shaders are written. The frontend uses the glslang frontend to compile GLSL sources. This ensures that we do not end up with vendor-specific extensions.

The `#version` string should be as recent as possible, e.g. `#version 450` or `#version 310 es`. It is recommended to use `310 es` since it allows `mediump` which can help on mobile.

!!! Note
    After the Vulkan GLSL is turned into SPIR-V, the original `#version` string does not matter anymore.

!!! Warning
    SPIR-V cannot be generated from legacy shader versions such as `#version 100` (ES 2.0) or `#version 120` (GL 2.1).

The frontend will use reflection on the resulting SPIR-V file in order to deduce what each element in the UBO or what each texture means. The main types of data passed to shaders are read-only and can be classified as:

 - `uniform sampler2D`: This is used for input textures, framebuffer results and lookup-textures.
 - `uniform Block { };`: This is used for any constant data which is passed to the shader.
 - `layout(push_constant) uniform Push {} name;`: This is used for any push constant data which is passed to the shader.

### Resource usage rules

Certain rules must be adhered to in order to make it easier for the frontend to dynamically set up bindings to resources.

 - All resources must be using descriptor set `#0`, or don't use `layout(set = #N)` at all.
 - `layout(binding = #N)` must be declared for all `UBO`s and `sampler2D`s.
 - All resources must use different bindings.
 - There can be only one UBO.
 - There can be only one push constant block.
 - It is possible to have one UBO and one push constant block.
 - If a UBO is used in both vertex and fragment, their binding number must match.
 - If a UBO is used in both vertex and fragment, members with the same name must have the same offset/binary interface.
   This problem is easily avoided by having the same UBO visible to both vertex and fragment as "common" code.
 - If a push constant block is used in both vertex and fragment, members with the same name must have the same offset/binary interface.
 - `sampler2D` cannot be used in vertex, although the size parameters of samplers can be used in vertex.
 - Other resource types such as SSBOs, images, atomic counters, etc, etc, are not allowed.
 - Every member of the UBOs and push constant blocks as well as every texture must be meaningful
   to the frontend in some way, or an error is generated.

### Initial pre-process of slang files

The very first line of a `.slang` file must contain a `#version` statement.

The first process which takes place is dealing with `#include` statements. A slang file is preprocessed by scanning through the slang and resolving all `#include` statements.

**Include Path Restrictions:**
- Only files in the same directory as the including file, or in a child directory, may be included. Absolute paths and parent-relative paths (e.g., `../`) are not supported and have undefined behavior.

**Cyclic Includes:**
- Cyclic includes are not handled at all. If a file is included more than once in a dependency cycle, only the first occurrence is processed; subsequent `#include` lines for that file lead to undefined behavior. As a result, slang requires a flat, acyclic dependency structure for includes.

The include process does not consider any preprocessor defines or conditional expressions. Nested includes are allowed as long as they do not form a cycle.

This means `#include` handling does not respect `#ifdef`, `#ifndef`, `#if`, or similar conditional blocks. Even if an include appears inside a branch that would normally be compiled out by the GLSL preprocessor, slang still sees and processes that include during its own preprocessing step.

For example, this is unintuitive but important:

```glsl
#ifdef USE_OPTIONAL_HELPERS
#include "optional-helper.inc"
#pragma parameter DebugAmount "Debug Amount" 0.0 0.0 1.0 0.1
#endif
```

Even when `USE_OPTIONAL_HELPERS` is not defined, slang will still attempt to process the `#include` and will still discover the `#pragma parameter` line. In other words, these constructs are not conditionally skipped just because they appear inside a conditional GLSL block.

E.g.:
```glsl
#include "common.inc"
```

If a shader wants to reuse helper code when present but still compile when the file is missing, it can use an optional include pragma.

#### `#pragma include_optional`

This pragma behaves like `#include`, but does not generate an error if the specified file cannot be found.

The format is:
```glsl
#pragma include_optional "path/to/file_to_include"
```

This is useful for optional compatibility shims, shared parameter blocks, or helper files that may exist in one shader pack but not another.

After includes have been resolved, the frontend scans through all lines of the shader and considers `#pragma` statements.
These pragmas build up ancillary reflection information and otherwise meaningful metadata.

Like includes, pragmas are discovered by scanning the source directly and do not respect `#ifdef` or related conditional compilation blocks. In practice, a pragma written inside a conditional block should still be treated as present by the slang frontend.

#### `#pragma stage`
This pragma controls which part of a `.slang` file are visible to certain shader stages.
Currently, two variants of this pragma are supported:

 - `#pragma stage vertex`
 - `#pragma stage fragment`

If no `#pragma stage` has been encountered yet, lines of code in a shader belong to all shader stages.

If a `#pragma stage` statement has been encountered, that stage is considered active, and the following lines of shader code will only be used when building source for that particular shader stage. A new `#pragma stage` can override which stage is active.

#### `#pragma name`
This pragma lets a shader set its identifier. This identifier can be used to create simple aliases for other passes.

E.g.:
```glsl
#pragma name HorizontalPass
```

#### `#pragma alias`

This pragma is supported as an alias of `#pragma name`. It sets the same shader identifier and has the same behavior as `#pragma name`.

E.g.:
```glsl
#pragma alias HorizontalPass
```

For consistency and clarity, `#pragma name` should be preferred in new shaders and documentation.

#### `#pragma format`
This pragma controls the format of the framebuffer which this shader will render to. The default render target format is `R8G8B8A8_UNORM`.

Supported render target formats are listed below. From a portability perspective, please be aware that GLES2 has abysmal render target format support, and GLES3/GL3 may have restricted floating point render target support.

##### Portability Limitations: Guaranteed Formats

**GLES2 (OpenGL ES 2.0):**
The following framebuffer color formats are guaranteed to be supported on all GLES2-compliant devices (at least, according to specification):

- `GL_RGBA4`
- `GL_RGB5_A1`
- `GL_RGB565`

Other formats, such as `GL_RGBA8` or floating-point formats, are not guaranteed and may not be available on all GLES2 implementations. Unfortunately, none of these formats align with the formats that can be expressed by the pragma.

**GLES3 (OpenGL ES 3.0):**
GLES3 expands the set of guaranteed framebuffer formats. The following are required by the specification:

- `GL_RGBA4`
- `GL_RGB5_A1`
- `GL_RGB565`
- `GL_RGBA8` (corresponds to `R8G8B8A8_UNORM` with 8 bits per channel)
- `GL_RGB8`
- `GL_RGBA16`
- `GL_RGB10_A2` (corresponds to `A2B10G10R10_UNORM_PACK32` with 10 bits per color channel, 2 bits per alpha)
- `GL_R11F_G11F_B10F`
- `GL_RGB10_A2UI` (corresponds to `A2B10G10R10_UINT_PACK32` with 10 bits per color channel, 2 bits per alpha)
- `GL_RGBA16F` (corresponds to `R16G16B16A16_SFLOAT` with 16 bits per channel)
- `GL_RGBA32F` (corresponds to `R32G32B32A32_SFLOAT` with 32 bits per channel)

Desktop-oriented APIs can generally support all formats available.

##### Valid Formats

**8-bit**
 - `R8_UNORM`
 - `R8_UINT`
 - `R8_SINT`
 - `R8G8_UNORM`
 - `R8G8_UINT`
 - `R8G8_SINT`
 - `R8G8B8A8_UNORM`
 - `R8G8B8A8_UINT`
 - `R8G8B8A8_SINT`
 - `R8G8B8A8_SRGB`

**10-bit**
 - `A2B10G10R10_UNORM_PACK32`
 - `A2B10G10R10_UINT_PACK32`

**16-bit**
 - `R16_UINT`
 - `R16_SINT`
 - `R16_SFLOAT`
 - `R16G16_UINT`
 - `R16G16_SINT`
 - `R16G16_SFLOAT`
 - `R16G16B16A16_UINT`
 - `R16G16B16A16_SINT`
 - `R16G16B16A16_SFLOAT`

 **32-bit**
 - `R32_UINT`
 - `R32_SINT`
 - `R32_SFLOAT`
 - `R32G32_UINT`
 - `R32G32_SINT`
 - `R32G32_SFLOAT`
 - `R32G32B32A32_UINT`
 - `R32G32B32A32_SINT`
 - `R32G32B32A32_SFLOAT`

E.g.:
```glsl
#pragma format R16_SFLOAT
```

If rendering to uint/int formats, make sure your fragment shader output target is uint/int.

##### Practical Format Choice Guidance

When choosing a framebuffer format for your shader, consider the following practical recommendations:

- For shaders that output gamma-corrected SDR (standard dynamic range) data, use `R8G8B8A8_UNORM` or simply omit the format specification (the default is usually suitable).
- For shaders that output HDR10 data, any output intended for 10-bit display, or gamma-corrected intermediates requiring extra precision, use `A2B10G10R10_UNORM_PACK32`.
- For shaders that output linear data (such as for realistic color blending or physically-based rendering), use `R16G16B16A16_SFLOAT`.
- If your shader only needs to output one or two color channels, the `Rxx` or `RxxGxx` formats (e.g., `R16_UINT`, `R8_UNORM`) can be used for efficiency.

Be aware that using higher bit-depth formats (such as 16-bit or 32-bit float) can have a significant impact on performance, especially on mobile or older hardware. Always profile your shader if performance is a concern.

##### Output transfer-function mapping

When the final pass in a filter chain targets an HDR-capable display, the frontend selects a swapchain format that matches the display's capabilities. The transfer function the shader is expected to produce in its output depends entirely on which format the final pass renders to. Intermediate passes are not affected by these rules — only the last pass that writes to the swapchain.

The table below summarises the contract for each relevant final-pass format.

| Final pass format | Bit depth | Color space | Expected transfer function | Notes |
|---|---|---|---|---|
| `R8G8B8A8_UNORM` | 8-bit | Rec. 709 | Gamma-corrected (sRGB/Rec. 709) | SDR output. Gamma-corrected values can be written directly. Linear values must be gamma-corrected before output. Apply tone-mapping as needed before the final pass. |
| `R16G16B16A16_SFLOAT` | 16-bit | Rec. 709 | Linear (scRGB) | HDR output via scRGB. Linear values can be written directly. Values above 1.0 represent luminance above SDR white. Gamma-corrected values must be linearized before output. PQ-encoded values must be linearized before output. |
| `A2B10G10R10_UNORM_PACK32` | 10-bit | Rec. 2020 | PQ (ST 2084) | HDR10 output. HDR10-encoded (PQ) values can be written directly. Linear values, gamma-corrected values, and HLG values must all be converted to PQ before output. |

##### 8-bit output (`R8G8B8A8_UNORM`): SDR, Rec. 709

This is the standard SDR path. The display and the OS compositor both assume the output is gamma-corrected sRGB / gamma 2.2 in the Rec. 709 color space.

- **Gamma-corrected values** can be written to `FragColor` directly.
- **Linear values** must be gamma-corrected before output (apply inverse EOTF for the selected SDR display model).
- **Tone-mapping** should be applied before the final pass whenever scene luminance can exceed the SDR range.

##### 16-bit output (`R16G16B16A16_SFLOAT`): scRGB, Rec. 709

scRGB is a linear, extended-range encoding in the Rec. 709 color space. The value `1.0` corresponds to the SDR white point (80 nits by convention). Values above `1.0` are legal and represent luminance above SDR white, up to the display's peak luminance.

- **Linear values** can be written to `FragColor` directly.
- **Gamma-corrected values** must be linearized before output.
- **PQ-encoded values** must be linearized (apply the PQ EOTF) before output.

##### 10-bit output (`A2B10G10R10_UNORM_PACK32`): HDR10, Rec. 2020

HDR10 uses the PQ (ST 2084) transfer function in the Rec. 2020 color space. The PQ curve encodes an absolute luminance range of 0–10 000 nits, with `1.0` mapping to 10 000 nits. SDR white can correspond to either 100 nits or 203 nits.

- **HDR10-encoded (PQ) values** can be written to `FragColor` directly.
- **Linear values** must be converted to PQ encoding before output, including a gamut conversion from Rec. 709 to Rec. 2020 if the working color space is Rec. 709.
- **Gamma-corrected values** must be linearized first, then converted to PQ as above.
- **HLG-encoded values** must be converted to PQ before output (convert HLG → linear → PQ).

#### `#pragma parameter`

Shader parameters allow shaders to take user-defined inputs as uniform values. This makes shaders more configurable.

The format is:
```glsl
#pragma parameter IDENTIFIER "DESCRIPTION" INITIAL MINIMUM MAXIMUM [STEP]
```

The step parameter is optional. However, best practice is to always include the step parameter for clarity and consistency, even if the value is not strictly required. `INITIAL`, `MINIMUM`, and `MAXIMUM` are floating point values. `IDENTIFIER` is the meaningful string which is the name of the uniform which will be used in a UBO or push constant block. `DESCRIPTION` is a string which is human readable representation of IDENTIFIER.

E.g:
```glsl
layout(push_constant) uniform Push {
   float DummyVariable;
} registers;
#pragma parameter DummyVariable "This is a dummy variable" 1.0 0.2 2.0 0.1
```

### I/O interface variables

The slang shader spec specifies two vertex inputs and one fragment output. Varyings between vertex and fragment shaders are user-defined.

#### Vertex inputs
Two attributes are provided and must be present in a shader. It is only the layout(location = #N) which is actually significant. The particular names of input and output variables are ignored, but should be consistent for readability.

##### `layout(location = 0) in vec4 Position;`

This attribute is a 2D position in the form `vec4(x, y, 0.0, 1.0);`. Shaders should not try to extract meaning from the x, y.

`gl_Position` must be assigned as:

```glsl
gl_Position = MVP * Position;
```

##### `layout(location = 1) in vec2 TexCoord;`

The texture coordinate is semantically such that `(0.0, 0.0)` is top-left and `(1.0, 1.0)` is bottom right.

If TexCoord is passed to a varying unmodified, the interpolated varying will be `uv = 0.5 / OutputSize` when rendering the upper left pixel as expected and `uv = 1.0 - 0.5 / OutputSize` when rendering the bottom-right pixel.

#### Vertex/Fragment interface

Vertex outputs and fragment inputs link by location, and not name.

E.g.:
```glsl
// Vertex
layout(location = 0) out vec4 varying;
// Fragment
layout(location = 0) in vec4 some_other_name;
```

will still link fine, although using same names are encouraged for readability.

#### Location allocation for composite types

Location indices are consumed per slot, not per declaration line. Composite types can consume multiple consecutive locations.

- Scalar and vector types (`float`, `vec2`, `vec3`, `vec4`, etc.) consume 1 location.
- Matrix types consume multiple locations. A matrix consumes one location per column (for example, `mat4` consumes 4 locations).
- Structs consume the sum of their members' location usage.
   - Non-matrix struct members consume 1 location each.
   - Matrix struct members consume one location per matrix column.

Example (`mat4` consumes locations 0, 1, 2, and 3):

```glsl
// Invalid: overlaps location 1, which is still part of CorrectionMatrix.
layout(location = 0) in mat4 CorrectionMatrix;
layout(location = 1) in float CorrectionScale;

// Valid: next free location after mat4 is 4.
layout(location = 0) in mat4 CorrectionMatrix;
layout(location = 4) in float CorrectionScale;
```

When matching vertex outputs to fragment inputs, make sure both stages use compatible types and the same occupied location range.

#### Fragment outputs

##### `layout(location = 0) out vec4 FragColor;`

Fragment shaders must have a single output to `location = 0`.

Multiple render targets are not allowed. The type of the output depends on the render target format. `int`/`uint` type must be used if `UINT`/`INT` render target formats are used; otherwise `float` type.

### Builtin variables

#### Builtin texture variables

The input of textures get their meaning from their name.

 - `Original`: This accesses the input of the filter chain, accessible from any pass.
 - `Source`: This accesses the input from previous shader pass, or `Original` if accessed in the first pass of the filter chain.
 - `OriginalHistory#`: This accesses the input # frames back in time. There is no limit on #, except larger numbers will consume more VRAM. `OriginalHistory0` is an alias for `Original`, `OriginalHistory1` is the previous frame and so on.
 - `PassOutput#`: This accesses the output from pass # in this frame. `PassOutput#` must be causal, it is an error to access `PassOutputN` in pass `M` if `N >= M`. `PassOutput#` will typically be aliased to a more readable value.
 - `PassFeedback#`: This accesses PassOutput# from the previous frame. Any pass can read the feedback of any feedback, since it is causal. `PassFeedback#` will typically be aliased to a more readable value.
 - `User#`: This accesses look-up textures. However, the direct use of `User#` is discouraged and should always be accessed via aliases.

#### Builtin texture size uniform variables

If a member of a UBO or a push constant block is called `???Size#` where `???#` is the name of a texture variable,
that member must be a `vec4`, which will receive these values:

 - `X`: Horizontal size of texture
 - `Y`: Vertical size of texture
 - `Z`: `1.0` / (Horizontal size of texture)
 - `W`: `1.0` / (Vertical size of texture)

It is valid to use a size variable without declaring the texture itself. This is useful for vertex shading.

It is valid (although probably not useful) for a variable to be present in both a push constant block and a UBO block at the same time.

#### Builtin uniform variables

Other than uniforms related to textures, there are other special uniforms available. These builtin variables may be part of a UBO block and/or a push constant block.

 - `MVP`: `mat4` model view projection matrix.
 - `OutputSize`: a `vec4(x, y, 1.0 / x, 1.0 / y)` variable describing the render target size `(x, y)` for this pass.
 - `FinalViewportSize`: a `vec4(x, y, 1.0 / x, 1.0 / y)` variable describing the render target size for the final pass. Accessible from any pass.
 - `FrameCount`: an `uint` variable taking a value which increases by one every frame. This value could be pre-wrapped by modulo if specified in preset. This is useful for creating time-dependent effects.
 - `FrameDirection`: an `int` variable which indicates whether the content is currently being rewinded. Has a value of `-1` while rewinding, otherwise `1`.
 - `Rotation`: a `uint` variable with values from `0` to `3` describing the rotation of the content; respectively `0°`, `90°`, `180°`, and `270°`.
 - `OriginalAspect`: a `float` value describing the aspect ratio intended by the current core.
 - `OriginalAspectRotated`: a `float` value describing the intended aspect ratio after accounting for rotation. It is equal to `OriginalAspect` for unrotated and `180°`-rotated content, and `1.0 / OriginalAspect` for `90°` and `270°` rotation.
 - `OriginalFPS`: a `float` value describing the frame rate set by the core.
 - `FrameTimeDelta`: a `uint` value describing the time difference, in microseconds, between the previous and current frame.

#### Checking for builtin uniform availability

Some builtin uniforms were added after the initial slang implementation. If you want a shader to compile on older RetroArch versions, it is best practice to check whether newer builtin uniforms are available before using them.

RetroArch provides the following preprocessor defines:

 - `_HAS_ORIGINALASPECT_UNIFORMS`: Indicates that `OriginalAspect` and `OriginalAspectRotated` are available.
 - `_HAS_FRAMETIME_UNIFORMS`: Indicates that `OriginalFPS` and `FrameTimeDelta` are available.

For example:
```glsl
#ifdef _HAS_FRAMETIME_UNIFORMS
   float deltaSeconds = float(FrameTimeDelta) * 1e-6;
#else
   float deltaSeconds = 1.0 / 60.0;
#endif
```

Using these defines lets a shader take advantage of newer runtime information while still remaining compatible with older frontend versions.

#### Aliases

Aliases can give meaning to arbitrary names in a slang file. This is mostly relevant for LUT textures, shader parameters and accessing other passes by name.

If a shader pass has a `#pragma name NAME` associated with it, meaning is given to the shader:

 - `NAME` is a `sampler2D`.
 - `NAMESize` is a `vec4` size uniform associated with `NAME`.
 - `NAMEFeedback` is a `sampler2D` for the previous frame.
 - `NAMEFeedbackSize` is a `vec4` size uniform associated with `NAMEFeedback`.

#### Example slang shader

```glsl
#version 450
// 450 or 310 es are recommended

layout(set = 0, binding = 0, std140) uniform UBO
{
   mat4 MVP;
   vec4 SourceSize; // Not used here, but doesn't hurt
   float ColorMod;
};

#pragma name StockShader
#pragma format R8G8B8A8_UNORM
#pragma parameter ColorMod "Color intensity" 1.0 0.1 2.0 0.1

#pragma stage vertex
layout(location = 0) in vec4 Position;
layout(location = 1) in vec2 TexCoord;
layout(location = 0) out vec2 vTexCoord;
void main()
{
   gl_Position = MVP * Position;
   vTexCoord = TexCoord;
}

#pragma stage fragment
layout(location = 0) in vec2 vTexCoord;
layout(location = 0) out vec4 FragColor;
layout(binding = 1) uniform sampler2D Source;
void main()
{
   FragColor = texture(Source, vTexCoord) * ColorMod;
}
```

### Push constants vs uniform blocks
Push constants are fast-access uniform data which on some GPUs will improve performance over plain UBOs.
It is encouraged to use push constant data as much as possible.

```glsl
layout(push_constant) uniform Push
{
   vec4 SourceSize;
   vec4 FinalViewportSize;
} registers;
```

However, be aware that there is a limit to how large push constant blocks can be used. Vulkan puts a minimum required size of 128 bytes, which equals 8 `vec4`s. Using more than 128 bytes may lead to an error, so push constant blocks larger than 128 bytes should not be used.

If you're running out of space, you can move the MVP to a UBO instead, which frees up 64 bytes. Always prioritize push constants for data used in fragment shaders as there are many more fragment threads than vertex. Also note that like UBOs, the push constant space is shared across vertex and fragment.

E.g.:

```glsl
layout(binding = 0, std140) uniform UBO
{
   mat4 MVP; // Only used in vertex
   vec4 SpilledUniform;
} global;

layout(push_constant) uniform Push
{
   vec4 SourceSize;
   vec4 BlurPassSize;
   // ...
} registers;
```

### Samplers

Which samplers are used for textures are specified by the preset format. The sampler remains constant throughout the frame, and there is currently no way to select samplers on a frame-by-frame basis. This is mostly to make it possible to use the spec in GLES2 as GLES2 has no concept of separate samplers and images.

### sRGB

The input to the filter chain is not presented as an sRGB texture. Likewise, the final pass does not render to an sRGB backbuffer by default.

In practice, this means that shaders which need linear-light processing should perform explicit linearization themselves, usually in an early pass, and convert back to the desired output transfer function in a later pass.

This approach also gives shader authors more control over gamma handling. For example, a preset can insert a pass which linearizes the source into a floating point render target, perform blending or lighting work in linear space, and then apply gamma correction before the final SDR output pass.

For a more detailed framework covering how this applies to both SDR and HDR pipelines — including treating source content as virtual display signals, multi-pass HDR workflows, and practical pipeline examples — see [HDR Programming](#hdr-programming).

## Caveats

### Frag Coord

TexCoord also replaces `gl_FragCoord`. Do not use `gl_FragCoord` as it doesn't consider the viewports correctly. If you need `gl_FragCoord` use `vTexCoord * OutputSize.xy` instead.

### Derivatives

Be careful with derivatives of `vTexCoord`. The screen might have been rotated by the vertex shader, which will also rotate the derivatives, especially in the final pass which hits the backbuffer.

However, derivatives are fortunately never really needed, since `w = 1` (we render flat 2D quads), which means derivatives of varyings are constant. You can do some trivial replacements which will be faster and more robust.

```glsl
dFdx(vTexCoord) = vec2(OutputSize.z, 0.0);
dFdy(vTexCoord) = vec2(0.0, OutputSize.w);
fwidth(vTexCoord) = max(OutputSize.z, OutputSize.w);
```
To avoid issues with rotation or unexpected derivatives in case derivatives are really needed, off-screen passes will not have rotation and dFdx and dFdy will behave as expected.

### Correctly sampling textures

A common mistake made by shaders is that they aren't careful enough about sampling textures correctly.

There are three major cases to consider:

| Bilinear sampling               | If bilinear is used, it is always safe to sample a texture. |
| Nearest, with integer scale     | If the OutputSize / InputSize is integer, the interpolated vTexCoord will always fall inside the texel safely, so no special precautions have to be used. For very particular shaders which rely on nearest neighbor sampling, using integer scale to a framebuffer and upscaling that with more stable upscaling filters like bicubic for example is usually a great choice.
| Nearest, with non-integer scale | Sometimes, it is necessary to upscale images to the backbuffer which have an arbitrary size. Bilinear is not always good enough here, so we must deal with a complicated case.

If we interpolate `vTexCoord` over a frame with non-integer scale, it is possible that we end up just between two texels. Nearest neighbor will have to find a texel which is nearest, but there is no clear "nearest" texel. In this scenario, we end up having lots of failure cases which are typically observed as weird glitches in the image which change based on the resolution.

To correctly sample nearest textures with non-integer scale, we must pre-quantize our texture coordinates. Here's a snippet which lets us safely sample a nearest filtered texture and emulate bilinear filtering.

```glsl
   vec2 uv = vTexCoord * global.SourceSize.xy - 0.5; // Shift by 0.5 since the texel sampling points are in the texel center.
   vec2 a = fract(uv);
   vec2 tex = (floor(uv) + 0.5) * global.SourceSize.zw; // Build a sampling point which is in the center of the texel.

   // Sample the bilinear footprint.
   vec4 t0 = textureLodOffset(Source, tex, 0.0, ivec2(0, 0));
   vec4 t1 = textureLodOffset(Source, tex, 0.0, ivec2(1, 0));
   vec4 t2 = textureLodOffset(Source, tex, 0.0, ivec2(0, 1));
   vec4 t3 = textureLodOffset(Source, tex, 0.0, ivec2(1, 1));

   // Bilinear filter.
   vec4 result = mix(mix(t0, t1, a.x), mix(t2, t3, a.x), a.y);
```

The concept of splitting up the integer texel along with the fractional texel helps us do arbitrary non-integer scaling safely. The uv variable could also be passed pre-computed from vertex to avoid the extra computation in fragment.

See also [Advanced Techniques: Vertex Precomputation](#vertex-precomputation).

## Preset Format: Full .slangp Example

The preset format is essentially unchanged from the old .cgp and .glslp, except the new preset format is called .slangp.

Below is a comprehensive example of a `.slangp` preset file. This example demonstrates:
- Multiple shader passes
- Per-pass options (filter_linear, wrap_mode, scale_type, scale_x/y, mipmap_input, float_framebuffer, etc.)
- External lookup textures with options
- Parameter settings
- Inline comments for clarity

```ini
# Example: CRT with LUT and multi-pass scaling

shaders = 3

# Pass 0: Horizontal blur
shader0 = "shaders/blur_horiz.slang"
filter_linear0 = true           # Enable bilinear filtering for this pass
wrap_mode0 = clamp_to_edge      # Clamp sampling to edge
scale_type0 = source            # Scale relative to input
scale_x0 = 2.0                  # 2x horizontal scale
scale_y0 = 1.0                  # 1x vertical scale
mipmap_input0 = false           # No mipmapping on input
float_framebuffer0 = false      # Use integer framebuffer

# Pass 1: Vertical blur
shader1 = "shaders/blur_vert.slang"
filter_linear1 = true
wrap_mode1 = clamp_to_edge
scale_type1 = absolute          # Use absolute size
scale_x1 = 1280
scale_y1 = 960
mipmap_input1 = false
float_framebuffer1 = false

# Pass 2: CRT effect with LUT
shader2 = "shaders/crt.slang"
filter_linear2 = false          # Nearest neighbor for scanlines
wrap_mode2 = clamp_to_border
scale_type2 = viewport          # Scale to viewport size
scale_x2 = 1.0
scale_y2 = 1.0
mipmap_input2 = true            # Enable mipmapping for LUT
float_framebuffer2 = true       # Use floating point framebuffer

# External lookup textures
textures = "phosphor_lut;mask"

# LUT: Phosphor lookup table
phosphor_lut = "textures/phosphor_lut.png"
phosphor_lut_linear = true
phosphor_lut_wrap_mode = repeat
phosphor_lut_mipmap = true

# Mask: Shadow mask pattern
mask = "textures/mask.png"
mask_linear = false
mask_wrap_mode = mirrored_repeat
mask_mipmap = false

# Parameter overrides (optional, can be set in preset)
Brightness = 1.2
Sharpness = 0.8

# Comments can be added anywhere with #
# This preset demonstrates multiple passes, external textures, and parameter overrides.
```

This example shows how to:
- Chain multiple shader passes, each with its own options
- Bind external textures and control their sampling/wrapping
- Override user parameters at the preset level
- Use comments for documentation

See the following sections for detailed explanations of each option and their effects.

## Porting guide from legacy Cg spec

### Common functions
 - mul(mat, vec) -> mat * vec
 - lerp() -> mix()
 - ddx() -> dFdx()
 - ddy() -> dFdy()
 - tex2D() -> texture()
 - frac() -> fract()

### Types

 - floatN -> vecN
 - boolN -> bvecN
 - intN -> ivecN
 - uintN -> uvecN
 - float4x4 -> mat4

### Builtin uniforms and misc

 - modelViewProj -> MVP
 - IN.video\_size -> SourceSize.xy
 - IN.texture\_size -> SourceSize.xy (no POT shenanigans, so they are the same)
 - IN.output\_size -> OutputSize.xy
 - IN.frame\_count -> FrameCount (uint instead of float)
 - \*.tex\_coord -> TexCoord (no POT shenanigans, so they are all the same)
 - \*.lut\_tex\_coord -> TexCoord
 - ORIG -> `Original`
 - PASS# -> PassOutput#
 - PASSPREV# -> No direct analog, PassOutput(CurrentPass - #), but prefer aliases

### Cg semantics

 - POSITION -> gl\_Position
 - float2 texcoord : TEXCOORD0 -> layout(location = 1) in vec2 TexCoord;
 - float4 varying : TEXCOORD# -> layout(location = #) out vec4 varying;
 - uniform float4x4 modelViewProj -> uniform UBO { mat4 MVP; };

Output structs should be flattened into separate varyings.

E.g. instead of
```cpp
struct VertexData
{
   float pos : POSITION;
   float4 tex0 : TEXCOORD0;
   float4 tex1 : TEXCOORD1;
};

void main_vertex(out VertexData vout)
{
   vout.pos = ...;
   vout.tex0 = ...;
   vout.tex1 = ...;
}

void main_fragment(in VertexData vout)
{
   ...
}
```

do this

```glsl
#pragma stage vertex
layout(location = 0) out vec4 tex0;
layout(location = 1) out vec4 tex1;
void main()
{
   gl_Position = ...;
   tex0 = ...;
   tex1 = ...;
}

#pragma stage fragment
layout(location = 0) in vec4 tex0;
layout(location = 1) in vec4 tex1;
void main()
{
}
```

Instead of returning a float4 from main\_fragment, have an output in fragment:

```glsl
layout(location = 0) out vec4 FragColor;
```

## FAQ for New Shader Developers

The table below answers common first-time questions using only information already present in this document.

| Question | Short answer from this document | References |
|---|---|---|
| What is the minimum valid `.slang` shader? | It must start with `#version` on the first line and define both `#pragma stage vertex` and `#pragma stage fragment`. | [Required Shader Stages](#required-shader-stages), [Initial pre-process of slang files](#initial-pre-process-of-slang-files) |
| What are required vs optional pragmas? | Required: `#pragma stage vertex` and `#pragma stage fragment`. Others (for example `#pragma name`, `#pragma format`, `#pragma parameter`) are optional. | [#pragma directives: Required and Optional](#pragma-directives-required-and-optional), [Required Shader Stages](#required-shader-stages) |
| Is vertex stage optional? | No. Both vertex and fragment stages are mandatory. | [Do we make vertex optional?](#do-we-make-vertex-optional), [Required Shader Stages](#required-shader-stages) |
| How do includes work? | Includes are resolved in a pre-pass, do not respect `#ifdef` logic, and only support same-directory or child-directory paths. | [Initial pre-process of slang files](#initial-pre-process-of-slang-files) |
| Can I include missing helper files safely? | Yes, use `#pragma include_optional "..."` to avoid a hard error if the file is missing. | [#pragma include_optional](#pragma-include_optional) |
| What resource binding rules do I have to follow? | Explicit `layout(binding = N)` is required for samplers and UBOs; bindings must be unique; only one UBO and one push constant block are allowed. | [Resource usage rules](#resource-usage-rules) |
| Can I use `sampler2D` in vertex shaders? | No. `sampler2D` is fragment-only, though texture size uniforms can be used in vertex. | [Resource usage rules](#resource-usage-rules) |
| Which built-in textures and uniforms are available? | Built-ins include `Original`, `Source`, `PassOutput#`, `PassFeedback#`, and uniforms like `MVP`, `SourceSize`, `OutputSize`, `FrameCount`, and more. | [Builtin variables](#builtin-variables) |
| How do I choose between push constants and UBOs? | Prefer push constants for frequently used data (especially fragment), but stay within the practical 128-byte limit; spill to UBO when needed. | [Push constants vs uniform blocks](#push-constants-vs-uniform-blocks) |
| How should I choose render target format? | Use `R8G8B8A8_UNORM` for typical SDR, `A2B10G10R10_UNORM_PACK32` for HDR10/10-bit workflows, and `R16G16B16A16_SFLOAT` for linear-light processing. | [#pragma format](#pragma-format), [Practical Format Choice Guidance](#practical-format-choice-guidance) |
| What wrap mode should I use by default? | Default is `clamp_to_border`; for compositing edges, `clamp_to_edge` is often safer. | [Texture Clamping and Wrap Modes](#texture-clamping-and-wrap-modes) |
| Why do nearest-sampled shaders sometimes glitch at non-integer scale? | Interpolated UVs can fall between texels; pre-quantize coordinates to texel centers when doing nearest at non-integer scale. | [Correctly sampling textures](#correctly-sampling-textures) |
| How do parameter declarations fail? | Duplicate `#pragma parameter` entries with the same identifier must match exactly (description and all numeric fields), or compilation fails. | [Parameter Declaration, Validation, and UI Behavior](#parameter-declaration-validation-and-ui-behavior), [#pragma parameter](#pragma-parameter) |
| How do I add lookup textures in presets? | Declare them with `textures = "a;b"`, assign file paths per alias, then set optional per-texture options such as `_linear`, `_wrap_mode`, and `_mipmap`. | [Lookup textures](#lookup-textures), [Preset Format: Full .slangp Example](#preset-format-full-slangp-example) |
| What is the recommended debugging workflow? | Start with RetroArch logs for compile errors, then use graphics debuggers/profilers (RenderDoc, Nsight, PIX, GPUView) and color-debug techniques. | [Validation, Debugging, and Profiling Tools for Slang Shaders](#validation-debugging-and-profiling-tools-for-slang-shaders), [Using the RetroArch Log for Shader Debugging](#using-the-retroarch-log-for-shader-debugging), [Debugging Shaders with Colors](#debugging-shaders-with-colors) |

## Advanced Techniques

### Validation, Debugging, and Profiling Tools for Slang Shaders

#### Emulator Support and Reference Implementation

Currently, there are no standalone external validation tools or compilers for slang shaders outside of RetroArch. However, other emulators such as Ares also support the slang format, though implementation details may differ and not all shaders are guaranteed to work identically across emulators. Some projects, like 86Box, have expressed interest in supporting slang shaders in the future.

If you are an emulator developer and want to support slang shaders, you are encouraged to use RetroArch's MIT Licensed reference implementation. This ensures maximum compatibility and leverages the most mature and widely tested codebase for shader support among emulators.

#### Note on Unrelated SLANG Formats

There is a completely different SLANG format that was developed after RetroArch's. It is unrelated to Libretro and should not be confused with the slang shader format described in this document.

#### Graphics Debugging and Profiling Tools

While there are no slang-specific external tools, any graphics debugging or profiling tool that works with Vulkan, OpenGL, or Direct3D can be used to profile and debug slang shaders running in RetroArch. These tools allow you to inspect shader code, view intermediate render targets, analyze performance, and debug rendering issues. Some popular tools include:

- **RenderDoc** (https://renderdoc.org/):
   - A powerful, open-source graphics debugger for Vulkan, OpenGL, and Direct3D. Capture a frame in RetroArch, inspect all draw calls, view shader code, and analyze textures and framebuffers.
   - **Getting started:** Launch RetroArch, start your content, and attach RenderDoc to the RetroArch process. Capture a frame and explore the pipeline and resources.

- **NVIDIA Nsight Graphics** (https://developer.nvidia.com/nsight-graphics):
   - A comprehensive tool for debugging, profiling, and analyzing graphics applications on NVIDIA GPUs. Supports Vulkan, OpenGL, and Direct3D.
   - **Getting started:** Install Nsight Graphics, launch RetroArch through the tool, and use its frame debugging and profiling features.

- **Microsoft PIX** (https://devblogs.microsoft.com/pix/):
   - A performance tuning and debugging tool for Direct3D applications on Windows. Useful for analyzing shaders and GPU workloads on D3D11/D3D12 backends.
   - **Getting started:** Run RetroArch under PIX, capture a frame, and inspect shader stages and GPU timings.

- **GPUView** (https://docs.microsoft.com/en-us/windows-hardware/test/gpuview/):
   - A system-level GPU profiler for Windows, useful for analyzing overall GPU usage and identifying bottlenecks.

These tools are invaluable for diagnosing rendering issues, optimizing performance, and understanding how your shaders interact with the graphics pipeline.

#### Using the RetroArch Log for Shader Debugging

RetroArch's log output provides some useful information for debugging shaders, especially compilation errors. If your shader fails to compile, check the log for detailed error messages, including the line number and nature of the error. You can increase the log verbosity in RetroArch's settings to get more detailed output. Reviewing the log is often the fastest way to identify and fix issues in your shader code.

#### Debugging Shaders with Colors

One of the simplest and most effective ways to debug shaders is to output specific colors in your fragment shader to "flag" certain conditions or code paths. This technique helps you visually identify when a particular branch of code is executed, when a value is out of range, or when a bug occurs.

For example, you might want to check if a computed value exceeds a threshold, or if a texture coordinate is outside the expected range. By outputting a bright, easily recognizable color (such as red or green) when the condition is met, you can quickly spot issues on screen.

**Example:**

```glsl
#pragma stage fragment
layout(location = 0) out vec4 FragColor;
void main() {
   float value = ...; // Some computed value
   if (value > 1.0) {
      FragColor = vec4(1.0, 0.0, 0.0, 1.0); // Red: value is too high
   } else {
      FragColor = vec4(0.0, 1.0, 0.0, 1.0); // Green: value is OK
   }
}
```

You can use this approach to test any condition—just pick a color that stands out. This visual feedback is especially useful when debugging complex effects, coordinate calculations, or sampling issues. Once you've identified and fixed the problem, simply remove or comment out the color-debugging code. Using the parameter system with this debugging technique can be very powerful. For example, parameters can be used as switches to bypass certain sections of code in real time, or to modify values meant for internal use. The parameters can be removed and the uniforms converted to constants before publishing.

**Example: Using a Parameter as a Debug Switch**

You can use a shader parameter to toggle debugging output on and off in real time. This allows you to enable visual debugging only when needed, without modifying the shader code each time.

```glsl
#pragma parameter DebugMode "Enable debug color output" 0.0 0.0 1.0 1.0
layout(push_constant) uniform Push {
   float DebugMode;
} registers;

#pragma stage fragment
layout(location = 0) out vec4 FragColor;
void main() {
   float value = ...; // Some computed value
   if (registers.DebugMode > 0.5) {
      // Output bright green if debugging is enabled
      FragColor = vec4(0.0, 1.0, 0.0, 1.0);
   } else {
      // Normal rendering
      FragColor = ...;
   }
}
```

This approach lets you toggle debug colors from the frontend UI, making it easy to test and diagnose issues interactively. You can add more parameters to control which conditions trigger debug output, or to adjust the debug color as needed.

### Naming Conventions for Uniforms and Samplers

There are no strict requirements for naming or formatting uniforms and samplers in slang shaders—developers are free to choose conventions that best suit their project and style. However, here are some best practices and common patterns observed in the community:

- **Samplers:**
   - Treat samplers just like any other variable.
   - External textures (such as lookup tables or fixed images) are often referenced with ALL_CAPS (e.g., `LUT`, `NOISE_TEXTURE`) to indicate that they are fixed, unchanging blobs.
   - Source textures, which change from frame to frame (such as `Source` or `Original`), are typically referenced with CamelCase to reflect their dynamic nature.

- **Uniforms:**
   - Uniforms are fixed across a single frame but may change between frames. The uniforms presented by the frontend (such as `SourceSize`, `OutputSize`, `FrameCount`) use CamelCase for this reason.
   - Parameter uniforms (those controlled by the user or preset) are often considered 'fixed' and may be written in ALL_CAPS (e.g., `BRIGHTNESS`, `SATURATION`).

- **#define Usage:**
   - It's common to use `#define` for uniforms that are referenced multiple times in a shader. This can improve readability and make it easier to update variable names in one place.
   - However, uniforms provided by the frontend (such as `SourceSize`, `OutputSize`, etc.) do not need to be `#define`d, as their names are stable and consistent for backwards compatibility.

Ultimately, choose naming conventions that make your shader code clear and maintainable for yourself and others. Consistency within a project is more important than following any particular global style. If you are adding or modifying someone else's shader, it's best to follow the original style rather than refactoring the entire shader or mixing styles.

### Shader Version Selection and Cross-Platform Compilation

When writing new slang shaders, always use `#version 450` unless you have a specific reason to use `#version 310 es` (for example, targeting mobile hardware that requires it). Using `#version 450` ensures broad compatibility with a wide set of features, and is the standard for Vulkan-based workflows. Only use `#version 310 es` if it is absolutely necessary for your use case.

If you believe you need a newer shader version (such as `#version 460` or later), it's best to discuss your requirements with the Libretro developers first. There may be a workaround or alternative approach that will have better support across platforms. Users can be frustrated when they pick a shader that fails to compile on their system, so sticking to the most widely supported versions is recommended.

#### Platform Differences and Testing

Shader compilation and feature support can vary significantly between platforms, especially between Vulkan and DirectX. A shader that compiles and runs perfectly on Vulkan may not compile or behave the same way on DirectX (D3D11/D3D12), and vice-versa. For best results:

- Always test your shader on Vulkan as a baseline, since it is the most robust and widely supported backend for slang shaders.
- If you have access to a Windows system, also test your shader with at least one Direct3D driver (such as D3D12) to catch platform-specific issues early.
- Be aware that some features or syntax may be accepted by one backend but not another. When in doubt, consult the documentation or ask the community for advice.

#### Troubleshooting 'Unknown Semantic' Errors

If shader compilation fails with an 'unknown semantic' error, check that every parameter uniform you declare in your shader has a matching `#pragma parameter` line. The reflection system relies on these lines to map uniforms to user parameters and internal semantics. Missing or mismatched pragmas are a common cause of this error.

By following these guidelines, you'll maximize the portability and reliability of your shaders, and help ensure a smooth experience for users across all supported platforms.

### Best Practices for Multi-Pass (Multi-Stage) Shaders

When designing shaders that are meant to be used together as a multi-pass (multi-stage) effect, following best practices for organization and clarity will help both you and other users maintain, extend, and reuse your work. It is common for users to group unrelated shaders into a custom preset, but for tightly coupled multi-pass effects, consider the following guidelines:

1. **Descriptive Naming:**
   - Give every shader a descriptive name using `#pragma name`. Avoid using numbers or generic names; prefer qualitative, meaningful names (e.g., `#pragma name GaussianBlurH` and `#pragma name GaussianBlurV`).
   - When shaders are meant to always be used together (tightly coupled), give them a matching prefix for clarity.

2. **Shared Functions:**
   - Place shared functions, macros, or utility code in a separate file with the `.inc` extension (not `.h`). Use `#include` to bring these into each shader file that needs them.

3. **One Stage per File:**
   - Do not try to put multiple fragment or vertex shaders in one file. Each `.slang` file can only have one vertex stage and one fragment stage. If for some reason a frontend ever supports this, ignore it. It's a bad idea.

4. **Shared Parameters:**
   - Use includes for parameters when they are shared among shaders. This ensures consistency and reduces duplication. Consider using the menu technique below to show users what shader stages or high-level aspects of the effect the parameters relate to.

5. **Document Pass Order:**
   - If the shader stages need to be used in a specific order, add a comment near the top of each file or in the preset to make this explicit.

6. **Example Preset File:**
   - Always include an example `.slangp` preset file showing how your multi-pass shader is intended to be used.
   - Assume that the input is gamma-corrected and the output is 8-bit SDR. If your shader operates on linear data, add a linearizing shader stage before and a gamma correction shader stage at the end. This makes it clear to users what sort of data your shader expects and produces.

Following these practices will make your multi-pass shaders easier to understand, maintain, and integrate into larger filter chains or custom presets.


### Practical Guide to Feedback and History

Feedback in slang shaders refers to the ability for a shader pass to access the output of a previous pass from the previous frame. This is a powerful technique for creating time-based effects such as motion blur, ghosting, persistence, and other temporal filters.

#### What is Feedback?

Each shader pass can declare a uniform sampler2D with the alias `NAMEFeedback`, where `NAME` is the pass name. The frontend (e.g., RetroArch) provides one frame of history for each `NAMEFeedback` uniform, following sensible best practice. This means you can access the output of a pass from the previous frame, but not from earlier frames directly.

#### Why Use Feedback?

Feedback enables effects that depend on previous frame data. Common uses include:
- Motion blur
- Temporal anti-aliasing
- Persistence/afterglow
- Ghosting
- IIR (infinite impulse response) signal processing

With just one frame of history, you can implement a wide variety of time-based effects using IIR techniques. By blending the current frame with the previous frame's output, you can achieve effects that appear to have "memory" or persistence, without needing multiple frames of history.

#### How to Use Feedback

1. **Declare the Feedback Uniform:**
    - In your shader, declare a sampler2D uniform with the alias `NAMEFeedback`.
    - Example:
       ```glsl
       #pragma name BlurPass
       #pragma stage fragment
       layout(binding = 1) uniform sampler2D BlurPassFeedback;
       ```

2. **Sample the Previous Frame:**
    - In your fragment shader, sample from the feedback texture.
    - Example:
       ```glsl
       vec4 prev = texture(BlurPassFeedback, vTexCoord);
       ```

3. **Blend with Current Output:**
    - Combine the previous frame's output with the current computation to create a time-based effect.
    - Example (simple persistence):
       ```glsl
       FragColor = mix(texture(Source, vTexCoord), prev, 0.5);
       ```

#### Example: Temporal Persistence

```glsl
#pragma name PersistencePass
#pragma stage fragment
layout(binding = 1) uniform sampler2D PersistencePassFeedback;
layout(binding = 0) uniform sampler2D Source;
layout(location = 0) in vec2 vTexCoord;
layout(location = 0) out vec4 FragColor;
void main() {
     vec4 current = texture(Source, vTexCoord);
     vec4 previous = texture(PersistencePassFeedback, vTexCoord);
     FragColor = mix(current, previous, 0.7); // 70% previous, 30% current
}
```

#### Best Practices

- Use feedback for effects that require temporal memory.
- Limit feedback to one frame for performance and simplicity; frontends only provide one frame natively.
- For more complex history (e.g., multi-frame effects), use additional passes to "shift" feedback manually, but this is rarely needed.
- Leverage IIR signal processing techniques to achieve long-lasting effects with just one frame of history.

#### Notes

- Input textures can have arbitrary history (limited by memory), but cannot be fed back since the filter chain cannot render into them.
- For the very first frames, feedback textures are initialized to transparent black (`0`).

Feedback is a core feature for time-based shader effects, and mastering its use unlocks a wide range of creative possibilities.

### Vertex Precomputation

In many cases, it is beneficial to perform certain calculations in the vertex shader and pass the results to the fragment shader as varyings. This technique, known as vertex precomputation, can improve performance by reducing redundant computations in the fragment shader, which typically runs many more times per frame than the vertex shader.

#### Benefits
- Reduces the computational load in the fragment shader, which is executed per-pixel.
- Can help avoid redundant calculations, especially for values that are constant or linearly interpolated across a primitive.
- May improve GPU throughput and efficiency, particularly on lower-end hardware.

#### Example

Suppose you need to compute a texture coordinate transformation that is the same for all fragments of a given vertex. Instead of repeating the calculation in the fragment shader, you can do it once in the vertex shader:

```glsl
#pragma stage vertex
layout(location = 0) in vec4 Position;
layout(location = 1) in vec2 TexCoord;
layout(location = 0) out vec2 vTransformedCoord;
void main()
{
   gl_Position = MVP * Position;
   // Example transformation
   vTransformedCoord = TexCoord * 2.0 + 0.5;
}

#pragma stage fragment
layout(location = 0) in vec2 vTransformedCoord;
layout(location = 0) out vec4 FragColor;
void main()
{
   FragColor = texture(Source, vTransformedCoord);
}
```

#### Guidance
- Use vertex precomputation for any value that is constant per vertex or can be linearly interpolated across the primitive.
- Avoid duplicating expensive calculations in the fragment shader if they can be done once per vertex.
- Be mindful that not all calculations are suitable for precomputation (e.g., those requiring per-pixel precision or non-linear interpolation).
- Profile your shaders if in doubt; on complex scenes or low-power devices, the benefits can be significant.

### HDR Programming

This section is informational best-practice guidance, not a strict prescription. The goal is to provide a conceptual framework that reduces avoidable errors by keeping HDR-related processes explicit and intentional.

For background on how the slang pipeline handles gamma and linearization in general, see [sRGB](#srgb).

Without explicit transfer-function and color-space discipline, advanced pipelines can produce luminance rolloff errors, highlight clipping/banding, hue shifts near gamut limits, and inconsistent results across SDR, scRGB, and HDR10 output paths. Structuring processing into explicit stages keeps each operation in a well-defined working space and isolates conversions so output-target or source-assumption changes can be handled predictably. To achieve this structure, we first must develop mental models for each of our stages.

#### Signal model, linear light processing, and presentation

The following is an example of how to break down a complex pipeline into stages using physical modeling. We'll start with three models: signal model, light model, and presentation model. Terminology is defined in [Pipeline vocabulary](#pipeline-vocabulary).

##### Stage 1: Real-world Signal Modeling

As a working mental model, we can treat source texture data from a libretro core as normalized voltage video levels coming from a virtual DAC, video output connector, framebuffer, or other such device.

A practical rationale for this choice:

- Source values are often gamma-corrected signals, not linear-light scene data.
- The source color space may not match modern presentation color spaces.
- Applying display-like transforms too early or too late in the chain can introduce compounded errors.

For this example, we'll operate on these assumptions:

 - Source data is in range [0, 1], mapping to lowest and highest signal voltages
 - Source data is gamma-corrected according to Rec. 601
 - Source data represents the Rec. 601 color space, slightly different from target SDR color space (Rec. 709) and very different from target HDR color space (Rec. 2020)

This model helps separate signal transport from light-domain math, and makes each conversion step intentional. We can do all signal-domain processes here. Other operations related to light blending or mapping to the user's color space have to be done after conversion steps.

##### Stage 2: Linear Light Processing

Most physically meaningful operations (blending, bloom accumulation, blur energy conservation, and light-like compositing) are best behaved in linear light. General-purpose upscaling and downscaling algorithms are also usually best behaved in this stage because interpolation and reconstruction are performed in linear light.

When blending is done in gamma-encoded domains, midtones and highlights are typically biased, causing dark seams, incorrect brightness rolloff, or halo artifacts. Converting to linear light before heavy compositing stages reduces these error sources and usually gives more stable results across backends.

Output format is important at this stage. An 8-bit format can result in a loss of dynamic range, so 16-bit floating point format is recommended when shaders need to pass linear data to later shaders. This also allows values to exceed the [0, 1] range.

##### Stage 3: Presentation

Presentation is the stage where linear working data is fit to an output-referred target. In practice, this mainly means:

- tone mapping (compressing luminance into the target's usable range), and
- gamut mapping/compression (fitting colors into the target primaries without severe clipping artifacts).

Treat presentation as a deliberate final stage rather than something implied by format alone. This makes behavior easier to reason about when switching between SDR, scRGB, and HDR10 outputs.

Presentation is where technical correctness becomes visible output behavior. Decisions made here primarily determine highlight rolloff, color fidelity near gamut boundaries, and consistency between SDR, scRGB, and HDR10 outputs.

Practical guidance for Stage 3:

- **Luminance anchoring**: Decide how internal linear values map to display-referred luminance before choosing tone mapping behavior. Keep this mapping explicit so the same shader behaves predictably across output targets.
- **Tone mapping policy**: If linear-light values remain near the target range, simple clamping may be acceptable. If values significantly exceed target range, use a deliberate tone mapping operator to reduce hard clipping, highlight banding, and hue distortion.
- **Gamut compression policy**: When targeting constrained or different primaries, use gamut compression to reduce clipping artifacts. Choose rendering intent based on artistic goal (for example, preserving relationships vs preserving in-gamut accuracy).
- **Gamut compression intents**: The four classic ICC rendering intents are a useful frame of reference:
   - **Perceptual**: Compresses the full gamut to preserve visual relationships.
   - **Relative colorimetric**: Preserves in-gamut values and clips out-of-gamut values relative to target white.
   - **Saturation**: Prioritizes vividness over strict color accuracy.
   - **Absolute colorimetric**: Preserves absolute colorimetry including white-point differences, clipping out-of-gamut values.
- **Output contract check**: Validate the final stage against the per-format output contract before shipping. The normative mapping for expected transfer function by final-pass format is [Output transfer-function mapping](#output-transfer-function-mapping) under [`#pragma format`](#pragma-format).
- **Default operation order**: A stable baseline is tone mapping first, gamut compression second, then output encoding (inverse EOTF for SDR or PQ encoding for HDR).
- **Validation checklist**: Verify neutral gradients stay neutral, highlight rolloff is smooth, saturated edges do not collapse abruptly, and behavior remains coherent when switching between SDR, scRGB, and HDR10 outputs.

#### Transition Stages

At this point, we have a model for a pipeline that looks like this:

```text
Source -> Direct processing -> Linear light processing -> Tone mapping -> Gamut compression -> Output encoding
```

However, we haven't actually defined how we convert data from one stage to the next. For that, we need transition stages. SDR and HDR require separate paths.

For unknown source characteristics, prefer a BT.1886 virtual display EOTF, which can be approximated as a simple 2.4 power function. For backlit handhelds, values near gamma 2.2 are often practical. For frontlit or reflective handhelds, treat the effective value as system-dependent.

##### SDR
```text
Source -> Direct processing -> Virtual display EOTF -> Linear light processing -> Tone mapping -> Gamut compression -> SDR output (inverse EOTF) -> Output
```

##### HDR
```text
Source -> Direct processing -> Virtual display EOTF -> Linear light processing -> (Tone mapping) -> (Gamut compression) -> HDR output (PQ encoding) -> Output
```

HDR ranges are large, so tone mapping and gamut compression may not be necessary depending on the output range of the linear light processing stage.

In this document, SDR output is described as inverse EOTF to emphasize preserving intended system-gamma behavior, rather than introducing a camera-style OETF model. HDR output is described as PQ encoding and requires mapping internal rendering values to intended nit values.

#### Stage-to-workflow mapping

The 3-stage model and the 6-step workflow describe the same process at different granularity. Use this crosswalk when moving from conceptual design to pass planning:

| 3-stage model | 6-step workflow items |
|---|---|
| Stage 1: Real-world Signal Modeling | 1) Direct processing, 2) Virtual display EOTF |
| Stage 2: Linear Light Processing | 3) Linear light processing |
| Stage 3: Presentation | 4) Tone mapping, 5) Gamut compression, 6) Presentation encoding |

#### Pipeline vocabulary

The following terms are used throughout this section.

- **Direct processing**: Operations applied directly to gamma-corrected source-domain signals.
- **Virtual display EOTF**: A display-transfer model used to move source-domain signals into a linear-light working domain.
- **Linear light processing**: Operations performed in linear light after applying the virtual display EOTF.
- **Tone mapping**: Luminance remapping from working range into the target presentation range.
- **Gamut compression**: Mapping of out-of-gamut colors into the target color volume with reduced clipping artifacts.
- **SDR output (inverse EOTF)**: Final conversion from linear-light working values to SDR gamma-corrected output.
- **HDR output (PQ encoding)**: Final conversion from linear-light working values to HDR10 PQ-encoded output.

##### Suggested workflow for complex pipelines

Generalized summary:

- Treat source values as signal-domain data first, then move intentionally into linear light through a virtual display EOTF.
- Keep major reconstruction, filtering, compositing, and light-like operations in linear light for more stable and predictable results.
- Use presentation controls (tone mapping and gamut compression) only when the target output or content range requires them.
- Encode only at presentation: inverse EOTF for SDR, or PQ encoding for HDR10.

Practical conclusion: Build presets so early and middle passes remain target-agnostic, then make the final presentation pass responsible for output encoding. This keeps SDR, scRGB, and HDR10 variants easier to maintain and less error-prone. Use a variety of test patterns to ensure color appearance behaves naturally.

#### Example use cases

The following examples show how the same process vocabulary can be applied to different shader goals. The pass names in these examples are conceptual placeholders; flexible implementation is left to developers.

##### Use case 1: Real-world model of a CRT device

This pipeline follows all stages of the general flow.

High-level outline:

1. **Direct processing**: Apply signal-domain operations that emulate source-side video behavior.
2. **Virtual display EOTF**: Linearize using a CRT-like display model (commonly BT.1886/approximate 2.4 behavior).
3. **Linear light processing**: Perform light-domain effects and compositing.
4. **Tone mapping**: Fit luminance into the output range.
5. **Gamut compression**: Compress out-of-gamut colors into the target primaries.
6. **Presentation encoding**: Use inverse EOTF for SDR targets or PQ encoding for HDR10 targets.

Short `.slangp` example:

```ini
shaders = 4

shader0 = "passes/composite_ntsc.slang"
shader1 = "passes/virtual_display_eotf.slang"
shader2 = "passes/crt_upscale_bloom.slang"
shader3 = "passes/present_sdr_hdr.slang"

# Example parameters (implementation-dependent)
DisplayEOTF = 2.4
ToneMapStrength = 0.75
GamutCompress = 0.5
```

##### Use case 2: Real-world model of a reflective handheld device

This pipeline is typically subtractive-only and often does not require tone mapping. However, gamut compression remains important because the device color appearance can differ strongly from typical modern monitors/TVs.

Typical emphasis:

1. Apply direct/signal-domain shaping for handheld-like response.
2. Apply a handheld-appropriate virtual display EOTF.
3. Perform linear-light processing for stable compositing.
4. Skip tone mapping when dynamic-range expansion is not part of the goal.
5. Keep gamut compression as a primary presentation control.
6. Encode for final target (inverse EOTF for SDR or PQ encoding for HDR10).

Short `.slangp` example:

```ini
shaders = 4

shader0 = "passes/handheld_ghosting.slang"
shader1 = "passes/handheld_linearize.slang"
shader2 = "passes/handheld_dot_matrix.slang"
shader3 = "passes/handheld_color_correct.slang"

# Example parameters (implementation-dependent)
DisplayEOTF = 2.2
GamutCompress = 0.8
```

##### Use case 3: Specialized upscaler

A specialized upscaler usually does not require tone mapping or gamut compression as core stages, but interpolation/reconstruction should still be done in linear space for best behavior.

Typical emphasis:

1. Optional direct processing for preconditioning.
2. Apply virtual display EOTF to reach linear light.
3. Run upscaler/reconstruction in linear light.
4. Skip tone mapping and gamut compression unless the preset's output target explicitly needs them.
5. Encode for presentation target (inverse EOTF for SDR or PQ encoding for HDR10).

Short `.slangp` example:

```ini
shaders = 3

shader0 = "passes/upscaler_linearize.slang"
shader1 = "passes/upscaler_upscale.slang"
shader2 = "passes/upscaler_present.slang"

# Example parameters (implementation-dependent)
DisplayEOTF = 2.4
```

#### Common decision points

| Question | Guidance |
|---|---|
| When should I include a tone mapping step? | Include it when working-space luminance values can fall outside the [0, 1] output range after processing. For small excursions, clamping is acceptable. For larger ones, use an explicit operator. Pure upscalers and linear pass-through chains typically skip this step. |
| When does gamut compression matter most? | Gamut compression is most important when targeting sRGB / Rec. 709 output and when source content uses saturated colors that may extend outside Rec. 709. It is less critical for HDR or scRGB targets. |
| Which virtual display EOTF should I use as a fallback? | Prefer BT.1886 (approximated as a 2.4 power function) when source characteristics are unknown. Use approximately 2.2 for backlit handhelds. Frontlit and reflective handhelds are system-dependent. |

## FAQ: Out of Scope for This Document

This document is mainly about how to write and organize `.slang` shaders and `.slangp` presets. The questions below are the kind of things people often ask next, but they go beyond what this guide is trying to cover.

| Out-of-scope question | Why it is out of scope here |
|---|---|
| What are practical varying/location limits per backend and GPU generation? | That depends a lot on the API, driver, and hardware you are running on. |
| What is the exact precision policy (`mediump` vs `highp`) for each platform? | This guide does not try to lay down a per-platform precision policy. |
| How are complex location packing edge cases handled (for example nested structs or arrays of structs)? | The basics are covered here, but not every GLSL packing corner case. |
| What is the full runtime sampler binding order when built-ins, aliases, and user textures are mixed? | That gets into frontend/backend implementation details rather than shader authoring rules. |
| Is there an official error-code catalog mapping compiler/runtime errors to fixes? | There is practical debugging advice here, but not a full backend-by-backend error reference. |
| What pass-count/format budgets should be used for low-end hardware? | The document gives general performance advice, not hard budgeting targets. |
| How much VRAM should be budgeted for deep history/feedback chains? | It explains the feature, but not exact memory budgeting. |
| What are the exact guarantees during rapid resolution/aspect/rotation changes across all backends? | Those guarantees depend on backend behavior and are beyond this guide. |
| What is the definitive precedence order between shader defaults, preset overrides, and runtime UI changes? | The pieces are described, but there is no formal precedence model spelled out here. |
| Is there an official CI/validation workflow for shader pack maintainers? | This guide does not prescribe a standard CI or validation pipeline. |
| What minimum cross-backend test matrix is required before release? | It recommends testing, but does not define a required release checklist. |
