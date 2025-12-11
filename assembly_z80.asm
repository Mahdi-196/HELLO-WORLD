ld hl, msg
call print_string
ret
msg: db "Hello, World!", 0