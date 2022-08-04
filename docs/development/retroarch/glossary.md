# Glossary

While developing RetroArch, you might find some terms which are unfamiliar to new developers. These are explained here.

## Griffin

Most of the console platforms of RetroArch use a concept we call 'Griffin'. 

Basically:

- Every C file gets included in griffin/griffin.c.
- Every C++ file gets included in griffin/griffin_cpp.cpp.
- Every ObjectiveC file gets included in griffin_objc.m
- Glslang files get included in griffin_glslang.cpp

The Griffin files are the only ones being built when a platform port uses Griffin. 
This has a couple of benefits:

- It's a poor man's kind of link time code generation optimization pass.
- We dont have to keep editing every platform port's Makefile individually whenever we add a new file. We can simply update these Griffin files without touching any of the platform Makefiles.

Some disadvantages (that we cater to regardless):

- Because all of the C/C++/ObjC files all get included into one source file, it is necessary that all symbols and function names are uniquely named. We make sure in RetroArch this is the case.

## Salamander

Salamander is a small RetroArch launcher for embedded platforms with static linking. On such platforms, each core binary contains the core and the complete RetroArch frontend. Switching cores is achieved by just re-launching into a different core binary. Salamander simply launches the most recently used core (or a default one, if none is stored in the config file).
