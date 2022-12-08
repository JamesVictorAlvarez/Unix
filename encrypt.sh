#!/bin/bash

sed -i 's/\ /_/g' $1
sed -i y/$(printf "%s" {a..z})/$(printf "%s" {e..z} {a..d})/ $1
sed -i y/$(printf "%s" {0..9})/$(printf "%s" {5..9} {0..4})/ $1
awk '1; NR%3 == 0 {print "$" }' $1
echo "X-ENC" >> $1
