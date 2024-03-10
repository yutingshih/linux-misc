#include <stdio.h>
#include <stddef.h>

struct Date {
    char* name;
    int year, month, day;
};

int main(void) {
    printf("offsetof(Date, year): %li\n", offsetof(struct Date, year));
    printf("offsetof(Date, month): %li\n", offsetof(struct Date, month));
    printf("offsetof(Date, day): %li\n", offsetof(struct Date, day));
    printf("offsetof(Date, name)): %li\n", offsetof(struct Date, name));
    return 0;
}
