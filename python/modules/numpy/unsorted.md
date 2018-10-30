# Various/unsorted

## `np.vectorize` - vectorize a function:

`np.vectorize` takes a scalar function and creates a function which can be applied to numpy arrays.

~~~~
vtrapzeoid = np.vectorize(trapezoid)
~~~~


## `np.allclose()` - check if two arrays are element-wise equal within tolerance

Returns `True` if two arrays are element-wise equal within a tolerance.

The tolerance values are positive, typically very small numbers. The relative difference (`rtol` *
`abs(b)`) and the absolute difference `atol` are added together to compare against the absolute
difference between a and b.

~~~~
numpy.allclose(a, b, rtol=1e-05, atol=1e-08, equal_nan=False)
~~~~


If the following equation is element-wise True, then allclose returns `True`.

~~~~
absolute(a - b) <= (atol + rtol * absolute(b))
~~~~



**Examples:**

~~~~
>>> np.allclose([1e10,1e-7], [1.00001e10,1e-8])
False
>>> np.allclose([1e10,1e-8], [1.00001e10,1e-9])
True
~~~~
