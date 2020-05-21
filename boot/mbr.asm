SECTION MBR vstart=0x7c00
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov fs, ax
    mov sp, 0x7c00

    mov ax, 0x600
    mov bx, 0x700
    mov cx, 0
    mov dx, 0x184f
    int 0x10

    mov byte [0], '1'
    mov byte [0x01], 0xa4
    mov byte [0x02], '2'
    mov byte [0x03], 0xa4


    jmp $

    times 510-($-$$) db 0
    db 0x55, 0xaa