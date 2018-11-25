# `numpy` datatypes


**References:**
- https://docs.scipy.org/doc/numpy/user/basics.types.html
- https://docs.scipy.org/doc/numpy/reference/arrays.dtypes.html
- https://docs.scipy.org/doc/numpy/reference/routines.dtype.html



## `nan`

A `nan` value can be assigned as:

~~~~
a = np.nan
~~~~

or 

~~~~
a = math.nan
~~~~

### Ignoring `nan`s

| Operation |     Function   |
| --------- | -------------- |
|   Mean    | `np.nanmean()` |
|   Std     | `np.nanstd()`  |

