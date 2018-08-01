# Sorting arrays in `numpy`


## `np.sort(a, axis=-1, kind='quicksort', order=None)`

- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.sort.html

--------------------------------------------------------------------------------------------------

## `np.argsort()` (retrieve the indeces of a sorted array)

- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.argsort.html

Returns the indices that would sort an array.

Perform an indirect sort along the given axis using the algorithm specified by the kind keyword. It
returns an array of indices of the same shape as a that index data along the given axis in sorted
order.

~~~~
>>> x = np.array([3, 1, 2])
>>> np.argsort(x)
array([1, 2, 0])
~~~~
