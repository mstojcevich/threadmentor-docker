# ----------------------------------------------------------- 
# NAME : Marcus Stojcevich                  User ID: mastojce 
# DUE DATE : 12/15/2017                                       
# PROGRAM ASSIGNMENT #6
# FILE NAME : Makefile
# PROGRAM PURPOSE :                                           
#    Matrix multiplication w/ channels
# ----------------------------------------------------------- 

CC	 = c++
FLAGS    =
CFLAGS   = -g -O2 -Wno-deprecated
DFLAGS   = -DPACKAGE=\"threadsystem\" -DVERSION=\"1.0\" -DPTHREAD=1 -DUNIX_MSG_Q=1 -DSTDC_HEADERS=1
IFLAGS   = -I/local/eit-linux/apps/ThreadMentor/include
TMLIB    = /local/eit-linux/apps/ThreadMentor/Visual/libthreadclass.a
TMLIB_NV    = /local/eit-linux/apps/ThreadMentor/NoVisual/libthreadclass.a

OBJ_FILE = thread-main.o thread.o
EXE_FILE = example

noVisual: ${OBJ_FILE}
		${CC} ${FLAGS}  -o ${EXE_FILE}  ${OBJ_FILE} ${TMLIB_NV} -lpthread

${EXE_FILE}: ${OBJ_FILE}
		${CC} ${FLAGS}  -o ${EXE_FILE}  ${OBJ_FILE} ${TMLIB} -lpthread

thread-main.o: thread-main.cpp
		${CC} ${DFLAGS} ${IFLAGS} ${CFLAGS} -c thread-main.cpp

thread.o: thread.cpp
		${CC} ${DFLAGS} ${IFLAGS} ${CFLAGS} -c thread.cpp

#noVisual: ${OBJ_FILE}
#       ${CC} ${FLAGS}  -o ${EXE_FILE}  ${OBJ_FILE} ${TMLIB_NV} -lpthread

clean:
		rm -f ${OBJ_FILE} ${EXE_FILE}
