CFLAGS=-Wall -Os -fno-ident -fno-asynchronous-unwind-tables -ffreestanding -L/usr/X11R6/lib -L/usr/local/lib -lX11 -lXtst -lXinerama -lxkbcommon -I/usr/X11R6/include -I/usr/local/include
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