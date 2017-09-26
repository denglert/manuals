# Fitting


## Observations

### Regarding the normalisiation the order of plotting counts


Here the fit function is not correctly normalised:

~~~~
gauss.plotOn(xframe);
data->plotOn(xframe);
~~~~

To get the correct normalisation one should use:

~~~~
data->plotOn(xframe);
gauss.plotOn(xframe);
~~~~
