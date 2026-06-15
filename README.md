<h1 align="center"><i><u>SICP</u></i></h1>

![SICP new front cover](assets/covers/sicp_book_cover__front.png)

<b>PDF download link:
[releases](https://github.com/junnunkarim/book__sicp_source__latex/releases)</b>

This is a PDF version of "Structure and Interpretation of Computer Programs" by
Harold Abelson, Gerald Jay Sussman, and Julie Sussman. It is a further developed
version of the followings:

- [duongdominhchau/sicp](https://github.com/duongdominhchau/sicp-pdf) by
  [duongdominhchau](https://github.com/duongdominhchau)
  - which was a PR intended to be merged with the version
    [sarabander/sicp](https://github.com/sarabander/sicp) by
    [Andres Raba](https://github.com/sarabander)
    - which is a developed of the
      [Unofficial Texinfo Format](http://www.neilvandyke.org/sicp-texi/) (UTF)
      - which was originally derived from the
        [HTML version](http://mitpress.mit.edu/sicp/) at The MIT Press.

The biggest change in this revision is the new typesetting of the book and the
full conversion to LaTeX (completely moving away from the previous Texinfo).
Some of the improvements in this version are as follows:

- Many QoL improvements
  - The whole book now uses the "New Computer Modern" typeface
  - Cover page is now generated using LaTeX instead of the manual SVG format
  - Chapter heading, quote and figure styles are updated
  - Code blocks now have numbered lines
  - Page numbers are moved to the page header area
  - Page headers now show the chapter name on even pages and section name on odd
    pages
  - Exercises now have a heading for easier recognition, reduced margins, and
    always end with a page break
  - Long code lines are now properly broken
  - All ASCII figures are removed in favor of SVG figures
- "List of Figures" section is now auto-generated and shows a figure's number
  and name
- Cleanup of manual page breaks and layout adjustments to allow for a more
  natural and elegant output
- Multiple figures are updated to fix issues
- The whole codebase structure is now modularized, making development easier and
  more manageable
  - Multiple macros are created to handle formatting more efficiently
- Builds for multiple page layouts (A4, A5, etc.) are now supported
- Builds for individual chapters are now supported
- New cover pages are designed for printing needs

## Dependencies

- Font: [NewComputerModern](https://ctan.org/pkg/newcomputermodern?lang=en)
- [Inkscape](https://inkscape.org/)
- [TeX Live distribution](https://tug.org/texlive/)

## Instructions

To build the PDF of the book, enter:

```bash
$ make -j4
```

This will generate a pdf suitable for A5 paper named `sicp_a5.pdf` in the
`outputs/` directory. If you want to build PDF for a different page layout or
for individual chapters, checkout the `Makefile`.

To clean up after the build:

```bash
$ make clean
```

This deletes the temporary files written during PDF generation.

To remove all the generated figure PDFs and auxiliary files in the whole
directory:

```bash
$ make clean_all
```

## Acknowledgements

- Lytha Ayth
- Neil Van Dyke
- Gavrie Philipson
- J. E. Johnson
- Mingshen Sun
- holomorph
- Narumi Katoh
- tfgit
- Brian Wignall
- dine2014
- Andres Raba
- duongdominhchau

## License

The files in this directory and diagrams in the directory `assets/` are licensed
under Creative Commons Attribution-ShareAlike 4.0 International License
([cc by-sa](https://creativecommons.org/licenses/by-sa/4.0/)).
