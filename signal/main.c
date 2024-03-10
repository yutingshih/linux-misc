#include <stdio.h>
#include <signal.h>

void handle_signal(int sig) {
    printf("Received signal %d\n", sig);
}

int main() {
    signal(SIGINT, handle_signal); // set up a signal handler for SIGINT
    printf("Waiting for signal...\n");
    while(1); // loop forever, waiting for a signal
    return 0;
}

