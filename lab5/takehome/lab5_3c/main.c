#include "JTAG.h"
#include"address_map_arm.h"

int volatile* const startingAddress = (int*)0x1000;

void main(void) {
    char message[] = "Capitalize: ";

    Print(message);

    while(1) {
        char c = Read();
        if (c >='a' && c <= 'z') {
            c = c - 32;
        }
        PrintChar(c);
    }
}