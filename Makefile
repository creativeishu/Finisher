FILENAME = thesis
BIBFILENAME = tail/tbib
.PHONY = clean

$(FILENAME).pdf: $(FILENAME).dvi
#	dvipdfm $(FILENAME)
	open $(FILENAME).pdf

$(FILENAME).dvi: $(FILENAME).tex $(BIBFILENAME).bib
	pdflatex $(FILENAME)
	bibtex $(FILENAME)
	pdflatex $(FILENAME)
	pdflatex $(FILENAME)

clean:
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out *.dvi *.ps *~
	rm -f head/*.aux head/*.log *~
	rm -f main/*.aux main/*.log *~
	rm -f tail/*.aux tail/*.log *~
	rm -f papers/*.aux papers/*.log *~
