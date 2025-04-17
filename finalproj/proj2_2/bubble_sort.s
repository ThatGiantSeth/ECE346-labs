.text /* executable code follows */

B_SORT:
    ADD SP, SP, #4
    LDR R2, [SP]
    LDR R11, [R2]
    MOV R4, R11

LOOP1:
    MOV R5, #0
    SUB R4, #1
    CMP R4, #0
    BEQ RETURN

LOOP2:
    ADD R5, #1
    CMP R5, R4
    BGT LOOP1

    MOV R6, R5
    ADD R6, #1

    LDR R7, [R2, R5, LSL #2]
    LDR R8, [R2, R6, LSL #2]

    CMP R7, R8
    BGT SWAP
    B LOOP2

SWAP:
    STR R8, [R2, R5, LSL #2]
    STR R7, [R2, R6, LSL #2]
    B LOOP2

RETURN:
    BX LR