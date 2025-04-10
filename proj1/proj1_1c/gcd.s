.global GCD

.text

GCD:
    LDR R6, [R0], #4
    LDR R5, [R0]

LOOP1:
    CMP R6, #0
    BEQ RETURN
    CMP R5, R6
    BLT MODE
    SUB R5, R5, R6
    B LOOP1

MODE:
    STR R6, [R0]
    SUB R0, R0, #4
    STR R5, [R0]
    B GCD

RETURN:
    LDR R0, [R0]
    MOV R2, R0
    LDR R10, =ANS
    STR R2, [R10]
    BX LR

ANS:
.space 4