# &chi;<sup>2</sup> calculation


## `src/chi2.c`

~~~~
double chi2(int likelihood, char* names0[], double values0[], int nbobs0, struct parameters* param,
int reset)
~~~~

The list of experimental measurement with their central values and uncertainties can be found in
`src/experimental.h`
