# Contributed by holomorph, 2013.
# Added to by Andres Raba, 2013-2015.

# list of assets with "*.svg" replaced with "*.pdf"
FIG := $(patsubst %.svg,%.pdf,\
         $(wildcard assets/figures/chapter_1/*.svg) \
         $(wildcard assets/figures/chapter_2/*.svg) \
         $(wildcard assets/figures/chapter_3/*.svg) \
         $(wildcard assets/figures/chapter_4/*.svg) \
         $(wildcard assets/figures/chapter_5/*.svg) \
         $(wildcard assets/icons/*.svg) )

DIR := $(shell pwd)
OUTPUT_DIR := outputs

define BUILD
	mkdir -p ${OUTPUT_DIR}
	latexmk -g \
		-usepretex="\newcommand{\paperType}{$(2)}\newcommand{\buildChapter}{$(3)}" \
	  main.tex
	mv main.pdf ${OUTPUT_DIR}/$(1).pdf
endef

# build a5 pdf with all chapters by default
pdf_a5: ${FIG}
	$(call BUILD,sicp_a5,0,0)
pdf_a5_ch1: ${FIG}
	$(call BUILD,sicp_a5_chapter_1,0,1)
pdf_a5_ch2: ${FIG}
	$(call BUILD,sicp_a5_chapter_2,0,2)
pdf_a5_ch3: ${FIG}
	$(call BUILD,sicp_a5_chapter_3,0,3)
pdf_a5_ch4: ${FIG}
	$(call BUILD,sicp_a5_chapter_4,0,4)
pdf_a5_ch5: ${FIG}
	$(call BUILD,sicp_a5_chapter_5,0,5)

pdf_a5_all_ch: pdf_a5_ch1 pdf_a5_ch2 pdf_a5_ch3 pdf_a5_ch4 pdf_a5_ch5

pdf_a4: ${FIG}
	$(call BUILD,sicp_a4,1,0)
pdf_a4_ch1: ${FIG}
	$(call BUILD,sicp_a4_chapter_1,1,1)
pdf_a4_ch2: ${FIG}
	$(call BUILD,sicp_a4_chapter_2,1,2)
pdf_a4_ch3: ${FIG}
	$(call BUILD,sicp_a4_chapter_3,1,3)
pdf_a4_ch4: ${FIG}
	$(call BUILD,sicp_a4_chapter_4,1,4)
pdf_a4_ch5: ${FIG}
	$(call BUILD,sicp_a4_chapter5,1,5)

pdf_a4_all_ch: pdf_a4_ch1 pdf_a4_ch2 pdf_a4_ch3 pdf_a4_ch4 pdf_a4_ch5

pdf_ustrade: ${FIG}
	$(call BUILD,sicp_ustrade,2,0)
pdf_ustrade_ch1: ${FIG}
	$(call BUILD,sicp_ustrade_chapter_1,2,1)
pdf_ustrade_ch2: ${FIG}
	$(call BUILD,sicp_ustrade_chapter_2,2,2)
pdf_ustrade_ch3: ${FIG}
	$(call BUILD,sicp_ustrade_chapter_3,2,3)
pdf_ustrade_ch4: ${FIG}
	$(call BUILD,sicp_ustrade_chapter_4,2,4)
pdf_ustrade_ch5: ${FIG}
	$(call BUILD,sicp_ustrade_chapter_5,2,5)

pdf_ustrade_all_ch: pdf_ustrade_ch1 pdf_ustrade_ch2 pdf_ustrade_ch3 pdf_ustrade_ch4 pdf_ustrade_ch5

%.pdf: %.svg
	# convert all assets from svg to pdf using inkscape
	inkscape ${DIR}/$< --export-filename ${DIR}/$@

all_paper: pdf_a5 pdf_a4 pdf_ustrade
all: all_paper pdf_a5_all_ch pdf_a4_all_ch pdf_ustrade_all_ch

clean:
	# remove build artifacts
	latexmk -CA main.tex
	find layouts preamble frontmatter chapters backmatter \
		\( -name '*.aux' -o -name '*.log' -o -name '*.out' \) \
		-delete -print

clean_all: clean
	${RM} ${FIG}

.PHONY: all pdf_a5 pdf_a4 pdf_ustrade clean clean_all
