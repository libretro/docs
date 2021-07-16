# BIOS

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/VoZPbBp6sco" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

A BIOS file is a copy of the operating system used by the hardware that a Core is emulating. Some Cores need BIOS files in order to correctly emulate hardware and/or software as needed by the content. RetroArch and LibRetro do not share any copyrighted system files or game content. You must provide your own BIOS and content in accordance with your local laws as applicable.

**Example**

|   Core             |Required                          |Optional|
|----------------|-------------------------------|-----------------------------|
|[Beetle PSX HW](../library/beetle_psx_hw.md)|✔           |    ✕        |
|[mGBA](../library/mgba.md)|✕           |✔            |
|DuckStation|✔|✕|
|[PCSX ReArmed](../library/pcsx_rearmed.md)|✕           |✔            |

![Basic Workflow](https://cdn.discordapp.com/attachments/615183202239381544/757354372064739428/Workflow-Diagram.png)

## High-Level Emulation (HLE)

HLE tries to reproduce the console's outputs instead of its actual behavior, though bugs and glitches are more common.

## Where do BIOS files go?

Usually RetroArch's "system" directory. Check settings > directory and the core documentation to be sure.