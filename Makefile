CFLAGS=-Wall -Os -fno-ident -fno-asynchronous-unwind-tables -ffreestanding
CC=gcc ${CFLAGS}
INSTALL_DIR=/usr/local/bin

.PHONY: all
all: caffeinate

caffeinate:
	${CC} -o $@ *.c

clean:
	rm -f ./caffeinate

install:
	install ./caffeinate ${INSTALL_DIR}