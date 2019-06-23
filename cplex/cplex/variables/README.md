# `cplex` VariablesInterface

Methods for adding, querying, and modifying variables.

**References:**
- https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._subinterfaces.VariablesInterface-class.html?view=embed


## Variable types


|       Type      |     Internal representation type   | Character specifier |
| --------------- | ---------------------------------- | ------------------- |
| Continuous      | `c.variables.type.continuous`      |       `'C'`         |
| Semi-continuous | `c.variables.type.semi_continuous` |       `'S'`         |
| Integer         | `c.variables.type.integer`         |       `'I'`         |
| Semi-integer    | `c.variables.type.semi_integer`    |       `'N'`         |
| Binary          | `c.variables.type.binary`          |       `'B'`         |


**Remarks:**
- Binary variables have values of either 0 or 1.
- A 'semi-continuous' variable is a variable that by default can take the value 0 (zero) or any value
between its semi-continuous lower bound (`sclb`) and its upper bound (`ub`). The semi-continuous lower
bound (`sclb`) must be finite. The upper bound (`ub`) need not be finite. The semi-continuous lower
bound (`sclb`) must be greater than or equal to 0 (zero). An attempt to use a negative value for the
semi-continuous lower bound (`sclb`) will result in that bound being treated as 0 (zero).
- A 'semi-integer' is a variable that by default can take the value 0 (zero) or any integer value
between its lower bound (`lb`) and its upper bound (`ub`).


----------------------------------------------------------------------------------------------------------

## Instance methods

**List of member functions:**
- `c.variables.add()`
- `c.variables.delete()`
- `c.variables.get_lower_bounds()`
- `c.variables_get_upper_bounds()`
- `c.variables_get_num()`
- `c.variables_get_num_integer()`
- `c.variables_get_num_binary()`
- `c.variables_get_num_semicontinuous()`
- `c.variables_get_num_semiinteger()`
- `c.variables_get_names()`
- `c.variables_get_types()`
- `c.variables_get_cols()`
- `c.variables_get_histogram()`
- `c.variables_set_lower_bounds()`
- `c.variables_set_upper_bounds()`
- `c.variables_set_names()`
- `c.variables_set_types()`


### `c.variables.add()`

Adds variables and related data to the problem.

**Signature:**

~~~~
c.variables.add(obj=[],
    			lb=[],
    			ub=[],
    			types=[],
    			names=[],
    			columns=[],
)
~~~~

- `variables.add` accepts the keyword arguments `obj`, `lb`, `ub`,
`types`, `names`, and `columns`.

If more than one argument is specified, all arguments must
have the same length.


**Arguments:**

- `obj` is a list of floats specifying the linear objective
	coefficients of the variables.

- `lb` is a list of floats specifying the lower bounds on the
	variables.

- `ub` is a list of floats specifying the upper bounds on the
	variables.

- `types` must be either a list of single-character strings or a
	string containing the types of the variables.
	Note:
	If `types` is specified, the problem type will be a MIP, even if all variables
	are specified to be continuous.

- `names` is a list of strings.

- `columns` may be either a list of sparse vectors or a matrix in
	list-of-lists format.
	Note: The entries of `columns` must not contain duplicate indices. If an entry
	of `columns` references a row more than once, either by index, name, or a
	combination of index and name, an exception will be raised.

**Returns:**
	An iterator containing the indices of the added variables.

**Example:**

~~~~
import cplex
c = cplex.Cplex()
indices = c.linear_constraints.add(names = ["c0", "c1", "c2"])
indices = c.variables.add(obj = [1.0, 2.0, 3.0], types = [c.variables.type.integer] * 3)
indices = c.variables.add(obj = [1.0, 2.0, 3.0],
						  lb = [-1.0, 1.0, 0.0],
						  ub = [100.0, cplex.infinity, cplex.infinity],
						  types = [c.variables.type.integer] * 3,
						  names = ["0", "1", "2"],
						  columns = [cplex.SparsePair(ind = ['c0', 2],
													  val = [1.0, -1.0]),
						             [['c2'],[2.0]],
									 cplex.SparsePair(ind = [0, 1], val = [3.0, 4.0])])


>>> c.variables.get_lower_bounds()
[0.0, 0.0, 0.0, -1.0, 1.0, 0.0]

>>> c.variables.get_cols("1")
SparsePair(ind = [2], val = [2.0])

~~~~

### `c.variables.get_lower_bounds()` 

Returns the lower bounds on variables from the problem.

~~~~
~~~~


### `c.variables.get_lower_bounds()` 

Returns the upper bounds on variables from the problem.

~~~~
~~~~
