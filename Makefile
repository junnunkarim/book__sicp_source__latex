# Contributed by holomorph, 2013.
# Added to by Andres Raba, 2013-2015.

FIG := $(patsubst %.svg,%.pdf,\
         $(wildcard assets/figures/chapter_1/*.svg) \
         $(wildcard assets/figures/chapter_2/*.svg) \
         $(wildcard assets/figures/chapter_3/*.svg) \
         $(wildcard assets/figures/chapter_4/*.svg) \
         $(wildcard assets/figures/chapter_5/*.svg) \
         $(wildcard assets/icons/*.svg) \
         assets/coverpage.svg)

DIR := $(shell pwd)

all: sicp.pdf

sicp.pdf: ${FIG}
	mkdir -p outputs
	latexmk -pdflatex="xelatex %O %S" -pdf -jobname=sicp -dvi- -ps- main.tex; \
	mv sicp.pdf outputs/

%.pdf: %.svg
	inkscape ${DIR}/$< --export-filename ${DIR}/$@

clean:
	latexmk -CA
	find chapters frontmatter backmatter \
		\( -name '*.aux' -o -name '*.log' -o -name '*.out' \) \
		-delete -print

clean_all: clean
	${RM} ${FIG}

.PHONY: all clean clean-all
