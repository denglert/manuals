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

----------------------------------------------------------------------

## `np.argmax()` (get the index of the largest value in an array)

- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.argmax.html

Returns the indices of the maximum values along an axis.

~~~~
>>> a = np.arange(6).reshape(2,3)
>>> a
array([[0, 1, 2],
       [3, 4, 5]])
>>> np.argmax(a)
5
~~~~
