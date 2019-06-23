# `SparseTriples` class


**References:**
- https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._matrices.SparseTriple-class.html?view=embed

A class for storing sparse matrix data.


## Constructor

~~~~
cplex.SparseTriple(ind1=[],
                   ind2=[],
                   val=[])
~~~~


**Arguments:**
- `ind1` specifies the first index
- `ind2` specifies the second index
- `val` specifies the float values associated with those indices


**Note:**
- `ind1`, `ind2`, and `val` must all have the same length.
- If `ind1`, `ind2`, or `val` is omitted, they will default to an empty list.
