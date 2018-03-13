TEX = $(wildcard *.tex)
PDF = $(TEX:.tex=.pdf)
BBL = $(TEX:.tex=.bbl)
BIB = $(wildcard *.bib)
STY = $(wildcard *.sty)

all: $(PDF)

%.pdf: %.tex $(BIB)
	latexmk -pdf $<

%.bbl: %.tex $(BIB)
	latexmk -pdf $<

clean:
	rm -f *.{aux,bbl,blg,fdb_latexmk,fls,log,out,lof,dvi}
	rm -f *.{bcf,run.xml}
	rm -f *.{toc,snm,nav}
	rm -f *.gz*
	rm -f *.pdfpc

cleanall: clean
	rm -f $(PDF)
	rm -f arxiv.zip

arxiv.zip: $(PDF) $(BBL) $(STY)
	apack arxiv.zip $(TEX) $(BBL) $(STY) analysis/*.pdf

.PHONY: all clean cleanall
