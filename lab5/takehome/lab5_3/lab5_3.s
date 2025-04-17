.equ    JTAG_UART_BASE,  0xFF201000

.text   /* executable code follows */
.global _start

_start:
    LDR R1, =JTAG_UART_BASE
    LDR R2, =MESSAGE

COUT:
    LDRB R3, [R2], #1
    CMP R3, #0
    BEQ CIN
    STRB R3, [R1]
    B COUT

CIN:
    LDR R4, [R1]
    AND R5, R4, #0x8000
    CMP R5, #0
    BEQ CIN
    AND R4, R4, #0x00FF
    CMP R4, #27
    BEQ DONE

CHECK:
    CMP R4, #96
    BLE PRINT
    CMP R4, #123
    BGE PRINT
    SUB R4, R4, #32

PRINT:
    STRB R4, [R1]
    B CIN
    
DONE:
    B DONE

MESSAGE:
.asciz "Capitalize: "