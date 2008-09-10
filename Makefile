all: src/libdndutil.a

clean:
	rm -f src/*.a src/*.o

src/libdndutil.a: src/dndutil.o
	ar -rc src/libdndutil.a src/dndutil.o
	ranlib src/libdndutil.a

src/dndutil.o: src/dndutil.c include/dndutil.h include/dndconst.h
	gcc -c -Iinclude -o src/dndutil.o src/dndutil.c