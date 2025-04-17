.include    "address_map_arm.s" 
.include    "defines.s" 
/* externally defined variables */
.extern     KEY_DIR 
.extern     PATTERN 

/*****************************************************************************
 * Interval timer interrupt service routine
 *
 *
 ******************************************************************************/
.global     TIMER_ISR 
TIMER_ISR:                      
        PUSH    {R4-R7}         
        LDR     R1, =TIMER_BASE // interval timer base address
        MOVS    R0, #0          
        STR     R0, [R1]        // clear the interrupt

        LDR     R2, =LED_BASE   // LED base address
        LDR     R3, =0xFFFFFFFF
        LDR     R4, =Total_Period
        LDR     R4, [R4]
        LDR     R5, =On_Period
        LDR     R5, [R5]

        LDR     R6, [R2]
        CMP     R6, #0
        BEQ     Display


Off_Period:
        SUB     R5, R4, R5
Display:
        EOR     R6, R3, R6
        STR     R6, [R2]
Set_Timer: 
        MOV     R0, #0x0
        STR     R0, [R1, #0x4]

        STR     R5, [R1, #0x8]
        LSR     R5, R5, #16
        STR     R5, [R1, #0xC]
        MOV     R0, #0x7
        STR     R0, [R1, #0x4]

END_TIMER_ISR:                  
        POP     {R4-R7}         
        BX      LR              

.end         

