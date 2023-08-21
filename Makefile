TARGET = fermat

pdf: $(TARGET).pdf

$(TARGET).pdf: *.tex *.sty $(FIG) $(TARGET).bbl
	pdflatex $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

%.bbl: *.bib
	pdflatex $*
	bibtex $*

clean:
	rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.toc *.brf *.nav *.out *.cut *.snm *.upa *.upb *.backup *.synctex.gz *~

distclean:
	rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.toc *.brf *.nav *.out *.cut *.snm *.upa *.upb *.backup *.synctex.gz *~ $(TARGET).pdf