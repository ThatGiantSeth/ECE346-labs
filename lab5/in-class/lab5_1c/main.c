#include "JTAG.h"
#include"address_map_arm.h"

int volatile* const startingAddress = (int*)0x1000;

void main(void) {
    char message[] = "Type here:";

    Print(message);

    while(1) {
        char c = Read();
        PrintChar(c);
    }
}