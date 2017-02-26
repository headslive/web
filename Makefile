DESTDIR = /var/www/html

all: clean
	@./mars generate
	@./hack
	@./atom.sh

push: all
	@./mars push -f

clean:
	@./mars clean -f

install:
	cp -f Makefile      ${DESTDIR}/Makefile
	cp -f mars          ${DESTDIR}/mars
	cp -f rsync-exclude ${DESTDIR}/rsync-exclude
	cp -f webtree       ${DESTDIR}/webtree

.PHONY: all push clean install
