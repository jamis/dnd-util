all: src/libdndutil.a

clean:
	rm -f src/*.a src/*.o

src/libdndutil.a: src/dndutil.o src/grammar.o src/gameutil.o
	ar -rc src/libdndutil.a src/dndutil.o src/grammar.o src/gameutil.o
	ranlib src/libdndutil.a

src/dndutil.o: src/dndutil.c include/dndutil.h include/dndconst.h
	gcc -c -Iinclude -o src/dndutil.o src/dndutil.c

src/grammar.o: src/grammar.c include/grammar.h
	gcc -c -Iinclude -o src/grammar.o src/grammar.c

src/gameutil.o: src/gameutil.c include/gameutil.h
	gcc -c -Iinclude -o src/gameutil.o src/gameutil.c