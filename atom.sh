#!/bin/sh
# a terribly inefficient atom.xml generator
# See LICENSE file for copyright and license details.
#
# https://en.wikipedia.org/wiki/Atom_(standard)#Example_of_an_Atom_1.0_feed

printf " * generating atom feed\n"

cat <<EOF > atom.xml
<?xml version="1.0" encoding="UTF-8"?>

<feed xmlns="http://www.w3.org/2005/Atom">

	<title>heads.dyne.org news feed</title>
	<subtitle type="html">News from the heads libre privacy GNU/Linux distribution</subtitle>
	<link href="https://heads.dyne.org/atom.xml" rel="self" />
	<link href="https://heads.dyne.org/" />
	<id>heads.dyne.org</id>
	<updated>$(date --rfc-3339=seconds | tr ' ' 'T')</updated>

EOF

grep '^*' index.html.md | while read line; do

	mdpath="$(printf "%s\n" "$line" | mawk -F '[()]' '{print $2}' | sed 's/.html$/.html.md/')"

	title="$(printf "%s\n" "$line" | mawk -F '[\[\]]' '{print $2}')"
	text="$(sed -e '2,/^$/d' -e '/^$/q' $mdpath | tail -n+2 | tr '\n' ' ')"
	date="$(printf "%s\n" "$line" | mawk -F '[()]' '{print $4}')T13:37+01:00"
	author="$(cat $mdpath | tail -n1 | mawk -F'[\[\]]' '{print $2}')"
	email="$(cat $mdpath | tail -n1 | mawk -F'[(:)]' '{print $3}')"

	url="https://heads.dyne.org/$mdpath"
	url="$(printf "%s" "$url" | sed 's/.md$/.html/')"

	#printf "(*) %s :: by %s (%s)\n" "$title" "$author" "$date"

	cat <<EOF >> atom.xml
	<entry>
		<title type="html" xml:lang="en-US">${title}</title>
		<link href="${url}" />
		<id>${title}</id>
		<updated>${date}</updated>
		<content type="text">
			${text}
		</content>
		<author>
			<name>${author}</name>
			<email>${email}</email>
		</author>
	</entry>

EOF
done

printf "</feed>\n" >> atom.xml
sed -i -e 's/[ \t]*$//' atom.xml
