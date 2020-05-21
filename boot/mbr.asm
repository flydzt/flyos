SECTION MBR vstart=0x7c00
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov fs, ax
    mov sp, 0x7c00

    mov ax, 0x0600
    mov bx, 0x0700
    mov cx, 0x0
    mov dx, 0x184f
    int 0x10

    ; mov ax, message
    ; mov bp, ax

    ; mov cx, 5
    ; mov ax, 0x1301
    ; mov bx, 0x2
    ; int 0x10
    
    mov ax, 0xb800
    mov ds, ax
    mov byte [0x00], 'a'
    mov byte [0x01], 0xa4
    mov byte [0x02], 'b'
    mov byte [0x03], 0xa4


    jmp $

message db "1 MBR"
    times 510-($-$$) db 0
    db 0x55, 0xaa