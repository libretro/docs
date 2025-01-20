# Troubleshooting Brief

Also see the RetroArch documentation for [import scanning](https://docs.libretro.com/guides/import-content/) and [playlist creation/scanning](https://docs.libretro.com/guides/roms-playlists-thumbnails/#retroarch-playlist-scanner).

Follow the steps below to find and fix the cause of a database or game/name identification issue:

- __Update__ your RetroArch databases (Main Menu > Online Updater > Update databases).
- __Read about the factors that might be affecting the Problem.__
  - Understand [`.dat` and `.rdb`](#libretro-database) files.
  - Understand [which key field](#key-field) RetroArch uses for matching your item at issue to the database.  Contrary to popular belief, the data used for matching is often the _serial number_ encoded within a disc-game's binary data, not a checksum or hash.
  - Understand [precedence](#precedence).
- __Verify data on both sides.__
  -  __Your file properties.__ Verify your file has the appropriate [key ID](#key-field): compute the crc checksum, or verify the encoded serial number with a hex editor, whichever is applicable.
  - __Databases__. Look in the repository databases to find which `.dat` file might hold incorrect data for the game file at issue.  Even if one `.dat` holds correct data, a different dat with precedence may be over-ruling with incorrect data.
  - Automated scanning and database association will only work if your file matches a crc or serial that is the database.
  - Look on the websites of the upstream database group (No-Intro, Redump, GameTDB, etc) where the `.dat` at issue [originated](#sources), to see whether their current information has/hasn't been cycled through to the libretro repository.
- __Help Fix the Problem.__
  - See the [Contributions](#contributions) section for how to go about correcting or adding data to fix the issue.
  - If you see a large-scale issue affecting many data entries or entire dats, open a [Database Issue](https://github.com/libretro/libretro-database/issues) and describe the exact details of the problem. If the databases appear correct and match your file, then the issue may be within RetroArch's scanning or other behavior, and you should open a [RetroArch Issue](https://github.com/libretro/RetroArch/issues) instead.