SOURCES := main.tex
BIB_SOURCES := src.bib
PDF_FILES = $(patsubst %.tex, %.pdf, $(SOURCES))
BIB_FILES = $(patsubst %.tex, %.bbl, $(SOURCES))

LATEX?=pdflatex
BIBER?=biber

MUID?=$(shell id -u)
MGID?=$(shell id -g)

CHANGEOWNER?=sudo chown $(MUID):$(MGID) . -R

%.run.xml: %.tex
	$(LATEX) $<

%.bbl: %.run.xml $(BIB_SOURCES)
	$(BIBER) $(patsubst %.run.xml, %, $<)

pdf: $(PDF_FILES)
	mkdir -p pdf
	mv *.pdf pdf

%.pdf: %.tex %.bbl
	$(LATEX) $<
	$(LATEX) $<
	$(CHANGEOWNER)

.PHONY: clean
clean:
	find . \( -iname '*.out' -o -iname '*.toc' -o  -iname '*.log' -o -iname '*.aux' -o -iname '*.dvi' -o -iname '*.lol' -o -iname '*.lof' -o -iname '*.run.xml' -o -iname '*.fdb_latexmk' -o -iname '*.fls' -o -iname '*.bbl' -o -iname '*.bcf' -o -iname '*.blg' \) -exec rm {} +
