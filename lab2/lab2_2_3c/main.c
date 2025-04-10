#include "address_map_arm.h"

int main(void) {
    volatile int* LED_ptr = (int*)LED_BASE;
    volatile int* SW_ptr = (int*)JP1_BASE;
    volatile int* KEY_ptr = (int*)KEY_BASE;

    while (1) {
        if ((*(KEY_ptr)) >> 1) {
            *(LED_ptr) = *(SW_ptr);
        }
    }
}