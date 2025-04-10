#include "./address_map_arm.h"

int main(void) {

    //base address of LED lights
    volatile int* LED_ptr = (int*)LED_BASE;
    //pattern to be displayed
    int pattern = 0b10100101;
    //display pattern
    *(LED_ptr) = pattern;
    return 0;
}