# Databases

See the libretro database [readme](https://github.com/libretro/libretro-database) for comprehensive information about the libretro database repository.

## RetroArch's Usage of the Libretro Database

Libretro databases allow RetroArch to provide several automated cataloging functions:

- __Validation__. Reject or accept files when using the [Import Scanner / Playlist Generator](https://docs.libretro.com/guides/roms-playlists-thumbnails/#working-with-playlists) based on whether the ROM checksum matches the checksum of a known verified completely intact (aka  "properly dumped") file.
- __Game Naming__. Assign a definitive and uniform display name for each game in a playlist regardless of filename.
- Secondary_: __Thumbnail Images__. Download and display thumbnail images for games based on the uniform name assigned by the database, regardless of filename. (Thumbnails are __not__ directly assigned by the database or by checksum association, but as a secondary effect of databased *game name* assignment if a matching thumbnail is available on the server. Also see: [Flexible Name Matching Algorithm](https://docs.libretro.com/guides/roms-playlists-thumbnails/#custom-thumbnails).)
- __Category Search ("Explore")__. Allows the user to find/view games that match selected criteria, e.g. by Developer, Release Year, Genre, and other attributes/metadata.
- __Per-Game Information View__. Provide an in-app viewable informational screen for each game (Game > Information > Database Entry).

### Matching Game Files to the Database

During Playlist / Import Scanning ("Directory Scan" and "Scan File" in RetroArch), RetroArch will identify your _files_ in order to then match your file to a data entry in the database.  The key for identifying and matching varies by console typical file size (i.e. original media type).

- __CRC checksum__ for systems with smaller file sizes, e.g. games before the advent of disc-based consoles.
- __Serial Number__ for larger files like disc-based games, to avoid computing checksums on large files. Found within the ROM file. The serial is not metadata but encoded within the game's binary data, which is scanned (in applicable cases) as a byte array by RetroArch.

In other words, RetroArch automated scan will do the following:

1. Compute a CRC checksum of the file(s), or scan for the in-game serial
1. Find that CRC or serial in a local `.rdb` file (default location `RetroArch/databases`)
2. Assign whatever `Game Name` (aka display name or playlist item name) is specified within the database entry for the scanned CRC/serial
3. Assign all other associated metadata that has been [collated in the `.rdb`](https://github.com/libretro/libretro-database#fields-specified-in-game-information-databases) entry for the given CRC/serial to the Information > Database Entry for the game (which will also be viewable via Explore > criteria).

Contrary to popular belief, the data used for matching is often the _serial number_ encoded within a disc-game's binary data.  And although databases include cryptographic hashes (sha1, etc) as information that defines the item specified, only CRC checksum (or serial) not hashes are used for matching.

### Validation

Validation refers to checking a file against a source, and then accepting or rejecting it based on whether it matches the source.  RetroArch's "Scan Directory" and "Scan File" automated importers are validation processes, not merely tools for adding all files to a playlist.

If your file's crc or internal serial data (whichever is the key used for matching, [as above](#key-field-for-matching)) does not exist in the database, the file will be rejected by the automatic scans.

To import your games/items into a playlist regardless of database matches, or if your files are being rejected by the automatic scan, use the Manual Scan.

## How to Contribute to Databases

Like [thumbnails](https://docs.libretro.com/guides/roms-playlists-thumbnails/#contributing-thumbnails-how-to) and [documentation](https://docs.libretro.com/meta/how-to-contribute/), databases are an area where users who are not programmers can contribute to RetroArch and in a way that benefits all users.

__Small-Scale Corrections__

A vast majority of the database's game information originates from routine imports from upstream data groups (No-Intro, Redump, TOSEC, GameTDB, etc). In cases where the `.dat` for the entry at issue originates from an upstream group, best practice is for a contributor to go through the channels/process of that group. Upstream changes made by the database groups will eventually be imported to the Libretro databases. A seemingly helpful "fix" to Libretro's copy of the database would be overwritten and lost by the next import from upstream. 

In cases where the `.dat` in question is created and maintained by Libretro or does not receive bulk over-writes, github contributions are accepted.  Refer to the [repository contents list](#repository-contents) above and to github Histories for information about which libretro databases are applicable for github contributions.

__Folder Structure Revisions__

The database repository's [build script](https://github.com/libretro/libretro-super/blob/master/libretro-build-database.sh) specifies exact `.dat` files and folders in the repository, therefore organizational housekeeping revisions to the file/folder structure (e.g. combining two metadata fragments into one unified folder and file) require corresponding revisions in the build script.

__Large-Scale Additions__

See [Adding New Database](#adding-a-new-database).

## Databases and RetroArch Thumbnails

Currently there is no automatic process for updating libretro [thumbnail repository](https://github.com/libretro-thumbnails/libretro-thumbnails#libretro-thumbnails) image filenames based on game name updates in databases.  RetroArch uses databases to assign a [game name](https://docs.libretro.com/guides/roms-playlists-thumbnails/#custom-thumbnails) based on a game file's checksum (or other [key](#key-field-for-matching)), but thumbnails are only assigned if the thumbnail server image filename matches the game name or the ROM filename (with some [flexibility](https://docs.libretro.com/guides/roms-playlists-thumbnails/#custom-thumbnails)). To help fix a thumbnail, for example in a case where a database game name has been definitively/correctly updated in a way that no longer matches the repository thumbnail name, follow the [Thumbnail Repository readme](https://docs.libretro.com/guides/roms-playlists-thumbnails/#contributing-thumbnails-how-to) and [How To Contribute Thumbnails guide](https://docs.libretro.com/guides/roms-playlists-thumbnails/#contributing-thumbnails-how-to).

## Troubleshooting

Also see the RetroArch documentation for [import scanning](https://docs.libretro.com/guides/import-content/) and [playlist creation/scanning](https://docs.libretro.com/guides/roms-playlists-thumbnails/#retroarch-playlist-scanner).

Following the steps below will help to find and fix the cause of a database or game/name identification issue:

- __Update__ your RetroArch databases (Main Menu > Online Updater > Update databases).
- __Read about the factors that might be affecting the Problem.__
  - Understand [`.dat` and `.rdb`](https://github.com/libretro/libretro-database#retroarch-database) files.
  - Understand [which key field](#key-field-for-matching) RetroArch uses for matching your item at issue to the database.  Contrary to popular belief, the data used for matching is often the _serial number_ encoded within a disc-game's binary data, not a checksum or hash.
  - Understand [precedence](https://github.com/libretro/libretro-database#precedence).
- __Verify data on both sides.__
  -  __Your file properties.__ Verify your file has the appropriate [key ID](#key-field-for-matching): compute the crc checksum, or verify the encoded serial number with a hex editor, whichever is applicable.
  - __Databases__. Look in the repository databases to find which `.dat` file might hold incorrect data for the game file at issue.  Even if one `.dat` holds correct data, a different dat with precedence may be over-ruling with incorrect data.
  - Automated scanning and database association will only work if your file matches a crc or serial that is the database.
  - Look on the websites of the upstream database group (No-Intro, Redump, GameTDB, etc) where the `.dat` at issue [originated](https://github.com/libretro/libretro-database#sources), to see whether their current information has/hasn't been cycled through to the libretro repository.
- __Help Fix the Problem.__
  - See the [Contributions](#how-to-contribute-to-databases) section for how to go about correcting or adding data to fix the issue.
  - If you see a large-scale issue affecting many data entries or entire dats, open a [Database Issue](https://github.com/libretro/libretro-database/issues) and describe the exact details of the problem. If the databases appear correct and match your file, then the issue may be within RetroArch's scanning or other behavior, and you should open a [RetroArch Issue](https://github.com/libretro/RetroArch/issues) instead.
