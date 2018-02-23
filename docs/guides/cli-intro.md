# RetroArch CLI

RetroArch can be utilized via its robust graphical interfaces as well as a powerful command-line interface (CLI). Getting familiar with the command-line helps you understand the design principles of RetroArch.

Note: please be aware of whether your system uses DOS/Windows style paths with backslashes `\` or Unix-style paths with forward slashes: `/`.

#### Loading a ROM and libretro core (Unix-style path)
    retroarch -L /path/to/libretro/core.so game.rom
    
#### Loading a ROM and libretro core with flatpak
    retroarch -L /path/to/libretro/core.so game.rom
    flatpak run org.libretro.RetroArch/x86_64/stable -L /home/MYUSERNAME/.var/app/org.libretro.RetroArch/config/retroarch/cores/nestopia_libretro.so Tetris.nes


## Verbose logging output
To get a better idea on what's going on, use the `--verbose` flag. If you want to report a bug, it is **vital** that this log is included.

## Using a config file
By default, RetroArch looks for a config in various places depending on OS:

- **Linux/OSX**: `$XDG_CONFIG_HOME/retroarch/retroarch.cfg`, then `~/.config/retroarch/retroarch.cfg`, then `~/.retroarch.cfg`, and finally, as a fallback, `/etc/retroarch.cfg`.
- **Windows**: `retroarch.cfg` in same folder as `retroarch.exe`, then `%APPDATA%\retroarch.cfg`.

To override this, use `retroarch --config customconfig.cfg`. If you have some special options you want to store in separate config files, you can use `retroarch --config baseconfig.cfg --appendconfig specialconfig.cfg`. Be sure to pass `--menu` as well if you aren't loading content directly from the command-line, or RetroArch will close immediately after launching. See man-page and/or `--help` for detail.

## Other essential CLI flags

### retroarch --help
Use the `--help` help flag to display RetroArch's built-in CLI documentation. You'll probably discover some features you didn't think about.

### retroarch --features
If you're unsure if a particular feature is compiled in, execute `retroarch --features`
