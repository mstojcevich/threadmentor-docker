#ifndef THREAD_H
#define THREAD_H

#include "ThreadClass.h"

class HelloThread : public Thread {
	public:
		HelloThread(char *name);
	private:
		char *name;
		void ThreadFunc();
};

#endif
