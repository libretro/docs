# Retroarch Getting Started guide for users of the accessibility mode

## Introduction

This user guide is to aid users of screen readers who are newcomers to Retroarch begin using the program. Retroarch is an emulation front-end which allows one to play many games from many video game consoles, Arcades, and vintage computers. As of version 1.8.2, the user interface is accessible to blind people. Using the AI service within games, one is able to read textual content: menus, character dialog, statistics screens, ETC. Along with the game’s sound design, this makes many games which were playable even more enjoyable, or games which use only text playable at all. For now, accessibility mode works on Windows, macOS, and Linux operating systems.

## Retroarch Terminology

-   **Retroarch:** A front-end for many video game emulators.
-   **Front-end:** A program that brings multiple other programs into one universal interface.
-   **Core:** a video game console, game engine, or media player within Retroarch.
-   **content:** a video game, media file, or Homebrew program that can be loaded by a Retroarch core.
-   **accessibility:** In Retroarch, a setting which speaks the user interface of the program.
-   **AI service:** A service which takes a screenshot of a game and acts upon it based on the setting chosen in the AI service settings. In this guide, we’ll focus on Narrator mode.
-   **Netplay:** Playing an originally offline video game across the local network or Internet.
-   **bind:** To link one thing with another. In Retroarch terms, to link a key or button with an action.

## Download Retroarch

