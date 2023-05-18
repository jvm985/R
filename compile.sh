#!/bin/bash
echo $1
name="${1%.*}"
ext="${1##*.}"
R CMD Sweave $name.Rnw
pdflatex $name.tex
bibtex $name.aux
pdflatex $name.tex
pdflatex $name.tex
echo "klaar"

