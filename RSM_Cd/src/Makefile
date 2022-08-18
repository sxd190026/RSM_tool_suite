CC = cc
CFLAGS = -g -O2 -std=c99
# -pg option removed
LIBS = -lm -lgsl -lgslcblas

OBJS = RSM.o

RSM :  $(OBJS)
	$(CC) -o RSM $(OBJS) $(LIBS) $(CFLAGS)

RSM.o: RSM.c $(HEADS)
	$(CC) -c RSM.c $(CFLAGS)
