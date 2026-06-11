# Contributed by holomorph, 2013.
# Added to by Andres Raba, 2013-2015.

# list of assets with "*.svg" replaced with "*.pdf"
FIG := $(patsubst %.svg,%.pdf,\
         $(wildcard assets/figures/chapter_1/*.svg) \
         $(wildcard assets/figures/chapter_2/*.svg) \
         $(wildcard assets/figures/chapter_3/*.svg) \
         $(wildcard assets/figures/chapter_4/*.svg) \
         $(wildcard assets/figures/chapter_5/*.svg) \
         $(wildcard assets/icons/*.svg) \
         assets/coverpage.svg)

DIR := $(shell pwd)
OUTPUT_DIR := outputs

# build pdf by default
all: pdf

pdf: ${FIG}
	# create output directory if not found
	mkdir -p ${OUTPUT_DIR}
	# build pdf
	latexmk main.tex
	# move pdf to output directory
	mv sicp.pdf ${OUTPUT_DIR}/

%.pdf: %.svg
	# convert all assets from svg to pdf using inkscape
	inkscape ${DIR}/$< --export-filename ${DIR}/$@

clean:
	# remove build artifacts
	latexmk -CA main.tex
	find chapters frontmatter backmatter \
		\( -name '*.aux' -o -name '*.log' -o -name '*.out' \) \
		-delete -print

clean_all: clean
	${RM} ${FIG}

.PHONY: all pdf clean clean_all
