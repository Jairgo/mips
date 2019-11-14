# Project configs
# Nome do pdf/.tex criado
BRIEF  := relatorio
# Arquivo bibliografia
BIBREF :=

TARGETS := $(BRIEF)

# Compiler configs
# Em comandLine escolher compilador xelatex padraox
LATEX  ?= xelatex
BIBTEX := bibtex

# Etc.
#OBJS   := $(wildcard *.tex) $(wildcard **/*.tex)
# Achar todos os .tex dentro do reposistorio em diante
OBJS   := $(shell find . -name '*.tex')

# Rules
.PHONY: clean clean-easy clean-pdf all again

all: $(TARGETS).pdf
	$(MAKE) clean-easy

%.pdf: $(OBJS) $(BIBREF)
	$(LATEX) --shell-escape $(basename $@)
ifdef BIBREF
	$(BIBTEX) $(basename $@)
	$(LATEX) --shell-escape $(basename $@)
	$(LATEX) --shell-escape $(basename $@)
endif
	$(LATEX) --shell-escape $(basename $@)

again:
	$(MAKE) clean
	$(MAKE)
clean:
	$(MAKE) clean-pdf
	$(MAKE) clean-easy

clean-pdf:
	rm $(BRIEF).pdf

clean-easy:
	rm -f *.{aux,bbl,blg,lof,log,lot,nav,snm,out,toc}
	rm -rf _minted-*
