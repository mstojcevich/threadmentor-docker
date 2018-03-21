#include "thread.h"
#include <cstdio>

HelloThread::HelloThread(char *name) : name(name) {
	ThreadName.seekp(0, ios::beg);
	ThreadName << name << '\0';
}

void HelloThread::ThreadFunc() {
	Thread::ThreadFunc();

	char buf[256];
	int written = sprintf(buf,
			"Hello from thread %s!\n",
			name);
	write(STDOUT_FILENO, buf, written);
	Thread::Exit();
}
