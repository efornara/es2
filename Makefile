# Makefile

CC = gcc
CFLAGS = -ansi -Wall -ggdb
LDFLAGS = -ggdb
OBJS = hello_world_sdl2.o es2.o

all: hello_world_sdl2

clean:
	rm -f *.o hello_world_sdl2

hello_world_sdl2: $(OBJS)
	$(CC) $(LDFLAGS) -o hello_world_sdl2 $(OBJS) `sdl2-config --libs`

hello_world_sdl2.o: hello_world_sdl2.c es2.h
	$(CC) $(CFLAGS) `sdl2-config --cflags` -c hello_world_sdl2.c
es2.o: es2.h
	$(CC) $(CFLAGS) -c es2.c
