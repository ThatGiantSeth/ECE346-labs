#include "address_map_arm.h"

int main(void) {
    volatile int* LED_ptr = (int*)LED_BASE;
    volatile int* SW_ptr = (int*)SW_BASE;

    while(1) {
        *(LED_ptr) = *(SW_ptr);
    }
}