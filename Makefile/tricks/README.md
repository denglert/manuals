# `Makefile` tricks


## Automatic dependency generation

See:
- http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/

[Example makefile](./examples/auto_dependency_gen.make)


## Extract list of variables with starting with a specific string

**Example:**

~~~~
form_dat_job_tag = Hybrid_mH_eq_mHc_500_mA_150-400_8bins_pert_8pi
form_dat_out_tag = output_form_dat_mA_$(form_dat_mA)

VAR_FORM_DAT    := $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/form_dat/')
EXPORT_FORM_DAT := $(foreach v,$(VAR_FORM_DAT),$(v)='$($(v))')

format_data : 
	@cd output/$(form_dat_job_tag); $(EXPORT_FORM_DAT) ../../awk/format_data.sh; echo $(EXPORT_FORM_DAT) | tr " " "\n" | awk 'NF > 0' | sort > $(form_dat_out_tag).config
~~~~

