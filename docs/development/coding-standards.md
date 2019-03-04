# Libretro Coding Standards

!!! Note "Scope"
    These standards are intended to apply to frontends, cores, and other projects that are maintained as part of the Libretro organization. These standards are not enforced on independent projects making use of the Libretro API or other open technologies.

## Standards for RetroArch

### C89 Compatibility

All code contributed to RetroArch must be compliant with the "C89" coding standard etablished by [ANSI X3.159-1989](https://web.archive.org/web/20110306044509/http://flash-gordon.me.uk/ansi.c.txt).

### Indentation
Indentation is three spaces

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

### Whitespace and alignment

When possible, use whitespace to improve the readability of code that makes many assignment statements in a row, uses complex conditionals, or passes a large number of paramters to a function.

**Example of aligning successive assignment statements*:
```c
               if (seq == 1157460427127406720ULL)
               {
                  content_ctx_info_t content_info;
                  content_info.argc                   = 0;
                  content_info.argv                   = NULL;
                  content_info.args                   = NULL;
                  content_info.environ_get            = NULL;

                  ...
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

### Source comments

To maintain C89 compatibility, comments should be written in legacy C-style using `/*`. Comment headers for functions should use a maximum column width of 80 characters.

## Standards for Libretro cores

Cores and other projects that are maintained by the Libretro organization can be considered as three categories:

  * New, original software
  * Ports and enhancements of third-party software that is still maintained
  * Ports and enhancements of third-party software that is not maintained
  
New cores and other projects **that are maintained by the Libretro organization** should be coded as closely to the Libretro/RetroArch standard as possible based on the language used by the core. Cores that are based on existing software should generally conform to whatever standards and style were used in the orginal software, unless the original software is no longer maintained. In that case the coding style may be changed to Libretro/RetroArch at the discretion of the involved Libretro developers and leadership.
