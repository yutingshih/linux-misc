#include <stdio.h>
#include <stdlib.h>



int main(void) {
	int ntz = __builtin_ctz(0b11);
	printf("%d\n", ntz);
	return 0;
}
