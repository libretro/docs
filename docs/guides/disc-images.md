# Disc Images: CUE, CHD and M3U

Games that came on CD, GD-ROM or DVD are loaded from disc images. This page explains the common formats, how to shrink them into CHD files, and how to keep multi-disc games together.

## CUE/BIN and other formats

- **CUE/BIN** is the most common CD format. The `.bin` files hold the data and audio tracks, and the small `.cue` file lists them. **Always load the `.cue` file**, not a `.bin`: without the cue sheet the core does not know where the tracks are, and CD audio or whole games fail. The cue sheet names the `.bin` files it uses, so keep them in the same folder and do not rename them without editing the `.cue` to match.
- **ISO** holds a single data track. It is fine for DVD games and data-only CDs, but it cannot hold CD audio tracks.
- **GDI** is the Dreamcast GD-ROM equivalent of a cue sheet, loaded the same way.
- **CHD** stores any of the above, tracks included, as one compressed file. See below.

Which formats a core accepts is listed under **Extensions** on its page in the [core library](core-list.md).

## CHD

CHD ("Compressed Hunks of Data") comes from MAME. A CHD is lossless: it holds the same tracks as the original image, usually in noticeably less space, and a multi-file CUE/BIN game becomes a single file.

Cores that read CHD include those for PlayStation (Beetle PSX, SwanStation, PCSX ReARMed, DuckStation), PlayStation 2, PSP (PPSSPP), Saturn, Dreamcast (Flycast), Sega CD (Genesis Plus GX, PicoDrive), PC Engine CD and PC-FX, Neo Geo CD, 3DO (Opera), CD-i and several others; check the core's page to be sure.

### Making CHD files with chdman

CHD files are made with `chdman`, which ships with MAME: it is in the MAME download for Windows, and in the `mame-tools` package on most Linux distributions.

| Source | Command |
|---|---|
| CD image (`.cue`, `.gdi`, or a CD `.iso`) | `chdman createcd -i "Game.cue" -o "Game.chd"` |
| DVD image (`.iso`), for example PlayStation 2 DVD games | `chdman createdvd -i "Game.iso" -o "Game.chd"` |

Make one CHD per disc. To get the original image back, use `chdman extractcd -i "Game.chd" -o "Game.cue" -ob "Game.bin"` (or `extractdvd` for DVDs).

Some cores need a CHD made a particular way, for example PSP games made with `createdvd` and a smaller hunk size. When a core's page says so, follow it.

## Multi-disc games and M3U

A game on several discs is loaded through an `.m3u` file: a text file listing its discs, one per line. Loading the `.m3u` makes all the discs available to RetroArch's disc control, keeps one set of saves for the whole game, and lets you switch discs from the Quick Menu. [Disc Swapping](disc-swapping.md) explains how to write the file and switch discs.

List the files you would load for each disc: the `.cue` files for CUE/BIN, or the `.chd` files.

## Multi-disc games in playlists

When a content scan (`Import Content > Content Scan`, called Manual Scan in older versions) finds `.m3u` files, RetroArch adds one entry for each `.m3u`, named after the game without its disc number, and leaves out the separate disc files the `.m3u` lists. Keep each game's `.m3u` in the scanned folder together with its discs, or anywhere the scan reaches, and the playlist shows one entry per game instead of one per disc.
