default: addlib

install: libadd.dylib
	cp ./libadd.dylib /usr/local/lib/

libadd.dylib: add.c add.h
	clang -dynamiclib -o libadd.dylib add.c

addlib: addlib.cr libadd.dylib
	crystal build addlib.cr
