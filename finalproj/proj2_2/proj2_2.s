.include "address_map_arm.s"
.include "bubble_sort.s"

.text /* executable code follows */
.global _start

_start:
    MOV SP, #DDR_END - 3
    LDR R12, =0x1000
    STR R12, [SP]
    SUB SP, SP, #4
    BL B_SORT

STOP:
    B STOP