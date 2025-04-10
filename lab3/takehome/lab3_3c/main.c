#include "address_map_arm.h"

int LOOKUP[] = {
    0b11000000, 0b11001111, 0b10010010, 0b10000110,
    0b10001101, 0b10100100, 0b10100000, 0b11001110,
    0b10000000, 0b10000100, 0b10001000, 0b10100001, 
    0b10110011, 0b10000011, 0b10110000, 0b10111000
};

int main(void) {
    volatile int* R1 = (volatile int*)KEY_BASE;
    volatile int* R2 = (volatile int*)JP1_BASE;

    R2[1] = 0xFFFFFFFF;

    int R3 = 0;
    int R4, R5, R6, R7;
    R4 = (R3 & 0xF0) >> 4;
    R5 = (R3 & 0x0F);

    R6 = LOOKUP[R4];
    R7 = LOOKUP[R5] << 8;

    *R2 = (R6 | R7);

    while (1) {
        if ((*(R1)) >> 1) {
            R3++;
            if (R3 == 256) {
                R3 = 0;
            }

            R4 = (R3 & 0xF0) >> 4;
            R5 = (R3 & 0x0F);
        
            R6 = LOOKUP[R4];
            R7 = LOOKUP[R5] << 8;
        
            *R2 = (R6 | R7);
            while ((*(R1)) != 0) {

            }
        } 
    }
}