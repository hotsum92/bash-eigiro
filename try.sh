#!/bin/bash -eu

dict | grep -w imperative | grep -w in | sort_by_len | head -n 10

cat ./EDP-1441/EIJIRO-utf8/REIJI1441.TXT.utf8 | grep -w 'out to fight' | sort_by_len | head -n 10

dict | grep -i -w 'march along' | sort_by_len | head -n 100
dict | filter "for soon" | sort_by_len | head -n 100

dict | grep -i -E "let [a-z]+ have it" | sort_by_len | head -n 100
