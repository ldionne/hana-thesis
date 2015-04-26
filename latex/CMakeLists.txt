# Copyright Louis Dionne 2015
# Distributed under the Boost Software License, Version 1.0.

file(GLOB _latex_sources *.bib *.tex *.sty logo.pdf)

add_custom_command(OUTPUT main.pdf
    COMMAND pdflatex --shell-escape main.tex
    COMMAND bibtex main.aux
    COMMAND pdflatex --shell-escape main.tex
    COMMAND pdflatex --shell-escape main.tex
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    DEPENDS ${_latex_sources}
)

add_custom_target(latex DEPENDS main.pdf)
