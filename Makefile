.POSIX:

ifndef DESTDIR
DESTDIR = ~/.local
endif
ifndef CACHEDIR
CACHEDIR = ~/.cache
endif

all: install

install:
	mkdir -p ${DESTDIR}/bin ${CACHEDIR}/nincat
	cp -f nincat ${DESTDIR}/bin/nincat
	cp -rf ascii_arts/ ${CACHEDIR}/nincat/ascii_arts
	touch ${CACHEDIR}/nincat/nincat_ignore

uninstall:
	rm -f ${DESTDIR}/bin/nincat
	rm -rf ${CACHEDIR}/nincat

.PHONY: all install uninstall
