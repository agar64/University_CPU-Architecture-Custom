	org 0x7c00 
	bits 16
	
	mov ax, 0
	mov ds, ax
	cli
	
	mov si, msg
	
	mov ah, 0x0e 
	
loop:	lodsb
        cmp al, 0
        je fim
	int 0x10
	jmp loop
	
fim:	hlt
	
msg: 	db "hello world!", 0
        times 510 - ($ - $$) db 0
        dw 0xaa55
