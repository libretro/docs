# MAME (0.181-current) Development

## Building libretro-mame

### Build environement

#### Windows

1. [Install and configure the RetroArch msys2 build environment](../../retroarch/compilation/windows.md)
2. From the msys2 console, install python with the command `pacman -S python`

### Clone the repository

```
git clone http://github.com/libretro/mame
cd mame
```

### general `make` syntax

| Build type | Command |
| --- | --- |
| Complete build     | `make -f Makefile.libretro -j$(nproc)`   |
| Arcade-only build | `make -f Makefile.libretro -j$(nproc) SUBTARGET=arcade` |
| Softlist-only build | `make -f Makefile.libretro -j$(nproc) SUBTARGET=mess`   |

### Platform-specific `make` syntax

| Platform | Command |
| --- | --- |
| 64-bit processors | `make -f Makefile.libretro -j$(nproc) PTR64=1` |

## Building a previous version

!!! Important
    If you want to build a previous version of MAME, begin by making sure that you can build the most recent version.

Once you have built the most recent version of MAME to establish that your build environment is complete, reset the contents of the repository to a clean state:

```
make clean
git reset --hard
```

!!! Warning
    These commands will delete any files in your `mame` subfolder that are not in the `libretro/mame` github repository.

### `checkout` the previous version source

See the section "Commit hashes for previous versions" below to find the correct commit hash. For example, if you wish to build MAME 0.205, the corresponding commit hash is `b691c38`.

Use this commit hash and the `git checkout` command to roll back the source to your chosen version:
```
git checkout b691c38
```
## Commit hashes for previous versions

| Version  | Commit  |
| -------- | ------- |
| mame0216 | 7cf10a3 |
| mame0207 | 40fc339 |
| mame0206 | cf02fe3 |
| mame0205 | b691c38 |
| mame0204 | c6150e7 |
| mame0203 | b57a140 |
| mame0202 | 856478f |
| mame0201 | 4dc302e |
| mame0200 | ff19cd3 |
| mame0199 | f2e805a |
| mame0198 | c5f6a62 |
| mame0197 | 74293f8 |
| mame0196 | e8f2016 |
| mame0195 | e44e85b |
| mame0194 | 5be2496 |
| mame0193 | bf28b34 |
| mame0192 | d771f54 |
| mame0191 | a5db728 |
| mame0190 | f57574c |
| mame0189 | 2beedc5 |
| mame0188 | 7b45ec1 |
| mame0187 | 1d9648b |
| mame0186 | e4c6cb1 |
| mame0185 | fe01a13 |
| mame0184 | 7768128 |
| mame0183 | 4ee22dc |
| mame0182 | 22c42ab |
| mame0181 | 3a1651e |
