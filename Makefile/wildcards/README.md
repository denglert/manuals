# Makefile wildcards

~~~~
srcs := $(wildcard src/*.tex)

%.pdf : %.tex $(srcs)
	pdflatex $(INTER) $<
	bibtex note
~~~~
