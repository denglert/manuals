# General workflow and functions for statistical models in `R`


## `residuals()`


Extract Model Residuals

**Description:**
residuals is a generic function which extracts model residuals from objects returned by modeling
functions.

The abbreviated form resid is an alias for residuals. It is intended to encourage users to access
object components through an accessor function rather than by directly referencing an object slot.

All object classes which are returned by model fitting functions should provide a residuals method.
(Note that the method is for residuals and not resid.)

Methods can make use of naresid methods to compensate for the omission of missing values. The
default, nls and smooth.spline methods do.

**Usage:**

~~~~
residuals(object, ...)
resid(object, ...)
~~~~

**Arguments:**
- `object`: an object for which the extraction of model residuals is meaningful.

- `...` other arguments.

**Value:**

Residuals extracted from the object `object`.


## `predict()`


Model Predictions

**Description:**
predict is a generic function for predictions from the results of various model fitting functions. The function invokes particular methods which depend on the class of the first argument.

**Usage:**


~~~~
predict (object, ...)
~~~~

**Arguments:**

- `object`: a model object for which prediction is desired.

- `...`:  additional arguments affecting the predictions produced.

**Details:**

Most prediction methods which are similar to those for linear models have an argument `newdata`
specifying the first place to look for explanatory variables to be used for prediction. Some
considerable attempts are made to match up the columns in `newdata` to those used for fitting, for
example that they are of comparable types and that any factors have the same level set in the same
order (or can be transformed to be so).

Time series prediction methods in package stats have an argument `n.ahead` specifying how many time
steps ahead to predict.

Many methods have a logical argument `se.fit` saying if standard errors are to returned.

**Value:**

The form of the value returned by predict depends on the class of its argument. See the
documentation of the particular methods for details of what is produced by that method.
