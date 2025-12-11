LDX #0
loop:
    LDA msg,X
    BEQ done
    JSR $FFD2
    INX
    BNE loop
done:
    RTS
msg: .text "Hello, World!",0