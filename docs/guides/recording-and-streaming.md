# Recording and streaming video from RetroArch

RetroArch has the capability to record gaming footage in real-time using libavcodec (FFmpeg).
Both lossless and lossy coding is supported. It is possible to configure most encoding options
for libavcodec using a separate config file.

## FFmpeg version
RetroArch requires a very recent version of FFmpeg to work correctly.
If you are on Linux or OSX, your distros FFmpeg build is likely out of date, and you should build FFmpeg from Git. A recommended command line is:

```bash
./configure --prefix=/opt/ffmpeg --enable-libx264 --enable-gpl --enable-libmp3lame <enable stuff you fancy here>
make
sudo make install
```

This assumes you will install a custom FFmpeg build into `/opt/ffmpeg`.
For Windows users, the redist includes recent enough libav* binaries.

Now you can configure RetroArch with:

```PKG_CONFIG_PATH=/opt/ffmpeg/lib/pkgconfig ./configure```

and the configure script should pick up the FFmpeg libraries in `/opt/ffmpeg/lib`. Check config.mk
to make sure. After successfully compiling, make sure that the RetroArch binary picks up the correct FFmpeg libs by adding `/opt/ffmpeg/lib` to LD_LIBRARY_PATH (or the equivalent on OSX).

## Lossless coding
By default (not providing an encoding config), lossless coding is used. This means libx264/RGB, with -qp 0 (lossless). The audio codec used is FLAC. libx264/RGB ensures very nice bitrates even when lossless and very fast encoding.

## Lossy and flexible coding config
By adding the `--recordconfig <config>` parameter, you have more control over encoding.
The recognized config options are:

```
vcodec = <codec> # Same as -vcodec
acodec = <codec> # Same as -acodec
format = <format> # Muxer format to use. E.g. mkv, flv or mp4. This is normally inferred, but must be set when using extensionless formats like RTMP (streaming).
threads = <threads> # Threads to use when encoding video. Should be set to (# of CPU threads - 1).
frame_drop_ratio = <ratio> # Only encodes every <ratio> frames.
pix_fmt = <pix_fmt> # Same as -pix_fmt, no default is assumed, must be set!
scale_factor = <factor> # Scales input by <factor>. Useful when encoding in chroma subsampled formats like yuv420p.
sample_rate = <rate> # Audio output sampling rate.
audio_global_quality = <qual> # Global quality for audio (VBR). Maps to codec->global_quality in API. Play around with it. Higher = better. 75 seems to be a fair value.
audio_bit_rate = <bitrate> # Audio bit rate (CBR). This is in bit/s, so use e.g. 192000 for 192 kb/s.

video_{option} = <value> # Sets generic video option {option} to <value>. This is codec specific. Mostly useful for libx264.
audio_{option} = <value> # Sets generic audio option {option} to <value>. This is codec specific.
```

## Live streaming

RetroArch can live stream to RTMP services like [twitch](http://www.twitch.tv/).
To live stream there, create a config that is tailored for twitch. Example:

```
vcodec = libx264
acodec = libmp3lame
pix_fmt = yuv420p
scale_factor = 2
threads = 3
video_crf = 25
video_preset = superfast
video_tune = animation
audio_global_quality = 75
sample_rate = 44100
format = flv
```

You can stream to twitch with a command such as:

```bash
retroarch --record rtmp://live.twitch.tv/app/$YOUR_TWITCH_ID --recordconfig twitch.cfg
```
