# Working with multiple arrays in numpy


## `np.hstack(tup)`

- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.hstack.html

Stack arrays in sequence horizontally (column wise).

This is equivalent to concatenation along the second axis, except for 1-D
arrays where it concatenates along the first axis. Rebuilds arrays divided by
`hsplit`.

This function makes most sense for arrays with up to 3 dimensions. For
instance, for pixel-data with a height (first axis), width (second axis), and
r/g/b channels (third axis). The functions `concatenate`, `stack` and `block` provide
more general stacking and concatenation operations.


**Parameters:**

- `tup`: sequence of `ndarray`s

	The arrays must have the same shape along all but the second axis, except
1-D arrays which can be any length.

**Returns:**

- `stacked` : `ndarray`

	The array formed by stacking the given arrays.


**Examples:**

~~~~
>>> a = np.array((1,2,3))
>>> b = np.array((2,3,4))
>>> np.hstack((a,b))
array([1, 2, 3, 2, 3, 4])
~~~~

~~~~
>>> a = np.array([[1],[2],[3]])
>>> b = np.array([[2],[3],[4]])
>>> np.hstack((a,b))
array([[1, 2],
       [2, 3],
       [3, 4]])
~~~~
