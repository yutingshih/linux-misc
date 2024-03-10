#include <stdio.h>

int main(void) {
    char str[10];
    printf("%s\n", str == &str ? "yes" : "no");
    return 0;
}
