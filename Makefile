CFLAGS=-Wall -Os -lX11 -lXtst
CC=gcc ${CFLAGS}
DESTDIR=/usr/local/bin

.PHONY: all
all: caffeinate

caffeinate:
	${CC} -o $@ *.c

clean:
	rm -f ./caffeinate

install:
	install ./caffeinate -D --mode 755 --target-directory "${DESTDIR}"
