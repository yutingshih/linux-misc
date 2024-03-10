#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void echo(char *msg) {
    int *status = malloc(sizeof(int));
    printf("%s\n", msg);
    *status = 1;
    pthread_exit(status);
}

int main(int argc, char *argv[]) {
    pthread_t tid;
    int *status = malloc(sizeof(int));

    printf("create a new thread\n");
    pthread_create(&tid, NULL, (void *)echo, argv[1]);
    printf("thread %d has created\n", tid);
    pthread_join(tid, (void **)&status);
    printf("thread %d exited with status %d\n", tid, *status);
    return 0;
}
