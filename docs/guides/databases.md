# Databases

RetroArch uses `.rdb` [database format](https://github.com/libretro/RetroArch/blob/master/libretro-db/README.md) files stored locally by default in folder `RetroArch/databases`.  The `.rdb` files are compiled from clrmamepro format `.dat` files stored at the [libretro database repository](https://github.com/libretro/libretro-database).  See the database [readme](https://github.com/libretro/libretro-database/blob/master/README.md) for comprehensive information about the sources and functioning of the repository.  

!!! Hint "Terminology Note: Game Name"
    The term _Game Name_ refers to the name displayed [within the RetroArch interface and in playlists](https://docs.libretro.com/guides/roms-playlists-thumbnails/#retroarch-playlist-scanner), _not_ to the filename of the underlying file on the computer or device.  _Game Name_ in this document is synonymous with playlist item label, playlist entry, content name, and game title.

## Features of RetroArch Database Usage

RetroArch uses the database to provide several automated cataloging functions:

- __Validation__. Reject or accept files when using the [Import Scanner / Playlist Generator](https://docs.libretro.com/guides/roms-playlists-thumbnails/#working-with-playlists) based on whether the ROM checksum (or [other key](#key-field-for-matching)) matches the checksum of a known verified completely intact (aka  "properly dumped") file in the database.
- __Game Naming__. Assign a definitive and uniform display name for each game in a playlist regardless of filename.  RetroArch will look up the `name` field specified for the file's [key](#key-field-for-matching) in the database.
  - _Secondary_: __Thumbnail Images__. Download and display thumbnail images for games based on the uniform name assigned by the database, regardless of filename. (Thumbnails are __not__ directly assigned by the database or by checksum association, but as a secondary effect of databased *game name* assignment if a matching thumbnail is available on the server. Also see: [Flexible Name Matching Algorithm](https://docs.libretro.com/guides/roms-playlists-thumbnails/#custom-thumbnails).)
- __Category Search ("Explore")__. Allows the user to find/view games that match selected criteria, e.g. by Developer, Release Year, Genre, and other attributes/metadata.
- __Per-Game Information View__. Provide an in-app viewable informational screen for each game (Game > Information > Database Entry).

## How the Import Scanner Uses the Database

RetroArch automated scan ("Directory Scan" and "File Scan") will do the following:

1. Compute a CRC checksum of the file(s) or scan for the in-game serial number. CRC and serial number are the [keys used for matching a game file to the database](#key-field-for-matching).
1. Search for that CRC or serial in the information of the local `.rdb` files (default location `RetroArch/databases`). If the key is not found in databases, the file will __not__ be added to a playlist. See [Validation & Rejection](#validation-and-rejection).
3. Assign the `Game Name` (aka display name or playlist item name) that is specified as `name` within the database entry for the key (CRC/serial). The assigned `Game Name` will appear in the playlist, instead of the filename.
4. All other associated metadata [collated in the `.rdb`](https://github.com/libretro/libretro-database#fields-specified-in-game-information-databases) entry for the given CRC/serial can be viewed in the Information > Database Entry for the game and will be viewable via "Explore".

### Validation and Rejection

Validation here refers to checking a file or attribute against a reference, and then accepting or rejecting it based on whether it matches what is specified in the reference data (aka what is "allowed").  RetroArch's "Scan Directory" and "Scan File" automated importers are validation processes, not merely tools for adding all files to a playlist.  Part of their function is to **reject** files, not to import all files.  The database is the reference, and the ROM file is the item being validated.

If your file's crc or internal serial data (whichever is the key used for matching, [see below](#key-field-for-matching)) does not exist in the database, the file will be rejected by the automatic scans and will not appear in the playlist.

#### Manual Scan for Bypassing Validation/Databases

To import your games into a playlist regardless of database matches, or if your files are being rejected by the automatic scan (in other words are not recognized by the database) and you wish to add them to the playlist anyway, use the [Manual Scan](https://docs.libretro.com/guides/roms-playlists-thumbnails/#working-with-playlists).

### Key Field for Matching

During [Playlist / Import Scanning](https://docs.libretro.com/guides/roms-playlists-thumbnails/#retroarch-playlist-scanner) ("Directory Scan" and "Scan File" in RetroArch), RetroArch will identify your _files_ in order to then match your file to a data entry in the database.  The key for matching varies by console typical file size (i.e. original media type).

- __CRC checksum__ for systems with smaller file sizes, e.g. games before the advent of disc-based consoles.
- __Serial Number__ for larger files like disc-based games, to avoid computing checksums on large files. Found within the ROM file. The serial is not metadata but encoded within the game's binary data, which is scanned (in applicable cases) as a byte array by RetroArch.

Contrary to popular belief, the data used for matching is often the _serial number_ encoded within a disc-game's binary data.

Databases include cryptographic hashes (sha1, etc) for informational purposes to define the item specified, but only CRC checksum (or serial) not hashes are used for matching.

## Databases and RetroArch Thumbnails

Thumbnails _are not_ assigned or retrieved based on checksum, serial, or game database matching.  See separate documentation for [thumbnail handling](https://docs.libretro.com/guides/roms-playlists-thumbnails/#thumbnails) and the thumbnail [matching algorithm](https://docs.libretro.com/guides/roms-playlists-thumbnails/#custom-thumbnails).

Currently there is no _automatic_ process that applies database game name changes/updates to libretro [thumbnail repository](https://github.com/libretro-thumbnails/libretro-thumbnails) image filenames.  Therefore one of the visible consequences of a Game Name or database problem is the lack of an appropriate thumbnail display in RetroArch if the `Game Name` displayed in the interface doesn't match a repository thumbnail filename.

- __Game name error__. To help fix a database error where the game name doesn't match a correctly named thumbnail in the repository, see [How to Contribute to Databases](#how-to-contribute-to-databases).
- __Thumbnail name error__. To help fix a thumbnail in a case where a _correct_ database game name doesn't match the repository thumbnail name, follow the [Thumbnail Repository readme](https://github.com/libretro-thumbnails/libretro-thumbnails/blob/master/README.md#contributions) and [How To Contribute Thumbnails guide](https://docs.libretro.com/guides/roms-playlists-thumbnails/#contributing-thumbnails-how-to).


## Troubleshooting

_Also see the RetroArch documentation for [import scanning](https://docs.libretro.com/guides/import-content/) and [playlist creation/scanning](https://docs.libretro.com/guides/roms-playlists-thumbnails/#retroarch-playlist-scanner)._

The information below is for Users who are interested in figuring out the cause of a database-related problem and possibly helping to fix the problem in a way that will help all users.  RetroArch is a volunteer project, and many problem situations can be improved by interested users with medium technical awareness and no programming skill needed.

### Common Problems and Solutions

The most common user problems and solutions related to the database are:

- __Missed files during import scan.__ I.e. automated Directory Scan or File Scan "misses" some files, meaning the files are not imported and do not appear in the playlist.  See [Validation & Rejection](#validation-and-rejection) above.
  - Solution A: [Contribute to the database](#how-to-contribute-to-databases) with data for the files/games that are not yet covered by the database.
  - Solution B: Use the __Manual Scan__ option, which will accept all files according to the chosen settings.
- __Game Name error or incorrect information__. E.g. A game file receives a wrong title inside the RetroArch playlist/interface.
  - Solution:
    - Follow the [investigation steps](#investigating-database-issues) below, and [contribute to the database](#how-to-contribute-to-databases).
    - Depending on the source of the data, an upstream change within a database group's system may be required, but it is also possible to create ad hoc database coverage on the libretro github.

### Investigating Database Issues

Follow the steps below to find the cause of a database or game/name identification issue:

- __Update__ your RetroArch databases (Main Menu > Online Updater > Update databases).
- __Learn about the factors that might be causing the Problem__
  - Understand the multifacted [`.dat` system](https://github.com/libretro/libretro-database#retroarch-database) and files.
  - Understand [which key field](#key-field-for-matching) RetroArch uses for matching your item at issue to the database.
  - Understand [precedence](https://github.com/libretro/libretro-database#precedence) within the dat files in the repository.
- __Verify data "on both sides"__
  - __Verify your file properties.__ Verify your file has the appropriate [key ID](#key-field-for-matching): compute the crc checksum, or verify the encoded serial number with a hex editor, whichever is applicable.
  - __Verify Databases__. Look in the repository databases to find which `.dat` file might hold incorrect data for the game file at issue.  Even if one `.dat` holds correct data, a different dat with [precedence](https://github.com/libretro/libretro-database#precedence) may hold incorrect data that is over-ruling the correct data.
  - If an upstream database group (No-Intro, Redump, GameTDB, etc) is [responsible for the `.dat` at issue](https://github.com/libretro/libretro-database#sources), look on their websites to see whether their current information is correct or incorrect.
 
### Help Fix the Problem

After you've investigated the issue (see above), some possible actions are:

  - Update: Use _Main Menu > Online Updater > Update Databases_ to download new corrected data from the libretro server.
  - [Contribute](#how-to-contribute-to-databases) a correction or addition of data to fix the issue. It may be possible to create an ad hoc database or make a new entry within an existing ad hoc database.
  - Search for existing issues on github which may hold advice or useful discussion, or Open an Issue.
    - Open a [Database Issue](https://github.com/libretro/libretro-database/issues) __if__ you observe either of the following:
      - You see a large-scale issue affecting many data entries or entire dats.
      - You found that Upstream Data is _correct_ but libretro or RetroArch doesn't reflect it, and at leat 4 weeks have passed since the Upstream update occurred.  
    - Open a [RetroArch Issue](https://github.com/libretro/RetroArch/issues) __if__: you see a problem with RetroArch's scanning behavior or validation, while the databases appear correct and match your file's properties (crc and serial within the game's binary data viewable with a hex editor).
  - Make changes upstream (No-Intro, Redump, GameTDB, etc) by going through the channels of the upstream group responsible for the data at issue __if__: you found that Upstream Data is _Incorrect_ and has been imported to the libretro database repository. The upstream group must make the correction, though it may be possible to create alternative data coverage instead (see below).
 
## How to Contribute to Databases

Like [thumbnails](https://docs.libretro.com/guides/roms-playlists-thumbnails/#contributing-thumbnails-how-to) and [documentation](https://docs.libretro.com/meta/how-to-contribute/), databases are an area where users who are not programmers can contribute to RetroArch and in a way that benefits all users.

### Github Steps

1. Make an account on github.com and login
2. Fork the libretro database repository.  Forking means copying the repository into your own working area on github.
3. Make your changes within your fork.  For example, create a new `.dat`, or add a game entry or correction to an existing dat, while understanding the principles explained in the [database repository readme](https://github.com/libretro/libretro-database#) and while carefully heeding the existing formats observable in present `.dat` files on the repository.
4. "Commit" (save) your changes
5.  Set a Pull Request to send and propose your changes to the libretro official team members.  They will review your contribution, and in time either accept it or inform you about required changes or a reason why it isn't acceptable.

### Small-Scale Corrections

See [database repository readme](https://github.com/libretro/libretro-database) to learn when/where small-scare corrections are appropriate.

Two methods for adding data coverage for a single game or niche of games, via Pull Request proposal on github:

- __Method A:__ Fix the dat at issue.  This is only possible if two conditions are met:
  - 1. The dat doesn't originate from an import from upstream _and_
  - 2. The `.dat` won't receive subtractive sync over-writes in the future.
  - _If those conditions are not met, the intended "fix" will be deleted by the next bulk import sync._

  _Or..._
  
- __Method B:__ Edit a different dat, leaving the erroneous dat intact but moot.  This is only advisable when the correction and the error have different [keys](#key-field-for-matching), or if the edited/corrected database has [precedence](https://github.com/libretro/libretro-database#precedence) over the erroneous database. If one of those conditions is _not_ met, then the attempted correction would fail: it would be over-ruled in the `.rdb` compile by the erroneous dat's information.  If one of those conditions is met, you may do one of following:
  - Add a game data entry to an existing and appropriate ad hoc `.dat` in the repository.    
  - Create a new ad hoc `.dat`. This is often acceptable even for a small number of games, because of the multi-faceted nature of the dat system.  Some limitations may be enforced by admins for the manageability of the build script that processes all dats or for other systematic reasons.

### Large-Scale Additions

See [Adding New Database](https://github.com/libretro/libretro-database#adding-a-new-database). Contributors are welcome to propose the addition of bulk data from their own build scripts or otherwise, via github Pull Request.
