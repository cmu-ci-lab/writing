TARGET = fermat

pdf: $(TARGET).pdf

%.pdf: *.tex *.sty $(FIG) %.bbl
	pdflatex $*
	pdflatex $*
	pdflatex $*

%.bbl: *.bib
	pdflatex $*
	bibtex $*

clean:
	rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.toc *.brf *.nav *.out *.cut *.snm *.upa *.upb *.backup *.synctex.gz *~

distclean:
	rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.toc *.brf *.nav *.out *.cut *.snm *.upa *.upb *.backup *.synctex.gz *~ $(TARGET).pdf
