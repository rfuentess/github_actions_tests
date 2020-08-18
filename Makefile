all: principal tests
.PHONY: all

principal: main.o
	gcc bin/main.o -o bin/main
	echo "The most epic project compiled!"

main.o: src/main.c
	mkdir -pv bin
	gcc -c src/main.c -o bin/main.o

tests:  tests/test_01.o tests/test_02.o
	gcc bin/tests/01.o -o bin/tests/test_01
	gcc bin/tests/02.o -o bin/tests/test_02

tests/test_01.o:
	mkdir -pv bin/tests
	gcc -c tests/test_01.c -o bin/tests/01.o

tests/test_02.o:
	mkdir -pv bin/tests
	gcc -c tests/test_02.c -o bin/tests/02.o

clean:
	rm -rf bin/
