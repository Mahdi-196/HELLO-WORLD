.global main
main:
    ldr r0, =message
    bl printf
    mov r7, #1
    swi 0
message:
    .asciz "Hello, World!\n"