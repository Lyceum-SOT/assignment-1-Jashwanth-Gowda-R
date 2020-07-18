#!/bin/bash
curl -s https://wttr.in > ~/problem_2.txt

grep "Mon 20 Jul " ~/problem_2.txt |
sed " s/-//g; s/|//g; s/║/;/g; s/│/;/g" |
awk -F'|' '{print "morning: "$0" ;noon: "$4" ; evening: "$5" ; night: "$6""}'
