all:	I10.pdf

%.pdf: %.dvi
	dvipdfm $*

%.dvi: %.tex
	latex $*
	bibtex $*
	latex $*
	latex $*

clean:
	rm -f *.bbl *.blg *.dvi I10.pdf *.out *.log *.aux *.synctex.gz
