# `RooFit::Workspace`


**Purpose:**
- generic container class for all `RooFit` objects
- helps to organise analysis projects

## Usage


Create a workspace:

~~~~
RooWorkspace w("w");
~~~~


Importing variables and functions to a workspace:

~~~~
w.import(myFunction)
~~~~

Extracting variables and functions from a workspace:

~~~~
RooRealVar *var = w.var("x");
~~~~

Use `factory` to create objects:

~~~~
w.factory(“Gaussian::f(x[-10,10],mean[5],sigma[3])”) ;
~~~~

More on this in [Factory](./Factory.md)

## Contents of a `workspace`:

- variables
- p.d.f.s
- functions
- datasets
- parameter snapshots
- named sets
- generic objects
- embedded class code


### Variables

Example contents:
- `alphaHi_S`
- ...

### Pdfs

Example contents:
- `RooAddPdf::BKGPdf[ nConBkgSR * conBkgPdf + nSMh * SMhPdf + nSMhh * DCB_SMhh ] = 0.00744464`

### Functions

Example contents:
- `RooFormulaVar::Lumi`
- ..

### Datasets

Example contents:
- `obsData`
- `asimovData`

### Parameters snapshots

Example contents:
- `ModelConfig__snapshot`
- `NominalParamValues`

### Named sets

Example contents:
- `ModelConfig_POI`
- `ModelConfig_Observables`
- `ModelConfig_GlobalObservables`
- `ModelConfig__snapshot`
- `Observables`
- `GlobalObservables`
- `NuisanceParameters`


### Generic objects

Example contents:
- `ModelConfig`

### Embedded class code

Example contents:
- `HggTwoSidedCBPdf`
