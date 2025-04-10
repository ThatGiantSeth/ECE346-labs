#include "address_map_arm.h"

int main(void) {

    int COMPRESSED[] = {
        3, 0xEECE,
        2, 0xF00D,
        4, 0xCAFE,
        1, 0xABCD,
        0
    };

    volatile int DECOMPRESSED = (int*) 0x00000078;

    const int* R2 = COMPRESSED;
    volatile int* R3 = DECOMPRESSED;

    R3 = DECOMPRESSED;

    while(*R2 != 0) {
        int R4 = *R2++;
        int R5 = *R2++;

        for (int R6 = 0; R6 < R4; R6++) {
            *R3 = R5;
            R3++;
        }

    }

    return 0;
}