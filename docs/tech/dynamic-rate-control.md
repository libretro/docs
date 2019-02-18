# Dynamic Rate Control for Retro Game Emulators

Dynamic Rate Control allows emulator frontends to synchronize both audio and video output at the same time, even when the emulating system has a different refresh rate and audio sampling rate than the gaming system that is being emulated. 

The method works by dynamically adjusting audio resampling ratios in such ways that ideally, the audio buffer is never underrun nor overrun, thus avoiding blocking on audio. This in turn allows vertical synchronization for video. The audio pitch is adjusted when adjusting audio resampling ratios, but in practice so little, that it is inaudible to the human ear.

### Read this documenation in PDF form

Because this documenation has not yet been converted to the new format, [please consult the original PDF version](https://github.com/libretro/docs/blob/master/archive/ratecontrol.pdf).

