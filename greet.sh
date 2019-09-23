#!/bin/bash
rm -f greetings.tex
echo "Greetings from `whoami`@`hostname` on `date`" > greetings.tex
lualatex test.tex
lualatex test.tex # recompile to get references right
rm -f greetings.tex
