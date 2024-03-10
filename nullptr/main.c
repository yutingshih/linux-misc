/*
 * C99/C11 standard 6.3.2.3 - 4
 * Conversion of a null pointer to another pointer type yields a null pointer
 * of that type. Any two null pointers shall compare equal.
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
    printf("%s\n", (int *)0 == (char *)0 ? "yes" : "no");
    printf("%s\n", (void *)0 == NULL ? "yes" : "no");
    printf("%s\n", (int *)0 == NULL ? "yes" : "no");

    int *arr = (int *)malloc(8 * sizeof(int));
    free(arr);
    arr = NULL; // remember to set freed pointer to NULL
    free(arr);  // double to NULL is safe, or get a doubly-free runtime error
    return 0;
}
