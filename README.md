<h1 align="center"><i><u>SICP</u></i></h1>

<p align="center">
  <img src="assets/covers/sicp_book_cover__front.png" alt="SICP new front cover" width="50%" />
</p>

<b>PDF download link:
[releases](https://github.com/junnunkarim/book__sicp_source__latex/releases)</b>

> [!NOTE]
> If you want to know "Why read this decades old book in modern times?", please
> check out the [Book Review](#book-review) section.

This repo contains the community developed LaTeX source of second edition of the
book "Structure and Interpretation of Computer Programs" by Harold Abelson,
Gerald Jay Sussman, and Julie Sussman.

This version was developed based on the following iterations:

- [duongdominhchau/sicp](https://github.com/duongdominhchau/sicp-pdf) by
  [Chau Duong](https://github.com/duongdominhchau)
  - which was based on [sarabander/sicp](https://github.com/sarabander/sicp) by
    [Andres Raba](https://github.com/sarabander)
    - which was based on
      [Neil Van Dyke](http://www.neilvandyke.org/sicp-texi/)'s version
      - which was based on
        [Unofficial Texinfo Format](http://www.neilvandyke.org/sicp-texi/) by
        Lytha Ayth
        - which was originally derived from the
          [HTML version](https://mitp-content-server.mit.edu/books/content/sectbyfn/books_pres_0/6515/sicp.zip/index.html)
          at The MIT Press.

The biggest change in this revision is the new typesetting of the book and the
full conversion to LaTeX (completely moving away from the previous Texinfo).
Some of the improvements in this version are as follows:

- The whole codebase structure is now modularized, making development easier and
  more manageable
  - Multiple macros are created to handle formatting more efficiently
- Extended build support
  - Builds for multiple page layouts (A4, A5, etc.) are now supported
  - Builds for individual chapters are now supported
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
- New cover pages are designed for printing needs

## Dependencies

- Font: [NewComputerModern](https://ctan.org/pkg/newcomputermodern?lang=en)
- [Inkscape](https://inkscape.org/)
- [TeX Live distribution](https://tug.org/texlive/)

## Instructions

Make sure to satisfy all the dependencies.

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

## Additional Resources

### Book Review

- [Why Structure and Interpretation of Computer Programs matters](https://people.eecs.berkeley.edu/~bh/sicp.html)
- [Book review: "Structure and Interpretation of Computer Programs" by Harold Abelson, Gerald Jay Sussman](https://eli.thegreenplace.net/2008/05/28/book-review-structure-and-interpretation-of-computer-programs-by-harold-abelson-gerald-jay-sussman)
  by [Eli Bendersky](https://github.com/eliben)
- [SICP - Review](https://www.inchmeal.io/sicp/review.html) by
  [Ovais](https://github.com/0vais)
- [Book review: Structure & Interpretation of Computer Programming](https://zackads.github.io/blog/sicp-book-review/)
  by [Zack Adlington](https://github.com/zackads)
- [Reading Structure and Interpretation of Computer Programs in 2025](https://ldirer.com/blog/posts/sicp-review)
  by [Laurent Direr](https://github.com/ldirer)
- [What I Have (Re)-learned From SICP](http://web.archive.org/web/20221024062249/https://code-and-cocktails.herokuapp.com/blog/2014/07/06/what-i-have-re-learned-from-sicp/)
  by [Mark Simpson](https://github.com/verdammelt)
- [Review](https://www.adamtornhill.com/reviews/sicp.htm) by Adam Tornhill
- [Books I like: SICP](https://users.cms.caltech.edu/~mvanier/blog/sicp/) by
  [Michael Vanier](https://github.com/mvanier)

> ...
>
> To use an analogy, if SICP were about automobiles, it would be for the person
> who wants to know how cars work, how they are built, and how one might design
> fuel-efficient, safe, reliable vehicles for the 21st century. The people who
> hate SICP are the ones who just want to know how to drive their car on the
> highway, just like everyone else.
>
> Those who hate SICP think it doesn't deliver enough tips and tricks for the
> amount of time it takes to read. But if you're like me, you're not looking for
> one more trick, rather you're looking for a way of synthesizing what you
> already know, and building a rich framework onto which you can add new
> learning over a career. That's what SICP has done for me. I read a draft
> version of the book around 1982, when I was in grad school, and it changed the
> way I think about my profession. If you're a thoughtful computer scientist (or
> want to be one), it will change your life too.
>
> Some of the reviewers complain that SICP doesn't teach the basics of OO
> design, and so on. In a sense they are right. The book doesn't directly tell
> you how to design and write an object-oriented program using the subset of
> object-oriented principles that show up in the syntax of Java or C++. Rather,
> the book tells you what those principles are, how they came to be selected as
> worthwhile, how they can be implemented from the ground up, and how a
> different combination of principles might be more appropriate for some
> particular problems. This approach requires you to understand the range of
> possibilities, and to think about trade-offs as you go through the design
> process. Programming is a craft that is subject to frequent failure: many
> projects are started and abandoned because the designers do not have the
> flexibility, experience and understanding to come up with a suitable design
> and implementation. SICP gives you an approach that will succeed, but it is an
> approach based on principles and wisdom, not on a checklist. If you don't
> understand the principles, or if you are the kind of person who wants to be
> given a cookbook of what to do rather than to think creatively, or if you only
> want to work on problems that are pretty much like the problem you worked on
> last time, then this approach will not work for you. There are other
> approaches that will be more reproducible for a limited range of simple
> problems, but there is no better way than SICP to learn how to address the
> truly hard problems.
>
> ...
>
> --- Peter Norvig, May, 2000

### Useful

- [SICP-guile](https://github.com/zv/SICP-guile)
- [sicp-abrantes-study-guide](https://github.com/abrantesasf/sicp-abrantes-study-guide)
- [SICP, summary and notes](https://www.inchmeal.io/sicp/)
- [SICP Study](https://mk12.github.io/sicp/index.html)
- [The SICP Challenge](https://billthelizard.blogspot.com/2009/10/sicp-challenge.html)

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
- Andres Raba (sarabander)
- Chau Duong (duongdominhchau)

## License

The files in this directory and diagrams in the directory `assets/` are licensed
under Creative Commons Attribution-ShareAlike 4.0 International License
([cc by-sa](https://creativecommons.org/licenses/by-sa/4.0/)).
