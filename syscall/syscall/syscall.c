#include <unistd.h>  // syscall
#include <sys/syscall.h>  // __NR_write

int main(void) {
    return syscall(__NR_write, 1, "Hello world\n", 12);
}
