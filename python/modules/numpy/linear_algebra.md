# `numpy` linear algebra


**All references:**
- http://www.scipy-lectures.org/intro/numpy/operations.html
- https://bic-berkeley.github.io/psych-214-fall-2016/dot_outer.html


## Product types

### `*` (element-wise)


- https://stackoverflow.com/questions/18293746/what-is-the-multiplication-operator-actually-doing-with-numpy-arrays


Element-wise product:

~~~~
>>> a = np.array([[1,2]])
>>> b = np.array([-1, 2])
>>> a*b
array([[-1,  4]])
~~~~

### `.dot()` (matrix multiplication)


## Element-wise operations

- `np.multiply()`
- `np.divide()`


### Mapping

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


## Matrix operarations

### Dot product of two arrays

~~~~
a = np.array([1,2])
b = np.array([3,4])
dotproduct = a.dot(b)
~~~~

or with `np.dot`:

~~~~
a = [1,2]
b = [3,4]
dotproduct = np.dot(a,b)
~~~~

### Transpose

~~~~
M = np.array([[2, 5, 6], [5, 1, 7], [3, 3, 1]])
numpy.transpose(M)
~~~~

~~~~
M.transpose()
~~~~


## Insert

**Example:**

Insert a vector of `1`s  in front of a matrix:

~~~~
M_new = np.insert(M, 0, 1, axis=1)
~~~~

