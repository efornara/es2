# Makefile

CFLAGS = -ansi -Wall -ggdb
LDFLAGS = -ggdb
OBJS = hello_world_sdl2.o es2ld.o

all: hello_world_sdl2

clean:
	rm -f *.o *.exe hello_world_sdl2

hello_world_sdl2: $(OBJS)
	$(CC) $(LDFLAGS) -o hello_world_sdl2 $(OBJS) `sdl2-config --libs`

hello_world_sdl2.o: hello_world_sdl2.c es2ld.h
	$(CC) $(CFLAGS) `sdl2-config --cflags` -c hello_world_sdl2.c
es2ld.o: es2ld.h
	$(CC) $(CFLAGS) -c es2ld.c
