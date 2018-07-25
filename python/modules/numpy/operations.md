# `numpy` operations

- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.rot90.html
- http://www.scipy-lectures.org/intro/numpy/operations.html
- https://bic-berkeley.github.io/psych-214-fall-2016/dot_outer.html

## Mapping

Example: Boolean map of a matrix

`False`: not equal to 2
`True`: equal to 2

~~~~
labels = np.array([2,3,3,4,5,6,7,7,1,2,2,2,1])
boolean_map = (labels == 2)
~~~~

The boolean map can be converted to integers:

~~~~
y = boolean_map.astype(int)
~~~~



## Insert

**Example:**

Insert a vector of `1`s  in front of a matrix:

~~~~
M_new = np.insert(M, 0, 1, axis=1)
~~~~


## `rot90()`

~~~~
img_rot = np.rot90(img)
~~~~


## `where()`

- https://stackoverflow.com/questions/432112/is-there-a-numpy-function-to-return-the-first-index-of-something-in-an-array

~~~~
itemindex = numpy.where(array==item)
~~~~

## `unique()`

- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.unique.html

~~~~
numpy.unique(ar, return_index=False, return_inverse=False, return_counts=False, axis=None)[source]¶
~~~~

Find the unique elements of an array.

    Returns the sorted unique elements of an array. There are three optional outputs in
    addition to the unique elements: the indices of the input array that give the unique
    values, the indices of the unique array that reconstruct the input array, and the number of
    times each unique value comes up in the input array.

**Parameters:**

- `ar` : array_like

    Input array. Unless axis is specified, this will be flattened if it is not already 1-D.

- `return_index`: bool, optional

    If True, also return the indices of ar (along the specified axis, if provided, or in the flattened array) that result in the unique array.

- `return_inverse`: bool, optional

    If True, also return the indices of the unique array (for the specified axis, if provided) that can be used to reconstruct ar.

- `return_counts`: bool, optional

    If True, also return the number of times each unique item appears in ar. .. versionadded:: 1.9.0

- `axis`: int or None, optional

    The axis to operate on. If None, ar will be flattened beforehand. Otherwise, duplicate items will be removed along the provided axis, with all the other axes belonging to the each of the unique elements. Object arrays or structured arrays that contain objects are not supported if the axis kwarg is used. .. versionadded:: 1.13.0

**Returns:**

- `unique`: ndarray

    The sorted unique values.

- `unique_indices`: ndarray, optional

    The indices of the first occurrences of the unique values in the original array. Only provided if return_index is True.

- `unique_inverse`: ndarray, optional

    The indices to reconstruct the original array from the unique array. Only provided if return_inverse is True.

- `unique_counts`: ndarray, optional

    The number of times each of the unique values comes up in the original array. Only provided if return_counts is True. .. versionadded:: 1.9.0


**Example(s):**

~~~~
>>> np.unique([1, 1, 2, 2, 3, 3])
array([1, 2, 3])
~~~~
