all:
	gcc -O2 -Wall -Wextra -fPIC -I . -c alloc.c
	gcc -shared -o libmy_alloc.so alloc.o
	LD_PRELOAD=./libmy_alloc.so ps aux
