# NEC - PC-98 (Neko Project II Kai)

## Background

Awaiting description.

### Author/License

The Neko Project II Kai core has been authored by

- Neko Project II Team
- Tomohiro Yoshidomi

The Neko Project II Kai core is licensed under

- [MIT](https://github.com/AZO234/NP2kai/blob/master/LICENSE)

A summary of the licenses behind RetroArch and its cores have found [here](https://docs.libretro.com/tech/licenses/).

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
	These firmware files need to be in a directory named 'np2' in the frontend's system directory.

| Filename         | Description                       | md5sum  |
|:----------------:|:---------------------------------:|:-------:|
| np2/font.bmp     | Needed to display text - Required |         |
| np2/FONT.ROM     | Alt font file - Required          |         |
| np2/bios.rom     | - Required                        |         |
| np2/itf.rom      | - Required                        |         |
| np2/sound.rom    | - Required                        |         |
| np2/bios9821.rom | - Optional                        |         |
| np2/d8000.rom    | - Optional                        |         |
| np2/2608_bd.wav  | YM2608 RYTHM sample - Optional    |         |    
| np2/2608_sd.wav  | YM2608 RYTHM sample - Optional    |         |
| np2/2608_top.wav | YM2608 RYTHM sample - Optional    |         |   
| np2/2608_hh.wav  | YM2608 RYTHM sample - Optional    |         |   
| np2/2608_tom.wav | YM2608 RYTHM sample - Optional    |         |
| np2/2608_rim.wav | YM2608 RYTHM sample - Optional    |         |

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
| [Softpatching](https://docs.libretro.com/guides/softpatching/) | ✕         |
| Disk Control      | ✔         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

### Directories

The Neko Project II Kai core's directory name is 'Neko Project II kai'

The Neko Project II Kai core saves/loads to/from these directories.

-**Frontend's Home directory**

- ######.bmp (???)

**Frontend's State directory**

- 'content-name'.state# (State)

**Frontend's System directory**

- np2/np2.cfg (Neko Project II Config file)

### Geometry and timing

- The Neko Project II Kai core's core provided FPS is 56.4
- The Neko Project II Kai core's core provided sample rate is 44100 Hz
- The Neko Project II Kai core's core provided aspect ratio is 8/5

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
| ![](images/RetroPad/Retro_B_Round.png)       | Z key            | Z key                      | Mouse left button    |
| ![](images/RetroPad/Retro_Y_Round.png)       | Left control key | Left control key           |                      |
| ![](images/RetroPad/Retro_Select.png)        | Escape key       | Escape key                 |                      |
| ![](images/RetroPad/Retro_Start.png)         | Return key       | Return key                 |                      |
| ![](images/RetroPad/Retro_Dpad_Up.png)       | Up arrow key     | Keypad Up arrow key (8)    | Move mouse up        |
| ![](images/RetroPad/Retro_Dpad_Down.png)     | Down arrow key   | Keypad down arrow key (2)  | Move mouse down      |
| ![](images/RetroPad/Retro_Dpad_Left.png)     | Left arrow key   | Keypad left arrow key (4)  | Move mouse left      |
| ![](images/RetroPad/Retro_Dpad_Right.png)    | Right arrow key  | Keypad right arrow key (6) | Move mouse right     |
| ![](images/RetroPad/Retro_A_Round.png)       | X key            | X key                      | Mouse right button   |
| ![](images/RetroPad/Retro_X_Round.png)       | Space key        | Space key                  |                      |
| ![](images/RetroPad/Retro_L1.png)            | Backspace key    | Backspace key              | Increase mouse speed |
| ![](images/RetroPad/Retro_R1.png)            | Right shift key  | Right shift key            |                      |
| ![](images/RetroPad/Retro_L2.png)            | NP2 menu key     | NP2 menu key               | NP2 menu key         |

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
| ![](images/RetroMouse/Retro_Mouse.png) Mouse Cursor | Mouse Cursor       |
| ![](images/RetroMouse/Retro_Left.png) Mouse 1       | Mouse Left Button  |
| ![](images/RetroMouse/Retro_Right.png) Mouse 2      | Mouse Right Button |
| ![](images/RetroMouse/Retro_Middle.png) Mouse 3     | NP2 menu key       |

## Compatibility

Awaiting description.

## External Links

- [Official Neko Project II Kai Website](http://domisan.sakura.ne.jp/article/np2kai/np2kai.html)
- [Original Neko Project II Website](http://www.yui.ne.jp/np2/)
- [Libretro Neko Project II Kai Core info file](https://github.com/libretro/libretro-super/blob/master/dist/info/np2kai_libretro.info)
- [Libretro Neko Project II Kai Repository](https://github.com/AZO234/NP2kai)
- [Report Libretro Neko Project II Kai Core Issues Here](https://github.com/AZO234/NP2kai/issues)