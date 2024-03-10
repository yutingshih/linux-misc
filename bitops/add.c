#include <stdio.h>
#include <stdlib.h>

int add(int a, int b) {
	if (!b) return a;
	int s = a ^ b;
	int c = (a & b) << 1;
	return add(s, c);
}

int main(int argc, char* argv[]) {
	int x = 0, y = 0;
	
	if (argc >= 2) {
		x = atoi(argv[1]);
		y = atoi(argv[2]);
	}

	printf("%d + %d = %d\n", x, y, add(x, y));
	return 0;
}
