.POSIX:

ifndef DESTDIR
DESTDIR = ~/.local
endif

all: install

install:
	mkdir -p ${DESTDIR}/bin
	cp -f nincat ${DESTDIR}/bin/nincat
	cp -rf ascii_arts/ ${DESTDIR}/bin/ascii_arts

uninstall:
	rm -f ${DESTDIR}/bin/nincat
	rm -rf ${DESTDIR}/bin/ascii_arts 

.PHONY: all install uninstall
