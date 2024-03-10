#include <stdio.h>

char *carr() {
    char a[] = "Hello world";
    return a;
}

char *cptr() {
    char *p = "Hello world";
    return p;
}

/*

int *iarr() {
    int a[] = {1, 2, 3};
    return a;
}

int *iptr() {
    int *p = (int*){1, 2, 3};
    return p;
}

*/

int main() {
    char *res = carr();
    printf("%p -> %s\n", res, res); 
    res = cptr();
    printf("%p -> %s\n", res, res);
    return 0;
}
