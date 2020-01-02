# Developing GLSL Shaders

Like Cg shaders, GLSL shaders represents a single pass, and requires a preset file to describe how multiple shaders are combined. The extension is `.glsl`.

As GLSL shaders are normally placed in two different files (`vertex`, `fragment`), making it impractical to select in a menu. This is worked around by using compiler defines in order to be equivalent to Cg shaders.

## Example GLSL shader

!!! Note
    GLSL shaders must be modern style, and using ruby prefix is discouraged.

```c
varying vec2 tex_coord;
#if defined(VERTEX)
attribute vec2 TexCoord;
attribute vec2 VertexCoord;
uniform mat4 MVPMatrix;
void main()
{
    gl_Position = MVPMatrix * vec4(VertexCoord, 0.0, 1.0);
    tex_coord = TexCoord;
}
#elif defined(FRAGMENT)
uniform sampler2D Texture;
void main()
{
    gl_FragColor = texture2D(Texture, tex_coord);
}
#endif
```

### GLSL presets

Like Cg shaders, there is a GLSL preset format. Instead of `.cgp` extension, `.glslp` extension is used. The format is exactly the same, just replace `.cg` shaders with `.glsl`. To convert a `.cgp` preset, rename to `.glslp` and replace all references to `.cg` shaders with `.glsl`.

## Converting from Cg shaders

GLSL shaders are mostly considered a compatibility format. It is possible to compile Cg shaders into GLSL shaders automatically using our [cg2glsl script](https://github.com/libretro/RetroArch/blob/master/tools/cg2glsl.py). It can convert single shaders as well as batch conversion. Shader converstion relies on nVidia's `cgc` tool found in the `nvidia-cg-toolkit` package.
