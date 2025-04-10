.include "address_map_arm.s"

.text /* executable code follows */
.global _start

_start:
    LDR R2, =COMPRESSED
    LDR R3, =DECOMPRESSED

LOOP1:
    LDR R4, [R2], #4
    LDR R5, [R2], #4

    MOV R6,  #0
    CMP R6, R4
    BEQ STOP

LOOP2:
    STR  R5, [R3], #4
    ADD R6, R6, #1
    CMP R6, R4
    BNE LOOP2
    BEQ LOOP1
  
STOP:
    B STOP

COMPRESSED: // (number, data), 0: end of sequence
.word 3, 0xEECE, 2, 0xF00D, 4, 0xCAFE, 1, 0xABCD, 0
DECOMPRESSED:
.space 4*(3+2+4+1)