To download Retroarch, go to [Retroarch's download page](https://www.retroarch.com/?page=platforms) and choose the download for your system. Windows users should choose the 64-bit installer version, unless they have an old computer with a 32-bit operating system. Mac users should download the Intel version under the “Apple macOS / OSX” heading. Linux users should see if version 1.8.2 or higher is in their package manager, and get that and the cores through APT, Pacman, DNF, and so on, or compile it yourself. For iOS, Android, tvOS, and game consoles, accessibility features are not implemented.

## Open the Program

After installing Retroarch, launch the program in the usual way according to your system. Right now, it will not speak, but if it opens, that means it’s at least installed correctly, and you can press escape twice to close it, or using the usual quit command of your operating system.

## Turn on accessibility

To turn on the accessibility feature, do the following:

-   Open Retroarch.
- Press **Left Arrow**, **Down Arrow**, then **Enter**.
-   Press **up arrow** seven times.
-   Press **Enter** twice, or **Enter** then **Right arrow**.
-   You’ll hear “Retroarch accessibility on.”

Now, you can either keep exploring the menu, or quit and reopen Retroarch for a fresh start. Accessibility mode will stay on, and if not, after enabling accessibility, arrow left once, then down arrow until you hear "settings", then arrow down to configuration, press **Enter**, and enable “save on exit” with **enter**.

**note**: in later versions of Retroarch, the default menu has been set to Ozone. For an easier experience, especially with gamepads, you may switch to the "XMB" menu by going to settings, drivers, menu driver, and changing "ozone" to "XMB." The rest of this guide assumes that you are using the XMB menu.

## Set Narrator Speed

If you find that Retroarch is speaking too quickly or too slowly, you can change the speed.

-   From the Retroarch accessibility menu, press **Down arrow**.
-   Press the **Left arrow** to decrease the speed, and the **Right arrow** to increase it.

## Navigate the Interface

The Retroarch user interface is composed of menus, dialog boxes, text-entry boxes, and so on. This does not include the games played using Retroarch. To navigate the interface, use the arrow keys to traverse menus, Enter to activate items, left and right arrow keys to adjust options, and backspace to go back to the previous menus. You can press the Shift key to get information on the currently focused menu item, and then Enter or Backspace to exit that dialog.

There are two main navigation elements to be aware of in Retroarch’s user interface. Menus are vertical, so you use the Up and Down arrows to navigate these. Tabs, sometimes called Vertical menus, are navigated with the Left and Right arrows. Main Menu, Settings, Netplay, Favorites, ETC. are tabs, but Load Core, Load Content, and Quit are menu items. To the left of the Main Menu, you’ll find the “Horizontal Menus,” which are lists of game systems and games which you’ve played on that system. For example, if you play Play Station games, there will be a menu of those. The games in each tab are in a vertical list, but the other game systems, like PlayStation Portable, will be in another tab to the left of that. Tabs like Favorites, Netplay, and Settings are to the right of the Main Menu.


## AI Service

The AI service is a retroarch feature which takes a screenshot of the game being played, and can either translate the text in the image, speak the text, or speak the text with the same voice as the Narrator used for the Retroarch user interface. You will have to configure the AI service yourself, linking it with a translator, and setting up a key for it.

This can be useful for reading menus in games, unspoken character dialog, character dialog in another language, or other textual content, like instructions. Because the AI service uses Artificial Intelligence, the spoken text may not be completely accurate, as is all optical character recognition technology. If there is a table, it will be read one column at a time.


### How to Enable the AI Service

From the Main menu, press **Right Arrow** to move to the Settings menu. There, press **Down Arrow** until you reach the AI Service item, and press **Enter** to open it. Here, you can choose which mode the AI service will be in:

-   **Image Mode:** The service will capture an image of text, translate it, and send it back to the screen as an image.
-   **Speech Mode:** The Service will grab an image of text in a game, translate it if needed, and speak it using a third-party text to speech engine.
-   **Narrator Mode:** The AI service will grab an image of text, translate it if necessary, and send it to Retroarch’s accessibility system to be spoken by your operating system’s speech synthesizer.

For now, choose Narrator mode by pressing **Right Arrow** and down arrow to “Ai Service Enabled,” and if needed, turn it on with **Enter**.

Also, while you’re here, you can set the language to translate, and to translate to. For example, if you primarily play Japanese games, but you prefer to hear your games spoken in Esperanto, assuming you have a voice for that language, set the source language to “Japanese,” and the target language to “Esperanto.” You can also leave the source language at “Don’t care,” and the Service will guess the language of the game.


### Sign up for ZTranslate

To use the AI Service, you need to link it with an online translation service. The easiest method is to use ZTranslate.

-   In your web browser, go to <https://ztranslate.net>
-   Find the “Sign Up” link, and press **Enter** on it.
-   Fill out the form, and submit it to make an account there.
-   Check your email, and verify the account by clicking the included link.
-   When logged in, go to the “Settings” link, and press **Enter**.
-   Move to the “Quota” heading, and arrow down to the “API key” section.
-   Copy the API key, and paste it into a Notepad, text edit, GEdit, Pluma, or Nano file.


### Configure the Service

To configure the service, go to the Settings link on ZTranslate’s site, and find the OCR Page. There, you can set confidence levels, which tell the Service what level, from 0 to 1, of confidence to translate the text with. In the Profile page, you can set and change personal information.


### link Retroarch with your account

To link Retroarch with your ZTranslate account, find your Retroarch configuration file. Find your Retroarch folder:

-   Open Retroarch
-   Right arrow to Settings
-   Down Arrow to directories
-   Press Enter
-   Find the configuration directory and note the path to it, then exit retroarch.

Open the configuration directory, and then open Retroarch.cfg. There, change the line starting with

\#+begin<sub>example</sub> ai<sub>service</sub><sub>url</sub> = "<http://ztranslate.net/service?api_key>=<key here>" \#+end<sub>example</sub>

Here, you can simply copy and paste the URL in quotes to your configuration file, replacing <key here> with your own key, getting rid of the less-than and greater-than signs.


### Bind a key to the AI Service

Now, for easy access, we can bind the AI Service command to a key. To do this:

-   Go into retroarch’s settings menu.
-   Arrow down to Input and press **Enter**.
-   Arrow down to “hotkey binds,” and press **Enter**.
-   Arrow down to “AI Service,” and press **Enter** and quickly press the key, just once, that you’d like to bind to it.
-   Press **Up Arrow** then **Down Arrow** to read the key that AI Service is bound to, to make sure it’s what you want.
-   Press **Backspace** a few times to exit those menus.


## Use controllers

Retroarch not only works with keyboards. One can, if their headphones have a long enough chord, or their controller has a headphone jack, play games, and use the AI Service, right from a game controller. Usually, all one has to do is plug in a controller, and retroarch automatically configures and works with it. Sometimes, though, Retroarch’s control mappings are not to the user’s liking, some some reconfiguration is in order.


### Map controls

To map controls, go to the settings menu in Retroarch, arrow down to User one binds, press **Enter**, and down arrow to a button you want to configure. Press **Enter**, and then quickly press once the button you want the command, like “D-Pad Up,” to be mapped to. Repeat this with all other buttons, and press **Backspace** to exit that menu.


# Bind Hotkeys

You can also bind hotkeys. This is useful for binding commands, like AI Service, Rewind, or Fast Forward, to a controller button. To do this, go into the Settings menu, then “Input,” then “Hotkey Binds.” Arrow down to the command you’d like to configure a key for, press **Enter**, press a key on the keyboard or button on the controller, and it’ll be bound.


# Download Cores

In retroarch, cores are video game console emulators, game engines, video and picture viewers, or game music players. To download one, from the main menu, go to “load core,” and press **Enter**. Then, arrow down to “Download a core,” and press **Enter**.

In this list, you’ll find a lot of cores which have year numbers or other differentiating words after it. These are alternatives, in case the main core, the one without year numbers or specifying words beside it, do not work. For example, if there is “PPSSPP,” and “PPSSPP 2019,” it is good to go with “PPSSPP” first.


# Update Cores

Cores, like many other programs, receive updates to make games run faster, more smoothly, or add compatibility with new games. Particularly, the “Play” core, which allows one to play PlayStation Two cores, will have future updates addressing speed and compatibility in many games, as it is a relatively new emulator. To check for updates, do the following:

-   In the Main Menu, arrow down to “online updater”.
-   Arrow down to “Update Installed cores,” and press **Enter**.


# Load Content

Now that we have cores, we can load content into them. Content can be a game, video file, picture, or game music file, depending on what core you use. Retroarch comes with Doom and Tomb Hunter open game engines, which are not yet accessible, but you can find enjoyable games for other systems that you can play using other cores.

To load content, choose “Load Content” from the main menu, use the arrow keys and Enter to navigate directories to the game on your computer, and press **Enter** on the game file to open it. If you do not see the game file, download a core that can play that kind of game.

Once you’ve pressed **Enter** on the game file, you’ll be presented with a list of cores that could open that type of file. Choose the right one for your game, and press **Enter**. The game will start, and you can begin having fun.


## Use The Quick Menu

The Quick menu is a menu you can open within the game to customize controls, use Cheat Codes, save or load save states in the game, reset, or close the game. To open the Quick actions menu, press **F1**. To close it without making changes, press **Escape**.


# Other gaming resources

Other gaming resources for people who are blind include:

-   [The Audio Games site](https://audiogames.net) has a listing of accessible games and an active forum.
-   [AppleVis](https://www.applevis.com) has mobile game listings and a gaming forum.
-   [This project](https://github.com/devinprater/accessible-retro-games) is a voluntery listing of accessible retro games playable by the blind.


## Getting More Help

If you run into an error in Retroarch itself, not cores or games, or a problem with the accessibility service, please check the [Retroarch Issues page](https://github.com/libretro/RetroArch/issues), and if you cannot find it, create a [Github account](https://github.com) and submit one of your own. If you’d like general help with using retroarch, join its [Discord server](https://www.retroarch.com/?page=discord) and ask your questions there.
