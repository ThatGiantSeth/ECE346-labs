.include "address_map_arm.s"

.text /* executable code follows */
.global _start
_start:
    LDR R2, =LED_BASE
    LDR R3, =0b10100101

DISPLAY:
    STR R3, [R2]

IDLE:
    B IDLE