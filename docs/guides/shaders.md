### Shader Presets

Shader Presets are combinations of one or more shaders. They can be loaded via `Quick Menu -> Shaders -> Load Shader Preset` and if you want to keep the shader in-between play sessions, you can save them as an "automatic" preset via `Quick Menu -> Shaders -> Save -> Save Global/Core/Directory/Game Preset`.

Global presets are automatically applied in any content for any core, while the Core presets are applied in any content for that specific core. Directory presets apply to all content in a certain folder and Game presets apply just to one game. Note that directory and game presets are also core specific.

If more than one automatic presets exist that could be applied, the most specific one wins out, so for example, if both a global and a game preset exists, the game preset will be used.

You can also save custom non-automatic shader presets via `Quick Menu -> Shaders -> Save -> Save Shader Preset As`, so if you create your "perfect" combination of shaders you can recall this at any time with `Load Shader Preset` then continue on to save it as an automatic preset. This will save time if using the same preset for multiple games or cores.

By default automatic presets will save to under /presets/"name-of-core"/"name-of-core/directory/game".glslp|slangp|cgp or presets/global.glslp|slangp|cgp in the shader directory while custom presets are saved in the base shader directory. The shader directoy can be changed via `Settings -> Directory -> Video Shader`.

There are plenty of user created default presets that come bundled with the RetroArch installation and these can be updated from `Main Menu -> Online Updater -> Update Glsl|Slang|Cg Shaders` *(you can find these presets in the shaders_glsl|slang|cg subfolders of your shader directory)*

[Example Screenshots](https://docs.libretro.com/shader/introduction/)

### Editing Shader Presets

You can edit shader presets or build your own using these tools:
- **Shader Passes**: The number of shader passes to use.

For every shader pass you can configure:
- **Shader #N**: Path to a shader. All shaders must be of the same type (i.e. .glsl, .slang, or .cg).
- **Shader #N Filter**: Hardware filter used for scaling. "Don't Care" uses `Settings -> Video -> Bilinear Scale`.
- **Shader #N Scale**: Scale for this pass. The scale factor accumulates, i.e. 2x for first pass and 2x for second pass will give you a 4x total scale. The last pass in the chain then is streched to fullscreen using the `Settings -> Video -> Bilinear Scale` filter setting.
Note: If the preset uses scaling methods which are not simple, (i.e. source scaling, same scaling factor for X/Y), the scaling factors displayed might not be correct.

- **Apply Changes**: After changing shader settings, use this to apply changes. Changing shader settings is a somewhat expensive operation so it has to be done explicitly.
- **Shader Parameters**: Shows the list of all tweakable shader parameters, which are previewed "live", i.e. without the need of hitting Apply Changes

### Command Line
The `--set-shader` command line option allows to set shaders directly, bypassing even automatic shader presets.

Example use:
    
    retroarch --set-shader "D:\RetroArch\shaders\shaders_glsl\blurs\kawase_blur_5pass.glslp" -L <core> <content>
    
The shader path can be relative to the shader directory:
    
    retroarch --set-shader "shaders_glsl\blurs\kawase_blur_5pass.glslp" -L <core> <content>
    
An empty parameter effectively disables any automatic presets:
    
    retroarch --set-shader "" -L <core> <content>
    
### Converting Cg shaders to GLSL
In some cases, Cg shaders cannot be supported. This goes for OpenGL ES drivers, and when EGL OpenGL contexts are used (KMS mode for instance). Using Nvidia's `cgc` compiler, you can convert Cg shaders to GLSL shaders with the `cg2glsl` tool developed by us [here](https://github.com/Themaister/RetroArch/blob/master/tools/cg2glsl.py). It can convert single shaders as well as whole folder structures in batch.
100% compatibility is not guaranteed, but almost all shaders should work fine. Cg presets (.cgp) are not converted at the moment, but converting them is as simple as copying over the .cgp, rename it to .glslp and replace references to .cg files to .glsl.
