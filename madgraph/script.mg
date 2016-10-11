generate p p > t t~ j
 output MYDIRECTORY
 launch MYDIRECTORY
    set mt 170 # changing the top mass
    set wt Auto # changing the top width
    set ptj 40 # changing the ptj cut
	 pythia=ON
	 delphes=ON
    madspin=ON
	 use 0
launch -n runname1
    set mt 175 # changing the top mass
    set wt Auto # changing the top width
launch runname2
    set mt 180 # changing the top mass
    set wt Auto # changing the top width
launch MYDIRECTORY -i
    print_results --path=./cross_section_top.txt --format=short

###########################
### --- set command --- ###
###########################

INFO: ********************* HELP SET ***************************
INFO: syntax: set [run_card|param_card] NAME [VALUE|default]
INFO: syntax: set [param_card] BLOCK ID(s) [VALUE|default]
INFO:
INFO: -- Edit the param_card/run_card and replace the value of the
INFO:     parameter by the value VALUE.
INFO:
INFO: -- Example:
INFO:      set run_card ebeam1 4000
INFO:      set ebeam2 4000
INFO:      set lpp1 0
INFO:      set ptj default
INFO:
INFO:      set param_card mass 6 175
INFO:      set mass 25 125.3
INFO:      set mass mh 125
INFO:      set mh 125
INFO:      set decay 25 0.004
INFO:      set decay wh 0.004
INFO:      set vmix 2 1 2.326612e-01
INFO:
INFO:      set param_card default #return all parameter to default
INFO:      set run_card default
INFO: ********************* HELP SET ***************************

set run_card nevents 50000
