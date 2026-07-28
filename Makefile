# Set to the basename of the root .tex file (paper.tex -> paper). Several may
# be listed, separated by spaces, to build a paper and its supplement together.
# Keep this comment on its own line: make would otherwise fold the whitespace
# before a trailing comment into the value.
TARGET = paper

TEX = $(wildcard *.tex)
STY = $(wildcard *.sty)
BIB = $(wildcard *.bib)
FIG = $(wildcard figures/*)

PDF = $(addsuffix .pdf,$(TARGET))

# Build the bibliography only when a .bib file is present. Documents without
# one, such as notes, would otherwise fail on an unsatisfiable prerequisite.
ifeq ($(strip $(BIB)),)
BBL =
else
BBL = %.bbl
endif

# Auxiliary files to delete, kept in sync with .gitignore.
AUX = *.aux *.bbl *.bcf *.blg *.brf *.cut *.dvi *.fdb_latexmk *.fff *.fls \
	*.lof *.log *.lol *.lot *.nav *.out *.pdfsync *.run.xml *.snm *.spl \
	*.synctex *.synctex.gz *.thm *.toc *.ttt *.upa *.upb *.vrb *.xdv \
	*.backup *~

.PHONY: pdf clean distclean

pdf: $(PDF)

# Static pattern rules, so that the recipes apply only to the documents named
# in TARGET. A plain `%.pdf' rule would also match the figures in $(FIG) and
# send pdflatex after them.
$(PDF): %.pdf: $(TEX) $(STY) $(FIG) $(BBL)
	pdflatex $*
	pdflatex $*
	pdflatex $*

$(addsuffix .bbl,$(TARGET)): %.bbl: $(BIB)
	pdflatex $*
	bibtex $*

clean:
	rm -f $(AUX)

distclean: clean
	rm -f $(PDF)
