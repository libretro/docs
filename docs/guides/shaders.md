## Shader Presets

Shader Presets are combinations of one or more shaders. They can be loaded via `Quick Menu -> Shaders -> Load Shader Preset` and if you want to keep the shader between play sessions, you can save them as an "automatic" preset via `Quick Menu -> Shaders -> Save -> Save Global/Core/Content Directory/Game Preset`.

Global presets are automatically applied in any content for any core, while the Core presets are applied in any content for that specific core. Content Directory presets apply to all content in a certain folder and Game presets apply just to one game. Note that content directory and game presets are also core specific.

If more than one automatic presets exist that could be applied, the most specific one wins out, so for example, if both a global and a game preset exists, the game preset will be used.

You can also save other shader presets via `Quick Menu -> Shaders -> Save -> Save Shader Preset As`, so if you create your "perfect" combination of shaders you can recall this at any time with `Load Shader Preset` then continue on to save it as an automatic preset. This will save time if using the same preset for multiple games or cores.

By default automatic presets will save to the retroarch config directory E.G. `/config/"name-of-core"/"name-of-core/directory/game".slangp|glslp|cgp` or `/config/global.slangp|glslp|cgp` 
Presets saved with save as are saved in the base `shaders` directory. The shader directory can be changed via `Settings -> Directory -> Video Shader`.

There are plenty of user created presets that come bundled with the RetroArch installation and these can be updated from `Main Menu -> Online Updater -> Update Slang|Glsl|Cg Shaders` *(you can find these presets in the shaders_glsl. shaders_slang or shaders_cg subfolders of your shaders directory)*

[Example Screenshots](../shader/introduction.md)



### Editing Shader Presets

You can edit shader presets or build your own using these tools:
- **Shader Parameters**: Shows the list of all tweakable shader parameters, which are previewed live
- **Shader Passes**: The number of shader passes to use.

For every **shader pass** you can configure:
- **Shader #N**: Path to a shader. 
  - All shaders must be of the same type (i.e. .glsl, .slang, or .cg).
- **Shader #N Filter**: Hardware filter used for scaling. 
  - "Don't Care" uses `Settings -> Video -> Bilinear Scale`.
- **Shader #N Scale**: Scale for this pass. 
  - The scale factor accumulates, i.e. 2x for first pass and 2x for second pass will give you a 4x total scale.
  - The last pass in the chain then is stretched to fullscreen using the `Settings -> Video -> Bilinear Scale` filter setting.
  - "Don't Care" uses`source' scale mode at 1x which means this pass will have the same resolution as the previous pass.
  - If the pass uses scaling methods which are not simple, (i.e. source scaling, different scaling factor for X/Y), the scaling factors displayed may not be correct.
- **Apply Changes**: After changing any shader pass settings, use this to apply changes. Changing shader pass settings is a somewhat expensive operation because it rebuilds the entire shader chain so it has to be done explicitly.



### Simple Presets

Simple Presets allow you to reference an existing preset and apply parameter adjustments to it without affecting the original preset or making a full copy of it. To do this a simple preset uses a `#reference "<preset path>"` directive, which when loaded acts as if the preset with the given path was loaded then any parameter values and texture paths are applied over top overriding the existing values. There is also a possibility to have a chain of presets, each preset a referencing another. The last `#reference ` needs to point to a full preset (one which has the definition of all the passes and required textures)

From the shader menu you can create a simple preset by loading any shader preset, making any desired shader parameters changes then saving the preset with the `Quick Menu -> Save -> Simple Presets` option set to ON. Only the shader parameter changes you made will be saved as values inside the simple preset. When the simple preset is loaded these values will be applied on top of the values from the original preset referred to in the `#reference` line. 

If you make any changes to the passes like changing the shader path, filter or scaling a full preset will be saved instead including a copy of all the passes and textures included.

Note that if a simple preset has been automatically loaded (Global,Core,Content Directory,Game Preset) and is then saved again the `#reference` path will point to the path specified inside the automatically loaded preset rather than at the automatically loaded preset itself. 

**Simple Preset Special Cases when Saving**

- **Saving Over the loaded Preset:**  
  - E.G. there are presets Preset_A, Preset_B, Preset_B references Preset_A.  Preset_B is loaded then the user chooses to save over top of Preset_B. The reference to Preset_A is used instead of creating a a new reference to Preset_B which would be a cyclical reference. All current parameter values which differ from Preset_A will all be saved.
- **Saving Over the preset referenced by the loaded preset:** 
  - E.G. there are presets Preset_A, Preset_B and Preset_C, Preset_C references Preset_B which references Preset_A. The user loads Preset_C then saves over of Preset_B. The reference path to Preset A will be used to avoid a cyclical reference chain. All current parameter values which differ from Preset_A will all be saved.
- **Saving Over a preset further up the chain:** 
  - E.G. there are presets Preset_A, Preset_B, Preset_C and Preset_D. Preset_D references Preset_C which references Preset_B which references Preset_A. The user loads Preset_C then saves over of Preset_A. A full preset will be saved with all the passes and parameter values to avoid a cyclical reference chain.



### **Paths in Shader Presets**

Paths can be specified as relative paths or abbreviated root paths

- **Abbreviated Root Path Format**
- E.G. `:/shaders/shaders_slang/stock.slang`
  - `:/` stands for the root of the Retroarch folder
  
- **Relative Format**
- E.G. `shaders_slang/stock.slang`
  - This path corresponds to the path to stock.slang relative to a preset which is saved in the shaders folder

When a shader preset is saved all paths will be automatically saved in whichever format creates the path with least directory depth.  



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
