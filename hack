#!/usr/bin/env zsh

for i in news/**/*.html; do
	if [[ "$i" =~ header.html ]] || [[ "$i" =~ footer.html ]] || [[ "$i" =~ navigation.html ]]; then
		continue
	fi
	print "running sed on $i"
	sed -i "$i" \
		-e 's:class="thisSite"::' -e 's:a href="/news/":a class="thisSite" href="/news/":'
done

print '<a href="/financial_report.txt">generated with a script</a><br>' > finance.html
print "($(date))<br>" >> finance.html
./financial_report.txt | while read line; do
	print '<img src="/static/beer11.png" width="20" alt="a beer" title="a beer">' >> finance.html
done
print "<br>beer count: $(( $(wc -l finance.html | cut -d' ' -f 1) - 2 ))" >> finance.html

