#include "address_map_arm.h"

extern volatile int key_dir;
extern volatile int total_period;
extern volatile int on_period;
/*****************************************************************************
 * Interval timer interrupt service routine
 *
 *
******************************************************************************/
void interval_timer_ISR()
{
    volatile int * interval_timer_ptr = (int *)TIMER_BASE;
    volatile int * LED_ptr            = (int *)LED_BASE; // LED address
    volatile int pattern = 0xFFFFFFFF;
    volatile int counter = on_period;
    *(interval_timer_ptr) = 0;

    int test = *(LED_ptr);
    if (test != 0) {
        counter = total_period - on_period;
    }

    *(LED_ptr) = pattern ^ test;
    
    *(interval_timer_ptr + 0x2) = (counter & 0xFFFF);
    *(interval_timer_ptr + 0x3) = (counter >> 16) & 0xFFFF;

    *(interval_timer_ptr + 1) = 0x7;

    return;
}

