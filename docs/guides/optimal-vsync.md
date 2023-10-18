# Getting Optimal Vsync Performance

RetroArch uses [Dynamic Rate Control](ratecontrol.pdf) to synchronize both video and audio at the same time. Synchronizing in this way is a very demanding task timing-wise and dynamic rate control helps smooth out imperfections in timing which are guaranteed to arise. However, when Dynamic Rate Control is functioning as intended, the frame pacing and audio synchronization will be perfectly smooth. 

It can be disabled, but be aware that proper video/audio sync is nearly impossible to obtain in that case.

!!! tip
    +In order to propose improvements to this document, [visit it's corresponding source page on github](https://github.com/libretro/docs/tree/master/docs/guides/optimal-vsync.md). Changes are proposed using "Pull Requests."

## Basic Configuration

While using RetroArch, the default settings might not be adequate, and you might experience video stuttering and/or audio crackling. For correct synchronization, `Settings->Video->Output->Vertical Refresh Rate` must be configured for your display. It cannot be detected accurately enough by OS-provided APIs (i.e. they tend to blatantly lie). For proper behavior, an accuracy of roughly ~0.1% is needed for dynamic rate control to smooth out the drifting. This is trivial to obtain by measuring manually under normal conditions. Without dynamic rate control one would need a "perfect" measurement which obviously isn't possible without special hardware.

RetroArch gives you an estimate of your display's refresh rate at `Settings->Video->Output->Estimated Screen Refresh Rate`, which is updated in real-time using a running average over frame times. Make sure VSync is enabled and working. Also make sure you're running in full-screen for more accurate results (compositors can easily interfere with timing). Press accept button on the estimated refresh rate to configure RetroArch with the estimated rate. If the running average isn't drifting much anymore, it's probably a good result.

You can also have RetroArch log the output at the end and configure things more manually. Start RetroArch directly in RGUI with `retroarch --verbose --menu`. Let it run uninterrupted for at least 4096 frames (displayed in title bar), and exit. In the log, you should see something like:

```
RetroArch: Average monitor Hz: 59.869485 Hz. (1.347 % frame time deviation, based on 2048 last samples).
```
If you're unsure about the result, run this test several times and see if the results are consistent. Some systems tend to have very unreliable VSync behavior and this result will wildly fluctuate. You can use this value in `Vertical Refresh Rate` and the video and audio should ideally be exceptionally smooth without any static or 'popping' audio. If you have ensured your refresh rate is dialed in well, and this is still not the case, read on.

## Advanced Configuration Considerations

If you continue to find the audio and/or video output after the above basic configuration to be incorrect or insufficient, there are a multitude of settings and other factors, both inside of RetroArch and external to the program, that can have a significant impact on your ability to obtain smooth frame pacing and proper synchronization. Adjusting these settings in a haphazard fashion or adjusting more than one at a time can lead to skipping over a correct solution by fixing one part of the problem while simultaneously breaking another part. If instead it does work afterwards, then it can lead to an inability to determine which change actually contributed to success.

The next section is an attempt at a step by step guide to configuring and diagnosing most frame pacing related settings. It is ordered starting from the most critical and directly audio/visual synchronization related settings first and continues towards settings that have other uses and effects, yet also impact synchronization, farther down. You can skip over any configuration changes you are unwilling to compromise on just for possibly improved frame pacing, or stop after any point in the process that you are satisfied with the output, of course. 

If you want to be able to judge the impact of a setting change by more than just 'eyeballing' the results, RetroArch provides a running statistics HUD by toggling `Settings->User Interface->On-Screen Display->On-Screen Notifications->Notification Visibility->Display Statistics`. You can also use an external program to monitor frame pacing, but keep in mind just the act of running it is possibly introducing a small amount of jitter itself.

Notable internal RetroArch statistics regarding frame pacing are:

   - Core AV_INFO->FPS - The exact frame timing the core is requesting.

   - Video->Refresh - What your `Settings->Video->Output->Vertical Refresh Rate` is currently set to.

   - Video->FPS - The rate at which you are currently outputting actual frames. With VRR on, this should match `Core AV_INFO->FPS`, and with VRR off, this should be very close to `Settings->Video->Output-Vertical Refresh Rate` divided by `Vsync Swap Interval` after the averaging settles. If `Video->FPS` is far above these values, possibilities include your Vsync or your VRR settings are not engaging properly, depending on which you are using, while having `Settings->Audio->Synchronization->Synchronization` disabled. If instead `Video->FPS` is substantially beneath, possibilities include Swap Interval set wrong, or your hardware not being able to keep up with the system demands. Note that neither `Video->FPS` nor `Core AV_INFO->FPS` will display 30 for 30 fps content most of the time, as internal frame doubling is performed.

   - Audio->Underrun - This keeps track of the amount of time slices over a recent period that the audio buffer is near emptying. If this value settles at a percentage higher than 0%, after running for a while (and without menu access, slow motion, or fast forward having recently been used), you can use this to diagnose that the audio and video aren't in great sync, as the audio is not keeping up with the video. In this situation RetroArch will either occasionally stutter briefly to maintain sync, or if `Settings->Audio->Synchronization->Synchronization` is off, you will get static and popping audio noises.

   - Audio->Blocking - The opposite of `Audio->Underrun` in practice. This time, if it settles at a percentage higher than 0%, after running for a while (and again, without menu access, slow motion, or fast forward having recently been used), it means the audio is running ahead of the video.

     Note that on some cores it is possible to have moderate amounts of *both* Underrun and Blocking present while your hardware is capable of performing at full core requested speed and all settings are correct, but this is more common for actual variable framerate content that tends to be more present from the 5th generation of consoles on. So it might be best to test your overall settings with an earlier generation, less complex core. 

## Advanced Configuration Step-By-Step Guide
   1. Choose one of the following synchronization methods depending on whether your screen is capable of Variable Refresh Rate (VRR) and if you want to use it:

      - For synchronization without VRR, you should set `Settings->Video->Output->Vertical Refresh Rate` very close to an evenly divisible multiple of the core requested refresh rate, still using `Settings->Video->Output->Estimated Screen Refresh Rate` to get a more accurate value as mentioned in the Basic Configuration section. You should end up with a value right around 60/120/180/240/etc Hz for NTSC, 50/100/150/200/etc for PAL. Uneven, but fairly common, display refresh rates like 75/90/144/165 Hz are only able to maintain smooth frame pacing and audio synchronization while `Variable Refresh Rate (VRR)` is active, which is discussed below.

        Setting your actual display refresh rate to 60Hz, and then configuring the real refresh rate as per the Basic Configuration section, combined with a complementary `Vsync Swap Interval` of 1, will always be the most default and thus supported mode of operation to obtain perfect frame timing. But if you want to be able to run RetroArch on your >60Hz display without having to lower the actual screen refresh rate, this section explains how to do so correctly with minimized chance of issues.

        After you have verified the rate is set appropriately, you should check under `System->Video Settings->Synchronization` and make sure that `Vertical Sync (Vsync)` is on, and set the `Vsync Swap Interval` to either `Auto`, which will try to determine the right value for your applied refresh rate on its own, or you can manually set the value yourself. Unless you note specific issues with your system, `Auto` is likely the superior choice, as it will avoid the 'math problem' required for manual configuration and respond to changes in others settings including `Black Frame Insertion` and `Sync to Exact Content Framerate (G-Sync, Freesync)` without needing to be updated again itself. 

        If you choose to set it manually, the value you should set it to is the value such that when you divide `Settings->Video->Output-Vertical Refresh Rate` by it, gives you a result near your 60/50Hz goal. I.e. 60Hz/1 = 60Hz, so set `Vsync Swap Interval` to 1. 120Hz/2 = 60Hz, so set `Vsync Swap Interval` to 2, 180Hz/3 = 60Hz so set `Vsync Swap Interval` to 3, and so on.

        Lastly, when syncing with this method to a value other than `Auto` or 1, ensure that `Black Frame Insertion` is off, and that `Sync to Exact Content Framerate (G-Sync, Freesync)` is off. These are each separate methods to sync the display and audio, and they should not be combined.

      - For a VRR capable display, configuring settings is less error prone, at least inside of RetroArch, and also has a benefit of being able to sync to the exact originally intended speed of the core. `Settings->Video->Output->Vertical Refresh Rate` will not be in use to attempt to adjust the timing, and is not required to be set correctly, but it is still good practice.

        To setup RetroArch to use VRR timing, turn on `Sync to Exact Content Rate (G-Sync, Freesync)` under `System->Video Settings->Synchronization`, and verify `Vsync Swap Interval` is set to either 1 or Auto, and that `Black Frame Insertion` is off. Just as above, these settings should not be combined.

   2. Ensure `Settings->Audio->Synchronization->Synchronization` is enabled. Also in this same menu, for a non-VRR setup, `Maximum Timing Skew` will decide how far Retroarch will be willing to adjust the core requested speed to attempt to sync with your refresh and swap interval settings.

      For the most part, the default value will be fine, but some arcade content runs at Hz significantly farther in the middle between 50Hz and 60Hz. The older Mortal Kombat arcade machines request a rate around 54Hz, for instance. Further, if you desire to run 50Hz PAL content at 60Hz NTSC speed, you must set the maximum skew even higher. 60Hz NTSC is ~17% faster than 50Hz PAL, so you would want to set the `Maximum Timing Skew` to .17. Note that a higher maximum will not cause content that is not far from your set refresh rate to run at a less correct speed, it will only allow content that is farther away to sync so that you can obtain smooth frame pacing and audio.

   3. Check Display Control Panel and Other External Program Settings

      - Make sure you are not overriding application settings to force `Vsync` off. 

      - Check if you decided to use VRR in step 1.

        * If you aren't using VRR, and have a maximum framerate cap set (in the driver or through a third party software tool like RTSS), verify that it is at least as high as the set refresh rate of your display. You might think a 60 fps cap would be all you need for 60 fps content, but a display set to 240Hz using a swap interval of 4, still needs 240 potential vblanks per second to sync correctly to 60 actual fps.

        * If you are using VRR, you must verify that it enabled at the display driver level, and on the display as well. Also you should ensure, if you have a configured maximum framerate cap, that it is set slightly above 60 at the least, not right at 60. NTSC NES/SNES request 60.1Hz for instance, and this could interfere with proper frame timing even with VRR, if you have a 60 fps framerate cap.

      - If your system has a strong GPU and it is available for your display driver, consider looking for a setting similar to `Power Management Mode` and configure it for `Prefer Maximum Performance`, either globally or specifically for RetroArch.
	  
	    Some higher powered GPU's are designed to downclock on lower loads by default, which they may see RetroArch as. If your GPU can stay in this downclocked state while maintaining full performance, there might not be any interference with smooth synchronization. However, if instead if it responds to RetroArch as a load where it constantly shifts back and forth between a high power state and a low power state, this can cause inconsistent frame times.

      - Consider disabling possibly unnecessary overlays like from RTSS, Discord, or Steam. RTSS has been known with previous versions, for instance, to cause issues with Vulkan in Retroarch, even when not running, just merely by being installed! For reference: [Vulkan Frame Pacing Stutter](https://github.com/libretro/RetroArch/issues/9668)

      - Active video recording or streaming software has the potential to interfere with perfect frame pacing, but if your stream or recording is important, obviously perfect frame pacing will have to become a secondary concern. Just set all other settings as appropriately as you can.

   4. Back inside of RetroArch consider adjusting settings that can have an impact on frame pacing and synchronization.

      - Windowed mode, and even windowed full-screen mode can contribute to frame pacing issues, so `Settings->Video->Fullscreen Mode->Windowed Full-Screen Mode` can be disabled to test if this improves your frame pacing.

      - `Settings->Video->Output->Automatic Refresh Rate Switch` can be considered to be disabled, as if it changes your actual display refresh rate, in non-VRR mode this can interfere with your set Vsync Swap Interval and cause *large* mistiming, and in VRR mode, you want the display to maintain the maximum potential refresh rate so that it can be more accurate in accomodating small requested timing differences.

      - `Settings->Video->Output->Threaded Video` is well known to interfere with smooth frame pacing and audio sync, but can be the only choice for hardware otherwise too weak for the intended content to run at near the correct frame rate at all.

      - Using a very heavy shader like an accurate CRT emulation shader, especially on a higher resolution display, can also increase performance requirements to obtain smooth synchronization.

      - Your preferred renderer API of Vulkan/OpenGL/DirectX 11/etc might not interact perfectly with your system or the core you are using, and you can try an alternative.

      - Core specific settings can be checked for things such as overclocks which can increase system requirements to where you might not be able to run full speed, or internal run-ahead, or frame duplication.

      - Under `Settings->Latency`, `Frame Delay (ms)`, `Automatic Frame Delay`, `Run-Ahead to Reduce Latency` and `Run Pre-Emptive Frames` should be adjusted down or off if smooth frame pacing is a priority for you over latency and you continue to have issues at this point in the process.  These settings can cause inability to reach proper sync if your system can not handle the increased load or they are simply set too high even on very capable hardware.

      - `Settings-Latency->Audio Latency` perhaps unintuitively should be kept higher, not lower. Too low of an audio latency causes RetroArch to stutter while waiting to refill the now smaller audio buffer when `Settings->Audio->Synchronization->Synchronization` is enabled, or can cause very poor audio output when `Settings->Audio->Synchronization->Synchronization` is not set.

         How low you can set this to without issue can vary per content, but the default value of 64 ms was chosen for avoiding issues like this. If you still decide to push lower, keep in mind a 60Hz NTSC frame is approximately 16.66 ms long, so you might want to try a value a little longer than 2 frames, like 35ms, and then a little longer than 3 frames like 52ms, et cetera.

      - Under `System->Video Settings->Synchronization`, `Hard GPU Sync`, `Max Swapchain Images`, or `Waitable Swapchains`, any of which might be available with your current renderer API, are designed to reduce latency by limiting how many frames ahead that the cpu can calculate beyond the currently displayed frame. If you are still experiencing frame pacing issues having reached this poing in the document, and care more about that than increased latency, you can disable `Hard GPU Sync`, `Waitable Swapchains`, or increase the value of `Max Swapchain Images` to give your system more performance headroom.


## Further Considerations

If you've gone through all the above, there is not much more to configure settings-wise. It is possible your hardware is just not capable of running the desired content at full speed. You can try to see if an alternative core exists for your content that is perhaps designed to run on lower specification hardware than the one you were previously using. Also (though no specific offenders will be named as this can change for better or worse with any core update any given day) some content on some cores simply have somewhat poorer timing control. Odds are higher of finding this on 5th generation and beyond console cores that are dealing with content that ran at very unstable framerates on original hardware. 

Lastly, a couple things to keep in mind that don't fit neatly in any section above without being a large digression:

   - Most VRR displays have a feature called Low Framerate Compensation (LFC). What this means is that there is a minimum fps below which VRR can no longer actually sync, and it will compensate for this with , depending on display implementation, a combination of internal frame doubling and screen tearing. If this rate is right near the output rate, and some 240Hz+ displays are indeed coming with a LFC minimum rate directly around 60 as of this writing, you can experience significant impact on frame pacing. 30 fps content will also be below this LFC rate on a large number of VRR displays, but if it is a very stable 30 fps and the display has a good frame doubling algorithm, this might not be an issue.

     If you check your display specifications and believe you are experiencing LFC related issues, you might well be better served using a fixed refresh rate for RetroArch. Note that you should not have to disable VRR in your display driver or on your display, just discontinue use of `Sync to Exact Content Rate (G-Sync, Freesync)` inside Retroarch, and instead follow the instructions above for using `Vsync Swap Interval` to sync.   

   - It has been noted previously that for macOS, that having more than one display active can cause interference with obtaining good frame pacing and audio synchronization. This can be extended as a possible solution to try regardless of operating system. Relatedly, it is potentially helpful if you *do* leave multiple displays active, to leave them all set to the same refresh rate.

     Also, running videos or other screen updating content at the same time on a secondary display is a potential source of issues. Windows 10/11 compositor handles multiple active contents like this better as of writing than in the past, but this could change at any point and there are also a multitude of other Operating Systems and devices that will have their own possible compositor issues with running multiple separate contents simultaneously.


**Thanks for reading, and have a smooth day!**
