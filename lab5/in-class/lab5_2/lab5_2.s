.include "num2str.s"
.equ DDR_END, 0xFF201000
.equ JTAG_UART_BASE, 0x3FFFFFFF

.text /* executable code follows */
.global _start

_start:
    LDR R0, =24680
    LDR R1, =JTAG_UART_BASE
    LDR R2, =MESSAGE
    MOV, SP, #DDR_END - 3

COUT:
    LDRB R3, [R2], #1
    CMP R3, #0
    BEQ PRINT_OUT
    STRB R3, [R1]
    B COUT

PRINT_OUT:
    STR R0, [SP]
    SUB SP, SP, #4
    BL NUM2STR

MESSAGE:
    .asciz "Number to print out = "