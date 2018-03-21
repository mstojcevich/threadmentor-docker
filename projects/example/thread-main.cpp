#include "thread.h"
#include <cstdio>

int main(int argc, char *argv[]) {
	printf("Hello, world\n");

	HelloThread a("a"), b("b");

	a.Begin();
	b.Begin();

	a.Join();
	b.Join();
}
