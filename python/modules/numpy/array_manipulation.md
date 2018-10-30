# Array manipulation


**References:**
- https://docs.scipy.org/doc/numpy/reference/routines.array-manipulation.html


## Routines

### Basic operations

### Changing array shape

- `a.ravel()`:   Return a contiguous flattened array.
- `a.flatten()`: Return a copy of the array collapsed into one dimension.
- `a.reshape()`: Gives a new shape to an array without changing its data.

### Transpose-like operations

- `np.transpose(a)`/`a.T`: transposing an array
- `ndarray.T`:  Same as self.transpose(), except that self is returned if self.ndim < 2.

### Changing number of dimesnions

### Changing kind of array


### Joining arrays

- `np.concatenate()`
- `np.vstack()`
- `np.hstack()`
- `np.r_[]`
- `np.column_stack()`
- `np.c_[]`

### Splitting arrays

- `np.hsplit()`
- `np.vsplit()`

### Tiling arrays

### Adding and removing elements

- `np.append()`: append to array
- `np.insert()`: insert items in an array
- `np.delete()`: delete items from an array
- `a.resize()`: Return a new array with the specified shape.


### Rearranging elemenents


- `flip(m[, axis])`:                Reverse the order of elements in an array along the given axis.
- `fliplr(m)`:                      Flip array in the left/right direction.
- `flipud(m)`:                     Flip array in the up/down direction.
- `reshape(a, newshape[, order])`: Gives a new shape to an array without changing its data.
- `roll(a, shift[, axis])`:        Roll array elements along a given axis.
- `rot90(m[, k, axes])`:            Rotate an array by 90 degrees in the plane specified by axes.


----------------------------------------------------------

----------------------------------------------------------


## `np.vstack()`


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
