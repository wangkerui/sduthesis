# Makefile for SduThesis
# stole from ThuThesis
# $Id$

ifeq ($(MAKE),)
	override MAKE=make
endif

ifeq ($(TEXI2DVI),)
	override TEXI2DVI=texi2dvi
endif

PACKAGE=sduthesis
SOURCES=$(PACKAGE).ins $(PACKAGE).dtx 
THESISMAIN=main
THESISCONTENTS=$(THESISMAIN).tex data/*.tex
BIBFILE=ref/*.bib

.PHONY: all clean distclean dist all thesis doc ins cls cfg dvi ps pdf

all: ins doc thesis


###### generate cls/cfg
ins:  $(SOURCES)
	latex $(PACKAGE).ins


###### for doc

doc: doc-pdf

doc-pdf: $(PACKAGE).pdf

doc-ps: $(PACKAGE).ps

doc-dvi: $(PACKAGE).dvi

$(PACKAGE).dvi: ins
	latex $(PACKAGE).dtx
	makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	makeindex -s gglo.ist -o $(PACKAGE).gls $(PACKAGE).glo
	latex $(PACKAGE).dtx
	latex $(PACKAGE).dtx

$(PACKAGE).ps: $(PACKAGE).dvi
	# gbk2uni $(PACKAGE)
	latex $(PACKAGE).dtx
	dvips -Ppdf -G0 -t letter $(PACKAGE).dvi

$(PACKAGE).pdf: $(PACKAGE).ps
	ps2pdf  $(PACKAGE).ps


###### for thesis

thesis: thesis-pdf

thesis-pdf: $(THESISMAIN).pdf

thesis-dvi: $(THESISMAIN).dvi

thesis-ps: $(THESISMAIN).ps

ifeq ($(METHOD),xetex)

$(THESISMAIN).pdf: ins $(THESISCONTENTS) $(THESISMAIN).bbl
	xelatex $(THESISMAIN).tex
	xelatex $(THESISMAIN).tex

$(THESISMAIN).bbl: $(BIBFILE)
	xelatex $(THESISMAIN).tex
	-bibtex $(THESISMAIN)
	-rm $(THESISMAIN).pdf

else ifeq ($(METHOD),pdftex)

$(THESISMAIN).pdf: ins $(THESISCONTENTS) $(THESISMAIN).bbl
	pdflatex $(THESISMAIN).tex
	pdflatex $(THESISMAIN).tex

$(THESISMAIN).bbl: $(BIBFILE)
	pdflatex $(THESISMAIN).tex
	-bibtex $(THESISMAIN)
	-rm $(THESISMAIN).pdf

else ifeq ($(METHOD),dvipdfm)

$(THESISMAIN).pdf: $(THESISMAIN).dvi
	latex $(THESISMAIN).tex
	dvipdfmx $(THESISMAIN).dvi

$(THESISMAIN).dvi: ins $(THESISCONTENTS) $(THESISMAIN).bbl
	$(TEXI2DVI) $(THESISMAIN).tex

$(THESISMAIN).bbl: $(BIBFILE)
	$(TEXI2DVI) $(THESISMAIN).tex
	-bibtex $(THESISMAIN)

else

$(THESISMAIN).pdf: $(THESISMAIN).ps
	ps2pdf $(THESISMAIN).ps

$(THESISMAIN).ps: $(THESISMAIN).dvi
	# gbk2uni $(THESISMAIN)
	latex $(THESISMAIN).tex
	dvips -Ppdf -G0 $(THESISMAIN).dvi

$(THESISMAIN).dvi: ins $(THESISCONTENTS) $(THESISMAIN).bbl
	$(TEXI2DVI) $(THESISMAIN).tex

$(THESISMAIN).bbl: $(BIBFILE)
	$(TEXI2DVI) $(THESISMAIN).tex
	-bibtex $(THESISMAIN)

endif


clean: 
	-@rm -f \
		*.aux \
		*.bak \
		*.bbl \
		*.blg \
		*.dvi \
		*.glo \
		*.gls \
		*.idx \
		*.ilg \
		*.ind \
		*.ist \
		*.log \
		*.out \
		*.ps \
		*.thm \
		*.toc \
		*.toe \
		*.lof \
		*.lot \
		*.loe \
		data/*.aux \
		dtx-style.sty

distclean: clean
	-@rm -f *.cls *.cfg
	-@rm -f *.pdf *.tar.gz


dist:
	@if [ -z "$(VERSION)" ]; then \
	    echo "Usage: make dist VERSION=<version#>"; \
	else \
	    ./makedist.sh $(VERSION); \
	fi
