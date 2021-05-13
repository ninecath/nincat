.POSIX:

PREFIX = ~/.local

all: install

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f nincat ${DESTDIR}${PREFIX}/bin/nincat
	cp -rf ascii_arts/ ${DESTDIR}${PREFIX}/bin/ascii_arts

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/nincat
	rm -rf ${DESTDIR}${PREFIX}/bin/ascii_arts 

.PHONY: all install uninstall
