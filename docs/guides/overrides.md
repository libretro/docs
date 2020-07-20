# Using Content, Folder, and Core Overrides for Custom Settings

There are various and comprehensive ways to save customized settings within the RetroArch menus. 99% of settings can be adjusted and saved from the menu but are only plain text files and can be adjusted manually with a text editor.

- Global settings can be overridden on a per core, per content directory, or per game basis using the config override system.
- Input settings are handled separately with the input core and game Remap system.
- Likewise, Shader Preset settings are also their own entity for per core and game settings
- A standalone file also saves the Option settings for all cores that support them. The settings in this file can be overridden on a per game basis.

!!! tip
    Please read the [Getting Started](install-windows.md) guide.


## Logic

### Overrides *(.cfg)* & Remaps *(.rmp)*

Overrides and Remaps are designed to be lightweight and easily maintained configuration methods. They save only settings that differ from the preceding settings files.

For example if only one setting differs between your `retroarch.cfg` and a `core.cfg`, then the `core.cfg` file will only contain one setting.

The hierarchy for loading is:

1. Game settings -> Applied when loading a particular game (content)
2. Content directory settings -> Applied when loading content from a particular directory
3. Core settings -> Applied when loading content with a specific core
4. Default settings -> The default settings from 'retroarch.cfg'

The RetroArch loading process is:

- Load `retroarch.cfg`
    - Apply `<name-of-core>.cfg` & `<name-of-core>.rmp` override
		- Apply `<name-of-content-directory>.cfg` & `<name-of-content-directory>.rmp` override
			- Apply `<name-of-game>.cfg` & `<name-of-game>.rmp` override

!!! note
    Core-specific or content directory-specific overrides that are not in game-specific overrides persist and will be loaded.
    Also once you have created an override any future changes will need to be saved via the Quick Menu.

### Options *(.opt)* & Shader Presets *(.cgp|.glslp|.slangp)*

Custom per game core options and shader presets work slightly differently. These are full configurations and are loaded instead of the base shader preset and core option settings.

## Configuration Files & Location

!!! note
    Depending on your chosen platform the location of these files after installation may vary.

!!! warning
    Some settings cannot be saved in an override file from the menu. You can manually add settings to the override file to workaround most situations.

**The default and global settings file**

- `retroarch.cfg`  *(located in the base install path)*

**The global file for core option settings, for cores that support options**

- `retroarch-core-options.cfg` *(located with the `retroarch.cfg`)*

### Core options

- `name-of-game.opt` **If not found load**
    - `retroarch-core-options.cfg`

The options files list the settings found under `Quick Menu -> Options`. The `retroarch-core-options.cfg` is created automatically on loading a core that supports Options.

A game-specific options file is created when you select `Quick Menu -> Options -> Game-options file`. *(located in `/config/<name-of-core>/<name-of-game>.opt`. The path is set under `Settings->Directory->Config`)*

!!! attention
	Load Content Specific Core Options Automatically must be set to On in RetroArch's Configuration settings in order for game-specific options to be automatically loaded upon content load.

### Override Configs

The override system activates on loading of content. RetroArch applies config settings with the logic as [explained above](#logic).

**Per Core Override**

- `/config/<name-of-core>/name-of-core.cfg` *(This path is set under `Settings -> Directory -> Config`)*

These settings files are created from the `Quick Menu -> Save Core Overrides` option and contain ANY (supported) settings you have changed since loading content. These settings will be loaded every time you load content with that core.

**Per Content Directory Override**

- `/config/<name-of-core>/name-of-content-directory.cfg` *(located with per core override)*

These settings files are created as above with the `Quick Menu -> Save Content Directory Overrides`. The settings will take precedence over `name-of-core.cfg`

**Per Game Override**

- `/config/<name-of-core>/name-of-game.cfg` *(located with per core override file)*

These settings files are created as above with the `Quick Menu -> Save Game Overrides`. The settings will take precedence over `name-of-content-directory.cfg`

### Input Remaps

Input remaps use the same logic as core/directory/game overrides and use the `.rmp` extension. They can be adjusted and saved from:
- `Quick Menu -> Controls -> Save Core Remap File`
- `Quick Menu -> Controls -> Save Content Directory Remap File`
- `Quick Menu -> Controls -> Save Game Remap File`

Set the save directory in `Settings -> Directory -> Input Remapping` *(by default they will save to `/config/remaps/<name-of-core>/`)*
