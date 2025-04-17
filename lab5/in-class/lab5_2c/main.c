#include "JTAG.h"
#include "num2str.h"

void main(void) {
    int numToPrint = 24680;

    char message[] = "Number to print: ";
    Print(message);

    char* num = Num2Str(numToPrint);
    Print(num);
}