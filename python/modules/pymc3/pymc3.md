# PyMC3 manuals

References:

- https://github.com/CamDavidsonPilon/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers

## Basic

### Imports

~~~~
import pymc3 as pm
import theano.tensor as tt
~~~~

### Setup a model

~~~~
with pm.Model() as model
	parameter      = pm.Exponential("poisson_param", 1)
	data_generator = pm.Poisson("data_generator", parameter)
~~~~

### `test_value`s

Everey PyMC3 variable have an initial value called the `test_value`:

~~~~
print('parameter.tag.test_value: ', parameter.tag.test_value)
~~~~

The test_value is used only for the model, as the starting point for sampling if no other start is
specified. It will not change as a result of sampling. This initial state can be changed at variable
creation by specifying a value for the testval parameter:

~~~~
with pm.Model() as model:
    parameter = pm.Exponential("poisson_param", 1, testval=0.5)
~~~~
