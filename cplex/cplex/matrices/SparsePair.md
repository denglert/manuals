# `SparsePair` class

**References:**
- https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._matrices.SparsePair-class.html?view=embed

A class for storing sparse vector data.


## Constructor

~~~~
cplex.SparsePair(ind=[],
                 val=[])
~~~~

**Arguments:**
- `ind` specifies the indices that the SparsePair refers to
- `val` specifies the float values associated with those indices.


**Note:**
- `ind` and `val` must have the same length.
- If `ind` or `val` is omitted, they will default to an empty list.


**Example(s):**

~~~~
cplex.SparsePair(ind = ["x1", "x3"], val = [1.0, -1.0])
~~~~
