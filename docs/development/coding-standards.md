# Libretro Coding Standards

!!! Note "Scope"
    These standards are intended to apply to frontends, cores, and other projects that are maintained as part of the Libretro organization. These standards are not enforced on independent projects making use of the Libretro API or other open technologies.

## Standards for RetroArch

### C89 Compatibility

All code contributed to RetroArch must be compliant with the "C89" coding standard established by [ANSI X3.159-1989](https://web.archive.org/web/20110306044509/http://flash-gordon.me.uk/ansi.c.txt).

####  Variable declaration
To maintain C89 compatibility, declare all local variables at the beginning of their respective scope blocks, rather than inline at the time of their first use.

#### Comments
To maintain C89 compatibility, comments should be written in legacy using `/*` at the beginning and `*/` and the end.

Sometimes it is useful to incorporate a lengthy comment in source. For example:
 - providing specifications for a function preceding its declaration
 - to explain a complex or unintuitive algorithm
 - to explain the history or special circumstances of a section of code
 - 

Comments use a maximum column width of 80 characters, and each new line of a multiline comment should begin with a space and an asterisk:

```c
/**
  * Retrieves the sensor state associated with the provided port and ID. This
  * function pointer may be set to NULL if retreiving sensor state is not
  * supported.
  * 
  * @param data  The input state struct
  * @param port
  * @param id    Sensor ID
  * 
  * @return The current state associated with the port and ID as a float
 **/
float (*get_sensor_input)(void *data, unsigned port, unsigned id);
```

### Indentation

Indentation is three spaces.

### Braces

Brace usage follows "Allman style". The brace associated with a control statement is placed on the following line, indented to the same level as the control statement. Statements within the braces are indented to the next level.

```c
while (x == y)
{
   something();
   somethingelse();
}

finalthing();
```

### Single-line `if` conditional statements

`if` and `else` conditionals with single-line statements should be spaced with the conditional on one line and the statement below it, indented, with no braces:

```c
if (time > launch_date)
   initiate_probe_communication();
else
   generate_prelaunch_report();
```

### Whitespace and alignment

When possible, use whitespace to improve the readability of code that makes many assignment statements in a row, uses complex conditionals, or passes a large number of parameters to a function.

**Example of aligning successive assignment statements**:

```c
if (seq == 1157460427127406720ULL)
{
   content_ctx_info_t content_info;
   content_info.argc                   = 0;
   content_info.argv                   = NULL;
   content_info.args                   = NULL;
   content_info.environ_get            = NULL;
}
```

**Example of aligning a complex parameter list**:

```c
if (recording_driver_get_data_ptr())
{
   runloop_msg_queue_push(
         msg_hash_to_str(MSG_RESTARTING_RECORDING_DUE_TO_DRIVER_REINIT),
         2, 180, false,
         NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   command_event(CMD_EVENT_RECORD_DEINIT, NULL);
   command_event(CMD_EVENT_RECORD_INIT, NULL);
}
```

### Naming conventions

#### naming typedefs
typedefs should have the suffix `_t`. For example, the case of using `typedef` with a `struct`:

```c
typedef struct input_driver_state
{
   input_driver_t *current_driver;
   void *current_input_data;
} input_driver_state_t;
```

#### Common RetroArch source abbreviations

| Abbreviation  | Meaning        |
| ------------- | -------------- |
| ra, rarch     | RetroArch      |
| av            | Audio-Visual   |
| cb            | Callback       |
| ctx           | Context        |
| gfx           | Graphics       |
| hw            | Hardware       |
| idx           | Index          |
| ptr           | Pointer        |
| st            | State          |
| sw            | Software       |
| ui            | User interface |


### vim configuration for Libretro style

Coders who use the **vim** editor can create a `vimrc` configuration file with the following settings in order to pre-set RetroArch indentation style.

```
set tabstop=3
set shiftwidth=3
set expandtab
set textwidth=80
```

## Standards for Libretro cores

Cores and other projects that are maintained by the Libretro organization can be considered as three categories:

  * New, original software
  * Ports and enhancements of third-party software that is still maintained
  * Ports and enhancements of third-party software that is not maintained

New cores and other projects **that are maintained by the Libretro organization** should be coded as closely to the Libretro/RetroArch standard as possible based on the language used by the core. Cores that are based on existing software should generally conform to whatever standards and style were used in the original software, unless the original software is no longer maintained. In that case the coding style may be changed to Libretro/RetroArch at the discretion of the involved Libretro developers and leadership.
