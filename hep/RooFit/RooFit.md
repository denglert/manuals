# Documentation for `RooFit`

## Basic classes

### `RooAbsPdf`

`RooAbsPdf` is the abstract interface for all probability density functions. The class provides
hybrid analytical/numerical normalization for its implementations, error tracing and a MC generator
interface.

A minimal implementation of a PDF class derived from `RooAbsPdf` should overload the evaluate()
function. This functions should return PDFs value.

### `RooSimultaenous`

`RooSimultaneous` facilitates simultaneous fitting of multiple PDFs to subsets of a given dataset.

The class takes an index category, which is interpreted as the data subset indicator, and a list of
PDFs, each associated with a state of the index category. `RooSimultaneous` always returns the value
of the PDF that is associated with the current value of the index category. Extended likelihood
fitting is supported if all components support extended likelihood mode. The expected number of
events by a RooSimultaneous is that of the component p.d.f. selected by the index category 

## References

- http://roofit.sourceforge.net/
- https://root.cern.ch/doc/v608/group__Roofitcore.html
