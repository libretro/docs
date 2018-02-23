# Softpatching ROMs with RetroArch

RetroArch currently supports UPS, IPS and BPS patching formats. If you load `rom.bin` and one of the following is present, the ROM will be autopatched: `rom.ups`, `rom.ips` or `rom.bps`. Autopatching only takes place if the libretro implementation supports loading ROMs from memory.
