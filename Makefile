# Copyright Louis Dionne 2015
# Distributed under the Boost Software License, Version 1.0.

main:
	cd latex && pdflatex --shell-escape main.tex
	cd latex && bibtex main.aux
	cd latex && pdflatex --shell-escape main.tex
	cd latex && pdflatex --shell-escape main.tex
