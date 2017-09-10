######################################################
### --- Makefile for 2HDM Parameter space scan --- ###
######################################################

#############################
### -- Interactive run -- ###
#############################

#run_TASK     = "task_ParamScan_Multi.sh"
#run_TAG      = "test1234"
#run_CONFIG   = "ParamSpace.config"
#run_WRITELHA = 0

#run_TASK     = "task_ParamScan_Multi.sh"
#run_TAG      = "run_Hybrid_low_mA_mH_350_detailed"
#run_CONFIG   = "ParamSpace_low_mA.config"
#run_WRITELHA = 0

#run_TASK     = "task_ParamScan_Physical_Multi.sh"
#run_TAG      = "Physical_test"
#run_CONFIG   = "ParamSpace_Physical_default.config"
#run_WRITELHA = 0

#run_TASK     = "task_ParamScan_Hybrid_mH_eq_mHc.sh"
#run_TAG      = "Hybrid_mH_eq_mHc_500_mA_150-400_8bins_pert_8pi"
#run_CONFIG   = "ParamSpace_Hybrid_mH_eq_mHc.config"
#run_WRITELHA = 0

run_TASK     = "task_ParamScan_RB.sh"
run_TAG      = "RB_test_run"
run_WRITELHA = 0

#run_TASK     = "task_ParamScan_Physical_LinCos.sh"
#run_TAG      = "Physical_LinCos_test"
#run_CONFIG   = "ParamSpace_Physical_Cos_default.config"
#run_WRITELHA = 0

# Extract Makefile variables having 'run_' string; strip the prefix 'run_';
# make <varname>=<varvalue> pairs; pass these variable list to shell

VAR_RUN    = $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/run_/' | sed 's/run_//g' )
EXPORT_RUN = $(foreach v,$(VAR_RUN),$(v)="$(run_$(v))")

################################
### -- Submit job to qsub -- ###
################################

#job_RESOURCELIST = "walltime=60:00:00"
#job_TASK     	  = "task_ParamScan_Multi.sh"
#job_TAG      	  = "job_test4321"
#job_CONFIG   	  = "ParamSpace.config"
#job_WRITELHA 	  = 0

#job_RESOURCELIST = ""
#job_TASK     	  = "task_ParamScan_Multi.sh"
#job_TAG      	  = "job_mHc_eq_mH_500"
#job_CONFIG   	  = "ParamSpace_mHc_eq_mH.config"
#job_WRITELHA 	  = 0

#job_RESOURCELIST = "walltime=60:00:00"
#job_RESOURCELIST = ""
#job_RESOURCELIST = "walltime=10:00:00"
#job_TASK     	  = "task_ParamScan_Multi.sh"
#job_TAG      	  = "Hybrid_job_low_mA_sweep_mH"
#job_CONFIG   	  = "ParamSpace_Hybrid_job_low_mA.config"
#job_WRITELHA 	  = 0

job_RESOURCELIST = "walltime=10:00:00"
job_TASK     	  = "task_ParamScan_Hybrid_mH_eq_mHc.sh"
job_TAG      	  = "Hybrid_job_mH_eq_mHc_400_mA_from_150_to_400_8bins"
job_CONFIG   	  = "ParamSpace_Hybrid_mH_eq_mHc.config"
job_WRITELHA 	  = 0

VAR_JOB    = $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/^job_/' | sed 's/job_//g' )
EXPORT_JOB = $(foreach v,$(VAR_JOB),$(v)="$(job_$(v))")

#########################
### -- Format data -- ###
#########################

#form_dat_job_tag = job_cba_tb_50_50
#form_dat_job_tag = job_cba_tb_201_by_201
#form_dat_out_tag = output

#form_dat_job_tag = job_cba_tb_51_51
#form_dat_out_tag = output

#form_dat_job_tag = job_mH_cba_tb
#form_dat_out_tag = output_mH_${form_dat_mH}

#form_dat_job_tag = job_mHc_eq_mH_500
#form_dat_job_tag = interactive_mHc_eq_mH
#form_dat_out_tag = output

#form_dat_job_tag = Physical_LinCos_run2
#form_dat_job_tag = Physical_LinCos_mH_400_mA_150
#form_dat_job_tag = Physical_LinCos_mA_150_mH_300

#form_dat_job_tag = run_Hybrid_low_mA
#form_dat_out_tag = output

#form_dat_job_tag = run_Hybrid_low_mA_mH_350_detailed
#form_dat_out_tag = output_form_dat_mH_$(form_dat_mH)

#form_dat_job_tag = Hybrid_mH_eq_mHc_400_mA_150-400_8bins_Z7_0.00
#form_dat_job_tag = Hybrid_mH_eq_mHc_mA_from_150_to_400_8bins

#form_dat_job_tag = Hybrid_mH_eq_mHc_mA_from_150_to_400_8bins_Z7_2.00
#form_dat_job_tag = Hybrid_mH_eq_mHc_mA_from_150_to_400_8bins_Z7_-2.00
#form_dat_out_tag = output_form_dat_mA_$(form_dat_mA)

form_dat_job_tag = Hybrid_mH_eq_mHc_500_mA_150-400_8bins_pert_8pi
form_dat_out_tag = output_form_dat_mA_$(form_dat_mA)

form_dat_opt   = 2
#form_dat_mA    = 185.428642# Field 13

