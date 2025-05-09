NASM = nasm
LD = ld
OBJCOPY = objcopy

all: boot.bin 

boot.bin: boot.asm
	$(NASM) -f bin boot.asm -o boot.bin

#boot.elf: boot.asm
#	$(NASM) -f elf32 boot.asm -o boot.b
#	$(LD) -Ttext 0x7C00 -e _start -o boot.elf boot.o
#	$(OBJCOPY) -O elf32-i386 boot.elf boot.elf

run: boot.bin
	qemu-system-i386 -fda boot.bin

debug: boot.bin
	qemu-system-i386 -fda boot.bin -S -gdb tcp::1234

clean:
	rm -f *.o *.bin *.elf

