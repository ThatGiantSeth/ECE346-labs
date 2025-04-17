#include "address_map_arm.h"
#include "sort.h"

int* startingAddress = (int*)0x1000;
volatile int* const switches = (int*)SW_BASE;
volatile int* const key = (int*)KEY_BASE;

void main(void) {
    BubbleSort(startingAddress);
}