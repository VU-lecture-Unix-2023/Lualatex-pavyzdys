#!/bin/bash
fname="title-tmp.tex"
rm -f ${fname}

echo -e "\\\\author{Autorius: `whoami`\\\\\\\\" > ${fname}
echo -e "{\\small VM: `hostname`}}" >> ${fname}
echo -e "\\\\title{Pavadinimas}" >> ${fname}
echo "\\date{Created on `date`, processed \\today}" >> ${fname}

pdflatex signit.tex
pdflatex signit.tex

evince signit.pdf &

rm -f ${fname}
