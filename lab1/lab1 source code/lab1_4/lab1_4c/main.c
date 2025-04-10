#include "./address_map_arm.h"

int main(void) {

    //base address of LED lights
    volatile int* LED_ptr = (int*)LED_BASE;

    //LED right bound
    int rightBound = 1;

    //LED left bound
    int leftBound = 0b10000000;

    // for delay
    int DELAY = 0X02FFFFFF;

    int right = 0;

    int currentState = rightBound;

    while (1) {
        if (right == 0) {
            if (currentState != leftBound) { //check to see if left bound reached
                currentState = currentState << 1; // if not, shift state to the left
            }
            else {
                right = 1;
            }
        }

        if (right == 1) {
            if (currentState != rightBound) { //check to see if right bound reached
                currentState = currentState >> 1; // if not, shift state to the right
            }
            else {
                right = 0;
            }
        }


        *(LED_ptr) = currentState; //update LEDs to current state
        for (int i = 0; i < DELAY; i++) {}; //DELAY
    }
}