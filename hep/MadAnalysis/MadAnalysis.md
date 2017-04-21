# MadAnalysis manual

## References

Main site:

https://madanalysis.irmp.ucl.ac.be/

Tutorials:

https://madanalysis.irmp.ucl.ac.be/wiki/tutorials

## Python interface commands

### Basic example

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

## Useful options

The histograms on default are normalized to a specified integrated luminosity. The default is 10
fb-1. You can change this via:

~~~~
set main.lumi = 100
~~~~

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
