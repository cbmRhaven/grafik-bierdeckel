#!/bin/bash
#
# (c) linuxtage.at - Florian Klien <florian@linuxtage.at>
# (c) linuxtage.at - Lukas Prokop <lukas@linuxtage.at>
#

test -z $1 && echo "$0 <basename>" && exit -1
SPEC="BEGIN:VEVENT
SUMMARY:Grazer Linuxtage
DTSTART:20170428T130000
DTEND:20170429T183000
LOCATION:FH Joanneum, Graz
DESCRIPTION:Fr. 28.4. Workshops, Sa. 29.4. Vorträge. Eintritt frei. https://linuxtage.at
END:VEVENT"

echo "$SPEC" | qrencode --8bit -m 4 -d 300 -s 5 -t "SVG" -l L -o "$1-basic.svg"
echo "$SPEC" | qrencode --8bit -m 4 -d 300 -s 5 -t "PNG" -l L -o "$1-basic.png"
echo "$SPEC" | qrencode --8bit -m 4 -d 300 -s 5 -t "SVG" -l H -o "$1-full.svg"
echo "$SPEC" | qrencode --8bit -m 4 -d 300 -s 5 -t "PNG" -l H -o "$1-full.png"
