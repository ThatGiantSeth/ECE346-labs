#include "address_map_arm.h"

int main(void) {
    // volatile int* LED_ptr = (int*)LED_BASE;
    volatile int* SW_ptr = (int*)JP1_BASE;

    const int B = 4;
    const int D = 6;

    int A = (*(SW_ptr) & 0b11110000) >> 4; 
    int C = *(SW_ptr) & 0b00001111;

    int ANS = (A * B)+(C * D);
    return ANS;
}