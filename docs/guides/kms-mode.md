## Purpose
KMS (Kernel Mode Setting) mode is a feature where RetroArch can use the OpenGL or Vulkan driver outside Xorg/Wayland, running straight in the virtual terminal. It is a fairly obscure feature, but very powerful in a console scenario.

## Requirements
To use KMS mode you need:

- MESA version 9.0+ (including dev package)
- Use of Vulkan requires KHR_Display extension, present from Mesa 21 onwards
- libgbm 9.0+, libdrm (including dev package)
- Open source driver which supports KMS
- ./configure with flags "--enable-kms" and "--enable-egl"

After compiling RetroArch, you should see this when running `retroarch --features`:

	KMS:
		KMS/EGL context support: yes

If KMS mode is working correctly, RetroArch should start up without any desktop environment as well, straight from the terminal.