#include "address_map_arm.h"

volatile int* KEY_ptr = (int*)KEY_BASE;
volatile int* SW_ptr = (int*)SW_BASE;

void main(void) {

    while(1) {
        int* ans = (int*)0x1000;
        int f1 = 0;
        int f2 = 1;

        if ((*(KEY_ptr)) >> 1) {
            int count = 2;
            int f3;
            int N = *(SW_ptr);
        
            *ans = f1;
            ans++;
        
            if (N == f1) {
                f3 = f1;
                continue;
            }
        
            *ans = f2;
            ans++;
        
            if (N == f2) {
                f3 = f2;
                continue;
            }
        
            while (count <= N) {
                f3 = f1 + f2;
        
                *ans = f3;
                ans++;
        
                f1 = f2;
                f2 = f3;
                count++;
            }
        }
    }
}