# Solution `cplex`

**References:**
- https://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._subinterfaces.SolutionInterface-class.html?view=embedhttps://www.ibm.com/support/knowledgecenter/SSSA5P_12.7.1/ilog.odms.cplex.help/refpythoncplex/html/cplex._internal._subinterfaces.SolutionInterface-class.html?view=embed

Methods for querying the solution to an optimization problem. 

## Instance methods

- `get_status()`
- `get_method()`
- `get_status_string()`
- `get_objective_value()`
- `get_values()`
- `get_reduced_costs()`
- `get_dual_values()`
- `get_quadratic_dualslack()`
- `get_linear_slacks()`
- `get_indicator_slacks()`
- `get_quadratic_slacks()`
- `get_integer_quality()`
- `get_float_quality()`
- `get_solution_type()`
- `is_primal_feasible()`
- `is_dual_feasible()`
- `get_activity_levels()`
- `get_quadratic_activity_levels()`
- `get_quality_metrics()`
- `write()`

## Class variables

- `progress`
- `infeasability`
- `MIP`
- `basis`
- `sensitivity`
- `pool`
- `advanced`
- `method`
- `quality_metric`
- `status`
- `type`
