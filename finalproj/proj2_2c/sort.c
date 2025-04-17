void BubbleSort(int* startingAddress ) {

    int* base = (int*)startingAddress;
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
}