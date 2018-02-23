## Purpose
KMS (Kernel Mode Setting) mode is a feature where RetroArch can use the OpenGL driver outside Xorg, running straight in the virtual terminal. It is a fairly obscure feature, but very powerful in a console scenario.

## Requirements
To use KMS mode you need:

- Recent version of MESA (9.0+) (dev)
- libgbm 9.0+, libdrm (dev)
- Open source driver which supports KMS
- ./configure with flags "--enable-kms" and "--enable-egl"

These require a fairly up-to-date distro.

After compiling RetroArch, you should see this when running `retroarch --features`:

	KMS:
		KMS/EGL context support: yes

If KMS mode is working correctly, RetroArch should start up outside Xorg as well.
