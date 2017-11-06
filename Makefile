# heads' web
# See LICENSE file for copyright and license details.

include config.mk

all: $(PAGES)
	@./atom.sh
	@./finance.py

%: %.md
	@echo " * generating $@"
	@cat header.html nav.html | \
		sed "s/{{{DEFAULT_TITLE}}}/$(shell sed 1q $^) | heads/" > $@
	@$(MARKDOWN) $^ >> $@
	@cat footer.html >> $@

clean:
	rm -f $(PAGES) atom.xml finance.html

push: all
	@echo " * pushing to $(WEBHOST):$(WEBROOT)"
	@rsync -P -e "ssh" -avul --delete --stats \
		--exclude-from "rsync-exclude" \
		. $(WEBHOST):$(WEBROOT)

.PHONY: all clean push
