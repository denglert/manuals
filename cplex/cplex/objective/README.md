# Objective function in `cplex`


**References:**
- https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._subinterfaces.ObjectiveInterface-class.html?view=embed

## Member functions

**List of member functions:**
- `c.objective.set_linear()`
- `c.objective.set_quadratic()`
- `c.objective.set_quadratic_coefficients()`
- `c.objective.set_sense()`
- `c.objective.set_name()`
- `c.objective.set_offset()`
- `c.objective.get_linear()`
- `c.objective.get_quadratic()`
- `c.objective.get_quadratic_coefficients()`
- `c.objective.get_sense()`
- `c.objective.get_num_quadratic_variables()`
- `c.objective.get_num_quadratic_nonzeros()`
- `c.objective.get_offset()`


### `c.objective.set_linear()`

Changes the linear part of the objective function, i.e. changes the coefficients for the specified
variables to the given values.

**Signature:**

~~~~
c.objective.set_linear(sequence)
~~~~

**Arguments:**

- `sequence` is a list of tuple pairs of (`var`, `value`), where
	- `var` is either
		- the variable name given via `c.variables.add_variables(..., names=[])`
		- the index of the variable
	- `value` is the value of the linear coefficient

**Example(s):**

~~~~
linear_coefficients = [("x1", 2.0), ("x2", 0.5)]
c.objective.set_linear(linear_coefficients)
~~~~

~~~~
linear_coefficients = [(0, 2.0), (0", 0.5)]
c.objective.set_linear(linear_coefficients)
~~~~


### `c.objective.set_sense()`

Sets the sense of the objective function.

**Signature*:*

~~~~
c.objective.set_sense(sense)
~~~~


**Example(s):**

~~~~
c.objective.set_sense(c.objective.sense.maximize)
~~~~

~~~~
c.objective.set_sense(c.objective.sense.minimize)
~~~~


## Member variables

- `c.objetive.sense`, which is an instance of [`ObjSense`][objsense] class type.


[objsense]: https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._subinterfaces.ObjSense-class.html?view=embed


