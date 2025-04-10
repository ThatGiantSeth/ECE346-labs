
void main(void) {
    int LIST[11] = { 10, 43, 25, 0, -4, 31, -36, 0, 55, -13, 23 };

    volatile int* ans = (int*)0x1000;

    *(ans) = 0;

    for (int i = 1; i < LIST[0]+1; i++) {
        *(ans) += LIST[i];
    }

    while(1) {}
}