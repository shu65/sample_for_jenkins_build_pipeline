CC ?= gcc
CXX ?= g++
CC_FLAGS= -march=native -Wall -Wextra -pedantic -c -std=c++0x -O0 -g3
LDLIBS	= 

CPP_SRC=./hello_world.cpp 

OBJS = $(CPP_SRC:%.cpp=%.o)

.SUFFIXES:	.o

.PHONY: all
all:hello_world

hello_world: $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS)

.c.o:
	$(CC) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)

.cpp.o:
	$(CXX) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)



.PHONY: clean
clean:
	rm -f $(OBJS)
	rm -f hello_world
