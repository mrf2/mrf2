## Run Bootloader in QEMU
```bash
qemu-system-i386 -fda boot.bin
```
- `-fda`: Load file as a floppy disk
- **QEMU** will boot from this and start executing from address `0x7C00`

## Run with Debugging (GDB):
```bash
qemu-system-i386 -fda boot.bin -S -gdb tcp::1234
```
- `-S`: Freeze CPU at startup (waits for `gdb` initialization)
- `-gdb tcp:1234`: Exposes ***GDB*** server on TCP port 1234
- In another terminal run **GDB**:
```bash
gdb
(gdb) target remote localhost:1234
(gdb) set architecture i8086
(gdb) continue
```
