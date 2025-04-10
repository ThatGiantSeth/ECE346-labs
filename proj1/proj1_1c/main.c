extern int GCD(void* sp);

int main() {
    int a = 1261;
    int b = 2425;

    int stack[2];
    stack[1] = a;
    stack[0] = b;
    void* sp = &stack[0];

    int result = GCD(sp);
    return 0;
}