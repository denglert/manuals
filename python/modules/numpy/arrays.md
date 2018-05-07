# `numpy` arrays

## Creating arrays

### `np.full()`

~~~~
np.full((2, 2), np.inf)
~~~~


## Get the index of the largest value in an array

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

## Retrieve the indeces of a sorted array

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
