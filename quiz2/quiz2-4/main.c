#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

bool is_pattern(uint16_t x)
{
    const uint16_t n = -x;
    return (n ^ x) < x;
}

int main(void)
{
	uint16_t n[] = {0xFFFF, 0xFFFB, 0x8000, 0};
	for (uint16_t *p = n; *p; p++) {
		printf("%x (%i) -> %s\n", *p, *p, is_pattern(*p) ? "true" : "false");
	}
	return 0;
}
