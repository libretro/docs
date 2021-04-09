# Auto-Box

Shaders that scale the image inside the viewport. This can be useful for ensuring certain quality of scaling, often with the intention of applying other effects that are picky about scaling on top.

## **Shaders Without Presets**
### **Box-Center**
    - Centers pre-scaled output into the viewport to prevent unintentional non-integer scaling. Maintains 1x scale of the input.
### **Box-Max**
    - Automatically scales output to the maximum integer scale possible.
### **Box**
    - Scales output according to the scale factor parameters.

## Comments

## External Links

* [Slang Shaders](https://github.com/libretro/slang-shaders)
* [GLSL Shaders](https://github.com/libretro/glsl-shaders)
* [CG Shaders](https://github.com/libretro/common-shaders)
