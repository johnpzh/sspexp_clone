#CXX = g++
CXX = icpc
CXXFLAGS = -g -w -Wall -Wextra -O3  -std=c++14 -fopenmp
LIB = -I./include

all: bin bin/sspexp_run

bin/sspexp_run: main.cpp
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ $(LIB)

bin:
	mkdir -p bin 

clean:
	rm -rf bin
