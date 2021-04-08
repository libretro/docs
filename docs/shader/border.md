# Border

These shaders are used to apply a border image or effect with a transparent window to show content through. These shaders are typically intended to draw to the entire screen area, so you may need to change your aspect ratio settings to give them more space to fill (that is, set your aspect ratio to match your monitor's physical aspect). Most of them default to integer scaling (including an option for "integer overscale," which scales to the next highest integer; useful for 5x scale on 1080p monitors), along with an option for scanline and pixel anti-aliasing effects.

## **Ambient Glow**
  + This shader puts a glow effect shining out behind the image. The color of the glow effect is based on the average color on the screen and the color changes gradually to prevent ugly strobing.
## **BigBlur**
  + This shader fills the area outside of the viewport with an enlarged, blurred copy of the viewport. This is similar to the effect used on vertical/portrait cell phone videos shown on TV, etc. [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/border/bigblur.png)
## **Effect Border IQ**
  + This shader fills the border with live, animated effects based on shadertoys from Inigo Quilez. The active effect can be toggled by a runtime parameter. [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/border/hexagons.png)
## **ImgBorder**
  + This shader places an image file on top of the screen, commonly used for TV bezels. [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/border/imgborder.png)
## **WideScreen Border Dark**
  + This shader puts darkened columns--a.k.a. "pillarboxing"--on widescreen images, leaving an area of user-configurable aspect ratio at the normal brightness. This can be useful for cores that produce a widescreen image (e.g., bsnes-hd-beta and Genesis Plus GX Wide) when some games only allow interaction with the original (approximately 4:3) viewable area.
## **Game Boy Player, SGB and SGBA**
  (presets located inside their respective subdirs)
  + These shaders reproduce the borders associated with their respective hardware. They are intended to run at 1x scale and then scale up to fit the screen, often with the addition of a CRT shader on top.

## Comments

## External Links

* [Slang Shaders](https://github.com/libretro/slang-shaders)
* [GLSL Shaders](https://github.com/libretro/glsl-shaders)
* [CG Shaders](https://github.com/libretro/common-shaders)
