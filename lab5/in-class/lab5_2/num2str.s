.equ JTAG_UART_BASE, 0xFF201000

.text /* executable code follows */

NUM2STR:
    ADD SP, SP, #4
    LDR R5, [SP]
    LDR R9, =JTAG_UART_BASE

    MOV R6, #0
    MOV R7, #0
    MOV R8, #10

    STR R6, [SP]
    SUB SP, SP, #4

DIV:
    SUB R5, R5, R8
    CMP R5, #0
    BLT MODE
    ADD R7, R7, #1
    B DIV

MODE:
    ADD R5, #58
    STR R5, [SP]
    SUB SP, SP, #4
    MOV R5, R7
    MOV R7, #0
    CMP R5, #0
    BNE DIV

PRINT:
    ADD SP, SP, #4
    LDR R10, [SP]
    CMP R10, #0
    BEQ RETURN
    STR R10, [R9]
    B PRINT  

RETURN:
    BX LR