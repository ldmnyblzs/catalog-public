#!/usr/bin/env bash

echo "id;ms;mu;a;b;c;yone;ytwo;zingg;volume;area;isoperimetric;cs;cu;master;reeb;morse;dual;origin;material;weight" > "output.csv"
{
    read
    while IFS=";" read -r id s u origin material weight; do
	echo $id 1>&2
	pebble-cli "scans/$id.stl" $s $u
	echo ";$origin;$material;$weight"
    done
} < input.csv >> output.csv
