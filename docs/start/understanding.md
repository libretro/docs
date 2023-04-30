---
hide:
  - navigation
  - toc
---

# Understanding Basics

![banner](../image/start/banner.png)

RetroArch is a frontend for emulators, game engines and media players.

## What RetroArch is

It runs programs converted into dynamic libraries called libretro cores, using several user interfaces such as command-line interface, a few graphical user interfaces optimized for gamepads, several input, audio and video drivers, plus other sophisticated features like dynamic rate control, audio filters, multi-pass shaders, netplay, gameplay rewinding, cheats, etc.Settings are also unified so configuration is done once and for all.

In addition to this, you are able to run original game discs (CDs) from RetroArch.

### What RetroArch is not 

RetroArch is not a computer program that includes all consoles and games. It is not a service that allows you to download copyrighted games or content. It is not an application that will cause you to modify the application to the platform on which you will install it, but in order to run unsigned applications on some platforms, the default firmware needs to be modified.

## What is LibRetro

Libretro is a simple API that allows for the creation of games and emulators. It is very simple in nature, yet very powerful. The simplicity of it all requires some explanation in order to truly grasp how useful it can be to your own projects.



While the libretro API is simple in nature, it is also incredibly powerful. By using the libretro API, your program becomes a single library file, known as a 'libretro core', that can be loaded by any frontend that supports the libretro API. 

The beauty of this approach is that the frontend is responsible for providing all the implementation-specific details, such as video/audio/input drivers. This means that as a developer, you don't have to worry about writing different video drivers for Direct3D or OpenGL, or supporting all known joypads or input/sound APIs. All of these details are handled by the frontend, which frees up your time and energy to focus solely on creating the main program.

Additionally, the libretro API allows for cross-platform compatibility, meaning that a libretro core can be used on multiple platforms with minimal effort. This makes it an ideal choice for developers who want to create games or emulators that can be easily ported to different platforms.

In summary, the libretro API offers a simple yet powerful way to create games and emulators. By separating the implementation-specific details from the main program, the libretro API allows developers to focus on creating high-quality content without worrying about the underlying technical details.

## Logo/Mascot

![Invader](../image/start/icon.png){ align=left }
We call them Invader but you can call it *Nice Little Pixel*, it was drawn from scratch by talented [Runar Heyer](https://twitter.com/runarheyer) and it has a completely different visual style.

Let's continue if we understood LibRetro and RetroArch. Click [here](installation.md) to get started.
