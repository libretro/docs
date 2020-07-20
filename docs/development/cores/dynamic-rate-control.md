# Dynamic Rate Control for Retro Game Emulators

Dynamic Rate Control allows emulator frontends to synchronize both audio and video output at the same time, even when the emulating system has a different refresh rate and audio sampling rate than the gaming system that is being emulated.

The method works by dynamically adjusting audio resampling ratios in such ways that ideally, the audio buffer is never underrun nor overrun, thus avoiding blocking on audio. This in turn allows vertical synchronization for video. The audio pitch is adjusted when adjusting audio resampling ratios, but in practice so little, that it is inaudible to the human ear.

!!! Tip "Read this documentation in PDF form"
    Because the formulas in this documentation have not yet been converted to markdown, [please consult the original PDF version](https://github.com/libretro/docs/blob/master/archive/ratecontrol.pdf). _If you can assist in the conversion, please post an issue or PR in [the libretro documentation repository](https://github.com/libretro/docs)._

Retro games are highly synchronous. Their audio output rates are linked directly to video refresh rates. Every video frame, the audio chip generates on average a fixed amount of audio samples. Before continuing to emulate the next frame, the generated audio samples must be pushed to an audio buffer of fixed size.

If there is not enough space in the audio buffer, the emulator must wait (block) for the buffer to become ready for writing. This is a non-ideal situation as while the emulator is blocking on audio, a vertical refresh might be missed entirely, thus creating stuttering video.

## Ideal synchronization

For an emulator of a retro game system, a key factor in smooth video is vertical refresh synchronization (**VSync**), where each frame of the game maps to a single frame on the monitor. Audio must also be pushed to the speakers without any audio dropouts. This double synchronization requirement poses a problem as any form of synchronization to one modality will negatively affect the other.

This is a real problem as an emulator has no way of guaranteeing perfectly equal video refresh rates and audio sampling rates as the original system.

On conventional computer hardware, there is no perfect way of knowing the real monitor refresh rates and audio sampling rates either due to tolerances on oscillators.


## Scope of method

As this method aims to implement a method for synchronization when VSync is used, this method is only useful when game frame rate is close to monitor frame rate. If this is not the case, other methods should be employed.


## Method

This method assumes that audio from the emulator is output at regular intervals, e.g. every video frame. The method also assumes that audio is resampled from the game system sampling rate to the sound cards sampling rate. The resampling ratio will be dynamically adjusted every time audio is resampled and subsequently pushed to the audio buffer.


## Link to full version

Because the formulas in this documentation have not yet been converted to markdown, [please consult the original PDF version](https://github.com/libretro/docs/blob/master/archive/ratecontrol.pdf). _If you can assist in the conversion, please post an issue or PR in [the libretro documentation repository](https://github.com/libretro/docs)._
