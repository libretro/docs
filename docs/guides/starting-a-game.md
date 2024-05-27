# Starting a game

## Requirements
* To load a game you need two things: A libretro core, and a ROM file.
	* Some systems/games may also require additional system files (such as a [BIOS](bios.md) to run correctly.

## via 'Load Content/Core'

### Load the core
* Select `Load Core> Core` from the main menu, then choose a libretro core from the list.
* Some releases of RetroArch come with a supply of cores built-in. If you don't have any cores installed, or want to add new ones, connect to the internet and select `Download a Core` from the bottom of the list.
* Select your core in the list to load it.

*See [Download Cores](download-cores.md).*

When a libretro core is laoded, you will see the name and version of the core in the bottom left of the screen (Ozone/XMB/RGUI) or in the notification bar (GLUI).

### Load the content
You can then browse for a ROM by selecting `Load Content`. Browse to your content's folder and select your ROM from the list. Then select `Current Core` or select another core from this list. The content will now launch.

To set the folder for the `Start Directory` option (which will otherwise start in the user's root directory), set `File Browser` in `Settings> Directory`.

*See [File Browser](file-browser.md)*

## via Playlists

Alternatively, you can launch content from Playlists.

* Scan for content to add to the playlist.

*See [File Browser](file-browser.md) and [Import Content](import-content.md).*

* Open your chosen Playlist.
* Highlight your chosen row and select it. A new submenu will appear: Select `Run` to start the game.
* If you have already `Set Core Association`, then the content will launch immediately. If you have not, one more list will ask you which Core you want to run the Content with.

This option will automatically choose the "best" core to run the content.

## History / Favorites
Content can be launched the 'History' and 'Favorites' playlists the same way as a regular Playlist.

### Exiting a game

Press the key/button combination to open the [Quick Menu](quick-menu.md) and select `Close Content`. This will safely close both the Content and its Core, and return you to the Main Menu of RetroArch.