# Quake II (vitaQuake 2)

## Background

A port of the VitaQuake 2 source port of iD's Quake 2 engine to libretro. There is a separate core for each of the Quake 2 mission packs, 'Rogue', 'Zaero' and 'Xatrix'. This core is for the main game. This core loads games in the *.pak format.

The vitaQuakeII core has been authored by

- Rinnegatamante

The vitaQuakeII core is licensed under

- GPLv2

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the vitaQuakeII core have the following file extensions:

- .pak

RetroArch database(s) that are associated with the vitaQuakeII core:

- [Quake II](https://github.com/libretro/libretro-database/blob/master/rdb/Quake%20II.rdb)

## Features

Frontend-level settings or features that the vitaQuakeII core respects.

| Feature           | Supported |
|-------------------|:---------:|
| States            | ✕         |
| Rewind            | ✕         |
| Core Options      | ✔         |

### Directories

The vitaQuakeII core's library name is 'vitaQuakeII'

## Core options

The vitaQuakeII core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

- **Internal Resolution (Restart)** [vitaquakeii_resolution] (320x240|400x240|480x272|512x384|640x368|640x480|720x408|800x600|**960x544**|1024x768|1280x720|1280x800|1280x1024 (OpenGL Only)|1360x768|1366x768|1440x900|1600x900|1680x1050|1920x1080|1920x1200|2560x1080 (OpenGL Only)|2560x1440 (OpenGL Only)|2560x1600 (OpenGL Only)|3440x1440 (OpenGL Only)|3840x2160 (OpenGL Only)|5120x2880 (OpenGL Only)|7680x4320 (OpenGL Only)|15360x8640 (OpenGL Only))

	Set the in-game rendering resolution. Higher values improve clarity at the expense of increased performance requirements.

- **Framerate (Restart)** [vitaquakeii_framerate] (**Auto**|30 fps|50 fps|60 fps|72 fps|75 fps|90 fps|100 fps|119 fps|120 fps|144 fps|155 fps|160 fps|165 fps|180 fps|200 fps|240 fps|244 fps|300 fps|320 fps|360 fps|380 fps|400 fps|420 fps|440 fps|460 fps|480 fps|500 fps|520 fps|540 fps|560 fps|580 fps|600 fps)

	Set internal framerate. 'Auto' will attempt to match the refresh rate of the connected display.

- **Renderer (Restart)** [vitaquakeii_renderer] (**OpenGL**|Software)

	Choose between fast hardware-accelerated (OpenGL) rendering or the slower software-based renderer.

- **[Software] Truecolor Sky** [vitaquakeii_sw_truecolor_sky] (**Enabled**|Disabled)

	Composite a high-colour RGB565 sky over the paletted frame when truecolor env/*.tga skybox textures are present. Has no effect on the OpenGL renderer or on skies that ship only as 8-bit PCX.

- **[Software] Colored Lighting** [vitaquakeii_sw_colored_lighting] (**Enabled**|Disabled)

	Use the map's 24-bit RGB lightmaps to tint the paletted software renderer, snapping each lit texel to the nearest palette entry via an inverse-palette lookup. Has no effect on the OpenGL renderer. When disabled, lighting collapses to the original monochrome intensity.

- **[GL] Brightness (Restart)** [vitaquakeii_gl_modulate] (1.0 to 5.0 in steps of 0.2, **2.0**)

	Set the overall brightness of in-game environments. (Only supported by the OpenGL renderer)

- **[GL] Texture Filtering** [vitaquakeii_gl_texture_filtering] (Nearest|Linear|**Nearest (HQ)**|Linear (HQ))

	Set hardware-based filtering method for in-game textures. 'Nearest' is sharp, 'Linear' is smooth. 'HQ' versions improve mipmap handling, reducing 'shimmer' in floor/ceiling textures. (Only supported by the OpenGL renderer)

- **[GL] Dynamic Shadows** [vitaquakeii_gl_shadows] (**disabled**|enabled)

	Enable the casting of dynamic shadows from in-game objects. (Only supported by the OpenGL renderer)

- **[GL] Mirror Mode** [vitaquakeii_gl_xflip] (**disabled**|enabled)

	Mirror each level by flipping the X coordinate of the display, providing an alternative experience for veteran players. (Only supported by the OpenGL renderer)

- **[GL] HUD Scale Factor** [vitaquakeii_gl_hud_scale] (0.00 to 1.00 in steps of 0.02, **0.50**)

	Adjust the scale of on-screen HUD icons/text and in-game menus. A value of '1.00' will draw elements at the size expected when running the original game at a native resolution of 320x240. A value of '0.00' will draw elements with 1:1 (pixel perfect) scaling. (Only supported by the OpenGL renderer)

- **[SW] Dithered Filtering** [vitaquakeii_sw_dithered_filtering] (**disabled**|enabled)

	Reduce pixelation of in-game textures at the expense of increased performance requirements. (Only supported by the Software renderer)

- **Weapon Position** [vitaquakeii_hand] (**Right**|Left|Center|Hidden)

	Set the on-screen location of the currently held weapon.

- **Show Crosshair** [vitaquakeii_xhair] (disabled|**White Cross**|Red Dot|Red Angle)

	Enable an in-game crosshair to facilitate aiming.

- **Force 4:3 for Cinematics** [vitaquakeii_cin_force43] (**enabled**|disabled)

	When enabled, all videos (introductions, cutscenes) will be displayed at the correct aspect ratio of 4:3. If disabled, videos will be stretched to fill the screen.

- **Sound Samplerate (Hint)** [vitaquakeii_sound_samplerate] (**Auto**|32 kHz|44 kHz|48 kHz|96 kHz)

	Audio output rate. The engine mixes sound effects and the music stream directly at the chosen rate, so higher rates lower latency, push aliasing above the audible range, avoid the frontend resampler's low-pass smearing, and give the resamplers finer time resolution. 'Auto' queries the frontend's target rate and snaps to the nearest supported value. A core restart is required for a change to take effect.

- **Play Music** [vitaquakeii_cdaudio_enabled] (**enabled**|disabled)

	Enable playback of original CD audio tracks at the expense of increased performance requirements. Music must be in OGG format, placed inside the '<PAK directory>/music' folder. Files may be named either 'XX.ogg' or 'trackXX.ogg'.

#### Input

Configure auto run, Y axis inversion, camera sensitivity, analog deadzone, rumble settings and keyboard mapping.

- **Auto Run** [vitaquakeii_cl_run] (**disabled**|enabled)

	When enabled, the player character will run by default instead of walking.

- **Accurate Aiming** [vitaquakeii_aimfix] (**disabled**|enabled)

	When enabled, weapons will target the exact centre of the aiming crosshair. This modifies the behaviour of the original game, where shooting is slightly inaccurate and projectiles intentionally drift.

- **Invert Y Axis** [vitaquakeii_invert_y_axis] (disabled|**enabled**)

	Invert the Y axis of the gamepad's right analog stick. When disabled, pressing 'up' will make the player character look down (i.e. flight sim camera controls).

- **Camera Sensitivity** [vitaquakeii_mouse_sensitivity] (0.4 to 5.0 in steps of 0.2, **3.0**)

	Set the base speed of camera movements when using the gamepad's right analog stick or the mouse.

- **Analog Deadzone** [vitaquakeii_analog_deadzone] (0%|3%|5%|7%|10%|13%|**15%**|17%|20%|23%|25%|27%|30%)

	Set the deadzone of the gamepad's analog sticks. May be used to eliminate controller drift.

- **Rumble Effects** [vitaquakeii_rumble] (**disabled**|enabled)

	Enable gamepad force feedback when receiving damage.

- **Keyboard Mapping: Forwards/Menu Up** [vitaquakeii_kb_map_up] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|**w**|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to move forwards and navigate upwards in menus when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Backwards/Menu Down** [vitaquakeii_kb_map_down] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|**s**|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to move backwards and navigate downwards in menus when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Strafe Left** [vitaquakeii_kb_map_left] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|**a**|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to strafe left when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Strafe Right** [vitaquakeii_kb_map_right] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|**d**|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to strafe right when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Show Menu** [vitaquakeii_kb_map_menu_show] (Backspace|Tab|Clear|Return|Pause|**Esc**|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to open the menu when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Menu Select** [vitaquakeii_kb_map_menu_select] (Backspace|Tab|Clear|**Return**|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to select menu items when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Menu Cancel** [vitaquakeii_kb_map_menu_cancel] (**Backspace**|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to cancel menu selections when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Show/Hide Help Computer** [vitaquakeii_kb_map_menu_help] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|**F1**|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to open and close the 'help computer' when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Open/Close Inventory** [vitaquakeii_kb_map_inventory_show] (Backspace|**Tab**|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to open and close the inventory when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Previous Inventory Item** [vitaquakeii_kb_map_inventory_prev] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|**q**|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to select the previous inventory item when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Next Inventory Item** [vitaquakeii_kb_map_inventory_next] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|**e**|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to select the next inventory item when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Use Inventory Item** [vitaquakeii_kb_map_inventory_use] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|**r**|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to activate current inventory item when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Drop Inventory Item** [vitaquakeii_kb_map_inventory_drop] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|**v**|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to drop current inventory item when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Next Weapon** [vitaquakeii_kb_map_weapon_next] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|**f**|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to switch to the next available weapon when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Run** [vitaquakeii_kb_map_run] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|**Left Shift**|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to enable running when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Jump/Climb** [vitaquakeii_kb_map_jump] (Backspace|Tab|Clear|Return|Pause|Esc|**Space**|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|Left Ctrl|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to jump and climb/ascend when input device type is 'Keyboard + Mouse'.

- **Keyboard Mapping: Crouch/Descend** [vitaquakeii_kb_map_crouch] (Backspace|Tab|Clear|Return|Pause|Esc|Space|#|'|,|-|.|/|0|1|2|3|4|5|6|7|8|9|;|<|=|>|[|\|]|`|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|Delete|Keypad 0|Keypad 1|Keypad 2|Keypad 3|Keypad 4|Keypad 5|Keypad 6|Keypad 7|Keypad 8|Keypad 9|Keypad .|Keypad /|Keypad *|Keypad -|Keypad +|Keypad Enter|Keypad =|Cursor Up|Cursor Down|Cursor Right|Cursor Left|Insert|Home|End|PgUp|PgDn|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|F13|F14|F15|Num Lock|Caps Lock|Scroll Lock|Left Shift|Right Shift|**Left Ctrl**|Right Ctrl|Left Alt|Right Alt|Left Meta|Right Meta|Left Super|Right Super)

	Set key used to crouch and descend when input device type is 'Keyboard + Mouse'.

## Controllers

The vitaQuakeII core supports the following device type(s):

- Analog Gamepad
- Keyboard + Mouse

## External Links

- [vitaQuakeII Repository](https://github.com/libretro/vitaquake2)
- [Report vitaQuakeII Core Issues Here](https://github.com/libretro/vitaquake2/issues)

