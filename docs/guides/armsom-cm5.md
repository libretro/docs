# Building RetroArch on ArmSoM CM5

This guide builds RetroArch from upstream source on the ArmSoM CM5 development kit using its native Debian 12 XFCE ARM64 image. The tested system had approximately 2 GB of RAM and kernel `6.1.118-rk3576 #198`. RetroArch 1.22.2 was built and tested on October 22, 2026.

You need the development kit and its power supply, an HDMI display, a USB keyboard, and an internet connection. The display must have speakers to test HDMI audio. Run the commands in Bash in a terminal on the board's XFCE desktop, as a regular user with sudo access. Only dependency installation requires sudo.

## Install dependencies

The tested native image already provides the Mali driver and EGL/GLES development files. Keep the image's graphics driver in place.

```bash
sudo apt-get update
sudo apt-get -o Dpkg::Use-Pty=0 install -y --no-install-recommends \
  build-essential git pkg-config curl ca-certificates \
  libasound2-dev libudev-dev libx11-dev libxext-dev libxinerama-dev \
  libxrandr-dev libxxf86vm-dev libfreetype6-dev zlib1g-dev libssl-dev \
  retroarch-assets libretro-core-info
```

## Download the source

Use a new source directory. These commands select the exact upstream revision used for this test.

```bash
mkdir -p ~/src
git clone --depth 1 https://github.com/libretro/RetroArch.git ~/src/RetroArch
cd ~/src/RetroArch
git fetch --depth 1 origin a81e450c00745b27ba417d486799b12f09c38ea4
git checkout --detach FETCH_HEAD
```

## Build and install

Run each command only after the preceding command succeeds.

```bash
./configure --prefix="$HOME/.local/retroarch-upstream" \
  --disable-opengl1 --enable-opengles --enable-opengles3 \
  --enable-egl --enable-x11 --enable-alsa --enable-udev --enable-ssl \
  --disable-videocore --disable-vulkan --disable-wayland --disable-kms \
  --disable-qt --disable-ffmpeg --disable-pulse --disable-jack \
  --disable-sdl --disable-sdl2
make -j2
./retroarch --version
make install
```

The build took approximately 15 minutes with two parallel jobs. The executable reported version `1.22.2` and was installed at `~/.local/retroarch-upstream/bin/retroarch`.

## Create the runtime configuration

```bash
mkdir -p ~/retroarch-source-validation/{config,content,core-package}
mkdir -p ~/retroarch-source-validation/runtime/{saves,states,system,playlists}

cat > ~/retroarch-source-validation/config/retroarch.cfg <<EOF
video_driver = "gl"
video_context_driver = "egl_x"
video_fullscreen = "true"
video_windowed_fullscreen = "true"
video_vsync = "true"
audio_driver = "alsa"
audio_device = "plughw:CARD=rockchiphdmi,DEV=0"
audio_out_rate = "48000"
audio_latency = "64"
audio_volume = "-12.0"
input_driver = "x"
input_joypad_driver = "udev"
input_player1_up = "up"
input_player1_down = "down"
input_player1_left = "left"
input_player1_right = "right"
input_player1_a = "x"
input_player1_b = "z"
input_player1_start = "enter"
input_player1_select = "rshift"
input_menu_toggle = "f1"
input_save_state = "f2"
input_load_state = "f4"
input_pause_toggle = "p"
input_exit_emulator = "escape"
quit_press_twice = "true"
menu_driver = "ozone"
core_info_cache_enable = "false"
config_save_on_exit = "false"
assets_directory = "/usr/share/libretro/assets"
libretro_info_path = "/usr/share/libretro/info"
savefile_directory = "$HOME/retroarch-source-validation/runtime/saves"
savestate_directory = "$HOME/retroarch-source-validation/runtime/states"
system_directory = "$HOME/retroarch-source-validation/runtime/system"
playlist_directory = "$HOME/retroarch-source-validation/runtime/playlists"
EOF
```

This configuration uses the native EGL/OpenGL ES graphics stack and the HDMI ALSA device. The tested image did not require `LD_PRELOAD` or an ELD bypass. The ALSA device name in this configuration is specific to this image; use `aplay -L` to check it if you use a different image.

Configuration changes made through the menu are not saved on exit because `config_save_on_exit` is disabled. Edit this file to make persistent changes.

## Download a core and test game

RetroArch is a frontend and needs an emulator core to run content. Here, the Debian Nestopia package is downloaded and extracted without installing the distribution's RetroArch frontend. The core itself is a prebuilt package, not built from source in this guide. The tested package version was `1.52.0+20230102.gitcb1e24e-1`.

Use an empty `core-package` directory so that the package wildcard matches only one file.

```bash
cd ~/retroarch-source-validation/core-package
apt-get download libretro-nestopia
dpkg-deb -x libretro-nestopia_*.deb extracted

cd ~/retroarch-source-validation/content
curl -fL https://raw.githubusercontent.com/xram64/falling-nes/52dcb8a951200562e696dfc2aba5d4d14edd0078/falling.nes -o Falling.nes
curl -fL https://raw.githubusercontent.com/xram64/falling-nes/52dcb8a951200562e696dfc2aba5d4d14edd0078/LICENSE -o LICENSE
echo 'e22b947542c2d7e595bf84725b333be7af8189c5965b9c53e356a249c7d79943  Falling.nes' | sha256sum -c -
```

