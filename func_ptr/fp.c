#include <stdio.h>

void (*fptr) ();

void test() {
	;
}

int main() {
	fptr = test;
    //printf("%d\n", 10);
	printf("test: %x, fptr: %x\n" test, fptr);
	return 0;
}
