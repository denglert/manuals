# `numpy` reshaping/resizing arrays


## Get shape of a `numpy` array

~~~~
a = np.array(...)
a.shape
~~~~

## Array reshaping (`np.reshape()`)

~~~~
a = np.array([1,2,3,4,5,6,7,8,9])
grid = a.reshape(3,3)

grid = np.array([
        [1,2,3],
        [4,5,6],
        [7,8,9]
        ])

grid = grid[::-1]
grid = grid.T
grid = grid.T[::-1]
~~~~

## Array resizing (`np.resize()`)

**References:**
- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.reshape.html
- https://stackoverflow.com/questions/9251635/python-resize-an-existing-array-and-fill-with-zeros
- https://stackoverflow.com/questions/33256823/numpy-resize-array-filling-with-0

Note:
- If the size of the array is larger than the original array, the elements will be repeated


Gives a new shape to an array without changing its data.

**Usage:**

~~~~
numpy.reshape(a, newshape, order='C')[source]¶
~~~~

Parameters: 

- `a` : array_like

    Array to be reshaped.

- `newshape` : int or tuple of ints

    The new shape should be compatible with the original shape. If an integer, then the result will be a 1-D array of that length. One shape dimension can be -1. In this case, the value is inferred from the length of the array and remaining dimensions.

- `order` : {‘C’, ‘F’, ‘A’}, optional

    Read the elements of a using this index order, and place the elements into the reshaped array using this index order. ‘C’ means to read / write the elements using C-like index order, with the last axis index changing fastest, back to the first axis index changing slowest. ‘F’ means to read / write the elements using Fortran-like index order, with the first index changing fastest, and the last index changing slowest. Note that the ‘C’ and ‘F’ options take no account of the memory layout of the underlying array, and only refer to the order of indexing. ‘A’ means to read / write the elements in Fortran-like index order if a is Fortran contiguous in memory, C-like order otherwise.

**Returns:**

- `reshaped_array` : ndarray

This will be a new view object if possible; otherwise, it will be a copy. Note there is no guarantee
of the memory layout (C- or Fortran- contiguous) of the returned array.


**Examples:**

~~~~
a = np.array([1,2,3,4,5,6,7,8,9])
truncated = np.resize(a, (3,2))
repeated = np.resize(a, (5,5))
~~~~

Output:

~~~~
truncated =
array([[1, 2],
       [3, 4],
       [5, 6]])
~~~~

~~~~
repeated =
array([[1, 2, 3, 4, 5],
       [6, 7, 8, 9, 1],
       [2, 3, 4, 5, 6],
       [7, 8, 9, 1, 2],
       [3, 4, 5, 6, 7]])
~~~~


