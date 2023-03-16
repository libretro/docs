## Shader Presets

Shader Presets are combinations of one or more shaders. They can be loaded via `Quick Menu -> Shaders -> Load Shader Preset` and if you want to keep the shader between play sessions, you can save them as an "automatic" preset via `Quick Menu -> Shaders -> Save -> Save Global/Core/Content Directory/Game Preset`.

Global presets are automatically applied in any content for any core, while the Core presets are applied in any content for that specific core. Content Directory presets apply to all content in a certain folder and Game presets apply just to one game. Note that content directory and game presets are also core specific.

If more than one automatic presets exist that could be applied, the most specific one wins out, so for example, if both a global and a game preset exists, the game preset will be used.

You can also save other shader presets via `Quick Menu -> Shaders -> Save -> Save Shader Preset As`, so if you create your "perfect" combination of shaders you can recall this at any time with `Load Shader Preset` then continue on to save it as an automatic preset. This will save time if using the same preset for multiple games or cores.

By default automatic presets will save to the retroarch config directory 

E.G. `/config/"name-of-core"/"name-of-core/directory/"game".slangp|glslp|cgp` 

or 

`/config/global.slangp|glslp|cgp` 

Presets saved with save as are saved in the base `shaders` directory. The shader directory can be changed via `Settings -> Directory -> Video Shader`.

There are plenty of user created presets that come bundled with the RetroArch installation and these can be updated from `Main Menu -> Online Updater -> Update Slang|Glsl|Cg Shaders` *(You can find these presets in the shaders_glsl, shaders_slang, or shaders_cg subfolders of your shaders directory.)*

[Example Screenshots](../shader/introduction.md)

---

## Editing Shader Parameters

You can edit shader presets or build your own using these tools:
- **Shader Parameters**: Shows the list of all tweakable shader parameters, which are previewed live. If you save a **Simple Preset** all these changes can be saved without changing the shader chain

## Editing the Shader Chain
The Shader Chain which is a stack of shader passes each one pointing to a specific shader file.
All Changes to the shader chain will force a **Full Preset** to be saved even if you have chosen to save a **Simple Preset**

- **Prepend**
  - Prepend Preset adds a preset you choose before the currently loaded shader chain

- **Append**
  - Append Preset adds a preset you choose after the currently loaded shader chain

- **Shader Passes**: The number of shader passes to use.

- For every **Shader Pass** you can configure:
  - **Shader #N**: Path to a shader. 
    - All shaders must be of the same type (i.e. .glsl, .slang, or .cg).
  - **Shader #N Filter**: Hardware filter used for scaling. 
    - **Don't Care** uses `Settings -> Video -> Bilinear Scale`.
  - **Shader #N Scale**: Scale for this pass. 
    - The scale factor accumulates, i.e. 2x for first pass and 2x for second pass will give you a 4x total scale.
    - The last pass in the chain then is stretched to fullscreen using the `Settings -> Video -> Bilinear Scale` filter setting.
    - "Don't Care" uses **source** scale mode at 1x which means this pass will have the same resolution as the previous pass.
    - If the pass uses scaling methods which are not simple, (i.e. source scaling, different scaling factor for X/Y), the scaling factors can’t be displayed in the UI so the value shown may not be correct.
- **Apply Changes**: You must use this to rebuild the shader chain to see your changes after adjusting any settings in the shader passes or the number of passes with **Shader Passes**.
---

## Simple Presets vs Full Presets

There are two different kind of presets, a **Simple Preset**, and a **Full Preset**. 

a **Simple Preset** uses the `#reference` directive to reference an existing preset and apply parameter and texture path adjustments to it without affecting the original preset.

A **Full Preset** is complete independent preset which includes all the passes and defines the **Shader Chain** used. 

If the original preset a **Simple Preset** is referencing changes, the changes will be inherited. Conversely the **Full Preset** is completely independent from all other presets.

---
## Simple Presets

A **Simple Preset** uses a `#reference "<preset path>"` directive, which when loaded acts as if the preset with the given path was loaded, after this any parameter values and texture paths are applied on top, overriding the existing values. There is also a possibility to have a chain of presets, each preset a referencing another. The last `#reference ` needs to point to a full preset (one which has the definition of all the passes and required textures)

From the shader menu you can create a **Simple Preset** by loading any shader preset, making changes to the shader parameters then saving the preset with the `Quick Menu -> Save -> Simple Presets` option set to `ON`. Only the shader parameter changes you made will be saved as values inside the simple preset. When the simple preset is loaded these values will be applied on top of the values from the original preset referred to in the `#reference` line. 

