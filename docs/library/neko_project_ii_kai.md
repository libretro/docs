# NEC - PC-98 (Neko Project II Kai)

## Background

NP2kai is a PC-9801 series core. The NEC PC-9800, also known as the PC-98, were a family of computers made by NEC throughout 1982 to 2000. Despite using Intel x86 chips, MS-DOS and Windows OS, and many other superficial similarities, the series is not IBM compatible. Some PC-98 software may work on an IBM or vice versa, but this is very YMMV. In fact, the introduction of a native Japanese version of standard MS-DOS in the early 90s and subsequent entry of cheaper foreign IBM clones in the Japanese market was the nail in the coffin for the PC-98. They were not released or marketed outside of Japan (besides few attempts such as APC-III and PC-9801FC), but still useful for playing early visual novels and Touhou games.

### Author/License

The Neko Project II Kai core has been authored by

- Neko Project II Team
- Tomohiro Yoshidomi

The Neko Project II Kai core is licensed under

- [MIT](https://github.com/AZO234/NP2kai/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Neko Project II Kai core have the following file extensions:

- .d98
- .zip
- .98d
- .fdi
- .fdd
- .2hd
- .tfd
- .d88
- .88d
- .hdm
- .xdf
- .dup
- .cmd
- .hdi
- .thd
- .nhd
- .hdd
- .hdn

## BIOS

Required or optional firmware files go in the frontend's system directory.

!!! attention
	These firmware files need to be in a directory named 'np2kai' in the frontend's system directory.

| Filename            | Description                       | md5sum                           |
|:-------------------:|:---------------------------------:|:--------------------------------:|
| np2kai/font.bmp     | Needed to display text - Required | 7da1e5b7c482d4108d22a5b09631d967 |
| np2kai/FONT.ROM     | Alt font file - Required          | 2af6179d7de4893ea0b705c00e9a98d6 |
| np2kai/bios.rom     | - Required                        | e246140dec5124c5e404869a84caefce |
| np2kai/itf.rom      | - Required                        | e9fc3890963b12cf15d0a2eea5815b72 |
| np2kai/sound.rom    | - Required                        | caf90f22197aed6f14c471c21e64658d |
| np2kai/bios9821.rom | - Optional                        |                                  |
| np2kai/d8000.rom    | - Optional                        |                                  |
| np2kai/2608_BD.WAV  | YM2608 RYTHM sample - Optional    |                                  |
| np2kai/2608_SD.WAV  | YM2608 RYTHM sample - Optional    |                                  |
| np2kai/2608_TOP.WAV | YM2608 RYTHM sample - Optional    |                                  |
| np2kai/2608_HH.WAV  | YM2608 RYTHM sample - Optional    |                                  |
| np2kai/2608_TOM.WAV | YM2608 RYTHM sample - Optional    |                                  |
| np2kai/2608_RIM.WAV | YM2608 RYTHM sample - Optional    |                                  |

## Features

Frontend-level settings or features that the Neko Project II Kai core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | ✔         |
| Screenshots       | ✔         |
| Saves             | ✕         |
| States            | ✔         |
| Rewind            | ✔         |
| Netplay           | ✔         |
| Core Options      | ✔         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | ✕         |
| Multi-Mouse       | ✕         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Neko Project II Kai core's directory name is 'Neko Project II kai'

The Neko Project II Kai core saves/loads to/from these directories.

**Frontend's Home directory**

- .bmp (???)

**Frontend's State directory**

- 'content-name'.state# (State)

**Frontend's System directory**

- np2/np2.cfg (Neko Project II Config file)

### Geometry and timing

- The Neko Project II Kai core's core provided FPS is `56.4`.
- The Neko Project II Kai core's core provided sample rate is `44100Hz`.
- The Neko Project II Kai core's core provided aspect ratio is `8/5`.

## Usage

NP2 menu can FDD/HDD swap.

Mouse is cuptured (hidden/show toggle) by F11 key.

NP2 menu is opened when F12 key

Keep 'end' key down when booting for machine options.

How to set GDC 2.5MHz/5MHz?

1. Press End key(assigned Help key) + reset
2. Select 'ディップスイッチ２'(DIP switch 2)

How to use CD drive with MS-DOS 6.2?

Write follow to CONFIG.SYS.

```
    LASTDRIVE=Z
    DEVICE=A:￥DOS￥NECCDD.SYS /D:CD_101
```

And write follow to AUTOEXEC.BAT.

```
    A:￥DOS￥MSCDEX.EXE /D:CD_101 /L:Q
```

Then, you'll can use CD drive as Q drive.

## Core options

The Neko Project II Kai core has the following option(s) that can be tweaked from the core options menu. The default setting is bolded.

Settings with (Restart) means that core has to be closed for the new setting to be applied on next launch.

- **PC Model (Restart)** [np2kai_model] (**PC-9801VX**/PC-286/PC-9801VM)

	Awaiting description.

- **CPU Base Clock (Restart)** [np2kai_clk_base] (**2.4576 MHz**/1.9968 MHz)

	Awaiting description.

- **CPU Clock Multiplier (Restart)** [np2kai_clk_mult] (**4**/5/6/8/10/12/16/20/24/30/36/40/42/1/2)

	Awaiting description.

- **RAM Size (Restart)* [np2kai_ExMemory] (**3**/7/11/13/16/32/64/120/230/1)

	Awaiting description.

- **GDC** [np2kai_gdc] (**uPD7220**/uPD72020)

	Awaiting description.

- **Skipline Revisions** [np2kai_skipline] (**Full 255 lines**/ON/OFF)

	Awaiting description.

- **Real Palettes** [np2kai_realpal] (**OFF**/ON)

	Awaiting description.

- **LCD** [np2kai_lcd ] (**OFF**/ON)

	Awaiting description.

- **Sound Board (Restart)** [np2kai_SNDboard] (**PC9801-86**/PC9801-26K + 86/PC9801-86 + Chibi-oto/PC9801-118/PC9801-86 + Mate-X PCM(B460)/Mate-X PCM(B460)/Chibi-oto/Speak Board/Spark Board/Sound Orchestra/Sound Orchestra-V/Sound Blaster 16/AMD-98/Otomi-chanx2/Otomi-chanx2 + 86/None/PC9801-14/PC9801-26K)

	26K: for old games. 86: for newer games.

- **JastSound** [np2kai_jast_snd] (**OFF**/ON)

	Awaiting description.

- **Sound Generator** [np2kai_usefmgen] (**fmgen**/Default)

	Awaiting description.

- **Volume FM** [np2kai_volume_F] (0 to 128 in increments of 4. **64 is default**.)

	Awaiting description.

- **Volume SSG** [np2kai_volume_S] (0 to 128 in increments of 4. **64 is default**.)

	Awaiting description.

- **Volume ADPCM** [np2kai_volume_A] (0 to 128 in increments of 4. **64 is default**.)

	Awaiting description.

- **Volume PCM** [np2kai_volume_P] (0 to 128 in increments of 4. **64 is default**.)

	Awaiting description.

- **Volume RHYTHM** [np2kai_volume_R] (0 to 128 in increments of 4. **64 is default**.)

	Awaiting description.

- **Volume CD-DA** [np2kai_volume_C] (0 to 255 in increments of 8. **128 is default**.)

	Awaiting description.

- **Floppy Seek Sound** [np2kai_Seek_Snd] (**OFF**/ON)

	Awaiting description.

- **Volume Floppy Seek** [np2kai_Seek_Vol] (0 to 128 in increments of 4. **80 is default**.)

	Awaiting description.

- **Volume Beep** [np2kai_BEEP_vol] (**3**/0/1/2)

	Awaiting description.

- **Joypad to Mouse Mapping** [np2kai_joy2mouse] (**OFF**/ON)

	Awaiting description.

- **Joypad to Keyboard Mapping** [np2kai_joy2key] (**OFF**/Arrows/Keypad)

	Awaiting description.

## Controllers

The Neko Project II Kai core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

### User 1 device types

- None - Doesn't disable input.
- **RetroPad** - Joypad
- RetroPad w/Analog - Joypad - There's no reason to switch to this.

### Controller tables

#### Joypad

!!! attention
	The Joy2Key and Joy2Mouse modes can be activated with the 'Joypad to Mouse Mapping' and 'Joypad to Keyboard Mapping' core options.

| RetroPad Inputs                              | Joy2Key (Arrows) | Joy2Key (Keypad)           | Joy2Mouse            |
|----------------------------------------------|------------------|----------------------------|----------------------|
| ![](../image/retropad/retro_b.png)       | Z key            | Z key                      | Mouse left button    |
| ![](../image/retropad/retro_y.png)       | Left control key | Left control key           |                      |
| ![](../image/retropad/retro_select.png)        | Escape key       | Escape key                 |                      |
| ![](../image/retropad/retro_start.png)         | Return key       | Return key                 |                      |
| ![](../image/retropad/retro_dpad_up.png)       | Up arrow key     | Keypad Up arrow key (8)    | Move mouse up        |
| ![](../image/retropad/retro_dpad_down.png)     | Down arrow key   | Keypad down arrow key (2)  | Move mouse down      |
| ![](../image/retropad/retro_dpad_left.png)     | Left arrow key   | Keypad left arrow key (4)  | Move mouse left      |
| ![](../image/retropad/retro_dpad_right.png)    | Right arrow key  | Keypad right arrow key (6) | Move mouse right     |
| ![](../image/retropad/retro_a.png)       | X key            | X key                      | Mouse right button   |
| ![](../image/retropad/retro_x.png)       | Space key        | Space key                  |                      |
| ![](../image/retropad/retro_l1.png)            | Backspace key    | Backspace key              | Increase mouse speed |
| ![](../image/retropad/retro_r1.png)            | Right shift key  | Right shift key            |                      |
| ![](../image/retropad/retro_l2.png)            | NP2 menu key     | NP2 menu key               | NP2 menu key         |

#### Keyboard

| RetroKeyboard Inputs         | NP2 Keyboard Inputs                |
|------------------------------|------------------------------------|
| Keyboard Backspace           | NKEY_BACKSPACE                     |
| Keyboard Tab                 | NKEY_TAB                           |
| Keyboard Return              | NKEY_RETURN                        |
| Keyboard Pause               | NKEY_STOP                          |
| Keyboard Escape              | NKEY_ESC                           |
| Keyboard Space               | NKEY_SPACE                         |
| Keyboard Quote '             | NKEY_COLON                         |
| Keyboard Comma ,             | NKEY_COMMA                         |
| Keyboard Minus -             | NKEY_MINUS                         |
| Keyboard Period .            | NKEY_DOT                           |
| Keyboard Slash /             | NKEY_SLASH                         |
| Keyboard 0                   | NKEY_0                             |
| Keyboard 1                   | NKEY_1                             |
| Keyboard 2                   | NKEY_2                             |
| Keyboard 3                   | NKEY_3                             |
| Keyboard 4                   | NKEY_4                             |
| Keyboard 5                   | NKEY_5                             |
| Keyboard 6                   | NKEY_6                             |
| Keyboard 7                   | NKEY_7                             |
| Keyboard 8                   | NKEY_8                             |
| Keyboard 9                   | NKEY_9                             |
| Keyboard Colon :             | NKEY_COLON                         |
| Keyboard Semicolon ;         | NKEY_SEMICOLON                     |
| Keyboard Equals =            | NKEY_CIRCUMFLEX                    |
| Keyboard At @                | NKEY_ATMARK                        |
| Keyboard Left Bracket [      | NKEY_LEFTSBRACKET                  |
| Keyboard Backslash \         | NKEY_YEN                           |
| Keyboard Right Bracket ]     | NKEY_RIGHTSBRACKET                 |
| Keyboard Caret ^             | NKEY_CIRCUMFLEX	                |
| Keyboard Underscore _        | NKEY_UNDERSCORE                    |
| Keyboard Backquote `         | NKEY_ATMARK                        |
| Keyboard a                   | NKEY_A                             |
| Keyboard b                   | NKEY_B                             |
| Keyboard c                   | NKEY_C                             |
| Keyboard d                   | NKEY_D                             |
| Keyboard e                   | NKEY_E                             |
| Keyboard f                   | NKEY_F                             |
| Keyboard g                   | NKEY_G                             |
| Keyboard h                   | NKEY_H                             |
| Keyboard i                   | NKEY_I                             |
| Keyboard j                   | NKEY_J                             |
| Keyboard k                   | NKEY_K                             |
| Keyboard l                   | NKEY_L                             |
| Keyboard m                   | NKEY_M                             |
| Keyboard n                   | NKEY_N                             |
| Keyboard o                   | NKEY_O                             |
| Keyboard p                   | NKEY_P                             |
| Keyboard q                   | NKEY_Q                             |
| Keyboard r                   | NKEY_R                             |
| Keyboard s                   | NKEY_S                             |
| Keyboard t                   | NKEY_T                             |
| Keyboard u                   | NKEY_U                             |
| Keyboard v                   | NKEY_V                             |
| Keyboard w                   | NKEY_W                             |
| Keyboard x                   | NKEY_X                             |
| Keyboard y                   | NKEY_Q                             |
| Keyboard z                   | NKEY_Z                             |
| Keyboard Delete              | NKEY_DEL                           |
| Keyboard Keypad 0            | NKEY_KP_0                          |
| Keyboard Keypad 1            | NKEY_KP_1                          |
| Keyboard Keypad 2            | NKEY_KP_2                          |
| Keyboard Keypad 3            | NKEY_KP_2                          |
| Keyboard Keypad 4            | NKEY_KP_4                          |
| Keyboard Keypad 5            | NKEY_KP_5                          |
| Keyboard Keypad 6            | NKEY_KP_6                          |
| Keyboard Keypad 7            | NKEY_KP_7                          |
| Keyboard Keypad 8            | NKEY_KP_8                          |
| Keyboard Keypad 9            | NKEY_KP_9                          |
| Keyboard Keypad Period .     | NKEY_KP_DOT                        |
| Keyboard Keypad Divide /     | NKEY_KP_SLASH                      |
| Keyboard Keypad Multiply *   | NKEY_KP_ASTERISK                   |
| Keyboard Keypad Minus -      | NKEY_KP_MINUS                      |
| Keyboard Keypad Plus +       | NKEY_KP_PLUS                       |
| Keyboard Keypad Enter        | NKEY_RETURN                        |
| Keyboard Keypad Equals =     | NKEY_KP_EQUAL                      |
| Keyboard Up                  | NKEY_UP                            |
| Keyboard Down                | NKEY_DOWN                          |
| Keyboard Right               | NKEY_RIGHT                         |
| Keyboard Left                | NKEY_LEFT                          |
| Keyboard Insert              | NKEY_INS                           |
| Keyboard Home                | NKEY_HOMECLR                       |
| Keyboard End                 | NKEY_HELP                          |
| Keyboard Page Up             | NKEY_ROLLUP                        |
| Keyboard Page Down           | NKEY_ROLLDOWN                      |
| Keyboard F1                  | NKEY_F1                            |
| Keyboard F2                  | NKEY_F2                            |
| Keyboard F3                  | NKEY_F3                            |
| Keyboard F4                  | NKEY_F4                            |
| Keyboard F5                  | NKEY_F5                            |
| Keyboard F6                  | NKEY_F6                            |
| Keyboard F7                  | NKEY_F7                            |
| Keyboard F8                  | NKEY_F8                            |
| Keyboard F9                  | NKEY_F9                            |
| Keyboard F10                 | NKEY_F10                           |
| Keyboard F11                 | Mouse capture (hidden/show toggle) |
| Keyboard F12                 | NP2 menu key                       |
| Keyboard Caps Lock           | NKEY_CAPS                          |
| Keyboard Right Shift         | NKEY_SHIFT                         |
| Keyboard Left Shift          | NKEY_SHIFT                         |
| Keyboard Right Control       | NKEY_CTRL                          |
| Keyboard Left Control        | NKEY_CTRL                          |
| Keyboard Right Alt           | NKEY_KANA                          |
| Keyboard Left Alt            | NKEY_KANA                          |
| Keyboard Print               | NKEY_COPY                          |

Supported combinations

- If you use 104 western keyboard, to input underscore(_), press Shift+right Ctrl.

#### Mouse

| RetroMouse Inputs                                   | NP2 Mouse Inputs   |
|-----------------------------------------------------|--------------------|
| ![](../image/retromouse/retro_mouse.png) Mouse Cursor | Mouse Cursor       |
| ![](../image/retromouse/retro_left.png) Mouse 1       | Mouse Left Button  |
| ![](../image/retromouse/retro_right.png) Mouse 2      | Mouse Right Button |
| ![](../image/retromouse/retro_middle.png) Mouse 3     | NP2 menu key       |

## Compatibility

Awaiting description.

## External Links

- [Official Neko Project II Kai Website](http://domisan.sakura.ne.jp/article/np2kai/np2kai.html)
- [Original Neko Project II Website](http://www.yui.ne.jp/np2/)
- [Libretro Neko Project II Kai Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/np2kai_libretro.info)
- [Libretro Neko Project II Kai Repository](https://github.com/AZO234/NP2kai)
- [Report Libretro Neko Project II Kai Core Issues Here](https://github.com/AZO234/NP2kai/issues)
