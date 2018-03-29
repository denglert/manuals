# Pitfalls with MG5

### ERROR: Fail to create LHCO events from DELPHES

**Error message:**

~~~~
INFO: End Plots for pythia level
INFO: finish
INFO: No pgs_card detected, so not run pgs
INFO: prepare delphes run
INFO: Running Delphes
ERROR: Fail to create LHCO events from DELPHES
INFO: storring files of previous run
INFO: Storing Pythia files of previous run
~~~~

**Cause:**

Need to set the correct gcc/g++ links/version
`module load gcc/6.1.0`
