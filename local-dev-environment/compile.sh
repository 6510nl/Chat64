java -jar tools/KickAssembler/KickAss.jar ../Kick\ ASM/bootloader.asm -odir ../local-dev-environment/tools/
~/Documents/vice-compiled/bin/x64sc -rsdev1 /dev/ttyUSB0 -rsdev1baud 115200 -cartchat64 tools/cartridge.bin