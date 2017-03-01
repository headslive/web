#!/usr/bin/env zsh

for i in news/**/*.html; do
	if [[ "$i" =~ header.html ]] || [[ "$i" =~ footer.html ]] || [[ "$i" =~ navigation.html ]]; then
		continue
	fi
	print "running sed on $i"
	sed -i "$i" \
		-e 's:class="thisSite"::' -e 's:a href="/news/":a class="thisSite" href="/news/":'
done

for i in wiki/**/*.html; do
	if [[ "$i" =~ header.html ]] || [[ "$i" =~ footer.html ]] || [[ "$i" =~ navigation.html ]]; then
		continue
	fi
	print "running sed on $i"
	sed -i "$i" \
		-e 's:class="thisSite"::' -e 's:a href="/wiki/":a class="thisSite" href="/wiki/":'
done

print "(*) generating financial report"
print '<a href="/financial_report.txt">generated with a script</a><br>' > finance.html
print "($(date))<br>" >> finance.html

beercount=0
tenbeers=0
./financial_report.txt | while read line; do
	beercount=$(( $beercount + 1 ))
	tenbeers=$(( $tenbeers + 1))
	print '<img src="/static/beer11.png" width="20" alt="a beer" title="a beer">' >> finance.html
	if [[ "$tenbeers" -eq 10 ]]; then
		print '<br>' >> finance.html
		tenbeers=0
	fi
done
print "<br>beer count: $beercount" >> finance.html

