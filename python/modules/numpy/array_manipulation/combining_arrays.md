# Combining arrays

**References:**
- 

Notebook(s): 
- [combining_arrays.ipynb](../notebooks/combining_arrays.ipynb)

- `concatenate((a1, a2, …) axis, out])`: Join a sequence of arrays along an existing axis.
- `stack(arrays[, axis, out])`:          Join a sequence of arrays along a new axis.
- `column_stack(tup)`:                   Stack 1-D arrays as columns into a 2-D array.
- `dstack(tup)`:                         Stack arrays in sequence depth wise (along third axis).
- `hstack(tup)`:                         Stack arrays in sequence horizontally (column wise).
- `vstack(tup)`:                         Stack arrays in sequence vertically (row wise).
- `block(arrays)`:                       Assemble an nd-array from nested lists of blocks.
- `c_[]`:                                Translates slice objects to concatenation along the second axis.
- `r_[]`:                                Translates slice objects to concatenation along the first axis.


## `r_`

- https://docs.scipy.org/doc/numpy/reference/generated/numpy.r_.html
- https://stackoverflow.com/questions/18601001/numpy-r-is-not-a-function-what-is-it

Translates slice objects to concatenation along the first axis.

This is a simple way to build up arrays quickly. There are two use cases.

- If the index expression contains comma separated arrays, then stack them along their first axis.
- If the index expression contains slice notation or scalars then create a 1-D array with a range
indicated by the slice notation.

~~~~
>>> np.r_[np.array([1,2,3]), 0, 0, np.array([4,5,6])]
array([1, 2, 3, 0, 0, 4, 5, 6])
>>> np.r_[-1:1:6j, [0]*3, 5, 6]
array([-1. , -0.6, -0.2,  0.2,  0.6,  1. ,  0. ,  0. ,  0. ,  5. ,  6. ])
~~~~



## `c_`

- https://docs.scipy.org/doc/numpy/reference/generated/numpy.c_.html
- https://stackoverflow.com/questions/10894323/what-does-the-c-underscore-expression-c-do-exactly

Translates slice objects to concatenation along the second axis.

This is short-hand for np.r_['-1,2,0', index expression], which is useful because of its common
occurrence. In particular, arrays will be stacked along their last axis after being upgraded to at
least 2-D with 1’s post-pended to the shape (column vectors made out of 1-D arrays).


~~~~
>>> np.c_[np.array([1,2,3]), np.array([4,5,6])]
array([[1, 4],
       [2, 5],
       [3, 6]])
>>> np.c_[np.array([[1,2,3]]), 0, 0, np.array([[4,5,6]])]
array([[1, 2, 3, 0, 0, 4, 5, 6]])
~~~~


## `hstack(tup)`

## `vstack(tup)`

## `concatenate(a1, a2, ..., axis,)`
