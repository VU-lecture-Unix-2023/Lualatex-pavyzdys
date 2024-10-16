#!/bin/bash
rm -f greetings.tex
echo "Greetings from `whoami`@`hostname` on `date`" > greetings.tex
lualatex test.tex
lualatex test.tex # recompile to get references right

pdflatex test2.tex
pdflatex test2.tex # recompile to get references right

pdflatex test3.tex
pdflatex test3.tex # recompile to get references right

evince test.pdf test2.pdf test3.pdf &

rm -f greetings.tex