The checksum command should print `Falling.nes: OK`. [Falling](https://github.com/xram64/falling-nes) is an open-source homebrew game under the MIT license. Keep its downloaded `LICENSE` when redistributing it.

## Run the game

```bash
~/.local/retroarch-upstream/bin/retroarch \
  --config "$HOME/retroarch-source-validation/config/retroarch.cfg" \
  -L "$HOME/retroarch-source-validation/core-package/extracted/usr/lib/aarch64-linux-gnu/libretro/nestopia_libretro.so" \
  "$HOME/retroarch-source-validation/content/Falling.nes"
```

| Key | Action |
| --- | --- |
| Enter | Start the game / confirm a menu selection |
| Left / Right | Move the character |
| F1 | Open or close the RetroArch menu |
| Backspace | Go back in the menu |
| P | Pause / resume |
| F2 / F4 | Save / load a state |
| Esc, pressed twice | Exit RetroArch |

After exiting the game, you can launch the menu separately:

```bash
~/.local/retroarch-upstream/bin/retroarch \
  --config "$HOME/retroarch-source-validation/config/retroarch.cfg" --menu
```

## Create a desktop shortcut

Run this section as the same regular user who is logged into the XFCE desktop. A launcher created in root's home directory will not appear on another user's desktop. The executable and configuration must also be accessible to that desktop user.

If you followed the guide as a regular user, skip the recovery subsection and proceed to **Create the launcher**.

### Recover an installation made as root

If your shell prompt starts with `root@`, then `~` and `$HOME` refer to `/root`. For the native image's `armsom` desktop account, the following commands copy the existing installation and runtime data into that user's home, update the runtime paths, and set ownership. They leave the original files in `/root` in place.

Run this block **as root**. It stops if either destination already exists; in that case, inspect the existing installation instead of overwriting it. These paths assume the desktop account is `armsom`.

```bash
(
set -eu
test ! -e /home/armsom/.local/retroarch-upstream
test ! -e /home/armsom/retroarch-source-validation
cp -a /root/.local/retroarch-upstream /home/armsom/.local/
cp -a /root/retroarch-source-validation /home/armsom/
sed -i 's|/root/retroarch-source-validation/|/home/armsom/retroarch-source-validation/|g' /home/armsom/retroarch-source-validation/config/retroarch.cfg
chown -R armsom:armsom /home/armsom/.local/retroarch-upstream /home/armsom/retroarch-source-validation
runuser -u armsom -- /home/armsom/.local/retroarch-upstream/bin/retroarch --version
id armsom
)
```

Then switch to the desktop user:

```bash
su - armsom
```

### Create the launcher

Run this block in the regular user's Bash shell. It creates both a desktop icon and an application-menu entry. It uses `xdg-user-dir` when available, otherwise reads the user's configured desktop directory, falling back to `~/Desktop`. Installing `xdg-user-dirs` is not required.

```bash
(
set -eu
if [ "$(id -u)" -eq 0 ]; then
  printf '%s\n' 'Run this block as the user logged into the XFCE desktop, not root.' >&2
  exit 1
fi

retroarch_bin="$HOME/.local/retroarch-upstream/bin/retroarch"
retroarch_config="$HOME/retroarch-source-validation/config/retroarch.cfg"
test -x "$retroarch_bin"
test -r "$retroarch_config"

desktop_dir="$HOME/Desktop"
if command -v xdg-user-dir >/dev/null 2>&1; then
  desktop_dir="$(xdg-user-dir DESKTOP)"
elif [ -r "$HOME/.config/user-dirs.dirs" ]; then
  . "$HOME/.config/user-dirs.dirs"
  desktop_dir="${XDG_DESKTOP_DIR:-$desktop_dir}"
fi
mkdir -p "$desktop_dir" "$HOME/.local/share/applications"

cat > "$HOME/.local/share/applications/retroarch-source.desktop" <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=RetroArch (Source Build)
Comment=Open the RetroArch graphical menu
Exec="$retroarch_bin" --config "$retroarch_config" --menu
Icon=applications-games
Terminal=false
Categories=Game;Emulator;
StartupNotify=false
EOF

cp "$HOME/.local/share/applications/retroarch-source.desktop" "$desktop_dir/retroarch-source.desktop"
chmod +x "$desktop_dir/retroarch-source.desktop"
printf 'Created: %s\n' "$desktop_dir/retroarch-source.desktop"
)
```

On the HDMI desktop, double-click **RetroArch (Source Build)**. If XFCE asks whether to trust the launcher, choose **Mark Executable** or the equivalent launch option. RetroArch opens its graphical menu without a terminal window. Press **Esc** twice to exit, then double-click the icon to open it again.

The serial console is used here to create the files, not to display the graphical interface. Launch the icon from the active XFCE desktop; do not run RetroArch as root to work around display or permission errors.

The launcher and recovery steps were tested on October 27, 2026, on the native Debian 12 XFCE image with `xdg-user-dir` absent. The desktop user was `armsom`; opening the menu and relaunching by double-clicking the icon were verified.

## Tested functionality

The source-built frontend was tested with Falling and the Nestopia core: display output, keyboard input, HDMI audio, menu navigation, pause/resume, save/load states, and exiting and relaunching worked. Rendering used the native Mali-G52 EGL/OpenGL ES driver. No RetroArch source changes were needed.

These results apply to the image, revision, and core described above. Reboot recovery, long-term stability, and other cores have not been verified.