form_dat_mh    = 125.0# Field 13
form_dat_mH    = 500.0# Field 13
form_dat_mHc   = ${form_dat_mH}# Field 13
form_dat_mA    = 150.0# Field 13
#form_dat_mA    = 185.0# Field 13
#form_dat_mA    = 221.0# Field 13
#form_dat_mA    = 257.0# Field 13
#form_dat_mA    = 292.0# Field 13
#form_dat_mA    = 328.0# Field 13
#form_dat_mA    = 364.0# Field 13
#form_dat_mA    = 400.0# Field 13
form_dat_cosba =   0.000000# Field 3
form_dat_tanb  =   0.000000# Field 4 

form_dat_Z4    =  -1.000000# Field 5
form_dat_Z5    =   1.000000# Field 6

form_dat_Z7    =  0.000000# Field 7
#form_dat_Z7    =   0.000000# Field 7
#form_dat_Z7    =    2.000000# Field 7

form_dat_l6    =   0.000000e+00# Field 17
form_dat_l7    =   0.000000e+00# Field 18
form_dat_m12_2 =   1.580000e+04# Field 19

form_dat_XVar = 3
form_dat_YVar = 4

###

form_dat_filterfield1 = 1
form_dat_filterfield2 = 13
form_dat_filterfield3 = 2
form_dat_filterfield4 = 16
form_dat_filterfield5 = 7

form_dat_filterval1 = $(form_dat_mh)
form_dat_filterval2 = $(form_dat_mA)
form_dat_filterval3 = $(form_dat_mH)
form_dat_filterval4 = $(form_dat_mHc)
form_dat_filterval5 = $(form_dat_Z7)

#form_dat_filterfield1 = 1
#form_dat_filterfield2 = 2
#form_dat_filterfield3 = 5
#form_dat_filterfield4 = 6
#form_dat_filterfield5 = 7

#form_dat_filterfield1 = 1
#form_dat_filterfield2 = 2
#form_dat_filterfield3 = 17
#form_dat_filterfield4 = 18
#form_dat_filterfield5 = 19

#######



#form_dat_filterval1 = $(form_dat_mh)
#form_dat_filterval2 = $(form_dat_mH)
#form_dat_filterval3 = $(form_dat_Z4)
#form_dat_filterval4 = $(form_dat_Z5)
#form_dat_filterval5 = $(form_dat_Z7)

#form_dat_filterval1 = $(form_dat_mh)
#form_dat_filterval2 = $(form_dat_mH)
#form_dat_filterval3 = $(form_dat_l6)
#form_dat_filterval4 = $(form_dat_l7)
#form_dat_filterval5 = $(form_dat_m12_2)

# Extract Makefile variables having 'form_dat' string; make <varname>=<varvalue>
# pairs; pass these variable list to shell

VAR_FORM_DAT    := $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/form_dat/')
EXPORT_FORM_DAT := $(foreach v,$(VAR_FORM_DAT),$(v)='$($(v))')

##########################
### -- Make figures -- ###
##########################

#fig_job_tag = job_cba_tb_50_50
#fig_out_tag = reduced_test

#fig_job_tag = job_cba_tb_201_by_201
#fig_out_tag = output

#fig_job_tag = job_cba_tb_51_51
#fig_out_tag = output

#fig_job_tag = job_mH_cba_tb
#fig_out_tag = output_mH_${form_dat_mH}

#fig_job_tag = job_mHc_eq_mH_500

#fig_job_tag = interactive_mHc_eq_mH
#fig_out_tag = output

#fig_job_tag = Physical_LinCos_mH_400_mA_150

#fig_job_tag = Physical_LinCos_mA_150_mH_300
#fig_job_tag = Hybrid_job_low_mA_sweep_mH

#fig_job_tag = run_Hybrid_low_mA_mH_350_detailed

#fig_job_tag = $(form_dat_job_tag)
#fig_out_tag = $(form_dat_out_tag)

fig_job_tag = $(form_dat_job_tag)
fig_out_tag = $(form_dat_out_tag)

###################################################################################

test :
	@echo "This is VAR_RUN:"
	@echo "$(VAR_JOB)"
	@echo "This is EXPORT_RUN:"
	@echo "$(EXPORT_JOB)"

run : build
	@$(EXPORT_RUN) ./tasks/$(run_TASK); 

submit_job :
	@if [ -d ./output/$(job_TAG) ]; then cp -f ./output/$(job_TAG) ./backup/$(job_TAG); rm -rf output/$(job_TAG); fi;
	@mkdir -p output/$(job_TAG)
	@cp ./tasks/$(job_TASK) ./output/$(job_TAG)/$(job_TASK)
	@echo $(EXPORT_JOB) | tr " " "\n" | awk 'NF > 0' | sort | cat - ./output/$(job_TAG)/$(job_TASK) > temp; echo "#!/bin/sh" | cat - temp > temp2  && mv temp2 ./output/$(job_TAG)/$(job_TASK)
	@$(EXPORT_JOB) ./qsub/submit.sh

figures : 
	@mkdir -p figures/$(fig_job_tag); cd figures/$(fig_job_tag); ../../gnuplot/plot_all.sh $(fig_job_tag) $(fig_out_tag)
#	cd figures/$(fig_job_tag); gnuplot -e "config=../../output/${fig_job_tag}/${fig_out_tag}_gnu.conf; ../../gnuplot/chisq_distr.gnu


format_data : 
	@cd output/$(form_dat_job_tag); $(EXPORT_FORM_DAT) ../../awk/format_data.sh; echo $(EXPORT_FORM_DAT) | tr " " "\n" | awk 'NF > 0' | sort > $(form_dat_out_tag).config


build : build_allbinaries


build_allbinaries : 
	@ cd src; make binaries;


clean :
	rm -f ./lib/*.o
	find ./bin/ -type f -not -name 'dummy' | xargs rm -f
	rm -f ./src/.depend_cpp
	touch ./src/.depend_cpp


.PHONY: figures
