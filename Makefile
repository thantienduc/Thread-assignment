
all: mandel

mandel: mandel.o bitmap.o
	g++ mandel.o bitmap.o -o mandel -lpthread

mandel.o: mandel.cpp
	g++ -Wall -g -c mandel.cpp -o mandel.o

bitmap.o: bitmap.cpp
	g++ -Wall -g -c bitmap.cpp -o bitmap.o

clean:
	rm -f mandel.o bitmap.o mandel
