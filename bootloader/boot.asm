; boot.asm - simple bootloader that prints "Hello"
org 0x7C00		; BIOS loads us here

start:
mov si, message

print_loop:
lodsb			; load byte at [SI] into AL, increment SI
or al, al		; check if it's zero (end of string)
jz done
mov ah, 0x0E		; teletype output (BIOS interrupt)
int 0x10		; call BIOS video service
jmp print_loop

done:
cli			; disable interrupts
hlt			; halt the CPU

message db "Hello from bootloader!", 0

; Pad to 510 bytes with zeros
times 510 - ($-$$) db 0
dw 0xAA55		; boot signature (must be last 2 bytes)