If you make any changes to the **Shader Chain** like using **Prepend**, **Append**, or changing settings on any of the passes, a **Full Preset** will be saved instead which will include a full copy of all the passes and textures.

Note that if a **Simple Preset** has been automatically loaded (Global, Core, Content Directory, Game Preset) and is then saved again the `#reference` path will point to the path specified inside the automatically loaded preset rather than at the automatically loaded preset itself. 

**Simple Preset Special Cases when Saving**

- **Saving Over the loaded Preset:**  
  - E.G. there are presets Preset_A, Preset_B, Preset_B references Preset_A.  Preset_B is loaded then the user chooses to save over top of Preset_B. The reference to Preset_A is used instead of creating a a new reference to Preset_B which would be a cyclical reference. All current parameter values which differ from Preset_A will all be saved.
- **Saving Over the preset referenced by the loaded preset:** 
  - E.G. there are presets Preset_A, Preset_B and Preset_C, Preset_C references Preset_B which references Preset_A. The user loads Preset_C then saves over of Preset_B. The reference path to Preset A will be used to avoid a cyclical reference chain. All current parameter values which differ from Preset_A will all be saved.
- **Saving Over a preset further up the chain:** 
  - E.G. there are presets Preset_A, Preset_B, Preset_C and Preset_D. Preset_D references Preset_C which references Preset_B which references Preset_A. The user loads Preset_C then saves over of Preset_A. A full preset will be saved with all the passes and parameter values to avoid a cyclical reference chain.

---
## Advanced Referencing and .params files

- A `Simple Preset` can/must include **one and only one** reference to a `Full Preset` or a chain terminating in a full preset. If you have references to more than one Full preset this will be considered an error and the preset will not load.
- A simple preset can also include 0 or more references to `.params` files.
- A `.params` file only includes parameter values and texture paths as well as references to other `.params` files.
- Parameter value and texture paths in the reference chain are evaluated backward from the end of the chain, so the `.params` #references and parameter and texture values you see at the end of the chain will be applied last.

---
## Paths in Shader Presets

Paths can be specified as relative paths or abbreviated root paths

**Abbreviated Root Path Format** E.G. 
- `:/shaders/shaders_slang/stock.slang`
- `:/` stands for the root of the Retroarch folder

**Relative Format** E.G. 
- `shaders_slang/stock.slang`
- This path corresponds to the path to stock.slang relative to a preset which is saved in the shaders folder

When a shader preset is saved all paths will be automatically saved in whichever format creates the path with least directory depth.

---

## Wildcard Path Replacement

Preset Wildcard Path replacement allows you to have fewer presets while addressing many scenarios by changing paths in response to the retroarch state when the preset is loaded. An example would be having one preset which could be used with the entire list of images from the Bezel Project.

When a preset loads, text wildcards which are found in paths inside the presets will be replaced with values coming from the current RetroArch context. The replacement will be executed on both texture paths and reference paths, one or more wildcards can be placed in the filenames or paths. If no wildcards are found within the path, or the new path after replacing the wildcards does not exist on disk, the path will be left as it was before any replacement.

Note: This replacement only happens only on preset load. If any retroarch context has changed since the preset was loaded the preset will need to be reloaded to react to this change.

You can see real-time logging, including info from the wildcard replacement, live in Retroarch by turning on logging and turn off log to file. This causes an additional text window to appear when launching Retroarch.

---
Example 1 - Have one preset show a different image for each game

  - `/shaders/MyBackground_$GAME$.png`

if you were playing Ms. Pacman it would be replaced with:

  - `/shaders/MyBackground_mspacman.png`

If no file (image or preset file) is found at the new path with the replacements, we revert to the original path. If there is no file at this path the shader will fail to load.

  - `/shaders/MyBackground_$GAME$.png`

---
Example 2 - Have one preset show a specific image for all games who's ROMs are in the same folder

  - `/shaders/MyBackground_$CONTENT-DIR$.png`

if your games were in a `MyVerticalGames` directory it would be replaced with:

  - `/shaders/MyBackground_MyVerticalGames.png`

If no file found at the new path with the replacements, we revert to the original path. If there is no file at this path the shader will fail to load.

  - `/shaders/MyBackground_$CONTENT-DIR$.png`

---

Example 3:

  - `/shaders/MyBackground_$VID-DRV$_$CORE$.png`

If you were playing a Saturn game on the YabaSanshiro core it would be replaced with

  - `/shaders/MyBackground_glcore_YabaSanshiro.png`

