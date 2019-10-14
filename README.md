# HAW Hof Bachelor LaTeX Skeleton

This should help you to match the formal requirements for a Bachelor thesis at [Hof University](https://www.hof-university.de "University Homepage").

## How to use

### Adjustments

The `main.tex` is the root source file that will be compiled, it contains package includes, command definitions and global style settings. It contains PDF-meta information in a `\hypersetup` call that should be adjusted.
It `\input`s all other files.

The `titlepage.tex` file contains information about author, title and so on. These should be replaced.
It's the first file that is included.

`meta.tex` sets variables like author and title, print's the table of contents, list of figures, list of used abbreviations (created and maintained by hand, contributions to improve this are welcome) and the list of listings.
It's the second file that gets included.

Next `intro.tex`, `content.tex` and `fin.tex` are included. `content.tex` is where the main content of the thesis goes.

`appendix.tex` and `postmeta.tex` are included last. Contents of `appendix.tex` should be clear, `postmeta.tex` is used for content after the appendix, such as the bibliography list.

The `src.bib` contains the definitions of your bibliographic references.

### Compilation

The `Makefile` uses your local `pdflatex` and `biber` installation.
If these are installed just execute `make` in the directory should be sufficient.

If you don't have a local latex installation you may want to use `run.sh` which requires docker and compiles your tex files in a docker container.

The resulting PDF-Files can be found in the `pdf` directory.

## Contribution

Contributions of any kind are welcome.
