# Making Custom Themes

This page will guide you through the essential information needed to customize the core RetroArch theme.

Credit for information goes to @baxysquare from this [forum post](https://forums.libretro.com/t/guide-to-making-themes/9554)

!!! tip
    For examples of Menu Icon Themes and how to change them please read [this guide](https://github.com/libretro/docs/blob/master/docs/guides/theme-examples.md)

## Skills & Tools Needed to Make and Contribute a Theme

  *  A GitHub account and a basic understanding on how to fork a project and contribute via Pull Requests. The GitHub project that hosts the theme is the [retroarch-assets](https://github.com/libretro/retroarch-assets) repository.

  *  Computer application(s) to create source icons. You can use any photo editing application such as Photoshop or GIMP, but a Vector-based application such as Illustrator or Inkscape is preferred. The preferred source format is SVG.

  *  Conversion applications can come in handy. You can use ImageMagick to batch convert your source files to PNG format. Running your PNG files through ImageOptim can help reduce the icon file size without reducing the quality.

  *  Attention to detail, patience and time. Be prepared to create and revise as you learn and grow. Feel free to take an existing theme, make modifications and then test your new design.

## Required Theme Components

  *  A truetype font renamed to "font.ttf." You need to choose a typeface that has an open license. There is a wide selection to choose from at [Google Fonts](https://fonts.google.com/). If you have the tools and skills to make your own font and wish to contribute it via open license, feel free to do so.

  *  A text file in GitHub Markdown format titled README.md. This file provides basic info on the theme itself along with specifications and guidelines to help others contribute to the theme. Make sure to include an attribution and license info for the included truetype font.

  *  A PNG folder that contains a complete set of icons and a default background image.

### Optional Theme Components

  *  A SRC file containing SVG or other source files. If you choose not to include your source files, please host them elsewhere and indicate in the README.

## Icons

The majority of time and effort involved in creating a theme is creating and revising the icons. The default Monochrome set includes just over 200 icons as listed below. That number will continue to grow as more cores and features are added.

## Tips & Tricks for Creating Icons

  *  The icons should be set to a 256x256 pixel canvas and should be centered on a 64x64 grid. You need to snap your point and line elements to the grid wherever possible. Libretro icons are scaled down, so when design elements do not line up with the grid, they tend to render oddly.

  *  Give your icons room to breathe. While you are capable of using the full canvas, a 248x248 or 240x240 maximum icon size is highly recommended. Alternatively, you can keep your icons inside a 256x256 circular "blueprint". This will keep the top and the bottom of your icons from touching when you're scrolling through a list of icons.

  *  Create and stick to a color palette of 64 colors or less. While you can use an unlimited palette, your icons will look more uniform and consistent as a theme.

  *  Keep the details of your icons in harmony with one another. If one icon has too many design details, try to simplify it to match with the other icons. If an icon is lacking in detail, do what you can to add balance in comparison to the other designs.

Here's a complete list of icons (and wallpaper) in the default set. Category, Type, Menu Level and Size info has been included to help you understand an icon's purpose and use in the user interface.

| Name                                                       | Category | Type        | Level | Size  |
|------------------------------------------------------------|----------|-------------|-------|-------|
| FB Alpha - Arcade Games-content.png                        | Arcade   | Content     | 1     | 256   |
| MAME-content.png                                           | Arcade   | Content     | 1     | 256   |
| MAME2003-content.png                                       | Arcade   | Content     | 1     | 256   |
| MAME2010-content.png                                       | Arcade   | Content     | 1     | 256   |
| Neo Geo-content.png                                        | Arcade   | Content     | 1     | 256   |
| FB Alpha - Arcade Games.png                                | Arcade   | System      | 0     | 256   |
| MAME.png                                                   | Arcade   | System      | 0     | 256   |
| MAME2003.png                                               | Arcade   | System      | 0     | 256   |
| MAME2010.png                                               | Arcade   | System      | 0     | 256   |
| Neo Geo.png                                                | Arcade   | System      | 0     | 256   |
| Lutro.png                                                  | Computer | Application | 0     | 256   |
| DOS.png                                                    | Computer | Application | 0     | 256   |
| Atari - ST-content.png                                     | Computer | Content     | 1     | 256   |
| Commodore Amiga-content.png                                | Computer | Content     | 1     | 256   |
| DOS-content.png                                            | Computer | Content     | 1     | 256   |
| Microsoft - MSX-content.png                                | Computer | Content     | 1     | 256   |
| Microsoft - MSX2-content.png                               | Computer | Content     | 1     | 256   |
| ScummVM-content.png                                        | Computer | Content     | 1     | 256   |
| Sinclair - ZX 81-content.png                               | Computer | Content     | 1     | 256   |
| Sinclair - ZX Spectrum +3-content.png                      | Computer | Content     | 1     | 256   |
| Sinclair - ZX Spectrum-content.png                         | Computer | Content     | 1     | 256   |
| Lutro-content.png                                          | Computer | Content     | 1     | 256   |
| Atari - ST.png                                             | Computer | System      | 0     | 256   |
| Commodore Amiga.png                                        | Computer | System      | 0     | 256   |
| Microsoft - MSX.png                                        | Computer | System      | 0     | 256   |
| Microsoft - MSX2.png                                       | Computer | System      | 0     | 256   |
| ScummVM.png                                                | Computer | System      | 0     | 256   |
| Sinclair - ZX 81.png                                       | Computer | System      | 0     | 256   |
| Sinclair - ZX Spectrum +3.png                              | Computer | System      | 0     | 256   |
| Sinclair - ZX Spectrum.png                                 | Computer | System      | 0     | 256   |
| Atari - 2600-content.png                                   | Console  | Content     | 1     | 256   |
| Atari - 5200-content.png                                   | Console  | Content     | 1     | 256   |
| Atari - 7800-content.png                                   | Console  | Content     | 1     | 256   |
| Atari - Jaguar-content.png                                 | Console  | Content     | 1     | 256   |
| Bandai - WonderSwan Color-content.png                      | Console  | Content     | 1     | 256   |
| Bandai - WonderSwan-content.png                            | Console  | Content     | 1     | 256   |
| Coleco - ColecoVision-content.png                          | Console  | Content     | 1     | 256   |
| GCE - Vectrex-content.png                                  | Console  | Content     | 1     | 256   |
| Magnavox - Odyssey2-content.png                            | Console  | Content     | 1     | 256   |
| NEC - PC Engine - TurboGrafx 16-content.png                | Console  | Content     | 1     | 256   |
| NEC - PC Engine CD - TurboGrafx-CD-content.png             | Console  | Content     | 1     | 256   |
| NEC - PC Engine SuperGrafx-content.png                     | Console  | Content     | 1     | 256   |
| NEC - PC-FX-content.png                                    | Console  | Content     | 1     | 256   |
| Nintendo - Family Computer Disk System-content.png         | Console  | Content     | 1     | 256   |
| Nintendo - GameCube-content.png                            | Console  | Content     | 1     | 256   |
| Nintendo - Nintendo 64-content.png                         | Console  | Content     | 1     | 256   |
| Nintendo - Nintendo 64DD-content.png                       | Console  | Content     | 1     | 256   |
| Nintendo - Nintendo Entertainment System-content.png       | Console  | Content     | 1     | 256   |
| Nintendo - Satellaview-content.png                         | Console  | Content     | 1     | 256   |
| Nintendo - Sufami Turbo-content.png                        | Console  | Content     | 1     | 256   |
| Nintendo - Super Nintendo Entertainment System-content.png | Console  | Content     | 1     | 256   |
| Nintendo - Wii-content.png                                 | Console  | Content     | 1     | 256   |
| Sega - 32X-content.png                                     | Console  | Content     | 1     | 256   |
| Sega - Dreamcast-content.png                               | Console  | Content     | 1     | 256   |
| Sega - Master System - Mark III-content.png                | Console  | Content     | 1     | 256   |
| Sega - Mega Drive - Genesis-content.png                    | Console  | Content     | 1     | 256   |
| Sega - Mega-CD - Sega CD-content.png                       | Console  | Content     | 1     | 256   |
| Sega - PICO-content.png                                    | Console  | Content     | 1     | 256   |
| Sega - Saturn-content.png                                  | Console  | Content     | 1     | 256   |
| Sega - SG-1000-content.png                                 | Console  | Content     | 1     | 256   |
| SNK - Neo Geo CD-content.png                               | Console  | Content     | 1     | 256   |
| SNK - Neo Geo-content.png                                  | Console  | Content     | 1     | 256   |
| Sony - PlayStation-content.png                             | Console  | Content     | 1     | 256   |
| The 3DO Company - 3DO-content.png                          | Console  | Content     | 1     | 256   |
| Uzebox-content.png                                         | Console  | Content     | 1     | 256   |
| Atari - 2600.png                                           | Console  | System      | 0     | 256   |
| Atari - 5200.png                                           | Console  | System      | 0     | 256   |
| Atari - 7800.png                                           | Console  | System      | 0     | 256   |
| Atari - Jaguar.png                                         | Console  | System      | 0     | 256   |
| Bandai - WonderSwan Color.png                              | Console  | System      | 0     | 256   |
| Bandai - WonderSwan.png                                    | Console  | System      | 0     | 256   |
| Coleco - ColecoVision.png                                  | Console  | System      | 0     | 256   |
| GCE - Vectrex.png                                          | Console  | System      | 0     | 256   |
| Magnavox - Odyssey2.png                                    | Console  | System      | 0     | 256   |
| NEC - PC Engine - TurboGrafx 16.png                        | Console  | System      | 0     | 256   |
| NEC - PC Engine CD - TurboGrafx-CD.png                     | Console  | System      | 0     | 256   |
| NEC - PC Engine SuperGrafx.png                             | Console  | System      | 0     | 256   |
| NEC - PC-FX.png                                            | Console  | System      | 0     | 256   |
| Nintendo - Family Computer Disk System.png                 | Console  | System      | 0     | 256   |
| Nintendo - GameCube.png                                    | Console  | System      | 0     | 256   |
| Nintendo - Nintendo 64.png                                 | Console  | System      | 0     | 256   |
| Nintendo - Nintendo 64DD.png                               | Console  | System      | 0     | 256   |
| Nintendo - Nintendo Entertainment System.png               | Console  | System      | 0     | 256   |
| Nintendo - Satellaview.png                                 | Console  | System      | 0     | 256   |
| Nintendo - Sufami Turbo.png                                | Console  | System      | 0     | 256   |
| Nintendo - Super Nintendo Entertainment System.png         | Console  | System      | 0     | 256   |
| Nintendo - Wii.png                                         | Console  | System      | 0     | 256   |
| Sega - 32X.png                                             | Console  | System      | 0     | 256   |
| Sega - Dreamcast.png                                       | Console  | System      | 0     | 256   |
| Sega - Master System - Mark III.png                        | Console  | System      | 0     | 256   |
| Sega - Mega Drive - Genesis.png                            | Console  | System      | 0     | 256   |
| Sega - Mega-CD - Sega CD.png                               | Console  | System      | 0     | 256   |
| Sega - PICO.png                                            | Console  | System      | 0     | 256   |
| Sega - Saturn.png                                          | Console  | System      | 0     | 256   |
| Sega - SG-1000.png                                         | Console  | System      | 0     | 256   |
| SNK - Neo Geo CD.png                                       | Console  | System      | 0     | 256   |
| SNK - Neo Geo.png                                          | Console  | System      | 0     | 256   |
| Sony - PlayStation.png                                     | Console  | System      | 0     | 256   |
| The 3DO Company - 3DO.png                                  | Console  | System      | 0     | 256   |
| Uzebox.png                                                 | Console  | System      | 0     | 256   |
| Atari - Lynx-content.png                                   | Handheld | Content     | 1     | 256   |
| Game Park - GP32-content.png                               | Handheld | Content     | 1     | 256   |
| Handheld Electronic Game-content.png                       | Handheld | Content     | 1     | 256   |
| Nintendo - Game Boy Advance-content.png                    | Handheld | Content     | 1     | 256   |
| Nintendo - Game Boy Color-content.png                      | Handheld | Content     | 1     | 256   |
| Nintendo - Game Boy-content.png                            | Handheld | Content     | 1     | 256   |
| Nintendo - Nintendo DS Decrypted-content.png               | Handheld | Content     | 1     | 256   |
| Nintendo - Nintendo DS-content.png                         | Handheld | Content     | 1     | 256   |
| Nintendo - Pokemon Mini-content.png                        | Handheld | Content     | 1     | 256   |
| Nintendo - Virtual Boy-content.png                         | Handheld | Content     | 1     | 256   |
| Sega - Game Gear-content.png                               | Handheld | Content     | 1     | 256   |
| SNK - Neo Geo Pocket Color-content.png                     | Handheld | Content     | 1     | 256   |
| SNK - Neo Geo Pocket-content.png                           | Handheld | Content     | 1     | 256   |
| Sony - PlayStation Portable-content.png                    | Handheld | Content     | 1     | 256   |
| Tiger - Game.com-content.png                               | Handheld | Content     | 1     | 256   |
| Atari - Lynx.png                                           | Handheld | System      | 0     | 256   |
| Game Park - GP32.png                                       | Handheld | System      | 0     | 256   |
| Handheld Electronic Game.png                               | Handheld | System      | 0     | 256   |
| Nintendo - Game Boy Advance.png                            | Handheld | System      | 0     | 256   |
| Nintendo - Game Boy Color.png                              | Handheld | System      | 0     | 256   |
| Nintendo - Game Boy.png                                    | Handheld | System      | 0     | 256   |
| Nintendo - Nintendo DS Decrypted.png                       | Handheld | System      | 0     | 256   |
| Nintendo - Nintendo DS.png                                 | Handheld | System      | 0     | 256   |
| Nintendo - Pokemon Mini.png                                | Handheld | System      | 0     | 256   |
| Nintendo - Virtual Boy.png                                 | Handheld | System      | 0     | 256   |
| Sega - Game Gear.png                                       | Handheld | System      | 0     | 256   |
| SNK - Neo Geo Pocket Color.png                             | Handheld | System      | 0     | 256   |
| SNK - Neo Geo Pocket.png                                   | Handheld | System      | 0     | 256   |
| Sony - PlayStation Portable.png                            | Handheld | System      | 0     | 256   |
| Tiger - Game.com.png                                       | Handheld | System      | 0     | 256   |
| 2048.png                                                   | Port     | Application | 0     | 256   |
| Cave Story.png                                             | Port     | Application | 0     | 256   |
| Dinothawr.png                                              | Port     | Application | 0     | 256   |
| DOOM.png                                                   | Port     | Application | 0     | 256   |
| Dungeon Crawl Stone Soup.png                               | Port     | Application | 0     | 256   |
| Quake1.png                                                 | Port     | Application | 0     | 256   |
| 2048-content.png                                           | Port     | Content     | 1     | 256   |
| Cave Story-content.png                                     | Port     | Content     | 1     | 256   |
| Dinothawr-content.png                                      | Port     | Content     | 1     | 256   |
| DOOM-content.png                                           | Port     | Content     | 1     | 256   |
| Dungeon Crawl Stone Soup-content.png                       | Port     | Content     | 1     | 256   |
| Quake1-content.png                                         | Port     | Content     | 1     | 256   |
| FFmpeg.png                                                 | XMB      | Application | 0     | 256   |
| default.png                                                | XMB      | Application | 0     | 256   |
| Game.png                                                   | XMB      | Application | 0     | 256   |
| history.png                                                | XMB      | Application | 0     | 256   |
| images.png                                                 | XMB      | Application | 0     | 256   |
| lakka.png                                                  | XMB      | Application | 0     | 256   |
| movies.png                                                 | XMB      | Application | 0     | 256   |
| netplay.png                                                | XMB      | Application | 0     | 256   |
| retroarch.png                                              | XMB      | Application | 0     | 256   |
| settings.png                                               | XMB      | Application | 0     | 256   |
| musics.png                                                 | XMB      | Application | 0     | 256   |
| add.png                                                    | XMB      | Application | 0     | 256   |
| FFmpeg-content.png                                         | XMB      | Content     | 1     | 256   |
| music.png                                                  | XMB      | Content     | 1     | 256   |
| image.png                                                  | XMB      | Content     | 1     | 256   |
| movie.png                                                  | XMB      | Content     | 1     | 256   |
| achievement-list.png                                       | XMB      | Content     | 1     | 256   |
| default-content.png                                        | XMB      | Content     | 1     | 256   |
| Game-content.png                                           | XMB      | Content     | 1     | 256   |
| netplay - iRoom-locked.png                                 | XMB      | Content     | 1     | 256   |
| netplay - iRoom.png                                        | XMB      | Content     | 1     | 256   |
| netplay - LAN Room-locked.png                              | XMB      | Content     | 1     | 256   |
| netplay - LAN Room.png                                     | XMB      | Content     | 1     | 256   |
| netplay - rooms-locked.png                                 | XMB      | Content     | 1     | 256   |
| netplay - rooms.png                                        | XMB      | Content     | 1     | 256   |
| room.png                                                   | XMB      | Content     | 1     | 256   |
| setting.png                                                | XMB      | Content     | 1     | 256   |
| zip.png                                                    | XMB      | Content     | 2     | 256   |
| file.png                                                   | XMB      | Content     | 2     | Small |
| folder.png                                                 | XMB      | Content     | 2     | Small |
| dialog-slice.png                                           | XMB      | Dialog      | 2     | 256   |
| Libretro - Pad.png                                         | XMB      | Help        | -     | 256   |
| battery-charging.png                                       | XMB      | Info Bar    | -     | Small |
| battery-full.png                                           | XMB      | Info Bar    | -     | Small |
| clock.png                                                  | XMB      | Info Bar    | -     | Small |
| undo.png                                                   | XMB      | Info Bar    | -     | Small |
| wifi.png                                                   | XMB      | Info Bar    | -     | Small |
| key-hover.png                                              | XMB      | Key         | 2     | 256   |
| key.png                                                    | XMB      | Key         | 2     | 256   |
| arrow.png                                                  | XMB      | Nav         | 2     | Small |
| close.png                                                  | XMB      | Nav         | 2     | Small |
| core-cheat-options.png                                     | XMB      | Nav         | 2     | Small |
| core-disk-options.png                                      | XMB      | Nav         | 2     | Small |
| core-infos.png                                             | XMB      | Nav         | 2     | Small |
| core-input-remapping-options.png                           | XMB      | Nav         | 2     | Small |
| core-options.png                                           | XMB      | Nav         | 2     | Small |
| core-shader-options.png                                    | XMB      | Nav         | 2     | Small |
| core.png                                                   | XMB      | Nav         | 2     | Small |
| cursor.png                                                 | XMB      | Nav         | 2     | Small |
| database.png                                               | XMB      | Nav         | 2     | Small |
| loadstate.png                                              | XMB      | Nav         | 2     | Small |
| pointer.png                                                | XMB      | Nav         | 2     | Small |
| reload.png                                                 | XMB      | Nav         | 2     | Small |
| resume.png                                                 | XMB      | Nav         | 2     | Small |
| run.png                                                    | XMB      | Nav         | 2     | Small |
| savestate.png                                              | XMB      | Nav         | 2     | Small |
| screenshot.png                                             | XMB      | Nav         | 2     | Small |
| subsetting.png                                             | XMB      | Nav         | 2     | Small |
| off.png                                                    | XMB      | Selection   | 2     | Small |
| on.png                                                     | XMB      | Selection   | 2     | Small |
| bg.png                                                     | XMB      | Wallpaper   | -     | 1080p |
