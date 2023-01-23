#!/usr/bin/env bash

{
    read
    while IFS=";" read -r id ms mu a b c yone ytwo zingg volume area isoperimetric cs cu master reeb morse dual origin material weight; do
	echo $id 1>&2
	graph2tikz "reeb" $reeb > graphs/reeb/$id.tex
	cd graphs/reeb
	pdflatex $id.tex > /dev/null
	cd ../..
	graph2tikz "morse" $dual > graphs/dual/$id.tex
	cd graphs/dual
	pdflatex $id.tex > /dev/null
	cd ../..
	graph2tikz "morse" $master > graphs/master/$id.tex
	cd graphs/master
	pdflatex $id.tex > /dev/null
	cd ../..
    done
} < output.csv

pdflatex catalog.tex > /dev/null
