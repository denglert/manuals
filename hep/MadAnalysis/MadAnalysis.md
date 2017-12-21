# MadAnalysis manual

## References

Main site:

https://madanalysis.irmp.ucl.ac.be/

Tutorials:

https://madanalysis.irmp.ucl.ac.be/wiki/tutorials


## Modes

- interactive
- passing a `.ma5` scrip to MadAnalysis

## Basic example

### Interactive mode 

~~~~
define mu = mu+ mu-
import samples/ttbar.lhe.gz
plot PT(mu)
reject PT(mu) < 40
plot PT(mu)
submit
~~~~

By issuing these commands a folder which contains the histogram(s) and a `.pdf` report is created.
The folder is has a default name `ANALYSIS_*` if no name is specified.

### Running a `.ma5` script

Contents of `script.ma5`:

~~~~
set main.lumi = 1000
set main.stacking_method = superimpose
import /scratch/user/CHM/cross_section_scan/mg5_processes/CHM_gg_Zh_all/Events/scan_job_1450.0_750.0 as f_750
import /scratch/user/CHM/cross_section_scan/mg5_processes/CHM_gg_Zh_all/Events/scan_job_1450.0_2000.0 as f_2000
set f_750.xsection=1.024e-03
set f_2000.xsection=2.437e-06
plot THETA(z)
submit f_750_and_2000
~~~~

Then run the script as:

~~~~
./bin/ma5 script.ma5
~~~~

## Useful options

### Luminosity
The histograms on default are normalized to a specified integrated luminosity. The default is 10
fb-1. You can change this via:

~~~~
set main.lumi = 100
~~~~

### Histogram
Histogram normalization to one:

~~~~
set main.stacking_method = normalize2one
~~~~

If you have several datasets, you can choose if you would like to stack the spectra (by default) or
to superimpose them:

~~~~
set main.stacking_method = stack
set main.stacking_method = superimpose
~~~~
