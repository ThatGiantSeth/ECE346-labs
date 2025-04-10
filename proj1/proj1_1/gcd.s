.text /* executable code follows */

GCD:
    ADD SP, SP, #4
    LDR R6, [SP]
    ADD SP, SP, #4
    LDR R5, [SP]

LOOP1:
    CMP R6, #0
    BEQ DONE
    CMP R5, R6
    BLT MODE
    SUB R5, R5, R6
    B LOOP1

MODE:
    STR LR, [SP]
    SUB SP, SP, #4
    STR R6, [SP]
    SUB SP, SP, #4
    STR R5, [SP]
    SUB SP, SP, #4
    B GCD
    
DONE:
    STR R5, [SP]
    SUB SP, SP, #4
    BX LR
    
