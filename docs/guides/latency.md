# Latency

RetroArch is capable of next-frame responsive time. This means that there should be no nearly no perceivable difference in terms of input latency from real hardware, FPGA/clone or original hardware.

On top of all that, there are various settings you can configure to optimize the results even more.

## Next-frame response time indistinguishable from real hardware

RetroArch is truly in a league of its own when it comes to input responsiveness, and it keeps confounding even us here at Libretro. Several independent researchers did their own research on RetroArch's latency and came away being quite blown away by the results, completely shattering several long-held myths that up until now had been accepted as gospel in emulation circles:
The hierarchy for loading is:

* That emulation will always have an implicit 3 to 5 frames of input lag, and that therefore FPGA-based hardware will always hold a distinct advantage over software-based emulation.
* That there's nothing one can do to avoid this

RetroArch shatters these myths. It has been demonstrated by independent researchers that a next-frame response time (≤16ms!) achievable with RetroArch! This means zero frames of input lag is achievable, indistinguishable from real hardware.

Whoever told you that input lag was a given with emulators and that you needed FPGA in order to avoid this latency, should get him/herself acquainted with RetroArch. Post-RetroArch, latency indistinguishable from real hardware is perfectly possible!

Check out people's findings here on our forum and participate, don't just take our word for it! Link [here](https://forums.libretro.com/t/an-input-lag-investigation/4407/534).

<video width="720" height="560" controls>
  <source src="https://www.retroarch.com/videos/latency.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>

"With Pitfall, I witnessed a response on the very next frame. In the video shown to the left, you can clearly see me hit the button near the end of one frame, and on the next, Harry jumps! Essentially no way to improve compared to original hardware. Pack it up. We’re done here"

"Ever since I tried Retroarch for the first time there was no doubt in my mind that it was the future. It overcame the crippling input lag that plagues many stand alone emulators."

"[With RetroArch], it is possible to get to the same input lag as the original hardware, which may be as little as whatever is left of the current frame. At 60fps (16ms) this could be anywhere from 0ms to 16ms, which averages out to about 8ms. There is no room for improvement above that as far as the software is concerned."

## Configurable latency mitigation tools

RetroArch provides you with all the tools you need to combat latency in your games. This includes options such as:

* Frame Delay
* Synchronization Fences (GPU Hard Sync)
* Video drivers for new graphics technology APIs like Vulkan, which can drive latency down even further.
* Maximum amount of configurable swap chains.
    * Can be set from 1 to 3 depending on your video driver, your GPU, and the video context driver that is being used by RetroArch.
    * Vulkan supports this feature natively, but video drivers might not implement setting lower max swapchains.
* You can choose between different audio drivers which can have an effect on overall perceived latency
    * Windows: You can choose between WASAPI (available since Windows 7), XAudio (available since Windows XP), and DirectSound.
    * Linux: Depending on the build, you can choose between ALSA, PulseAudio, OSS, and audio servers like JACK.
* Adjustable audio buffering for lower/higher audio latency
* Adjustable audio resampler quality
* Several video context drivers to choose from
    * Linux: Some video driver contexts like DRM/KMS on Linux allow for granular swapchain control, which should allow for an even better gameplay experience. It also allows you to boot RetroArch without an active X Server running (assuming your video driver supports this).
    * Wayland is supported on Linux. This is an advanced display server that is being increasingly pushed as a replacement for X11. Note that whether or not you can use this depends on your video driver.
* Ability to turn off window compositing for better latency results (NOTE: This is only possible on Windows 7, Microsoft disallows this on Windows 8 and later)
* Configurable swap interval