# Troubleshooting RetroArch

## Common video issues

### Optimal vsync performance with dynamic rate control
RetroArch uses Dynamic Rate Control to synchronize both video and audio at the same time. Synchronizing like this is a very demanding task timing-wise and dynamic rate control helps smooth out imperfections in timing which are guaranteed to arise. It can be disabled, but be aware that proper video/audio sync is nearly impossible to obtain.

While using RetroArch, the default settings might not be adequate, and you might experience video stuttering and/or audio crackling. For correct synchronization, video_refresh_rate must be configured for your monitor. It cannot be detected accurately enough by OS-provided APIs (i.e. they tend to blatantly lie). For proper behavior, an accuracy of roughly ~0.1% is needed for dynamic rate control to smooth out the drifting. This is trivial to obtain by measuring manually under normal conditions. Without dynamic rate control one would need a "perfect" measurement which obviously isn't possible without special hardware.

RetroArch can give you an estimate of your monitors refresh rate under video settings, which is updated in real-time using a running average over frame times. Make sure vysnc is enabled and working. Also make sure you're running in full-screen for more accurate results (compositors can easily interfere with timing). Press accept button on the estimated refresh rate to configure RetroArch with the estimated rate. If the running average isn't drifting much anymore, it's probably a good result.

You can also have RetroArch log the output at the end and configure things more manually. Start RetroArch directly in RGUI with retroarch --verbose --menu. Let it run uninterrupted for at least 4096 frames (displayed in title bar), and exit. In the log, you should see something like:

    RetroArch: Average monitor Hz: 59.869485 Hz. (1.347 % frame time deviation, based on 2048 last samples).

If you're unsure about the result, run this test several times and see if the results are consistent. Some systems tend to have very unreliable vsync behavior and this result will wildly fluctuate. You can use this value in `video_refresh_rate` and the video and audio should ideally be butter smooth if the game's FPS and monitor FPS are relatively close to each other. Playing a PAL game on 60 Hz monitor won't be perfect no matter what you do, however.

### Threaded video
If your video driver has very bad performance, it is possible to run it on a thread to avoid almost all video driver overhead. Set video_threaded = true in config. Butter smooth VSync behavior in this case is impossible however, and latency might increase slighly. Use only if you cannot obtain full speed otherwise.

### Low frame rate

Make sure your system meets the requirement of the core you picked.

 See if your core options aren't set too high for your system.

Disable shaders.

Lower the video scale setting.

Try another video driver.

Try enabling threaded video in the video options.

### Windows Vista and up video problems
Windows Vista and up suffer problems with OpenGL in windowed mode where it appears to be impossible to obtain proper, smooth VSync behavior no matter what you do. If you are annoyed by this problem, and still want to play in windowed mode, you should use the D3D driver which doesn't have this problem. Disabling Aero sometimes helps OpenGL VSync behavior.

## Input latency
There have been cases reported on excessive input lag in Windows for some users. It's not really input latency, but video driver latency. Some video drivers tend to buffer way too much in the name of increased performance. This problem is explained by Carmack here.

RetroArch recently got an option to use a swap/fence sync method in OpenGL driver, which is reported to greatly lower input latency (thread). To enable it, set video_hard_sync = true in config or enable it from RGUI. To ensure that this sync method is actually used, make sure that you see this in the log:

    RetroArch: Querying GL extension: ARB_sync => exists
    RetroArch: [GL]: Using ARB_sync to reduce latency.

Do note that this sync method can greatly reduce performance, and can turn smooth 60 fps into crawling 30 fps if there was not enough headroom in the performance. If you use KMS mode, using `video_hard_sync` won't help as it already does something like this.

## Why isn’t my BIOS working?

1. Make sure the BIOS files are placed into the correct directory
2. Make sure they are named correctly so the core can identify them.
3. Make sure it’s the correct version/region of a BIOS.
4. Make sure your files are not corrupted (bad source, broken download, etc.).
5. Make sure to check the log for any errors.

# Getting ready to ask for help

When problems arise with RetroArch, it is helpful for the developers and other volunteers to have certain standard information in order to find a solution. When requesting help with a RetroArch issue, please try to include:

1. A description of the problem: What did you expect to happen, and what happened instead?
2. The version of RetroArch you are using
3. The hardware and operating system that you are using
4. If the problem occurs while using a core: What is the the core name, its version, and the name of the game or media you were playing?
5. RetroArch log files recorded when the problem occurs

See: Generating RetroArch Logs

## "OK, I've done these things. Where can I get help?"
If you have questions or issues which cannot be resolved on your own, visit [the RetroArch forum](http://forums.libretro.com/)

## "I know my problem is a bug. Where can I report it?"
You can report issues in the [RetroArch issues tracker](https://github.com/libretro/RetroArch/issues).
