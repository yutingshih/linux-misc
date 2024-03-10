#include <stdio.h>

int main(void) {
	printf("NULL %s 0\n", NULL == 0 ? "==" : "!=");
	printf("NULL %s (void *)0\n", NULL == (void *)0 ? "==" : "!=");
	return 0;
}
