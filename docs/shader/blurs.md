# Blurs

Shaders that use low-pass algorithms to remove high-frequency data and blur the image.

## **Gaussian Blur**
  + A basic implementation of Gaussian blur, available in single-pass, multipass (much faster) and sharper flavors.
## **Kawase Blur**
  + A method for making very fast, high-quality blurs with extremely large kernels by stacking many passes of a simple blur.
## **Shaders Without Presets**
### **Bilateral**
    - Calculates a weighted mean of surrounding pixels based on color and spatial distance. This can be used to smooth color transitions or blend dithering to some extent while preserving sharp edges. Increasing the radius leads to more pixel lookups and therefore to a lower shader performance.
### **Smart-Blur**
    - Blurs pixels selectively based on the absolute difference from the neighboring pixels per color channel. Similar to bilateral filtering.
### **BlurX (including seperable, YxY, fast, resize, gamma, etc)**
    - A huge collection of blurs written by Trogglemonkey (author of CRT-Royale) to cover a wide variety of kernel sizes and gamma configurations for many different use-cases.
### **Blur-Gauss-H/V**
    - A seperable, 2-pass implementation based on the article [Efficient Gaussian blur with linear sampling](http://rastergrid.com/blog/2010/09/efficient-gaussian-blur-with-linear-sampling/).

## Comments

## External Links

* [Slang Shaders](https://github.com/libretro/slang-shaders)
* [GLSL Shaders](https://github.com/libretro/glsl-shaders)
* [CG Shaders](https://github.com/libretro/common-shaders)
