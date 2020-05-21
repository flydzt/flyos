#!/usr/bin/sh

nasm boot/mbr.asm -o boot/mbr.bin
dd if=boot/mbr.bin of=boot.img bs=512 count=1 conv=notrunc
bochs