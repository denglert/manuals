# Linear constraints in `cplex`

Methods for adding, modifying, and querying linear constraints. 

**References:**
- https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._subinterfaces.LinearConstraintInterface-class.html?view=embed



## Instance methods

### `c.linear_constraints.add()`

Adds linear constraints to the problem.

**Signature:**

~~~~
c.linear_constraints.add(
    lin_expr=[],
    senses=[],
    rhs=[],
    range_values=[],
    names=[],
)
~~~~

**Note:** If more than one argument is specified, all arguments must have the
same length.

**Arguments:**
- `lin_expr` may be either a list of `SparsePair` instances or a matrix in
	list-of-lists format.
	Note: The entries of `lin_expr` must not contain duplicate indices.  If an entry
	of `lin_expr` references a variable more than once, either by index, name, or a
	combination of index and name, an exception will be raised.
- `senses` must be either a list of single-character strings or a string
	containing the senses of the linear constraints. Each entry must be one of
	- `'G'` indicating greater-than
	- `'L'` indicating less-than
	- `'E'` indicating equality
	- `'R'` indicating ranged constraints
- `rhs` is a list of floats, specifying the righthand side of each linear constraint.
- `range_values` is a list of floats, specifying the difference between
lefthand side and righthand side of each linear constraint.
	- If `range_values[i] > 0` then the constraint `i` is defined as
	`rhs[i] <= rhs[i] + range_values[i]`.
	- If `range_values[i] < 0` then constraint `i` is defined as
	`rhs[i] + range_value[i] <= a*x <= rhs[i]`.
- `names` is a list of strings.

**Returns:**
An iterator containing the indices of the added linear constraints.

**Example:**

~~~~
import cplex
c = cplex.Cplex()
indices = c.variables.add(names = ["x1", "x2", "x3"])
indices = c.linear_constraints.add(lin_expr = [cplex.SparsePair(ind = ["x1", "x3"], val = [1.0, -1.0]),
                                               cplex.SparsePair(ind = ["x1", "x2"], val = [1.0, 1.0]),
											   cplex.SparsePair(ind = ["x1", "x2", "x3"], val = [-1.0] * 3),
											   cplex.SparsePair(ind = ["x2", "x3"], val = [10.0, -2.0])],
		            			   senses = ["E", "L", "G", "R"],
								   rhs = [0.0, 1.0, -1.0, 2.0],
								   range_values = [0.0, 0.0, 0.0, -10.0],
								   names = ["c0", "c1", "c2", "c3"])
>>> c.linear_constraints.get_rhs()
[0.0, 1.0, -1.0, 2.0]
~~~~
