#!/bin/bash

# Compile the bootloader from 'bootloader.asm' to the binary 'tools/cartridge.bin' file
# Uncomment the desired bootloader routine
java -jar tools/KickAssembler/KickAss.jar ../Kick\ ASM/bootloader.asm -odir ../local-dev-environment/tools/
#java -jar tools/KickAssembler/KickAss.jar ../Kick\ ASM/bootloader_debug.asm -odir ../local-dev-environment/tools/

# Start VICE its X64SC binary and connect the custom Chat64-cartridge to the USB/COM port

tools/vice-compiled/bin/x64sc -rsdev1 /dev/ttyUSB0 -rsdev1baud 115200 -cartchat64 tools/cartridge.bin