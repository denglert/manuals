# First item in the dependencies list
$< 

# Target
$@

# Function call syntax
${function <argument>}


# Manual determination of prerequisites
# E.g. Makefile for latex, includes are in the 'src' dir

srcs := $(wildcard src/*.tex)

%.pdf : %.tex $(srcs)
	pdflatex $(INTER) $<
	bibtex note
