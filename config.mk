MARKDOWN = smu

WEBHOST ?= heads.dyne.org
WEBROOT ?= public_html/heads.dyne.org


MDS = $(shell find . -type f -name '*.html.md' -print)
PAGES = $(MDS:.md=)
