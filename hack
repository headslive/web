#!/usr/bin/env zsh

for i in news/**/*.html; do
	if [[ "$i" =~ header.html ]] || [[ "$i" =~ footer.html ]] || [[ "$i" =~ navigation.html ]]; then
		continue
	fi
	print "running sed on $i"
	sed -i "$i" \
		-e 's:class="thisSite"::' -e 's:a href="/news/":a class="thisSite" href="/news/":'
done
