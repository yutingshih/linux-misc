#include <stdio.h>
#include <stddef.h>

struct Node {
	int val;
	double rate;
	struct Node *ptr;
} __attribute__((packed));

int main(void) {
	struct Node n;
	printf("val: %lu, rate: %lu, ptr: %lu\n",
			offsetof(typeof(n), val),
			offsetof(struct Node, rate),
			offsetof(struct Node, ptr));
	return 0;
}
