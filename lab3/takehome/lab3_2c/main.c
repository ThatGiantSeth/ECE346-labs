#include "address_map_arm.h"

int LOOKUP[] = {
    0b11000000, 0b11001111, 0b10010010, 0b10000110,
    0b10001101, 0b10100100, 0b10100000, 0b11001110,
    0b10000000, 0b10000100, 0b10001000, 0b10100001, 
    0b10110011, 0b10000011, 0b10110000, 0b10111000
};

int main(void) {
    volatile int* R1 = (volatile int*)JP7_BASE;
    volatile int* R2 = (volatile int*)JP1_BASE;

    R2[1] = 0xFFFFFFFF;

    int R3, R4, R5, R6;
    while(1) {
        R3 = (*R1 & 0b11110000) >> 4;
        R4 = (*R1 & 0b00001111);

        R5 = LOOKUP[R3] << 8;
        R6 = LOOKUP[R4];

        *R2 = (R5 | R6);
    }
}