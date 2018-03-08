all:	I10.pdf

%.pdf: %.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

clean:
	rm -f *.bbl *.blg *.dvi I10.pdf *.out *.log *.aux *.synctex.gz
