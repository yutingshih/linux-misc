#include <stdio.h>
#include <stdint.h>

#ifdef A
static inline uint64_t pow2(uint8_t e) {
    return ((uint64_t)1) << e;
}

uint64_t next_pow2(uint64_t x) {
    uint8_t lo = 0, hi = 63;
    while (lo < hi) {
        uint8_t mid = (lo + hi) / 2;
        uint64_t val = pow2(mid);
        if (x < val) hi = mid;
        else if (val < x) lo = mid + 1;
        else return val;
    }
    return pow2(lo);
}
#endif

#ifdef B
uint64_t next_pow2(uint64_t x)
{
    x -= !!x;
    x |= x >> 1;
    x |= x >> 1;
    x |= x >> 1;
    x |= x >> 1;
    x |= x >> 1;
    x |= x >> 1;
    x |= x >> 1;
    x |= x >> 8;
    x |= x >> 16;
    x |= x >> 32;
    return x + 1;
}
#endif

#ifdef C
uint64_t next_pow2(uint64_t x)
{
    x -= !!x;
    x |= x >> 1;
    x |= x >> 2;
    x |= x >> 4;
    x |= x >> 8;
    x |= x >> 16;
    x |= x >> 32;
    return x + 1;
}
#endif

#ifdef D
uint64_t next_pow2(uint64_t x)
{
    int nlz = __builtin_clzll(x - 1);
	printf("nlz = %d\n", nlz);
    return ((uint64_t)-1 >> nlz) + 1;
}
#endif

int main(void) {
    uint64_t testcase[] = {0, 1, 2, 4, 7, 13, 42, 9, -1};
    for (uint64_t *p = testcase; *p != (uint64_t)-1; p++) {
        printf("next_pow(%llu) = %llu\n", *p, next_pow2(*p));
        puts("");
    }
    return 0;
}
