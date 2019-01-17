#!/bin/bash
while true
do
SONG=`mpc | awk '{ ORS = " "; gsub(/[A-z]+: ([A-z]+|[0-9]+%|^n/a$)[ \t]*/, " "); if(NR == 1) print; if(NR == 2) printf "[%s]", $3; }'`
DATETIME=`slstatus -s`
DESKTOP=`wmctrl -d | awk '{ ORS=" "; if ($2 == "*") printf "%%{+u}%s%%{-u} ", $9; else print $9; }'`

echo "%{l}$SONG%{c}$DESKTOP%{r}$DATETIME"
sleep 0.05
done
