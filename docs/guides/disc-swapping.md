
# Disc swapping
Some games in the 32-bit generation were spread over multiple CDs, and at a certain point in the game they ask the user to swap one disc out for another, while the console is still powered on.

To manage discs, libretro has a concept of a disc index (like a multi-disc CD player).

If a Sony PlayStation core or Sega Saturn core is loaded, then a `Disc Control` option is added to the [Quick Menu](quick-menu.md).


## Using 'Eject/Load disc'

`Load New Disc` ejects the current (virtual) disc and opens the File Browser, where you can select a new disc image to be loaded.

When you select `Eject Disc`, three new options appear:

* `Insert Disc`: Opens the File Browser, to find a disc image and load it into the Disc Index (CD list).
* `Current Disc Index`: Displays a list of the current discs in the "CD changer", and lets you select which disc is "in use".
* `Load New Disc`: Opens the File Browser, to find another disc image and load it into the Disc Index (CD list).

## Using 'Disc Image Append'
If you don't or can't use a playlist, you can append a disk image to the list on the fly using `Disc Image Append`. In this case, you use the File Browser to look for a disk image, and then add it to the internal disk image list. The `Disc Index` list is updated appropriately, and you can make your selection then return to the game.


## Using M3U playlists

Multi-CD images are typically handled with an .m3u playlist file. In this case, you can swap disks by cycling through the `Disc Index` setting.

You can start a game by loading its M3U file, through `Load Content` or Playlists (This will have to be added manually to your Playlists, as scanning for content will not do so).

### Making an M3U playlist file
You can make an M3U playlist file using a simple text editor.
* Put all of your content's disc files into a single folder.
* Create a new text file in the same folder as your content. Name it the same as your content.
* Add the full names of each disc into the text file (including the file extension), 1 filename per row.
  * If your discs are BIN/CUE files, only list the '.cue' files in the document.
  * If your discs are CHD files, list the '.chd' files in the document.
* Save and close the text file.
* Rename the file extension from '.txt' to '.m3u'.

#### Example

Contents of folder (`ROMS/Metal Gear Solid/`):
***
Metal Gear Solid (USA) (Disc 1).bin <br> Metal Gear Solid (USA) (Disc 1).cue <br> Metal Gear Solid (USA) (Disc 2).bin <br> Metal Gear Solid (USA) (Disc 2).cue <br> Metal Gear Solid (USA).m3u
***

Contents of M3U file (`Metal Gear Solid (USA).m3u`):
***
Metal Gear Solid (USA) (Disc 1).cue <br> Metal Gear Solid (USA) (Disc 2).cue
***

## Issues and workarounds
Replacing the disk inside RGUI is "physically" speaking the same as ejecting, swapping disks and closing the tray instantaneously. Some games will not work with this approach: Notably *Metal Gear Solid* needs to detect an actual "eject" taking place.

To work around this, set `Disk Index` to `No Disk`, and exit RGUI. The game will pick up that the tray has been ejected/missing disk after half a second or so. Now you can go back to RGUI, pick the correct disk index and return to the game.



