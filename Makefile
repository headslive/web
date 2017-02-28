DESTDIR = /var/www/html

all: clean
	@./mars generate
	@./hack
	@./atom.sh

push: all
	@./mars push -f
	@sed -i webtree \
		-e 's@WEBHOST=.*@WEBHOST="parazyd.cf"@' \
		-e 's@WEBROOT=.*@WEBROOT="public_html/heads.dyne.org"@'
	@./mars push -f
	@sed -i webtree \
		-e 's@WEBHOST=.*@WEBHOST="heads.dyne.org"@' \
		-e 's@WEBROOT=.*@WEBROOT="/srv/www/heads"@'

clean:
	@./mars clean -f

install:
	cp -f Makefile      ${DESTDIR}/Makefile
	cp -f mars          ${DESTDIR}/mars
	cp -f rsync-exclude ${DESTDIR}/rsync-exclude
	cp -f webtree       ${DESTDIR}/webtree

.PHONY: all push clean install
