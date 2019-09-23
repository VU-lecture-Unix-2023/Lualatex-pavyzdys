#!/bin/bash
rm -f greetings.tex
echo "Greetings from `whoami`@`hostname` on `date`" > greetings.tex
lualatex test.tex
lualatex test.tex # recompile to get references right

pdflatex test2.tex
pdflatex test2.tex

evince test.pdf test2.pdf &

rm -f greetings.tex
