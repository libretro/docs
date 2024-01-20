# RetroArch CLI

RetroArch can be used from its robust graphical interfaces as well as a powerful command-line interface (CLI). Getting familiar with the command-line helps you understand the design principles of RetroArch.

Note: please be aware of whether your system uses DOS/Windows style paths with backslashes `\` or Unix-style paths with forward slashes: `/`.

Some cores like [ScummVM](https://docs.libretro.com/library/scummvm/) (which also has an inbuilt GUI file browser), do not require any content file name passed as a command line argument. This is determined by the core info files with the line `supports_no_game = "true"`. In this case, after you have loaded the core and if it is not starting directly, select 'Start Core' that will appear inside the main menu.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/W-fRcamSp-c" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### On macOS: invoking the RetroArch CLI executable
    /Applications/RetroArch.app/Contents/MacOS/RetroArch

#### Example: loading a ROM and libretro core (Unix-style path)
    retroarch -L /path/to/libretro/core.so game.rom

#### Example: loading a ROM and libretro core with flatpak
    retroarch -L /path/to/libretro/core.so game.rom
    flatpak run org.libretro.RetroArch/x86_64/stable -L /home/MYUSERNAME/.var/app/org.libretro.RetroArch/config/retroarch/cores/nestopia_libretro.so Tetris.nes

#### Example: loading a ROM and libretro core with Steam
     steam -applaunch 1118310 -L "/path/to/steamapps/common/RetroArch/cores/nestopia_libretro.so" "/path/to/Tetris.nes"

Content filenames require no spaces, as there is an issue with Steam passing through command line arguments containing spaces.

## Verbose logging output
To get a better idea on what's going on, use the `--verbose` flag. If you want to report a bug, it is **vital** that this log is included.

## Using a config file
By default, RetroArch looks for a config in various places depending on OS:

- **Linux/macOS**: `$XDG_CONFIG_HOME/retroarch/retroarch.cfg`, then `~/.config/retroarch/retroarch.cfg`, then `~/.retroarch.cfg`, and finally, as a fallback, `/etc/retroarch.cfg`.
- **Windows**: `retroarch.cfg` in same folder as `retroarch.exe`, then `%APPDATA%\retroarch.cfg`.

To override this, use `retroarch --config customconfig.cfg`. If you have some special options you want to store in separate config files, you can use `retroarch --config baseconfig.cfg --appendconfig specialconfig.cfg`. Be sure to pass `--menu` as well if you aren't loading content directly from the command-line, or RetroArch will close immediately after launching. See man-page and/or `--help` for detail.

## Other essential CLI flags

### retroarch --help
Use the `--help` help flag to display RetroArch's built-in CLI documentation. You'll probably discover some features you didn't think about.

### retroarch --features
If you're unsure if a particular feature is compiled in, execute `retroarch --features`
