#include <stdio.h>

int main(void) {
    int a[3];
    int* p = a;
    printf("a: %p, p: %p\n", a, p);
    return 0;
}
