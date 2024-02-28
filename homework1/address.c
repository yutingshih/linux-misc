/*
   Address and indirection operators (&)
   (ref: https://hackmd.io/@sysprog/c-pointer#Address-and-indirection-operators)

   The expression s == &s holds.
   Although the type of s and &s are different, their values are the same.

   Left-hand side is a pointer to a character: char *
   - The character array s will be converted to a pointer type which points to the first element of the array before the comparison.

   Right-hand side is a pointer to a character array: char (*)[]
   - The character array s will not be converted to a pointer since it is the operand of unary & operator.
   - After applying the unary & operator, the result is the address of the character array, which is the same as the address of the first element.
*/

#include <stdio.h>

int main(void) {
    char s[3];
    printf(" s = %p\n", s);
    printf("&s = %p\n", &s);
    return 0;
}
