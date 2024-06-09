#!/bin/bash -eu

function eigiro() {
  echo \
    ./EDP-1441/EIJIRO-utf8/REIJI1441.TXT.utf8 \
    ./EDP-1441/EIJIRO-utf8/RYAKU1441.TXT.utf8 \
    ./EDP-1441/EIJIRO-utf8/WAEI-1441.TXT.utf8 \
    ./EDP-1441/EIJIRO-utf8/EIJI-1441.TXT.utf8
}

function unno602() {
  echo \
    ./unno602-dump/EJ_602/DATA/ej_602-utf8.txt \
    ./unno602-dump/YREI_602/DATA/yrei_602-utf8.txt
}

function dict() {
  cat \
    ./EDP-1441/EIJIRO-utf8/REIJI1441.TXT.utf8 \
    ./EDP-1441/EIJIRO-utf8/RYAKU1441.TXT.utf8 \
    ./EDP-1441/EIJIRO-utf8/WAEI-1441.TXT.utf8 \
    ./EDP-1441/EIJIRO-utf8/EIJI-1441.TXT.utf8 \
    ./unno602-dump/EJ_602/DATA/ej_602-utf8.txt \
    ./unno602-dump/YREI_602/DATA/yrei_602-utf8.txt
}

function sort_by_len() {
  cat - | awk '{print length, $0}' | sort -n | cut -d' ' -f2-
}

filter() {
  cat - | eval "$(echo $@ | xargs | sed 's/ / | grep -i -w /g' | xargs echo grep -i -w)"
}

export -f eigiro
export -f unno602
export -f dict
export -f sort_by_len
export -f filter
