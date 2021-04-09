# Anti-Aliasing

These shaders perform post-process anti-aliasing, which is useful for smoothing the jagged edges that occur with polygons rendered at non-native sizes. As such, the test image used does not really show the effects properly in most cases. While some--like advanced-aa--have a visible and pleasant effect on low-res pixel art, these are mostly paired with high-res content.

## **AA Shader 4.0**
  + A basic anti-aliasing shader with a configurable parameter that allows it to work with greater internal resolution multipliers. [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/antialiasing/aa-shader-4.0.png)
## **AA Shader 4.0 Level 2**
  + An enhanced version of the AA Shader 4.0 that doubles the radius of pixel analysis.
## **Advanced AA**
  + An interpolation shader that fills in pixels between upscaled texels. It typically works best at 2x scale factors. [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/antialiasing/advanced-aa.png)
## **FXAA**
  + [Fast ApproXimate Anti-Aliasing](https://en.wikipedia.org/wiki/Fast_approximate_anti-aliasing) is a common and fast GPU-powered anti-aliasing algorithm created by Timothy Lottes at Nvidia. It works best on high-res content and is increasingly invasive on lower resolutions (like this test image). [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/antialiasing/fxaa.png)
## **Reverse AA**
  + An algorithm devised by [kdepepo](https://kdepepo.wordpress.com/2012/08/15/reverse-antialiasing-for-image-scaling/) that reduces the effects of anti-aliasing, either natural (such as from downsampling a high-res image) or artificial (such as after an anti-aliasing shader) while avoiding many of the haloing problems caused by normal sharpening algorithms. Works best at 2x scale. There is also a 3x scale version for use with other shaders, but there is no preset to use it on its own.
## **SMAA**
  + [Subpixel Morphological Anti-Aliasing](https://en.wikipedia.org/wiki/Morphological_antialiasing) is an image-based GPU-based implementation of Morphological antialiasing, or MLAA. The algorithm detects borders in the resulting image and then finds specific patterns in these. Anti-aliasing is achieved by blending pixels in these borders, according to the pattern they belong to and their position within the pattern. The effect is not really apparent in this test image, unfortunately. [Preview](https://raw.githubusercontent.com/libretro/shader-previews/master/antialiasing/smaa.png)
## **Shaders Without Presets**
### **EWA Curvature**
  + A combination of strong **Elliptical-Weighted Average** (developed by Paul Heckbert back in the '80s; [this is the best source I could find for it](http://www.cs.cmu.edu/~ph/)) anti-aliasing and barrel/curvature distortion. This shader can be used to apply CRT tube-style curvature on top of CRT/scanline shaders that do not have curvature of their own while avoiding the heavy moire distortion that normally occurs.
### **Shock**
  + An algorithm that transforms the smooth transitions resulting from texture interpolation into abrupt transitions to deblur an image. The underlying principle is based on diffusing energy between neighboring pixels whereby, in areas of the image where the second derivative is positive, pixel colors are diffused in the reverse gradient direction, and vice versa ([see section 27.3 from Nvidia's GPU Gems article for more details](https://developer.nvidia.com/gpugems/gpugems2/part-iii-high-quality-rendering/chapter-27-advanced-high-quality-filtering)). To sharpen an image properly, several to many shock passes are usually required, along with adjustments to the **Shock Magnitude** parameter.

## Comments

## External Links

* [Slang Shaders](https://github.com/libretro/slang-shaders)
* [GLSL Shaders](https://github.com/libretro/glsl-shaders)
* [CG Shaders](https://github.com/libretro/common-shaders)
