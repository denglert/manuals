# Makefile variables

variable1 = value1
variable2 = value2

# Run a shell command, and the pass the result to a Makefile variable:

VAR_RUN    = $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/run_/' | sed 's/run_//g' )

# First item in the dependencies list
$< 

# All the items in the dependencies list
$^

# Target
$@

# Function call syntax
${function <argument>}

#############################################################################
# Automatic dependency generation for .cpp files

### EXAMPLE

CC     = g++
CCFLAGS = -I../inc/ -I$(INCDIRLINK) $(ROOTCFLAGS) $(2HDMCCFLAGS) -MMD -MF .depend_cpp

# General compilation rule for .cpp sources
../lib/%.cpp.o : %.cpp
	$(CC) $(CCFLAGS) -c $< -o $@

include .depend_cpp

#############################################################################
# VPATH Makefile variable
# This is where Makefile tries to look for src files

# Example:
# Makefile will look in the following directories
# ./src ./rambo ./DHELAS ./alpha_QCD ./CTEQ5

VPATH = src:rambo:DHELAS:alpha_QCD:CTEQ5

#############################################################################
# Automatically look for variables within the Makefile whose name start with
# 'form_dat', then create a string of 'form_datvariable = <value>' pairs. This
# string can later be exported to a file, or passed to a shell command, where
# these variable pairs are now accessible.

# Example:
form_dat_job_tag = Hybrid_mH_eq_mHc_500_mA_150-400_8bins_pert_8pi
form_dat_out_tag = output_form_dat_mA_$(form_dat_mA)

VAR_FORM_DAT    := $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/form_dat/')
EXPORT_FORM_DAT := $(foreach v,$(VAR_FORM_DAT),$(v)='$($(v))')

format_data : 
	@cd output/$(form_dat_job_tag); $(EXPORT_FORM_DAT) ../../awk/format_data.sh; echo $(EXPORT_FORM_DAT) | tr " " "\n" | awk 'NF > 0' | sort > $(form_dat_out_tag).config


#############################################################################
# Manual determination of prerequisites
# E.g. Makefile for latex, includes are in the 'src' dir

srcs := $(wildcard src/*.tex)

%.pdf : %.tex $(srcs)
	pdflatex $(INTER) $<
	bibtex note
