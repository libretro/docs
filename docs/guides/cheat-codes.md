# RetroArch cheat and rumble codes

RetroArch uses two methods of applying cheat codes:

- **Emulator Handled** are codes that are sent to the emulator/core and it is up to the emulator/core to apply them.
- **RetroArch Handled** are codes that RetroArch itself handles by directly scanning/manipulating the emulator/core memory area.


# RetroArch new cheat code searching

RetroArch now has the ability to search for and create new cheat codes.  The following is an overview for finding new cheats:

1. Start game

2. Go to Quick Menu -> Cheats -> Start or Continue Cheat Search

3. Use left/right on "Start or Restart Cheat Search" to select a bit-size appropriate to the console you are using and the value your are searching.
    - For example, if you are playing Castlevania:SOTN on the PS1 and you want to search for the health value, then that's a value that can be greater than 255 (0xFF), but it's unlikely that the game developers anticipated a value larger than 65535 (0xFFFF) so set the search to 16-bit.
    - An alternate example - if you are playing Space Invaders on Atari 2600 and you want to search for the number of lives, then that's a value that could possibly be stored in just 2-bits of data (max number of lives = 3) and since the Atari 2600 only has a very small memory space, it's entirely possible that the memory location for the number of lives is only partially stored in a single byte while the rest of that same byte may store other important data that should not be touched. Set the size to 2-bit.

4. Select "Start or Restart Cheat Search" once you have selected the bit size

5. Go back to the game and lose a life

6. Go back to the quick menu and select "Search Memory For Values ... Less Than Before" because when you started the search you had one more life than you do now. You could also try "Search Memory For Values ... Equals To Before-1". The number of matches should go down.

7. If the number of matches is still too great to peruse, then perform actions 5 and 6 repeatedly until the number of matches is something you feel comfortable trying (e.g. 10). If you run out of lives, just reset the game or restore a save state. Then your lives will likely be greater than the last time you checked, so select "Search Memory For Values ... Greater Than Before"

8. Once you have a manageable list, select "Add the ## Matches to Your List"

9. Go back one menu to see the codes that have been added. Try turning just one on at a time to see if it has the desired effect. If not, turn it off and try the next one. One of them should be the location in memory that stores your number of lives and enabling the cheat in its default state will result in that memory location being overwritten by the cheat value continuously and voila infinite lives.

10. Alternately, you can "Search Memory For Values ... Equal to ###" if you know the exact number (e.g. the number of hit points you have in an RPG).


# RetroArch rumble codes

RetroArch also has the ability to make your controller rumble when changes in the emulator/core memory occur.  It is based off of the same RetroArch-handled cheat codes described above.  For example, after 
finding the memory location for the number of lives in a game (via the cheat searching interface) you can set it up such that every time the value decreases (lose a life) the controller rumbles. 

Rumble tested with X360 controller, input driver dinput, joypad driver xinput. 

Available rumble controls:

- Rumble when memory value changes
- Rumble when memory value does not change
- Rumble when memory value decreases
- Rumble when memory value increases
- Rumble when memory value = value
- Rumble when memory value != value
- Rumble when memory value < value
- Rumble when memory value > value
- Rumble when memory value decreases by a specific amount
- Rumble when memory value increases by a specific amount




