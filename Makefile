TEX = $(wildcard *.tex)
PDF = $(TEX:.tex=.pdf)
BBL = $(TEX:.tex=.bbl)
BIB = $(wildcard *.bib)
BST = $(wildcard *.bst)
STY = $(wildcard *.sty)
DTX = $(wildcard *.dtx)
CLS = $(wildcard *.cls) $(DTX:.dtx=.cls)

all: $(PDF)

%.pdf: %.tex $(BIB) $(STY) $(CLS) $(BST)
	latexmk -pdf $<

%.bbl: %.tex $(BIB) $(STY) $(CLS) $(BST)
	latexmk -pdf $<

%.cls: %.ins %.dtx
	pdflatex $<

clean:
	rm -f *.{aux,bbl,blg,fdb_latexmk,fls,log,out,lof,dvi}
	rm -f *.{bcf,run.xml}
	rm -f *.{toc,snm,nav}
	rm -f *.cls
	rm -f *.gz*
	rm -f *.pdfpc

cleanall: clean
	rm -f $(PDF)
	rm -f arxiv.zip

arxiv.zip: $(TEX) $(BBL) $(STY) $(CLS)
	apack arxiv.zip $(TEX) $(BBL) $(STY) $(CLS) analysis/*.pdf

.PHONY: all clean cleanall
