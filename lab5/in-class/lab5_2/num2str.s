.equ JTAG_UART_BASE, 0xFF201000

.text /* executable code follows */

NUM2STR:
    ADD SP, SP, #4
    LDR R5, [SP]
    LDR R9, =JTAG_UART_BASE

RETURN:
    BX LR