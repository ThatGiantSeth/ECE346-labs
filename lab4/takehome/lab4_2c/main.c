void main(void) {
    int LIST[11] = { 10, 43, 25, 0, 4, 31, 36, 0, 55, 13, 23 };

    //volatile int* ans = (int*)0x1000;

    int* base = (int*)LIST;
    int N = *base;

    for (int i = N; i > 0; i--) {

        for (int j = 1; j < i; j++) {

            int* first = base + j;
            int* second = base + j + 1;
            
            if (*first > *second) {
                int temp = *first;
                *first = *second;
                *second = temp;
            }
        }
    }

    while (1) {}
}