# MAME 2003-Plus Development

## Build environment

MAME 2003-Plus is generally compatible with the RetroArch build environments that can be found in the docs section `For Developers` -> `RetroArch` -> `Compilation Guides`.

## Submitting Control Names

_Note: This first half of this section is written for users who cannot submit code themselves so that coders have the information necessary to assist. The second half is the process written from a coding perspective._

### Background reference: controls.dat
[As part of mame2003 we have an 'automated port' of the MAME 0.141 controls.dat project information](https://github.com/libretro/mame2003-plus-libretro/blob/master/src/controls.c). It address many, but not all games supported by mame2003-plus.

Therefore in many cases adding new control labels can be as simple as adding the existing controls.dat metadata to a driver declaration. However as part of that process the controls.dat metadata needs to be checked in two ways before it can be added:
1. From the user perspective: are the control names actually correct
2. From the coder perspective: does the switch logic in the controls.dat naming function work as intended

### Users: Necessary Information

#### Games affected

Often clones and even different games that share the same hardware platform and operating system share the same control names. Please do as best you can to submit a complete list of all games which share the control names you are submitting so that it can be applied comprehensively.

For example there are quite a few games in the CPS1 driver which use the same control labels as `sf2`, Street Fighter 2. In that driver, the `sf2` control labels are applied all games listed as being a clone of `sf2` or a clone of `sf2ce`.

#### List of control names

Please submit your list of control names in a plain text list following the format below with one name to a line and the control number on the left.

#### Naming standard

The standard we use for determining the proper text to use for the name is to refer to current MAME. That is considered the canonical reference.

For example the button names for Street Fighter 2 would be submitted as:
```
BUTTON1: "Jab Punch"
BUTTON2: "Strong Punch"
BUTTON3: "Fierce Punch"
BUTTON4: "Short Kick"
BUTTON5: "Forward Kick"
BUTTON6: "Roundhouse Kick"
```

### Coders: Implementation

Custom button names are added by creating a `ControlInfo` struct and a button label function in the driver such for _Street Fighter 2_ and its clones. **Note that in the button labeler function we prefix the name of the control with a macro like `BTN1`, `BTN2`, etc. so that there is a reference to the original MAME button number still visible in the libretro frontend.**

#### Generic and custom joystick labels

There are two generic joystick labeling functions available for control panels with joysticks that have no game-specific labels. `joy2way_labels` returns only generic `Left` and `Right` strings. `joy4way_labels` returns only generic `Left`, `Right`, `Up`, and `Down` strings for 4-way and 8-way joysticks

An example of game-specific 8-way joystick labels is Street Fighter 2, which uses `Crouch` instead of `Down` and `Jump` instead of `Up`. Street Fighter 2 is therefore is not suitable for the generic function.

#### Street Fighter 2 Example
In this case, we were able to incorporate some of the **control.dat** metadata which populates the `st2_ctrl` struct:

```c
const struct ControlInfo sf2_ctrl =
{
  false, /* alternating_controls */
  true,  /* mirrored_controls */
  "",    /* control_details */
  &sf2_get_btn
};


const char *sf2_get_btn(int type)
{
  switch(type)
  {
/* P1NumButtons=6 */
    case (IPT_OSD_DESCRIPTION): return "8-way Joystick+joy8way";
    case IPT_BUTTON1: return BTN1 "Jab Punch";
    case IPT_BUTTON2: return BTN2 "Strong Punch";
    case IPT_BUTTON3: return BTN3 "Fierce Punch";
    case IPT_BUTTON4: return BTN4 "Short Kick";
    case IPT_BUTTON5: return BTN5 "Forward Kick";
    case IPT_BUTTON6: return BTN6 "Roundhouse Kick";
    case IPT_JOYSTICK_UP: return "Jump";
    case IPT_JOYSTICK_DOWN: return "Crouch";
    case IPT_JOYSTICK_LEFT: return "Left";
    case IPT_JOYSTICK_RIGHT: return "Right";
  } /* end of switch */

  return generic_btn_label(type);
}
```

#### Driver Declaration
Then you indicate the change for the appropriate romsets by adding a new letter (`C`) to the macro name and adding a function pointer to the struct. **In other words, the `GAME` driver macro becomes `GAMEC`.**

##### Before:
```c
GAME(1991, sf2,      0,        sf2,      sf2,      cps1,     ROT0,   "Capcom", "Street Fighter II - The World Warrior (World 910522)" )
```

##### After:
```c
GAMEC(1991, sf2,      0,        sf2,      sf2,      cps1,     ROT0,   "Capcom", "Street Fighter II - The World Warrior (World 910522)", &sf2_ctrl, NULL )
```

**Note that a `NULL` is also added to the end of the macro. That parameter is used for NVRAM bootstraps. The same driver macro is used for adding controls and bootstraps in order to avoid having more and more macros. If this game also had an NVRAM bootstrap, the bootstrap would be included rather than NULL.**

#### Stone Ball Example

In this case we do not currently have much control metadata, so the implementation is minimal:

```c
const struct ControlInfo stonebal_ctrl =
{
  false, /* alternating_controls */
  false, /* mirrored_controls */
  "",    /* control__details */
  &stonebal_get_btn
};

const char *stonebal_get_btn(int type)
{
  switch(type)
  {
    case IPT_BUTTON1: return BTN1 "Shoot/Fight";
    case IPT_BUTTON2: return BTN2 "Pass/Tackle";
    case IPT_BUTTON3: return BTN3 "Push";
  } /* end of switch */

  return generic_btn_label(type);
}
```

#### Driver Declaration

##### Before:
```c
GAME( 1994, stonebal, 0,        stonebal, stonebal, stonebal, ROT0, "Art and Magic", "Stone Ball (4 Players)" )
GAME( 1994, stoneba2, stonebal, stonebal, stonebal, stonebal, ROT0, "Art and Magic", "Stone Ball (2 Players)" )
```
##### After:
```c
GAMEC( 1994, stonebal, 0,        stonebal, stonebal, stonebal, ROT0, "Art and Magic", "Stone Ball (4 Players)", &stonebal_ctrl, NULL )
GAMEC( 1994, stoneba2, stonebal, stonebal, stonebal, stonebal, ROT0, "Art and Magic", "Stone Ball (2 Players)", &stonebal_ctrl, NULL )
```
**Note that a `NULL` is also added to the end of the macro. That parameter is used for NVRAM bootstraps. The same driver macro is used for adding controls and bootstraps in order to avoid having more and more macros. If this game also had an NVRAM bootstrap, the bootstrap would be included rather than NULL.**

--------------------

## Adding an NVRAM Bootstrap

### Purpose and criteria for bootstraps
The purpose of the NVRAM bootstrap functionality is to create a good user experience the first time a game is booted. When the behavior of a game on its first boot is impossible for a new user to tell from a crash, then a bootstrap is in order.

More specifically, the conditions for adding a bootstrap are:
* It is not clear what the user needs to do to get into the game **or**
* It is not reasonably possible for the user to get into the game using a SNES controller or arcade control panel

### Example commit
This doc will use the process of adding an nvram bootstrap for the game "Run and Gun (US ver. UAB)" with the driver name `rungunu`.

#### Step 1: Generate a working NVRAM file
The exact process is game-specific.

#### Step 2: Compile and execute bin2c

```bash
git clone http://github.com/libretro/mame2003-plus-libretro
cd mame2003-plus-libretro
cd tools/bin2c
make
./bin2c -o rungunu_bootstrap.c rungunu.nv
```

#### Output

The generated output will look like this:
```c
const unsigned char rungunu_nv_bytes[] = {
    4, 38,251,217,146, 71, 85, 65, 66,  0, 16,  3,  7,  3,  0,  0,  0,  0,
    0,  7,  7,  0,  7, 26,  1, 16, 26,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,
};

const unsigned int rungunu_nv_length = 128;
```

### Step 3: Create a bin2cFILE

The next step is manual -- putting the data that bin2c generated into the format that the core uses:

```c
struct bin2cFILE {
  const unsigned int length;
  const unsigned char data[];
};
```

#### Resulting bootstrap structure

```c
const struct bin2cFILE rungunu_bootstrap = {
  128,
 {
    4, 38,251,217,146, 71, 85, 65, 66,  0, 16,  3,  7,  3,  0,  0,  0,  0,
    0,  7,  7,  0,  7, 26,  1, 16, 26,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,
  }
};
```

### Step 4: Setup the various source files

Add `rungunu_bootstrap` to `bootstrap.c` and `bootstrap.h`.

If `rungun.c` didn't already include the necessary headers from a prior bootstrap project I would have needed to add:
```c
#include "bootstrap.h"
#include "inptport.h"
```

### Step 5: Declare the bootstrap in the driver

#### Original:
```c
GAMEX( 1993, rungunu,   0,      rng, rng, rng, ROT0, "Konami", "Run and Gun (US ver. UAB)", GAME_IMPERFECT_GRAPHICS | GAME_IMPERFECT_COLORS | GAME_IMPERFECT_SOUND )
```

#### Bootstrapped:
```c
GAMECX( 1993, rungunu,   0,      rng, rng, rng, ROT0, "Konami", "Run and Gun (US ver. UAB)", GAME_IMPERFECT_GRAPHICS | GAME_IMPERFECT_COLORS | GAME_IMPERFECT_SOUND, &generic_ctrl, &rungun_bootstrap )
```

!!! Important
    The newer driver macros that support setting the bootstrap pointer also need a button labeling function pointer. If there is no existing control name function, passing `&generic_ctrl` suffices.

--------------------

## Compiling a PR for testing

**Note:** For purposes of this guide, replace `PR_NUMBER` with the literal number of the github Pull Request you are interested in testing. For example, if you are interested in testing out the Pull Request which implemented the libretro analog input API, you would substitute `PR_NUMBER` below with `590`, the PR number [for that request](https://github.com/libretro/mame2003-plus-libretro/pull/590).

### *nix or msys:
```shell
git clone https://github.com/libretro/mame2003-plus-libretro.git
patch -p1 -d  mame2003-plus-libretro < <(wget -qO- https://patch-diff.githubusercontent.com/raw/libretro/mame2003-plus-libretro/pull/PR_NUMBER.diff)
cd mame2003-plus-libretro
make
```

**Note:** If you are using the standard libretro/RetroArch msys2 environment, you will first need to install `patch` with this command:

```shell
pacman -S patch
```

### RetroPie
```shell
cd ~/RetroPie-Setup/
sudo ./retropie_packages.sh lr-mame2003-plus clean
sudo ./retropie_packages.sh lr-mame2003-plus sources
sudo patch -p1 -d tmp/build/lr-mame2003-plus < <(wget -qO- https://patch-diff.githubusercontent.com/raw/libretro/mame2003-plus-libretro/pull/PR_NUMBER.diff)
rm 590.diff
sudo ./retropie_packages.sh lr-mame2003-plus build
sudo ./retropie_packages.sh lr-mame2003-plus build install
```
