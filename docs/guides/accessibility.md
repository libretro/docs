# Accessibility

## What is Accessibility

Accessibility features allow people with disabilities to access various types of software.  In the case of RetroArch, the accessibility feature allows blind users to navigate the menus of RetroArch using the OS Narrator.  Combined with the AI Service's Speech and Narrator modes, this can open up a large number of video games to blind players that couldn't play them beforehand.  Windows, MacOS, and Linux are the supported platforms.

## How to enable Accessibility

While Accessibility has been available in RetroArch since v1.8.2, it is turned off by default. One can turn it on from the in-RetroArch menu in one of two ways.  For the XMB theme (default before v1.8.5) by pressing: right, up seven times, enter (or x on Linux), and then right, or for the Ozone theme (default v1.8.5 and later) by pressing: left, down, right, up seven times, enter (x on linux), and then right.  Otherwise, running the RetroArch executable with the --accessibility flag will override the configuration setting, and turn on accessibility. For blind users, the command is as follows: "retroarch, space, two dashes, accessibility" For a complete guide on using Retroarch with accessibility features, see [This guide](retroarch-accessibility-guide.md)

## OS requirements

RetroArch uses the OS narrator to speak out text.  On Windows, this is the Microsoft Narrator, on MacOS, it is the "say" command, and on linux, it is the "espeak" command.  If the narrator is not speaking any text, you can try installing the additional voice packs for your system language

- [Windows voice install guide](https://support.microsoft.com/en-us/help/22805/windows-10-supported-narrator-languages-voices)
- [MacOS voice install guide](https://support.apple.com/guide/mac-help/change-the-voice-your-mac-uses-to-speak-text-mchlp2290/mac)
- On Ubuntu Linux, you can install espeak by running `sudo apt-get install espeak` in a terminal window, and `sudo apt-get install espeak-data` to install additional language voice packs.

## AI Service Text-to-Speech

To use the AI Service with the Accessibility narrator, see the [AI Service doc page](ai-service.md).
