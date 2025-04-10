#include "address_map_arm.h"

int main(void) {
    // volatile int* LED_ptr = (int*)LED_BASE;
    // volatile int* SW_ptr = (int*)JP1_BASE;

    const int B = 4;
    const int D = 6;

    int A = 15;
    int C = 5;

    int ANS = (A * B)+(C * D);
    return ANS;
}