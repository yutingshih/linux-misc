#include <stdio.h>

int main(int argc, const char* argv[], const char* envp[]) {
	 puts( ((char**)argv)[0] );
	 printf("%s\n", envp[3]);
	 return 0;
}
