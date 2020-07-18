#!/bin/bash
curl -s https://wttr.in > ~/desktop/weather

grep "Mon 20 Jul " ~/desktop/weather |
sed " s/-//g; s/|//g; s/║/;/g; s/│/;/g" |
awk -F'|' '{print "morning: "$0" ;noon: "$4" ; evening: "$5" ; night: "$6""}'
