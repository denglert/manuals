# Statistics functions in `numpy`


## `np.percentile(a, q, axis=None, out=None, overwrite_input=False, interpolation='linear',
    keepdims=False)`

- https://docs.scipy.org/doc/numpy/reference/generated/numpy.percentile.html


**Example(s):**


Get 2.5% and 97.5% percentiles of a sample:

~~~~
x1_low  = np.percentile(x1, 2.5)
x1_high = np.percentile(x1, 97.5)
~~~~
