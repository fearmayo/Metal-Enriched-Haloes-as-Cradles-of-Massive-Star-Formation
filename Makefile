
USE_BIBTEX=yes
TEX=pdflatex
BIBTEX=bibtex
PDF=dvipdf
all: MetalEnrichedHaloes.pdf 


MetalEnrichedHaloes.pdf: MetalEnrichedHaloes.tex
	$(TEX) MetalEnrichedHaloes.tex $@
	$(TEX) MetalEnrichedHaloes.tex $@	
	$(BIBTEX) MetalEnrichedHaloes
	$(BIBTEX) MetalEnrichedHaloes
	$(TEX) MetalEnrichedHaloes.tex $@
	$(BIBTEX) MetalEnrichedHaloes
	$(TEX) MetalEnrichedHaloes.tex $@
	$(TEX) MetalEnrichedHaloes.tex $@
#$(PDF) MetalEnrichedHaloes.dvi
.PHONY : clean

clean:
	rm -f *.log *.aux *.out *.dvi *.blg *.toc *.lof *.lot *.tbx \
	 *.fgx *~ MetalEnrichedHaloes.pdf MetalEnrichedHaloes.ps *.bbl

