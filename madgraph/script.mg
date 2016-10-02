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
