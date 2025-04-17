#include "address_map_arm.h"

char* Num2Str(int num) {
    int i = 0;
    char* str = (char*)DDR_BASE;
    do {
        str[i++] = (num % 10) + '0';
        num /= 10;
    } while (num > 0);

    for (int j = 0, k = i - 1; j < k; j++) {
        char temp = str[j];
        str[j] = str[k];
        str[k] = temp;
        k--;
    }


    str[i] = '\0';

    return str;
}