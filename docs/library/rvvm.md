# RVVM

## Background

RVVM is a RISC-V CPU & System software implementation written in С, it features

- Passes RISC-V compliance/torture tests for both RV64 & RV32
- OpenSBI, U-Boot, custom firmwares boot and execute properly
- Working Linux, FreeBSD, OpenBSD, Haiku OS & other cool OSes
- Tracing JIT, multicore support
- Framebuffer display, mouse & keyboard, UART shell
- NVMe storage drives
- Networking


The RVVM core has been authored by

- [LekKit](https://github.com/LekKit)

The RVVM core is licensed under

- [GPLv3](https://github.com/LekKit/RVVM/blob/staging/LICENSE-GPL)
- [MPLv2.0](https://github.com/LekKit/RVVM/blob/staging/LICENSE-MPL)

A summary of the licenses behind RetroArch and its cores can be found [here](../development/licenses.md).

## Extensions

Content that can be loaded by the RVVM core have the following file extensions:

- .rvvm

See the [Usage section](#usage) for an explanation regarding its format.

## Features

Frontend-level settings or features that the RVVM core respects.

| Feature           | Supported |
|-------------------|:---------:|
| Restart           | -         |
| Saves             | ✕         |
| States            | ✕         |
| Rewind            | ✕         |
| Netplay           | ✕         |
| Core Options      | ✕         |
| RetroAchievements | ✕         |
| RetroArch Cheats  | ✕         |
| Native Cheats     | ✕         |
| Controls          | ✔         |
| Remapping         | -         |
| Multi-Mouse       | -         |
| Rumble            | ✕         |
| Sensors           | ✕         |
| Camera            | ✕         |
| Location          | ✕         |
| Subsystem         | ✕         |
| [Softpatching](../guides/softpatching.md) | ✕         |
| Disk Control      | ✕         |
| Username          | ✕         |
| Language          | ✕         |
| Crop Overscan     | ✕         |
| LEDs              | ✕         |

## Geometry and timing

- The RVVM core's core provided FPS is 60.
- The RVVM core's core provided sample rate is 44100.
- The RVVM core's base width is 640.
- The RVVM core's base height is 480.
- The RVVM core's max width is 640.
- The RVVM core's max height is 480.
- The RVVM core's core provided aspect ratio is 4/3.

## Usage

The RVVM core reads its machine options from a plaintext `.rvvm` file, each line should be a supported option, for example a `linux.rvvm` file:

```
rv64
bootrom=opensbi.img
kernel=linux.img
nvme=disk1.img
nvme=disk2.img
```

Will run Linux on a 64-bit RISC-V machine, firmware image files will be loaded from the same directory of the rvvm file.

And following options are supported:

- `rv64`: Enable 64-bit RISC-V, which is the default.
- `rv32`: Enable 32-bit RISC-V.
- `mem=N`: Set memory to N MiB, N is an integer like `512`, default to `256`.
- `smp=N`: Set amount of CPU cores to N, default to `1`.
- `bootrom=FILE`: Load M-mode firmware (eg: OpenSBI) from FILE.
- `kernel=FILE`: Load S-mode kernel (eg: Linux, U-Boot, etc.) from FILE.
- `nvme=FILE`: Attach NVMe storage image (RAW format) from FILE, can be repeated at most 4 times (the first one will be /dev/nvme0, the last one will be /dev/nvme3).
- `cmdline=ARGS`: Set kernel command line to ARGS, default to `root=/dev/nvme0n1 rootflags=discard rw console=tty0`.


## Device types

The RVVM core supports the following device type(s) in the controls menu, bolded device types are the default for the specified user(s):

- Keyboard
- Mouse


## External Links

- [RVVM Repository](https://github.com/LekKit/RVVM)
- [RVVM Issues Here](https://github.com/LekKit/RVVM/issues)
