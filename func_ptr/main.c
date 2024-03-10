#include <stdio.h>

// fptr is a pointer, point to a function
void (*fptr) ();

// an empty function
void test() { ; }

int main() {
	fptr = test;
    //printf("test: %x, fptr: %x\n", (unsigned)test, (unsigned)fptr);
    //printf("size: %lx\n", sizeof fptr);
    return 0;
}
