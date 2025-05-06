; Assembly (x86)
section .data
    msg db 'Hello, World!', 0xA
    len equ $ - msg

section .text
    global _start

_start:
    mov eax, 4      ; syscall: write
    mov ebx, 1      ; file descriptor: stdout
    mov ecx, msg    ; message to write
    mov edx, len    ; message length
    int 0x80        ; call kernel

    mov eax, 1      ; syscall: exit
    xor ebx, ebx    ; exit code 0
    int 0x80        ; call kernel 