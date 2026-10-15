# Omicron

## Background

Omicron is an open source game engine for Java built on libGDX and inspired by fantasy consoles: a small API for drawing, sound and input, with no resource management - assets are referred to by number. Games are packaged as .omicron cartridges. The libretro core is the engine's experimental frontend; it starts a JVM through JNI and renders through the frontend's OpenGL or OpenGL ES context, so a Java runtime has to be present on the machine and reachable through JAVA_HOME. Save states and core options are not implemented.

The Omicron core has been authored by

- msx80

The Omicron core is licensed under

- Apache-2.0

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the Omicron core have the following file extensions:

- .omicron

## Features

Frontend-level settings or features that the Omicron core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Core Options      | ✕         |
| [Memory Monitoring (achievements)](../guides/memorymonitoring.md) | ✕         |
| RetroArch Cheats  | ✕         |
| Controls          | ✕         |
| Subsystem         | ✕         |
| Disk Control      | ✕         |

### Directories

The Omicron core's library name is 'Omicron'

## Core options

The Omicron core has no core options.

## External Links

- [Omicron Repository](https://github.com/libretro/Omicron)
- [Report Omicron Core Issues Here](https://github.com/libretro/Omicron/issues)