If no file found at the new path with the replacements, we revert to the original path. If there is no file at this path the shader will fail to load.

  - `/shaders/MyBackground_$VID-DRV$_$CORE$.png`

-----
---
## Possible wildcards/tokens to be replaced:
---
`$CONTENT-DIR$`   -> Content Directory of the game rom

---
`$CORE$`       -> Core name

---
`$GAME$`       -> Game file's name, E.G. ROM name

---
`$VID-DRV$`   -> Video Driver: Currently active driver, possible replacement values:
 * `glcore`
 * `gl`
 * `vulkan`
 * `d3d11`
 * `d3d9_hlsl`
 * `N/A`

---
`$VID-DRV-SHADER-EXT$`   -> Video Driver Shader File Extension: The extension of shaders type supported by the current video driver:
 * `cg`
 * `glsl`
 * `slang`

---
`$VID-DRV-PRESET-EXT$`   -> Video Driver Preset File Extension: The extension of shaders type supported by the current video driver:
 * `cgp`
 * `glslp`
 * `slangp`

---
`$CORE-REQ-ROT$`   -> Core Requested Rotation: Rotation the core is requesting, possible replacement values:
 * `CORE-REQ-ROT-0`
 * `CORE-REQ-ROT-90`
 * `CORE-REQ-ROT-180`
 * `CORE-REQ-ROT-270`

---
`$VID-ALLOW-CORE-ROT$`   -> Video Allow Core Rotation: Reflects Retroarch's setting allowing the core requested rotation to affect the final rotation:
 * `VID-ALLOW-CORE-ROT-OFF`
 * `VID-ALLOW-CORE-ROT-ON`

---
`$VID-USER-ROT$`   -> Video User Rotation: Rotation the core is requesting, possible replacement values, does not affect the UI:
 * `VID-USER-ROT-0`
 * `VID-USER-ROT-90`
 * `VID-USER-ROT-180`
 * `VID-USER-ROT-270`

---
`$VID-FINAL-ROT$`   -> Video Final Rotation: Rotation which is the sum of the user rotation and the core rotation if it has been allowed, does not affect the UI:
 * `VID-FINAL-ROT-0`
 * `VID-FINAL-ROT-90`
 * `VID-FINAL-ROT-180`
 * `VID-FINAL-ROT-270`

---
`$SCREEN-ORIENT$`   -> Screen Orientation: User adjusted screen orientation, will change windows from landscape to portrait, including the Retroarch UI:
 * `SCREEN-ORIENT-0`
 * `SCREEN-ORIENT-90`
 * `SCREEN-ORIENT-180`
 * `SCREEN-ORIENT-270`

---
`$VIEW-ASPECT-ORIENT$`   -> Viewport Aspect Orientation: Orientation of the aspect ratio of the RetroArch viewport
 * `VIEW-ASPECT-ORIENT-HORZ`
 * `VIEW-ASPECT-ORIENT-VERT`

---
`$CORE-ASPECT-ORIENT$`   -> Core Aspect Orientation: Orientation of the aspect ratio requested by the core
 * `CORE-ASPECT-ORIENT-HORZ`
 * `CORE-ASPECT-ORIENT-VERT`

---
`$PRESET_DIR$`  -> Preset directory's name

---
`$PRESET$`     -> Preset's name

---


## Command Line

The `--set-shader` command line option allows to set shaders directly, bypassing even automatic shader presets.

Example use:

    retroarch --set-shader "D:\RetroArch\shaders\shaders_glsl\blurs\kawase_blur_5pass.glslp" -L <core> <content>

The shader path can be relative to the shader directory:

    retroarch --set-shader "shaders_glsl\blurs\kawase_blur_5pass.glslp" -L <core> <content>

An empty parameter effectively disables any automatic presets:

    retroarch --set-shader "" -L <core> <content>


### Converting Cg shaders to GLSL

In some cases, Cg shaders cannot be supported. This goes for OpenGL ES drivers, and when EGL OpenGL contexts are used (KMS mode for instance). Using Nvidia's `cgc` compiler, you can convert Cg shaders to GLSL shaders with the `cg2glsl` tool developed by us [here](https://github.com/Themaister/RetroArch/blob/master/tools/cg2glsl.py). It can convert single shaders as well as whole folder structures in batch.
100% compatibility is not guaranteed, but almost all shaders should work fine. Cg presets (.cgp) are not converted at the moment, but converting them is as simple as copying over the .cgp, renaming it to .glslp, and replacing references to .cg files to .glsl.
